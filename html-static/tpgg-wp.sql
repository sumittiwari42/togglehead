-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2017 at 07:54 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpgg-wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-08 12:59:02', '2017-06-08 12:59:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/togg-test', 'yes'),
(2, 'home', 'http://localhost/togg-test', 'yes'),
(3, 'blogname', 'tog-wp', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sumit.tiwari.info@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '83', 'yes'),
(84, 'page_on_front', '124', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '139', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1497191798;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1497225600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497229144;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497231782;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497242629;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497272363;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497274982;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1499126400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'nonce_key', 'F53K|]k`q6(K7B((>h*!o#GuD&GKxo5%*=D(!,i_=af5d%0>Qom)^fK&XVd4Hxya', 'no'),
(106, 'nonce_salt', 'gWfi 7a1$*6/KE`{IwDLb[L2OfTfo3M@2:%P86h*iC@_iuOyP}`jHjl/s1z|))v{', 'no'),
(107, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:19;}s:11:"custom_logo";i:140;}', 'yes'),
(111, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-rollback-2.zip";}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.2";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1497185964;s:15:"version_checked";s:5:"4.7.2";s:12:"translations";a:0:{}}', 'no'),
(113, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497185964;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.0.8";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.0.8.zip";}}}', 'no'),
(117, 'auth_key', 'USIo636Dir9ho KrN:<6Rc~}75Cq*Po|KJ5lhI(/Ym,$ !hlU:=^*GO#%%-.#L+[', 'no'),
(118, 'auth_salt', 'FjNn~p,2&8Cm-xnWUR&:<&)C.4y|]q9`XDvxYW)30W*J<2[UYkR%BnM1+7D>7?);', 'no'),
(119, 'logged_in_key', '(zAogSf4X+Pw]J9L5?MF2nF=p{4awwpI;#2sR5Y7!>d4`~Ewnn{jH|xJEC^#Etf~', 'no'),
(120, 'logged_in_salt', 'd&W)RNq$6g1Nw@JbfV3Zo?DMYTbJwFwAYhJzhsAMgdP/ckP_idQ5+$YI[b`g+{W=', 'no'),
(121, '_site_transient_timeout_browser_4997998da8e02aa049e9dbdf3d1cb200', '1497531563', 'no'),
(122, '_site_transient_browser_4997998da8e02aa049e9dbdf3d1cb200', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(141, 'current_theme', 'Twenty Seventeen', 'yes'),
(142, 'theme_mods_sumit', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1496986984;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(145, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1496939272', 'no'),
(146, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4342;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2483;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2352;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2117;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1820;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1581;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1559;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1429;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1337;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1325;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1318;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1267;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1264;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1108;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1043;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1039;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:985;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:925;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:814;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:791;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:790;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:759;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:657;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:653;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:645;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:626;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:601;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:592;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:589;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:577;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:576;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:573;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:567;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:554;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:530;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:523;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:504;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:499;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:490;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:489;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:461;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:461;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:434;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:434;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:432;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:428;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:420;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:413;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:406;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:396;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:395;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:375;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:366;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:366;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:351;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:336;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:323;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:319;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:318;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:317;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:315;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:300;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:298;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:286;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:286;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:282;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:279;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:274;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:269;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:268;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:263;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no'),
(154, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1496928817;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(156, '_transient_twentyfifteen_categories', '1', 'yes'),
(157, 'acf_version', '4.4.11', 'yes'),
(158, 'woocommerce_default_country', 'GB', 'yes'),
(159, 'woocommerce_allowed_countries', 'all', 'yes'),
(160, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(161, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(162, 'woocommerce_ship_to_countries', '', 'yes'),
(163, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(165, 'woocommerce_calc_taxes', 'no', 'yes'),
(166, 'woocommerce_demo_store', 'no', 'yes'),
(167, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(168, 'woocommerce_currency', 'INR', 'yes'),
(169, 'woocommerce_currency_pos', 'left', 'yes'),
(170, 'woocommerce_price_thousand_sep', ',', 'yes'),
(171, 'woocommerce_price_decimal_sep', '.', 'yes'),
(172, 'woocommerce_price_num_decimals', '2', 'yes'),
(173, 'woocommerce_weight_unit', 'kg', 'yes'),
(174, 'woocommerce_dimension_unit', 'cm', 'yes'),
(175, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(176, 'woocommerce_review_rating_required', 'yes', 'no'),
(177, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(178, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(179, 'woocommerce_shop_page_id', '2', 'yes'),
(180, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(181, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(182, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(183, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(184, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(185, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(186, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(187, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(188, 'woocommerce_manage_stock', 'yes', 'yes'),
(189, 'woocommerce_hold_stock_minutes', '60', 'no'),
(190, 'woocommerce_notify_low_stock', 'yes', 'no'),
(191, 'woocommerce_notify_no_stock', 'yes', 'no'),
(192, 'woocommerce_stock_email_recipient', 'sumit.tiwari.info@gmail.com', 'no'),
(193, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(194, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(195, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(196, 'woocommerce_stock_format', '', 'yes'),
(197, 'woocommerce_file_download_method', 'force', 'no'),
(198, 'woocommerce_downloads_require_login', 'no', 'no'),
(199, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(200, 'woocommerce_prices_include_tax', 'no', 'yes'),
(201, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(202, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(203, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(204, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(205, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(206, 'woocommerce_tax_display_cart', 'excl', 'no'),
(207, 'woocommerce_price_display_suffix', '', 'yes'),
(208, 'woocommerce_tax_total_display', 'itemized', 'no'),
(209, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(210, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(211, 'woocommerce_ship_to_destination', 'billing', 'no'),
(212, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(213, 'woocommerce_enable_coupons', 'yes', 'yes'),
(214, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(215, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(216, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(217, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(218, 'woocommerce_cart_page_id', '', 'yes'),
(219, 'woocommerce_checkout_page_id', '', 'yes'),
(220, 'woocommerce_terms_page_id', '', 'no'),
(221, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(222, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(223, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(224, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(225, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(226, 'woocommerce_myaccount_page_id', '', 'yes'),
(227, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(228, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(229, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(230, 'woocommerce_registration_generate_username', 'yes', 'no'),
(231, 'woocommerce_registration_generate_password', 'no', 'no'),
(232, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(233, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(234, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(235, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(236, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(237, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(238, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(239, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(240, 'woocommerce_email_from_name', 'tog-wp', 'no'),
(241, 'woocommerce_email_from_address', 'sumit.tiwari.info@gmail.com', 'no'),
(242, 'woocommerce_email_header_image', '', 'no'),
(243, 'woocommerce_email_footer_text', 'tog-wp - Powered by WooCommerce', 'no'),
(244, 'woocommerce_email_base_color', '#96588a', 'no'),
(245, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(246, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(247, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(248, 'woocommerce_api_enabled', 'yes', 'yes'),
(252, 'woocommerce_db_version', '3.0.8', 'yes'),
(253, 'woocommerce_version', '3.0.8', 'yes'),
(254, 'woocommerce_admin_notices', 'a:1:{i:0;s:7:"install";}', 'yes'),
(256, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(257, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(266, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(268, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(269, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(271, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(272, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(273, '_transient_timeout_wc_report_sales_by_date', '1497248441', 'no'),
(274, '_transient_wc_report_sales_by_date', 'a:224:{s:32:"1559cb50d29ad2de8e0ac2aa76ee0ce4";a:0:{}s:32:"2396dac902a0f8fd90e9370041963871";a:0:{}s:32:"800414d822b2f3f3b37fb2b28e56960d";a:0:{}s:32:"859e25f71fe9a6caff524e8fe8406f61";N;s:32:"605f743b91a4c4acbfd57788307ad128";a:0:{}s:32:"db55c3a6d41e057d71dd307a9ad0c17b";a:0:{}s:32:"87e584924cc456323b3a24f97869ca06";a:0:{}s:32:"aa89e96762118282aa4ac23f1dfc3de4";a:0:{}s:32:"00f8ff9bb4a7c62627e3b2d09ba30c8a";a:0:{}s:32:"5a9a041b26c93f4e782dbb21b2c67d00";a:0:{}s:32:"e062611f16d4bddd28f1b1f34283ce25";a:0:{}s:32:"7bc52b591c91f6964c7dd142a74a3e98";N;s:32:"798d509914da25ab3c701be36dc3d7f3";a:0:{}s:32:"08cae8a6eacf4c51b06b224e9d6ea453";a:0:{}s:32:"f75b5a71ec5a3f7c63b5bd57d8433d71";a:0:{}s:32:"ea342f8558a867a73b24b5ccfb5c100a";a:0:{}s:32:"9972f6f79f5d25e8872e696cd171c308";a:0:{}s:32:"1dd9f4fb9297acfe47642c3c1be26e59";a:0:{}s:32:"83ce0044ea61ab27dc24bc7acd82417c";a:0:{}s:32:"705da79847240f709088bbe565cf2b83";N;s:32:"d92391a34077d2b371070f7fcd873e92";a:0:{}s:32:"5922ca67b0b2cf928f0f1edc372fa67b";a:0:{}s:32:"4c95294d65beb703f554ad043c3d66b2";a:0:{}s:32:"cd400e86f6c49f1b35040dcdd1ea2c0b";a:0:{}s:32:"8e1a5557416d241ddb0aeb9ca07a1574";a:0:{}s:32:"dfce46aeceb0065038907714f77e46db";a:0:{}s:32:"c146907bc981bc7959927f52e7bf061a";a:0:{}s:32:"5f0f8343ff7cb3038d612a0e9d7bbfee";N;s:32:"e0fe136e4135e2a47785fb495cb01687";a:0:{}s:32:"20f48a895e7061313e7f38b6170141ee";a:0:{}s:32:"af1184d97d414db66de1ead6aed6e9ee";a:0:{}s:32:"6e32054a2ca7965189a21a9d39fa13e4";a:0:{}s:32:"e53d1575e4f791f67ef6121cf71eb54d";a:0:{}s:32:"4e5947382d82af0245cd2640f4c9f395";a:0:{}s:32:"3dac5284f20d1ddf87e1813ef9acd83f";a:0:{}s:32:"cd18faf679a4341ce95715b859e09696";N;s:32:"9254b7a1f465317a7eda7a4871165965";a:0:{}s:32:"09540181a671fa83f5306d1c7db6a6fa";a:0:{}s:32:"0b3aaeecdc6331778baacd9ba043705c";a:0:{}s:32:"2d00ffbe347edd4dcd60aeecdcbc6bbc";a:0:{}s:32:"e853bf89ec9fba5e7ee6626d48f477fc";a:0:{}s:32:"442a6b8acb21af4a294cdac6e6d58415";a:0:{}s:32:"7ca82a0bf57d42dc1b3256044a947997";a:0:{}s:32:"350045766461a101da6191c78c418fb8";N;s:32:"4d76beebd2f25f1969993f8ccc2cdfba";a:0:{}s:32:"fc454445801e6ffae14078d8a2e0726f";a:0:{}s:32:"1dd3284e475945d27e7959d038d492e3";a:0:{}s:32:"fe8c5d307693dca7bf5c581d3b50630e";a:0:{}s:32:"73b9d4e16eb3486641668923e04e0db0";a:0:{}s:32:"774e725dd9e7db10d9124c8b1d77cf11";a:0:{}s:32:"120f75368f8219a4a747460b48212a6c";a:0:{}s:32:"de6f6e2cbed066799e85bb63ad56f748";N;s:32:"18479912b42914b8ddc2a8363b0d4d3c";a:0:{}s:32:"54dc6aa0d4084565bb5358ffa85b89f3";a:0:{}s:32:"a29eb51a47eac774862f36ce7f0a2232";a:0:{}s:32:"431515fd23d7f20b4f9adff76c9d7169";a:0:{}s:32:"a89da67904a4e0168d3a838cc2b02a4b";a:0:{}s:32:"a2de254f4740c33cc8c65746beff4ab4";a:0:{}s:32:"4acb9d741ac76068c17e1122218eb8da";a:0:{}s:32:"d863a5c51ee8c50340af0fa83a1b1b8a";N;s:32:"58343749b3c6d5b25231bed626a9082b";a:0:{}s:32:"33b1c31e8473dd5132c99138e794ebf7";a:0:{}s:32:"99ccdfc166f90a050365e622bb36742b";a:0:{}s:32:"2c25f8803f2b11e53f5a1e00c7446422";a:0:{}s:32:"b58ada8b3e79229eaa741c0e3364f67c";a:0:{}s:32:"14bcdb60a8b71f41a8b445767b3e7084";a:0:{}s:32:"1e8c06dace2967801fa1da14d743acf2";a:0:{}s:32:"de2bac6c4a883ae65ef1f37f54ae9644";N;s:32:"19abcac53a6b93913a8d693bb90f5cf1";a:0:{}s:32:"a29a472e3a7b00685add864fcea73d8a";a:0:{}s:32:"b327b9099bff8b6125dcfea0112b5ec2";a:0:{}s:32:"aa0664e8464cb19caf6a42c18da89074";a:0:{}s:32:"d9486199fb37947016251f67ab93d9eb";a:0:{}s:32:"a3053407ad823f06b56dc8da7631ff47";a:0:{}s:32:"5c6779210020d9658fd12325c5d39f5c";a:0:{}s:32:"457a8f64ff70e51d284bc91296ee1853";N;s:32:"7d1c853fb83c7dda1fec4b7b954657e2";a:0:{}s:32:"c6068fd49f6d4e7c59c16dd025f215b8";a:0:{}s:32:"8cde195325564c0b66565f18702b567c";a:0:{}s:32:"120c41c0a50253da472e1c441613f9d3";a:0:{}s:32:"57b2276f471d870e4ce8fb0f7b145f9f";a:0:{}s:32:"1d26c5629ef6f62c440f4559f2123612";a:0:{}s:32:"7002c1d237d201ded1ab0f262664c743";a:0:{}s:32:"debb96fc1ebfab8459afd9d34cb5d56f";N;s:32:"49ee82b9ff2defb75a4d6e64ac947ceb";a:0:{}s:32:"35d7455fe0ad8bd44483b09f3b9e046a";a:0:{}s:32:"bc96db1f7c74b275b7272b329cdb9a13";a:0:{}s:32:"9ae4b4fb6bef99700e0602e375346e7c";a:0:{}s:32:"8c3e5d814cdf32897fa5cc536722732a";a:0:{}s:32:"2512f9112d3f840aaac714e5687e2d74";a:0:{}s:32:"4396952cbe06a8ad6ea2b60084bc8bbd";a:0:{}s:32:"9cbc4a86a10248c3d99e2b1af9eb9c30";N;s:32:"2265c1ae3333ddb787472da41575d3fd";a:0:{}s:32:"29355f40ef350428c4a70112aa40b7c3";a:0:{}s:32:"2f98ea5a934f2331bb2b2f22b34733b5";a:0:{}s:32:"ebd1ab74fab52221e18688e143faed20";a:0:{}s:32:"303ed491996f90cc80be8e71d7421684";a:0:{}s:32:"3c27df14e3f20ef22b54cb8a638553f8";a:0:{}s:32:"659cb37dc90e48ce822994e8542ad14a";a:0:{}s:32:"25fe2fc35cfaf195199830572f42ab4d";N;s:32:"bb1779398bb2c22b328d16a40b3ae386";a:0:{}s:32:"1b3cd1f89a682396614ceead032db72e";a:0:{}s:32:"57ab5f18b031dc60936d5ac61d179769";a:0:{}s:32:"4350dca14f66ab00b3b9740d136482a4";a:0:{}s:32:"d1c67922d4556e1197e098f3c2b22ed1";a:0:{}s:32:"1cb0eca3db89d8a4e8063ba63de8352c";a:0:{}s:32:"1d7dcc05a01754517cf0e2aeb5105501";a:0:{}s:32:"ca01cf0bba66b984c08e193273f8d769";N;s:32:"b4370ae6599bad8bbd493a41a97bf7a4";a:0:{}s:32:"6e1453e1f724de2b3d4fa91b1bb1c2dc";a:0:{}s:32:"8278cb16d171ab550845ac87174f8bad";a:0:{}s:32:"edcccb2df12f53b91ffd998871d2de4c";a:0:{}s:32:"91d89e06ea22a23c29c80aa86cf19ce9";a:0:{}s:32:"3cf8e40e9b80f1e9614585e372ad82c2";a:0:{}s:32:"b37a9db59dfb0b000daec1edd8616205";a:0:{}s:32:"14b75105c234526a9bab180e32af3f4b";N;s:32:"8a6f5b14ebc5620090e2bd193b5ff2cf";a:0:{}s:32:"342b5a7bef89a1e73c8237d70f8e5d6f";a:0:{}s:32:"b11c5f6c10f5ea05aaa9e9ef916fc747";a:0:{}s:32:"a36395256e7e788876fd2116853e2713";a:0:{}s:32:"34b02368348faed0f0e984f83fc21a1e";a:0:{}s:32:"5b5555824d75d3086741ee4b5b6c73c5";a:0:{}s:32:"cf1e4c1d3fd39d5ef2c1aaf09387284a";a:0:{}s:32:"422057af354773d0a7b63d2780c731a4";N;s:32:"61fca67444f372a4f010cc5bf2c010a0";a:0:{}s:32:"c542af52e255d41a409406ea93d9f2e5";a:0:{}s:32:"decc958789f74dad41efea82a8c1b5eb";a:0:{}s:32:"f63eeb8d3333e313934a5e62f7786785";a:0:{}s:32:"71773f4abf727acc56bb063834b51de0";a:0:{}s:32:"b897d05ffa1b8f8463f8dd12d95a8400";a:0:{}s:32:"05591041675450704db3c1c2f310dd4a";a:0:{}s:32:"b9747b7d40d6d2030e46a3d57e020e13";N;s:32:"1cffc94e7035948242654dac2b3b6d21";a:0:{}s:32:"0d23f6fe130c5696172f39356dc3d527";a:0:{}s:32:"c27198cab513a7936bd49b9585164e4e";a:0:{}s:32:"5f742d2af61d053c14ddff4efa43e229";a:0:{}s:32:"b0d894e4982d2d0c0b364a0b640e7e6e";a:0:{}s:32:"fc61c6f02574bc6827d9c849d002a588";a:0:{}s:32:"c492a780e354024ecdbe693204006e4f";a:0:{}s:32:"00a65ff995a03b57ed1a91a66556d587";N;s:32:"9418f64a521055019a112872c35a9243";a:0:{}s:32:"4feb00a02ad06f496b3fb4f73e5d3b98";a:0:{}s:32:"2e69ad25718d1fddcd1256b573f9bb73";a:0:{}s:32:"bcf761a4b10540002783121348fb0c38";a:0:{}s:32:"fdf8f1e7ef80f7b85bde3105f43f02bb";a:0:{}s:32:"9da60a39c98c35321eb0de43c21355df";a:0:{}s:32:"1992058a3865f07ebbe48b1db1dcc1a4";a:0:{}s:32:"36c903ed819c282741cada43177da4e6";N;s:32:"1499a494bc37077a11d729f6564c4f26";a:0:{}s:32:"c146ecf83e97371aa1b3ee0612ef3be3";a:0:{}s:32:"b6fb818663dd080af8504327914b2f67";a:0:{}s:32:"d3501b755a5e9d10643d4e8ad18ab0be";a:0:{}s:32:"87b1645f9ce9b165f97ceaeed8dd5818";a:0:{}s:32:"4f7f6b1b44182e6adcbdd3fd74238e70";a:0:{}s:32:"faf574d4f458370abe4a8252b624608f";a:0:{}s:32:"3dd4d4de29a5ab87497e1f2a3c1c192c";N;s:32:"3879f8c001b4816efb40626d53d4390f";a:0:{}s:32:"96841bdb6aaae029619019de4d436656";a:0:{}s:32:"6fb2f50ab0dbf425b25a95f1bcb5dd1e";a:0:{}s:32:"9a75edb897b60abe13229e4637fe8ae7";a:0:{}s:32:"4d143dda1d5c151a4afb607ba2e469e2";a:0:{}s:32:"8ad657f126785f981465f3b2fc7ccd3b";a:0:{}s:32:"9b5b4d41d7e28ea82e146315632672e8";a:0:{}s:32:"7a74c9de6a97d3c1cf460359f89e7348";N;s:32:"5e3fd983223c2c54e65e457142eac34c";a:0:{}s:32:"493b5e5046a8eb8759b55a93e461facb";a:0:{}s:32:"ed382313c660fff163c0db565b9523c4";a:0:{}s:32:"a0916bc18980ecf77b032dbfa31efc71";a:0:{}s:32:"2917597359f043886b8da939ebff9b48";a:0:{}s:32:"2723b20ffb89555a565166df166753d1";a:0:{}s:32:"1c409daef7b20f4566d5f16e277eb21e";a:0:{}s:32:"630dc22b6e1933925481660018d83138";N;s:32:"18066d5e9ab45da9c5e095cc0fa6d024";a:0:{}s:32:"613826a480d7cf12c62ddb92099b03e1";a:0:{}s:32:"b359bdbc3aacc1a62258162c427c6a92";a:0:{}s:32:"02e89c9df2bb821b03498da3d49fa6cf";a:0:{}s:32:"77090d7ff7bdd7ca1b8fc45af4cf841f";a:0:{}s:32:"268aea2733a33f7267a2c132993095da";a:0:{}s:32:"5c3847e3f5d14fcf9952e2a11210a830";a:0:{}s:32:"7f6a50a88fe0bcf3004c7cb4d2f721da";N;s:32:"f845577ef14a2f187b884c43d71aa6c7";a:0:{}s:32:"c5ab0cf491d65568a295e7c7ac61eb95";a:0:{}s:32:"0c1a6ce1b4eb682ab29fd73ffa62db0b";a:0:{}s:32:"b312b50ef2198d2a3993a17dafe6827a";a:0:{}s:32:"4734e0b3a373cbb6039d82d214185d09";a:0:{}s:32:"d5de7e575ef1c47a6c2b30d47211db23";a:0:{}s:32:"257f10edcc42ee1a26a47385b4fab741";a:0:{}s:32:"aeeaa95fc82d9ea3ae4bf4ab8b384dfe";N;s:32:"7cdd36d9396c6737474196534ea57207";a:0:{}s:32:"0dde89818e9c5fab6f17223a425dbbd4";a:0:{}s:32:"24639d821cf7644cf7de8390062f865d";a:0:{}s:32:"eea8a9d3837eaf345bd7dcfbd64ca338";a:0:{}s:32:"dc2f5b751e33856ac520fc62c35cc84f";a:0:{}s:32:"555d26083fd73dc33e85d0501bb024f3";a:0:{}s:32:"91fa95c4d8ca9aded996c8a97d5ef83a";a:0:{}s:32:"0718f452ed919d601ca8131d241e1acd";N;s:32:"d9f6bcb32810f85fb2ffa409178c175b";a:0:{}s:32:"ea32a37a88df750190ace38c581e270e";a:0:{}s:32:"b2294e498001298c945c744e2fff102a";a:0:{}s:32:"ee191c4c847175b07d20fbcabbed75a5";a:0:{}s:32:"06d7198d961cb1bafc08e2245d5957b6";a:0:{}s:32:"2225c7594a2007fbd0577db168fccbf3";a:0:{}s:32:"94cbf5d088c633ad441ef44038690b75";a:0:{}s:32:"d78c135e0292ada09004e92eb0f79659";N;s:32:"f7aeb9d145061b96400bd3dd1ad84189";a:0:{}s:32:"b95a71f75aacde79464ab729be0dae88";a:0:{}s:32:"1084e09ebaa1928c2b11541680157a88";a:0:{}s:32:"ef13d0b809af3471ade20ecd82375ce7";a:0:{}s:32:"23626811f154bebd3950a89961992d56";a:0:{}s:32:"e36490da449f1f2ef5d516c590fd6601";a:0:{}s:32:"a1ddc83cc6347973dc7682d7049ba2bb";a:0:{}s:32:"f94cb38126f998ffddc95d523e3429aa";N;s:32:"e8efbd3118dfc8f6b8286f05fb9e8155";a:0:{}s:32:"fb88568ca8bf0f6b2e039d15b91a478e";a:0:{}s:32:"eaf0195d8c2cd2e53d213170350d3b07";a:0:{}s:32:"a5fb59797d4b16774dec7c29dc639614";a:0:{}s:32:"c0de1ab7636d1f0d51d709a58a51ab03";a:0:{}s:32:"7656a606a3b863378559b4a521f41d0d";a:0:{}s:32:"e6f4fc0d2fda3a42f86c43c9bf456fab";a:0:{}s:32:"633fa6e23a83c58e041c27a2dab0bede";N;s:32:"6677d0b720099243ee9b81372c7b7461";a:0:{}s:32:"73f7f6e31e22b9ffff338b892d68e507";a:0:{}s:32:"6b02641cf10a42040364011c9d2eca38";a:0:{}s:32:"782b198aefaef9f8db7e58e2cb267e1f";a:0:{}}', 'no'),
(281, '_transient_timeout_external_ip_address_127.0.0.1', '1497534200', 'no'),
(282, '_transient_external_ip_address_127.0.0.1', '113.193.7.70', 'no'),
(312, '_transient_product_query-transient-version', '1497111849', 'yes'),
(313, '_transient_product-transient-version', '1497111849', 'yes'),
(351, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497185965;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(360, '_transient_timeout_wc_related_14', '1497073917', 'no'),
(361, '_transient_wc_related_14', 'a:1:{i:0;s:2:"15";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(430, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(432, '_transient_shipping-transient-version', '1496999070', 'yes'),
(433, '_transient_timeout_wc_shipping_method_count_0_1496999070', '1499591070', 'no'),
(434, '_transient_wc_shipping_method_count_0_1496999070', '0', 'no'),
(447, '_transient_timeout_wc_related_42', '1497090867', 'no'),
(448, '_transient_wc_related_42', 'a:0:{}', 'no'),
(460, '_transient_timeout_wc_related_49', '1497090939', 'no'),
(461, '_transient_wc_related_49', 'a:0:{}', 'no'),
(476, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(500, '_site_transient_timeout_browser_e98787bd8e728c47faf5d26e5d6c4cb5', '1497631111', 'no'),
(501, '_site_transient_browser_e98787bd8e728c47faf5d26e5d6c4cb5', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(541, '_transient_timeout_plugin_slugs', '1497175346', 'no'),
(542, '_transient_plugin_slugs', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:103:"tutsplus-separate-products-categories-in-archives/tutsplus-separate-products-categories-in-archives.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'no'),
(546, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(575, '_transient_timeout_wc_term_counts', '1499703854', 'no'),
(576, '_transient_wc_term_counts', 'a:4:{i:15;s:1:"2";i:17;s:1:"1";i:16;s:1:"1";i:18;s:1:"3";}', 'no'),
(577, '_transient_timeout_wc_loop60181497111849', '1499703854', 'no'),
(578, '_transient_wc_loop60181497111849', 'O:8:"WP_Query":49:{s:5:"query";a:9:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";s:2:"12";s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:11:"mixing_bowl";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";}s:10:"query_vars";a:70:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";i:12;s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:11:"mixing_bowl";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";s:5:"error";s:0:"";s:1:"m";s:0:"";s:1:"p";i:0;s:11:"post_parent";s:0:"";s:7:"subpost";s:0:"";s:10:"subpost_id";s:0:"";s:10:"attachment";s:0:"";s:13:"attachment_id";i:0;s:4:"name";s:0:"";s:6:"static";s:0:"";s:8:"pagename";s:0:"";s:7:"page_id";i:0;s:6:"second";s:0:"";s:6:"minute";s:0:"";s:4:"hour";s:0:"";s:3:"day";i:0;s:8:"monthnum";i:0;s:4:"year";i:0;s:1:"w";i:0;s:13:"category_name";s:0:"";s:3:"tag";s:0:"";s:3:"cat";s:0:"";s:6:"tag_id";s:0:"";s:6:"author";s:0:"";s:11:"author_name";s:0:"";s:4:"feed";s:0:"";s:2:"tb";s:0:"";s:5:"paged";i:0;s:10:"meta_value";s:0:"";s:7:"preview";s:0:"";s:1:"s";s:0:"";s:8:"sentence";s:0:"";s:5:"title";s:0:"";s:6:"fields";s:0:"";s:10:"menu_order";s:0:"";s:5:"embed";s:0:"";s:12:"category__in";a:0:{}s:16:"category__not_in";a:0:{}s:13:"category__and";a:0:{}s:8:"post__in";a:0:{}s:12:"post__not_in";a:0:{}s:13:"post_name__in";a:0:{}s:7:"tag__in";a:0:{}s:11:"tag__not_in";a:0:{}s:8:"tag__and";a:0:{}s:12:"tag_slug__in";a:0:{}s:13:"tag_slug__and";a:0:{}s:15:"post_parent__in";a:0:{}s:19:"post_parent__not_in";a:0:{}s:10:"author__in";a:0:{}s:14:"author__not_in";a:0:{}s:16:"suppress_filters";b:0;s:13:"cache_results";b:1;s:22:"update_post_term_cache";b:1;s:19:"lazy_load_term_meta";b:1;s:22:"update_post_meta_cache";b:1;s:8:"nopaging";b:0;s:17:"comments_per_page";s:2:"50";s:13:"no_found_rows";b:0;s:8:"taxonomy";s:11:"product_cat";s:4:"term";s:11:"mixing_bowl";}s:9:"tax_query";O:12:"WP_Tax_Query":6:{s:7:"queries";a:2:{i:0;a:5:{s:8:"taxonomy";s:18:"product_visibility";s:5:"terms";a:1:{i:0;i:7;}s:5:"field";s:16:"term_taxonomy_id";s:8:"operator";s:6:"NOT IN";s:16:"include_children";b:1;}i:1;a:2:{i:0;a:5:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:11:"mixing_bowl";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";s:16:"include_children";b:1;}s:8:"relation";s:3:"AND";}}s:8:"relation";s:3:"AND";s:16:"\0*\0table_aliases";a:1:{i:0;s:21:"wp_term_relationships";}s:13:"queried_terms";a:1:{s:11:"product_cat";a:2:{s:5:"terms";a:1:{i:0;s:11:"mixing_bowl";}s:5:"field";s:4:"slug";}}s:13:"primary_table";s:8:"wp_posts";s:17:"primary_id_column";s:2:"ID";}s:10:"meta_query";O:13:"WP_Meta_Query":9:{s:7:"queries";a:0:{}s:8:"relation";N;s:10:"meta_table";N;s:14:"meta_id_column";N;s:13:"primary_table";N;s:17:"primary_id_column";N;s:16:"\0*\0table_aliases";a:0:{}s:10:"\0*\0clauses";a:0:{}s:18:"\0*\0has_or_relation";b:0;}s:10:"date_query";b:0;s:7:"request";s:506:"SELECT SQL_CALC_FOUND_ROWS  wp_posts.ID FROM wp_posts  LEFT JOIN wp_term_relationships ON (wp_posts.ID = wp_term_relationships.object_id) WHERE 1=1  AND ( \n  wp_posts.ID NOT IN (\n				SELECT object_id\n				FROM wp_term_relationships\n				WHERE term_taxonomy_id IN (7)\n			) \n  AND \n  ( \n    wp_term_relationships.term_taxonomy_id IN (15)\n  )\n) AND wp_posts.post_type = \'product\' AND ((wp_posts.post_status = \'publish\')) GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order ASC, wp_posts.post_title ASC LIMIT 0, 12";s:5:"posts";a:2:{i:0;O:7:"WP_Post":24:{s:2:"ID";i:14;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-09 05:04:35";s:13:"post_date_gmt";s:19:"2017-06-09 05:04:35";s:12:"post_content";s:0:"";s:10:"post_title";s:4:"Pans";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:4:"pans";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-09 05:05:31";s:17:"post_modified_gmt";s:19:"2017-06-09 05:05:31";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:55:"http://localhost/togg-test/?post_type=product&#038;p=14";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:1;O:7:"WP_Post":24:{s:2:"ID";i:15;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-09 05:06:13";s:13:"post_date_gmt";s:19:"2017-06-09 05:06:13";s:12:"post_content";s:0:"";s:10:"post_title";s:5:"Pans1";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:5:"pans1";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-09 05:06:39";s:17:"post_modified_gmt";s:19:"2017-06-09 05:06:39";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:55:"http://localhost/togg-test/?post_type=product&#038;p=15";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}}s:10:"post_count";i:2;s:12:"current_post";i:-1;s:11:"in_the_loop";b:0;s:4:"post";r:150;s:13:"comment_count";i:0;s:15:"current_comment";i:-1;s:11:"found_posts";s:1:"2";s:13:"max_num_pages";d:1;s:21:"max_num_comment_pages";i:0;s:9:"is_single";b:0;s:10:"is_preview";b:0;s:7:"is_page";b:0;s:10:"is_archive";b:1;s:7:"is_date";b:0;s:7:"is_year";b:0;s:8:"is_month";b:0;s:6:"is_day";b:0;s:7:"is_time";b:0;s:9:"is_author";b:0;s:11:"is_category";b:0;s:6:"is_tag";b:0;s:6:"is_tax";b:0;s:9:"is_search";b:0;s:7:"is_feed";b:0;s:15:"is_comment_feed";b:0;s:12:"is_trackback";b:0;s:7:"is_home";b:0;s:6:"is_404";b:0;s:8:"is_embed";b:0;s:8:"is_paged";b:0;s:8:"is_admin";b:0;s:13:"is_attachment";b:0;s:11:"is_singular";b:0;s:9:"is_robots";b:0;s:13:"is_posts_page";b:0;s:20:"is_post_type_archive";b:1;s:25:"\0WP_Query\0query_vars_hash";s:32:"7a6509ee89f512c951847092d6b89073";s:28:"\0WP_Query\0query_vars_changed";b:0;s:17:"thumbnails_cached";b:0;s:19:"\0WP_Query\0stopwords";N;s:23:"\0WP_Query\0compat_fields";a:2:{i:0;s:15:"query_vars_hash";i:1;s:18:"query_vars_changed";}s:24:"\0WP_Query\0compat_methods";a:2:{i:0;s:16:"init_query_flags";i:1;s:15:"parse_tax_query";}}', 'no'),
(579, '_transient_timeout_wc_loopdc251497111849', '1499703854', 'no'),
(580, '_transient_wc_loopdc251497111849', 'O:8:"WP_Query":49:{s:5:"query";a:9:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";s:2:"12";s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:4:"pans";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";}s:10:"query_vars";a:70:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";i:12;s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:4:"pans";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";s:5:"error";s:0:"";s:1:"m";s:0:"";s:1:"p";i:0;s:11:"post_parent";s:0:"";s:7:"subpost";s:0:"";s:10:"subpost_id";s:0:"";s:10:"attachment";s:0:"";s:13:"attachment_id";i:0;s:4:"name";s:0:"";s:6:"static";s:0:"";s:8:"pagename";s:0:"";s:7:"page_id";i:0;s:6:"second";s:0:"";s:6:"minute";s:0:"";s:4:"hour";s:0:"";s:3:"day";i:0;s:8:"monthnum";i:0;s:4:"year";i:0;s:1:"w";i:0;s:13:"category_name";s:0:"";s:3:"tag";s:0:"";s:3:"cat";s:0:"";s:6:"tag_id";s:0:"";s:6:"author";s:0:"";s:11:"author_name";s:0:"";s:4:"feed";s:0:"";s:2:"tb";s:0:"";s:5:"paged";i:0;s:10:"meta_value";s:0:"";s:7:"preview";s:0:"";s:1:"s";s:0:"";s:8:"sentence";s:0:"";s:5:"title";s:0:"";s:6:"fields";s:0:"";s:10:"menu_order";s:0:"";s:5:"embed";s:0:"";s:12:"category__in";a:0:{}s:16:"category__not_in";a:0:{}s:13:"category__and";a:0:{}s:8:"post__in";a:0:{}s:12:"post__not_in";a:0:{}s:13:"post_name__in";a:0:{}s:7:"tag__in";a:0:{}s:11:"tag__not_in";a:0:{}s:8:"tag__and";a:0:{}s:12:"tag_slug__in";a:0:{}s:13:"tag_slug__and";a:0:{}s:15:"post_parent__in";a:0:{}s:19:"post_parent__not_in";a:0:{}s:10:"author__in";a:0:{}s:14:"author__not_in";a:0:{}s:16:"suppress_filters";b:0;s:13:"cache_results";b:1;s:22:"update_post_term_cache";b:1;s:19:"lazy_load_term_meta";b:1;s:22:"update_post_meta_cache";b:1;s:8:"nopaging";b:0;s:17:"comments_per_page";s:2:"50";s:13:"no_found_rows";b:0;s:8:"taxonomy";s:11:"product_cat";s:4:"term";s:4:"pans";}s:9:"tax_query";O:12:"WP_Tax_Query":6:{s:7:"queries";a:2:{i:0;a:5:{s:8:"taxonomy";s:18:"product_visibility";s:5:"terms";a:1:{i:0;i:7;}s:5:"field";s:16:"term_taxonomy_id";s:8:"operator";s:6:"NOT IN";s:16:"include_children";b:1;}i:1;a:2:{i:0;a:5:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:4:"pans";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";s:16:"include_children";b:1;}s:8:"relation";s:3:"AND";}}s:8:"relation";s:3:"AND";s:16:"\0*\0table_aliases";a:1:{i:0;s:21:"wp_term_relationships";}s:13:"queried_terms";a:1:{s:11:"product_cat";a:2:{s:5:"terms";a:1:{i:0;s:4:"pans";}s:5:"field";s:4:"slug";}}s:13:"primary_table";s:8:"wp_posts";s:17:"primary_id_column";s:2:"ID";}s:10:"meta_query";O:13:"WP_Meta_Query":9:{s:7:"queries";a:0:{}s:8:"relation";N;s:10:"meta_table";N;s:14:"meta_id_column";N;s:13:"primary_table";N;s:17:"primary_id_column";N;s:16:"\0*\0table_aliases";a:0:{}s:10:"\0*\0clauses";a:0:{}s:18:"\0*\0has_or_relation";b:0;}s:10:"date_query";b:0;s:7:"request";s:506:"SELECT SQL_CALC_FOUND_ROWS  wp_posts.ID FROM wp_posts  LEFT JOIN wp_term_relationships ON (wp_posts.ID = wp_term_relationships.object_id) WHERE 1=1  AND ( \n  wp_posts.ID NOT IN (\n				SELECT object_id\n				FROM wp_term_relationships\n				WHERE term_taxonomy_id IN (7)\n			) \n  AND \n  ( \n    wp_term_relationships.term_taxonomy_id IN (17)\n  )\n) AND wp_posts.post_type = \'product\' AND ((wp_posts.post_status = \'publish\')) GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order ASC, wp_posts.post_title ASC LIMIT 0, 12";s:5:"posts";a:1:{i:0;O:7:"WP_Post":24:{s:2:"ID";i:49;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-09 06:54:41";s:13:"post_date_gmt";s:19:"2017-06-09 06:54:41";s:12:"post_content";s:0:"";s:10:"post_title";s:4:"Pans";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:6:"pans-2";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-09 10:35:25";s:17:"post_modified_gmt";s:19:"2017-06-09 10:35:25";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:55:"http://localhost/togg-test/?post_type=product&#038;p=49";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}}s:10:"post_count";i:1;s:12:"current_post";i:-1;s:11:"in_the_loop";b:0;s:4:"post";r:150;s:13:"comment_count";i:0;s:15:"current_comment";i:-1;s:11:"found_posts";s:1:"1";s:13:"max_num_pages";d:1;s:21:"max_num_comment_pages";i:0;s:9:"is_single";b:0;s:10:"is_preview";b:0;s:7:"is_page";b:0;s:10:"is_archive";b:1;s:7:"is_date";b:0;s:7:"is_year";b:0;s:8:"is_month";b:0;s:6:"is_day";b:0;s:7:"is_time";b:0;s:9:"is_author";b:0;s:11:"is_category";b:0;s:6:"is_tag";b:0;s:6:"is_tax";b:0;s:9:"is_search";b:0;s:7:"is_feed";b:0;s:15:"is_comment_feed";b:0;s:12:"is_trackback";b:0;s:7:"is_home";b:0;s:6:"is_404";b:0;s:8:"is_embed";b:0;s:8:"is_paged";b:0;s:8:"is_admin";b:0;s:13:"is_attachment";b:0;s:11:"is_singular";b:0;s:9:"is_robots";b:0;s:13:"is_posts_page";b:0;s:20:"is_post_type_archive";b:1;s:25:"\0WP_Query\0query_vars_hash";s:32:"41625e1db18c33d26e0772efafe86805";s:28:"\0WP_Query\0query_vars_changed";b:0;s:17:"thumbnails_cached";b:0;s:19:"\0WP_Query\0stopwords";N;s:23:"\0WP_Query\0compat_fields";a:2:{i:0;s:15:"query_vars_hash";i:1;s:18:"query_vars_changed";}s:24:"\0WP_Query\0compat_methods";a:2:{i:0;s:16:"init_query_flags";i:1;s:15:"parse_tax_query";}}', 'no'),
(581, '_transient_timeout_wc_loop57e11497111849', '1499703854', 'no'),
(582, '_transient_wc_loop57e11497111849', 'O:8:"WP_Query":49:{s:5:"query";a:9:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";s:2:"12";s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:8:"spatulas";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";}s:10:"query_vars";a:70:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";i:12;s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:8:"spatulas";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";s:5:"error";s:0:"";s:1:"m";s:0:"";s:1:"p";i:0;s:11:"post_parent";s:0:"";s:7:"subpost";s:0:"";s:10:"subpost_id";s:0:"";s:10:"attachment";s:0:"";s:13:"attachment_id";i:0;s:4:"name";s:0:"";s:6:"static";s:0:"";s:8:"pagename";s:0:"";s:7:"page_id";i:0;s:6:"second";s:0:"";s:6:"minute";s:0:"";s:4:"hour";s:0:"";s:3:"day";i:0;s:8:"monthnum";i:0;s:4:"year";i:0;s:1:"w";i:0;s:13:"category_name";s:0:"";s:3:"tag";s:0:"";s:3:"cat";s:0:"";s:6:"tag_id";s:0:"";s:6:"author";s:0:"";s:11:"author_name";s:0:"";s:4:"feed";s:0:"";s:2:"tb";s:0:"";s:5:"paged";i:0;s:10:"meta_value";s:0:"";s:7:"preview";s:0:"";s:1:"s";s:0:"";s:8:"sentence";s:0:"";s:5:"title";s:0:"";s:6:"fields";s:0:"";s:10:"menu_order";s:0:"";s:5:"embed";s:0:"";s:12:"category__in";a:0:{}s:16:"category__not_in";a:0:{}s:13:"category__and";a:0:{}s:8:"post__in";a:0:{}s:12:"post__not_in";a:0:{}s:13:"post_name__in";a:0:{}s:7:"tag__in";a:0:{}s:11:"tag__not_in";a:0:{}s:8:"tag__and";a:0:{}s:12:"tag_slug__in";a:0:{}s:13:"tag_slug__and";a:0:{}s:15:"post_parent__in";a:0:{}s:19:"post_parent__not_in";a:0:{}s:10:"author__in";a:0:{}s:14:"author__not_in";a:0:{}s:16:"suppress_filters";b:0;s:13:"cache_results";b:1;s:22:"update_post_term_cache";b:1;s:19:"lazy_load_term_meta";b:1;s:22:"update_post_meta_cache";b:1;s:8:"nopaging";b:0;s:17:"comments_per_page";s:2:"50";s:13:"no_found_rows";b:0;s:8:"taxonomy";s:11:"product_cat";s:4:"term";s:8:"spatulas";}s:9:"tax_query";O:12:"WP_Tax_Query":6:{s:7:"queries";a:2:{i:0;a:5:{s:8:"taxonomy";s:18:"product_visibility";s:5:"terms";a:1:{i:0;i:7;}s:5:"field";s:16:"term_taxonomy_id";s:8:"operator";s:6:"NOT IN";s:16:"include_children";b:1;}i:1;a:2:{i:0;a:5:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:8:"spatulas";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";s:16:"include_children";b:1;}s:8:"relation";s:3:"AND";}}s:8:"relation";s:3:"AND";s:16:"\0*\0table_aliases";a:1:{i:0;s:21:"wp_term_relationships";}s:13:"queried_terms";a:1:{s:11:"product_cat";a:2:{s:5:"terms";a:1:{i:0;s:8:"spatulas";}s:5:"field";s:4:"slug";}}s:13:"primary_table";s:8:"wp_posts";s:17:"primary_id_column";s:2:"ID";}s:10:"meta_query";O:13:"WP_Meta_Query":9:{s:7:"queries";a:0:{}s:8:"relation";N;s:10:"meta_table";N;s:14:"meta_id_column";N;s:13:"primary_table";N;s:17:"primary_id_column";N;s:16:"\0*\0table_aliases";a:0:{}s:10:"\0*\0clauses";a:0:{}s:18:"\0*\0has_or_relation";b:0;}s:10:"date_query";b:0;s:7:"request";s:506:"SELECT SQL_CALC_FOUND_ROWS  wp_posts.ID FROM wp_posts  LEFT JOIN wp_term_relationships ON (wp_posts.ID = wp_term_relationships.object_id) WHERE 1=1  AND ( \n  wp_posts.ID NOT IN (\n				SELECT object_id\n				FROM wp_term_relationships\n				WHERE term_taxonomy_id IN (7)\n			) \n  AND \n  ( \n    wp_term_relationships.term_taxonomy_id IN (16)\n  )\n) AND wp_posts.post_type = \'product\' AND ((wp_posts.post_status = \'publish\')) GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order ASC, wp_posts.post_title ASC LIMIT 0, 12";s:5:"posts";a:1:{i:0;O:7:"WP_Post":24:{s:2:"ID";i:42;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-09 06:12:30";s:13:"post_date_gmt";s:19:"2017-06-09 06:12:30";s:12:"post_content";s:0:"";s:10:"post_title";s:8:"Spatulas";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:8:"spatulas";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-09 06:19:25";s:17:"post_modified_gmt";s:19:"2017-06-09 06:19:25";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:55:"http://localhost/togg-test/?post_type=product&#038;p=42";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}}s:10:"post_count";i:1;s:12:"current_post";i:-1;s:11:"in_the_loop";b:0;s:4:"post";r:150;s:13:"comment_count";i:0;s:15:"current_comment";i:-1;s:11:"found_posts";s:1:"1";s:13:"max_num_pages";d:1;s:21:"max_num_comment_pages";i:0;s:9:"is_single";b:0;s:10:"is_preview";b:0;s:7:"is_page";b:0;s:10:"is_archive";b:1;s:7:"is_date";b:0;s:7:"is_year";b:0;s:8:"is_month";b:0;s:6:"is_day";b:0;s:7:"is_time";b:0;s:9:"is_author";b:0;s:11:"is_category";b:0;s:6:"is_tag";b:0;s:6:"is_tax";b:0;s:9:"is_search";b:0;s:7:"is_feed";b:0;s:15:"is_comment_feed";b:0;s:12:"is_trackback";b:0;s:7:"is_home";b:0;s:6:"is_404";b:0;s:8:"is_embed";b:0;s:8:"is_paged";b:0;s:8:"is_admin";b:0;s:13:"is_attachment";b:0;s:11:"is_singular";b:0;s:9:"is_robots";b:0;s:13:"is_posts_page";b:0;s:20:"is_post_type_archive";b:1;s:25:"\0WP_Query\0query_vars_hash";s:32:"a2ab61011ccf10f5257f5b15f118a530";s:28:"\0WP_Query\0query_vars_changed";b:0;s:17:"thumbnails_cached";b:0;s:19:"\0WP_Query\0stopwords";N;s:23:"\0WP_Query\0compat_fields";a:2:{i:0;s:15:"query_vars_hash";i:1;s:18:"query_vars_changed";}s:24:"\0WP_Query\0compat_methods";a:2:{i:0;s:16:"init_query_flags";i:1;s:15:"parse_tax_query";}}', 'no'),
(583, '_transient_timeout_wc_loop03a01497111849', '1499703854', 'no'),
(584, '_transient_wc_loop03a01497111849', 'O:8:"WP_Query":49:{s:5:"query";a:9:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";s:2:"12";s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:17:"bakery-accesories";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";}s:10:"query_vars";a:70:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:7:"orderby";s:16:"menu_order title";s:5:"order";s:3:"ASC";s:14:"posts_per_page";i:12;s:10:"meta_query";a:0:{}s:9:"tax_query";a:2:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}i:1;a:1:{i:0;a:4:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:17:"bakery-accesories";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";}}}s:8:"meta_key";s:0:"";s:5:"error";s:0:"";s:1:"m";s:0:"";s:1:"p";i:0;s:11:"post_parent";s:0:"";s:7:"subpost";s:0:"";s:10:"subpost_id";s:0:"";s:10:"attachment";s:0:"";s:13:"attachment_id";i:0;s:4:"name";s:0:"";s:6:"static";s:0:"";s:8:"pagename";s:0:"";s:7:"page_id";i:0;s:6:"second";s:0:"";s:6:"minute";s:0:"";s:4:"hour";s:0:"";s:3:"day";i:0;s:8:"monthnum";i:0;s:4:"year";i:0;s:1:"w";i:0;s:13:"category_name";s:0:"";s:3:"tag";s:0:"";s:3:"cat";s:0:"";s:6:"tag_id";s:0:"";s:6:"author";s:0:"";s:11:"author_name";s:0:"";s:4:"feed";s:0:"";s:2:"tb";s:0:"";s:5:"paged";i:0;s:10:"meta_value";s:0:"";s:7:"preview";s:0:"";s:1:"s";s:0:"";s:8:"sentence";s:0:"";s:5:"title";s:0:"";s:6:"fields";s:0:"";s:10:"menu_order";s:0:"";s:5:"embed";s:0:"";s:12:"category__in";a:0:{}s:16:"category__not_in";a:0:{}s:13:"category__and";a:0:{}s:8:"post__in";a:0:{}s:12:"post__not_in";a:0:{}s:13:"post_name__in";a:0:{}s:7:"tag__in";a:0:{}s:11:"tag__not_in";a:0:{}s:8:"tag__and";a:0:{}s:12:"tag_slug__in";a:0:{}s:13:"tag_slug__and";a:0:{}s:15:"post_parent__in";a:0:{}s:19:"post_parent__not_in";a:0:{}s:10:"author__in";a:0:{}s:14:"author__not_in";a:0:{}s:16:"suppress_filters";b:0;s:13:"cache_results";b:1;s:22:"update_post_term_cache";b:1;s:19:"lazy_load_term_meta";b:1;s:22:"update_post_meta_cache";b:1;s:8:"nopaging";b:0;s:17:"comments_per_page";s:2:"50";s:13:"no_found_rows";b:0;s:8:"taxonomy";s:11:"product_cat";s:4:"term";s:17:"bakery-accesories";}s:9:"tax_query";O:12:"WP_Tax_Query":6:{s:7:"queries";a:2:{i:0;a:5:{s:8:"taxonomy";s:18:"product_visibility";s:5:"terms";a:1:{i:0;i:7;}s:5:"field";s:16:"term_taxonomy_id";s:8:"operator";s:6:"NOT IN";s:16:"include_children";b:1;}i:1;a:2:{i:0;a:5:{s:8:"taxonomy";s:11:"product_cat";s:5:"terms";a:1:{i:0;s:17:"bakery-accesories";}s:5:"field";s:4:"slug";s:8:"operator";s:2:"IN";s:16:"include_children";b:1;}s:8:"relation";s:3:"AND";}}s:8:"relation";s:3:"AND";s:16:"\0*\0table_aliases";a:1:{i:0;s:21:"wp_term_relationships";}s:13:"queried_terms";a:1:{s:11:"product_cat";a:2:{s:5:"terms";a:1:{i:0;s:17:"bakery-accesories";}s:5:"field";s:4:"slug";}}s:13:"primary_table";s:8:"wp_posts";s:17:"primary_id_column";s:2:"ID";}s:10:"meta_query";O:13:"WP_Meta_Query":9:{s:7:"queries";a:0:{}s:8:"relation";N;s:10:"meta_table";N;s:14:"meta_id_column";N;s:13:"primary_table";N;s:17:"primary_id_column";N;s:16:"\0*\0table_aliases";a:0:{}s:10:"\0*\0clauses";a:0:{}s:18:"\0*\0has_or_relation";b:0;}s:10:"date_query";b:0;s:7:"request";s:506:"SELECT SQL_CALC_FOUND_ROWS  wp_posts.ID FROM wp_posts  LEFT JOIN wp_term_relationships ON (wp_posts.ID = wp_term_relationships.object_id) WHERE 1=1  AND ( \n  wp_posts.ID NOT IN (\n				SELECT object_id\n				FROM wp_term_relationships\n				WHERE term_taxonomy_id IN (7)\n			) \n  AND \n  ( \n    wp_term_relationships.term_taxonomy_id IN (18)\n  )\n) AND wp_posts.post_type = \'product\' AND ((wp_posts.post_status = \'publish\')) GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order ASC, wp_posts.post_title ASC LIMIT 0, 12";s:5:"posts";a:3:{i:0;O:7:"WP_Post":24:{s:2:"ID";i:115;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-10 16:23:08";s:13:"post_date_gmt";s:19:"2017-06-10 16:23:08";s:12:"post_content";s:0:"";s:10:"post_title";s:21:"Chocolate Melting Pot";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:21:"chocolate-melting-pot";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-10 16:23:53";s:17:"post_modified_gmt";s:19:"2017-06-10 16:23:53";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:56:"http://localhost/togg-test/?post_type=product&#038;p=115";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:1;O:7:"WP_Post":24:{s:2:"ID";i:113;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-10 16:22:16";s:13:"post_date_gmt";s:19:"2017-06-10 16:22:16";s:12:"post_content";s:0:"";s:10:"post_title";s:21:"Cupcake Cookie Cutter";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:21:"cupcake-cookie-cutter";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-10 16:24:09";s:17:"post_modified_gmt";s:19:"2017-06-10 16:24:09";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:56:"http://localhost/togg-test/?post_type=product&#038;p=113";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:2;O:7:"WP_Post":24:{s:2:"ID";i:50;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-06-09 06:56:32";s:13:"post_date_gmt";s:19:"2017-06-09 06:56:32";s:12:"post_content";s:0:"";s:10:"post_title";s:14:"Fondant Roller";s:12:"post_excerpt";s:0:"";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:6:"bakery";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-06-10 16:21:08";s:17:"post_modified_gmt";s:19:"2017-06-10 16:21:08";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:55:"http://localhost/togg-test/?post_type=product&#038;p=50";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}}s:10:"post_count";i:3;s:12:"current_post";i:-1;s:11:"in_the_loop";b:0;s:4:"post";r:150;s:13:"comment_count";i:0;s:15:"current_comment";i:-1;s:11:"found_posts";s:1:"3";s:13:"max_num_pages";d:1;s:21:"max_num_comment_pages";i:0;s:9:"is_single";b:0;s:10:"is_preview";b:0;s:7:"is_page";b:0;s:10:"is_archive";b:1;s:7:"is_date";b:0;s:7:"is_year";b:0;s:8:"is_month";b:0;s:6:"is_day";b:0;s:7:"is_time";b:0;s:9:"is_author";b:0;s:11:"is_category";b:0;s:6:"is_tag";b:0;s:6:"is_tax";b:0;s:9:"is_search";b:0;s:7:"is_feed";b:0;s:15:"is_comment_feed";b:0;s:12:"is_trackback";b:0;s:7:"is_home";b:0;s:6:"is_404";b:0;s:8:"is_embed";b:0;s:8:"is_paged";b:0;s:8:"is_admin";b:0;s:13:"is_attachment";b:0;s:11:"is_singular";b:0;s:9:"is_robots";b:0;s:13:"is_posts_page";b:0;s:20:"is_post_type_archive";b:1;s:25:"\0WP_Query\0query_vars_hash";s:32:"1cd923cbb22377ac68a64a998297246e";s:28:"\0WP_Query\0query_vars_changed";b:0;s:17:"thumbnails_cached";b:0;s:19:"\0WP_Query\0stopwords";N;s:23:"\0WP_Query\0compat_fields";a:2:{i:0;s:15:"query_vars_hash";i:1;s:18:"query_vars_changed";}s:24:"\0WP_Query\0compat_methods";a:2:{i:0;s:16:"init_query_flags";i:1;s:15:"parse_tax_query";}}', 'no'),
(589, '_transient_timeout_wc_admin_report', '1497203221', 'no'),
(590, '_transient_wc_admin_report', 'a:1:{s:32:"413abb7796a4a9df70ba585743a51a59";a:0:{}}', 'no'),
(591, '_transient_timeout_wc_low_stock_count', '1499708821', 'no'),
(592, '_transient_wc_low_stock_count', '0', 'no'),
(593, '_transient_timeout_wc_outofstock_count', '1499708821', 'no'),
(594, '_transient_wc_outofstock_count', '0', 'no'),
(619, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1497194345', 'no'),
(620, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution\nstream_socket_client(): unable to connect to tcp://wordpress.org:80 (php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution)</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution\nstream_socket_client(): unable to connect to ssl://planet.wordpress.org:443 (php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution)</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(640, 'product_cat_children', 'a:0:{}', 'yes'),
(646, '_transient_is_multi_author', '0', 'yes'),
(648, '_site_transient_timeout_theme_roots', '1497187765', 'no'),
(649, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(652, '_transient_timeout_wc_related_113', '1497275533', 'no'),
(653, '_transient_wc_related_113', 'a:2:{i:0;s:2:"50";i:1;s:3:"115";}', 'no'),
(654, '_transient_timeout_wc_related_115', '1497275875', 'no'),
(655, '_transient_wc_related_115', 'a:2:{i:0;s:2:"50";i:1;s:3:"113";}', 'no'),
(656, '_transient_timeout_wc_related_50', '1497276035', 'no'),
(657, '_transient_wc_related_50', 'a:2:{i:0;s:3:"113";i:1;s:3:"115";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_customize_draft_post_name', 'home'),
(3, 5, '_customize_draft_post_name', 'about'),
(4, 6, '_customize_draft_post_name', 'contact'),
(5, 7, '_customize_draft_post_name', 'blog'),
(6, 8, '_customize_draft_post_name', 'a-homepage-section'),
(7, 10, '_wp_attached_file', '2017/06/mixing-bowl.png'),
(8, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:588;s:6:"height";i:367;s:4:"file";s:23:"2017/06/mixing-bowl.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"mixing-bowl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"mixing-bowl-300x187.png";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"mixing-bowl-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"mixing-bowl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:22:"sumit-thumbnail-avatar";a:4:{s:4:"file";s:23:"mixing-bowl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 11, '_edit_last', '1'),
(10, 11, '_wp_page_template', 'default'),
(11, 11, '_edit_lock', '1497117751:1'),
(12, 14, '_wc_review_count', '0'),
(13, 14, '_wc_rating_count', 'a:0:{}'),
(14, 14, '_wc_average_rating', '0'),
(15, 14, '_edit_last', '1'),
(16, 14, '_edit_lock', '1496984603:1'),
(17, 14, '_sku', ''),
(18, 14, '_regular_price', ''),
(19, 14, '_sale_price', ''),
(20, 14, '_sale_price_dates_from', ''),
(21, 14, '_sale_price_dates_to', ''),
(22, 14, 'total_sales', '0'),
(23, 14, '_tax_status', 'taxable'),
(24, 14, '_tax_class', ''),
(25, 14, '_manage_stock', 'no'),
(26, 14, '_backorders', 'no'),
(27, 14, '_sold_individually', 'no'),
(28, 14, '_weight', ''),
(29, 14, '_length', ''),
(30, 14, '_width', ''),
(31, 14, '_height', ''),
(32, 14, '_upsell_ids', 'a:0:{}'),
(33, 14, '_crosssell_ids', 'a:0:{}'),
(34, 14, '_purchase_note', ''),
(35, 14, '_default_attributes', 'a:0:{}'),
(36, 14, '_virtual', 'no'),
(37, 14, '_downloadable', 'no'),
(38, 14, '_product_image_gallery', '10'),
(39, 14, '_download_limit', '-1'),
(40, 14, '_download_expiry', '-1'),
(41, 14, '_stock', NULL),
(42, 14, '_stock_status', 'instock'),
(43, 14, '_product_version', '3.0.8'),
(44, 14, '_price', ''),
(45, 14, '_thumbnail_id', '10'),
(46, 15, '_wc_review_count', '0'),
(47, 15, '_wc_rating_count', 'a:0:{}'),
(48, 15, '_wc_average_rating', '0'),
(49, 15, '_edit_last', '1'),
(50, 15, '_edit_lock', '1496985137:1'),
(51, 15, '_thumbnail_id', '10'),
(52, 15, '_sku', ''),
(53, 15, '_regular_price', ''),
(54, 15, '_sale_price', ''),
(55, 15, '_sale_price_dates_from', ''),
(56, 15, '_sale_price_dates_to', ''),
(57, 15, 'total_sales', '0'),
(58, 15, '_tax_status', 'taxable'),
(59, 15, '_tax_class', ''),
(60, 15, '_manage_stock', 'no'),
(61, 15, '_backorders', 'no'),
(62, 15, '_sold_individually', 'no'),
(63, 15, '_weight', ''),
(64, 15, '_length', ''),
(65, 15, '_width', ''),
(66, 15, '_height', ''),
(67, 15, '_upsell_ids', 'a:0:{}'),
(68, 15, '_crosssell_ids', 'a:0:{}'),
(69, 15, '_purchase_note', ''),
(70, 15, '_default_attributes', 'a:0:{}'),
(71, 15, '_virtual', 'no'),
(72, 15, '_downloadable', 'no'),
(73, 15, '_product_image_gallery', ''),
(74, 15, '_download_limit', '-1'),
(75, 15, '_download_expiry', '-1'),
(76, 15, '_stock', NULL),
(77, 15, '_stock_status', 'instock'),
(78, 15, '_product_version', '3.0.8'),
(79, 15, '_price', ''),
(80, 41, '_wp_attached_file', '2017/06/spatulas.png'),
(81, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:591;s:6:"height";i:301;s:4:"file";s:20:"2017/06/spatulas.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"spatulas-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"spatulas-300x153.png";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"spatulas-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"spatulas-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"spatulas-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 42, '_wc_review_count', '0'),
(83, 42, '_wc_rating_count', 'a:0:{}'),
(84, 42, '_wc_average_rating', '0'),
(85, 42, '_edit_last', '1'),
(86, 42, '_edit_lock', '1496989399:1'),
(87, 42, '_thumbnail_id', '41'),
(88, 42, '_sku', ''),
(89, 42, '_regular_price', ''),
(90, 42, '_sale_price', ''),
(91, 42, '_sale_price_dates_from', ''),
(92, 42, '_sale_price_dates_to', ''),
(93, 42, 'total_sales', '0'),
(94, 42, '_tax_status', 'taxable'),
(95, 42, '_tax_class', ''),
(96, 42, '_manage_stock', 'no'),
(97, 42, '_backorders', 'no'),
(98, 42, '_sold_individually', 'no'),
(99, 42, '_weight', ''),
(100, 42, '_length', ''),
(101, 42, '_width', ''),
(102, 42, '_height', ''),
(103, 42, '_upsell_ids', 'a:0:{}'),
(104, 42, '_crosssell_ids', 'a:0:{}'),
(105, 42, '_purchase_note', ''),
(106, 42, '_default_attributes', 'a:0:{}'),
(107, 42, '_virtual', 'no'),
(108, 42, '_downloadable', 'no'),
(109, 42, '_product_image_gallery', ''),
(110, 42, '_download_limit', '-1'),
(111, 42, '_download_expiry', '-1'),
(112, 42, '_stock', NULL),
(113, 42, '_stock_status', 'instock'),
(114, 42, '_product_version', '3.0.8'),
(115, 42, '_price', ''),
(116, 45, '_wc_review_count', '0'),
(117, 45, '_wc_rating_count', 'a:0:{}'),
(118, 45, '_wc_average_rating', '0'),
(119, 46, '_wp_attached_file', '2017/06/pans.png'),
(120, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:588;s:6:"height";i:367;s:4:"file";s:16:"2017/06/pans.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pans-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"pans-300x187.png";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"pans-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pans-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:16:"pans-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 47, '_wp_attached_file', '2017/06/Amazon_35.png'),
(122, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:542;s:4:"file";s:21:"2017/06/Amazon_35.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Amazon_35-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"Amazon_35-215x300.png";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Amazon_35-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Amazon_35-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"Amazon_35-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 49, '_wc_review_count', '0'),
(124, 49, '_wc_rating_count', 'a:0:{}'),
(125, 49, '_wc_average_rating', '0'),
(126, 49, '_edit_last', '1'),
(127, 49, '_edit_lock', '1497006588:1'),
(128, 49, '_thumbnail_id', '46'),
(129, 49, '_sku', ''),
(130, 49, '_regular_price', '1233'),
(131, 49, '_sale_price', ''),
(132, 49, '_sale_price_dates_from', ''),
(133, 49, '_sale_price_dates_to', ''),
(134, 49, 'total_sales', '0'),
(135, 49, '_tax_status', 'taxable'),
(136, 49, '_tax_class', ''),
(137, 49, '_manage_stock', 'no'),
(138, 49, '_backorders', 'no'),
(139, 49, '_sold_individually', 'no'),
(140, 49, '_weight', ''),
(141, 49, '_length', ''),
(142, 49, '_width', ''),
(143, 49, '_height', ''),
(144, 49, '_upsell_ids', 'a:0:{}'),
(145, 49, '_crosssell_ids', 'a:0:{}'),
(146, 49, '_purchase_note', ''),
(147, 49, '_default_attributes', 'a:0:{}'),
(148, 49, '_virtual', 'no'),
(149, 49, '_downloadable', 'no'),
(150, 49, '_product_image_gallery', ''),
(151, 49, '_download_limit', '-1'),
(152, 49, '_download_expiry', '-1'),
(153, 49, '_stock', NULL),
(154, 49, '_stock_status', 'instock'),
(155, 49, '_product_version', '3.0.8'),
(156, 49, '_price', '1233'),
(157, 50, '_wc_review_count', '0'),
(158, 50, '_wc_rating_count', 'a:0:{}'),
(159, 50, '_wc_average_rating', '0'),
(160, 50, '_edit_last', '1'),
(161, 50, '_edit_lock', '1497111529:1'),
(162, 50, '_thumbnail_id', '111'),
(163, 50, '_sku', ''),
(164, 50, '_regular_price', '1350'),
(165, 50, '_sale_price', ''),
(166, 50, '_sale_price_dates_from', ''),
(167, 50, '_sale_price_dates_to', ''),
(168, 50, 'total_sales', '0'),
(169, 50, '_tax_status', 'taxable'),
(170, 50, '_tax_class', ''),
(171, 50, '_manage_stock', 'no'),
(172, 50, '_backorders', 'no'),
(173, 50, '_sold_individually', 'no'),
(174, 50, '_weight', ''),
(175, 50, '_length', ''),
(176, 50, '_width', ''),
(177, 50, '_height', ''),
(178, 50, '_upsell_ids', 'a:0:{}'),
(179, 50, '_crosssell_ids', 'a:0:{}'),
(180, 50, '_purchase_note', ''),
(181, 50, '_default_attributes', 'a:0:{}'),
(182, 50, '_virtual', 'no'),
(183, 50, '_downloadable', 'no'),
(184, 50, '_product_image_gallery', ''),
(185, 50, '_download_limit', '-1'),
(186, 50, '_download_expiry', '-1'),
(187, 50, '_stock', NULL),
(188, 50, '_stock_status', 'instock'),
(189, 50, '_product_version', '3.0.8'),
(190, 50, '_price', '1350'),
(191, 51, '_edit_last', '1'),
(192, 51, '_edit_lock', '1497184942:1'),
(193, 52, '_wp_attached_file', '2017/06/quote.jpg'),
(194, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:540;s:4:"file";s:17:"2017/06/quote.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"quote-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"quote-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"quote-768x324.jpg";s:5:"width";i:768;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"quote-1024x432.jpg";s:5:"width";i:1024;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"quote-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"quote-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"quote-600x540.jpg";s:5:"width";i:600;s:6:"height";i:540;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:17:"quote-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 51, '_thumbnail_id', '52'),
(196, 53, '_edit_last', '1'),
(197, 53, '_edit_lock', '1497184780:1'),
(198, 54, '_wp_attached_file', '2017/06/slide.jpg'),
(199, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:441;s:4:"file";s:17:"2017/06/slide.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"slide-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"slide-300x103.jpg";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"slide-768x265.jpg";s:5:"width";i:768;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"slide-1024x353.jpg";s:5:"width";i:1024;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"slide-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"slide-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"slide-600x441.jpg";s:5:"width";i:600;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:17:"slide-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 53, '_thumbnail_id', '52'),
(201, 55, '_edit_last', '1'),
(202, 55, 'field_593a51d33c708', 'a:14:{s:3:"key";s:19:"field_593a51d33c708";s:5:"label";s:23:"Feature Product Heading";s:4:"name";s:23:"feature_product_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(204, 55, 'position', 'normal'),
(205, 55, 'layout', 'no_box'),
(206, 55, 'hide_on_screen', ''),
(207, 55, '_edit_lock', '1496998288:1'),
(208, 55, 'field_593a51f14912a', 'a:11:{s:3:"key";s:19:"field_593a51f14912a";s:5:"label";s:23:"Feature Product Content";s:4:"name";s:23:"feature_product_content";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(210, 55, 'field_593a522bab87e', 'a:14:{s:3:"key";s:19:"field_593a522bab87e";s:5:"label";s:21:"Feature Product Tab 1";s:4:"name";s:21:"feature_product_tab_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(212, 55, 'field_593a5240a2812', 'a:14:{s:3:"key";s:19:"field_593a5240a2812";s:5:"label";s:21:"Feature Product Tab 2";s:4:"name";s:21:"feature_product_tab_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(214, 55, 'field_593a52493f147', 'a:14:{s:3:"key";s:19:"field_593a52493f147";s:5:"label";s:21:"Feature Product Tab 3";s:4:"name";s:21:"feature_product_tab_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(216, 55, 'field_593a525019cc4', 'a:14:{s:3:"key";s:19:"field_593a525019cc4";s:5:"label";s:21:"Feature Product Tab 4";s:4:"name";s:21:"feature_product_tab_4";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(219, 57, 'feature_product_heading', 'FEATURE PRODUCT'),
(220, 57, '_feature_product_heading', 'field_593a51d33c708'),
(221, 57, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(222, 57, '_feature_product_content', 'field_593a51f14912a'),
(223, 57, 'feature_product_tab_1', ''),
(224, 57, '_feature_product_tab_1', 'field_593a522bab87e'),
(225, 57, 'feature_product_tab_2', ''),
(226, 57, '_feature_product_tab_2', 'field_593a5240a2812'),
(227, 57, 'feature_product_tab_3', ''),
(228, 57, '_feature_product_tab_3', 'field_593a52493f147'),
(229, 57, 'feature_product_tab_4', ''),
(230, 57, '_feature_product_tab_4', 'field_593a525019cc4'),
(231, 11, 'feature_product_heading', 'njkndslksnkld'),
(232, 11, '_feature_product_heading', 'field_593a51d33c708'),
(233, 11, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(234, 11, '_feature_product_content', 'field_593a51f14912a'),
(235, 11, 'feature_product_tab_1', 'pansvb'),
(236, 11, '_feature_product_tab_1', 'field_593a522bab87e'),
(237, 11, 'feature_product_tab_2', 'spatula'),
(238, 11, '_feature_product_tab_2', 'field_593a5240a2812'),
(239, 11, 'feature_product_tab_3', 'mixings bowl'),
(240, 11, '_feature_product_tab_3', 'field_593a52493f147'),
(241, 11, 'feature_product_tab_4', 'bakery accesories'),
(242, 11, '_feature_product_tab_4', 'field_593a525019cc4'),
(243, 58, 'feature_product_heading', 'FEATURE PRODUCT'),
(244, 58, '_feature_product_heading', 'field_593a51d33c708'),
(245, 58, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(246, 58, '_feature_product_content', 'field_593a51f14912a'),
(247, 58, 'feature_product_tab_1', 'pans'),
(248, 58, '_feature_product_tab_1', 'field_593a522bab87e'),
(249, 58, 'feature_product_tab_2', 'spatula'),
(250, 58, '_feature_product_tab_2', 'field_593a5240a2812'),
(251, 58, 'feature_product_tab_3', 'mixings bowl'),
(252, 58, '_feature_product_tab_3', 'field_593a52493f147'),
(253, 58, 'feature_product_tab_4', 'bakery accesories'),
(254, 58, '_feature_product_tab_4', 'field_593a525019cc4'),
(298, 62, 'feature_product_heading', 'njkndslksnkld'),
(299, 62, '_feature_product_heading', 'field_593a51d33c708'),
(300, 62, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(301, 62, '_feature_product_content', 'field_593a51f14912a'),
(302, 62, 'feature_product_tab_1', 'pans'),
(303, 62, '_feature_product_tab_1', 'field_593a522bab87e'),
(304, 62, 'feature_product_tab_2', 'spatula'),
(305, 62, '_feature_product_tab_2', 'field_593a5240a2812'),
(306, 62, 'feature_product_tab_3', 'mixings bowl'),
(307, 62, '_feature_product_tab_3', 'field_593a52493f147'),
(308, 62, 'feature_product_tab_4', 'bakery accesories'),
(309, 62, '_feature_product_tab_4', 'field_593a525019cc4'),
(324, 64, 'feature_product_heading', 'njkndslksnkld'),
(325, 64, '_feature_product_heading', 'field_593a51d33c708'),
(326, 64, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(327, 64, '_feature_product_content', 'field_593a51f14912a'),
(328, 64, 'feature_product_tab_1', 'pans'),
(329, 64, '_feature_product_tab_1', 'field_593a522bab87e'),
(330, 64, 'feature_product_tab_2', 'spatula'),
(331, 64, '_feature_product_tab_2', 'field_593a5240a2812'),
(332, 64, 'feature_product_tab_3', 'mixings bowl'),
(333, 64, '_feature_product_tab_3', 'field_593a52493f147'),
(334, 64, 'feature_product_tab_4', 'bakery accesories'),
(335, 64, '_feature_product_tab_4', 'field_593a525019cc4'),
(349, 66, 'feature_product_heading', 'njkndslksnkld'),
(350, 66, '_feature_product_heading', 'field_593a51d33c708'),
(351, 66, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(352, 66, '_feature_product_content', 'field_593a51f14912a'),
(353, 66, 'feature_product_tab_1', 'pansvb'),
(354, 66, '_feature_product_tab_1', 'field_593a522bab87e'),
(355, 66, 'feature_product_tab_2', 'spatula'),
(356, 66, '_feature_product_tab_2', 'field_593a5240a2812'),
(357, 66, 'feature_product_tab_3', 'mixings bowl'),
(358, 66, '_feature_product_tab_3', 'field_593a52493f147'),
(359, 66, 'feature_product_tab_4', 'bakery accesories'),
(360, 66, '_feature_product_tab_4', 'field_593a525019cc4'),
(361, 67, 'feature_product_heading', 'njkndslksnkld'),
(362, 67, '_feature_product_heading', 'field_593a51d33c708'),
(363, 67, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(364, 67, '_feature_product_content', 'field_593a51f14912a'),
(365, 67, 'feature_product_tab_1', ''),
(366, 67, '_feature_product_tab_1', 'field_593a522bab87e'),
(367, 67, 'feature_product_tab_2', 'spatula'),
(368, 67, '_feature_product_tab_2', 'field_593a5240a2812'),
(369, 67, 'feature_product_tab_3', 'mixings bowl'),
(370, 67, '_feature_product_tab_3', 'field_593a52493f147'),
(371, 67, 'feature_product_tab_4', 'bakery accesories'),
(372, 67, '_feature_product_tab_4', 'field_593a525019cc4'),
(373, 68, 'feature_product_heading', 'njkndslksnkld'),
(374, 68, '_feature_product_heading', 'field_593a51d33c708'),
(375, 68, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(376, 68, '_feature_product_content', 'field_593a51f14912a'),
(377, 68, 'feature_product_tab_1', 'pansvb'),
(378, 68, '_feature_product_tab_1', 'field_593a522bab87e'),
(379, 68, 'feature_product_tab_2', 'spatula'),
(380, 68, '_feature_product_tab_2', 'field_593a5240a2812'),
(381, 68, 'feature_product_tab_3', 'mixings bowl'),
(382, 68, '_feature_product_tab_3', 'field_593a52493f147'),
(383, 68, 'feature_product_tab_4', 'bakery accesories'),
(384, 68, '_feature_product_tab_4', 'field_593a525019cc4'),
(387, 55, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:13:"page-home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(388, 70, '_edit_last', '1'),
(389, 70, 'field_593a82ab019d3', 'a:14:{s:3:"key";s:19:"field_593a82ab019d3";s:5:"label";s:23:"Special Product Heading";s:4:"name";s:23:"special_product_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(391, 70, 'position', 'normal'),
(392, 70, 'layout', 'no_box'),
(393, 70, 'hide_on_screen', ''),
(394, 70, '_edit_lock', '1497007619:1'),
(395, 70, 'field_593a82c7940cc', 'a:11:{s:3:"key";s:19:"field_593a82c7940cc";s:5:"label";s:20:"Special Product Text";s:4:"name";s:20:"special_product_text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(397, 70, 'field_593a82ed9df13', 'a:14:{s:3:"key";s:19:"field_593a82ed9df13";s:5:"label";s:27:"Special Product Button Text";s:4:"name";s:27:"special_product_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(399, 70, 'field_593a8312127c0', 'a:14:{s:3:"key";s:19:"field_593a8312127c0";s:5:"label";s:26:"Special Product Button URL";s:4:"name";s:26:"special_product_button_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(402, 71, 'feature_product_heading', 'njkndslksnkld'),
(403, 71, '_feature_product_heading', 'field_593a51d33c708'),
(404, 71, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(405, 71, '_feature_product_content', 'field_593a51f14912a'),
(406, 71, 'feature_product_tab_1', 'pansvb'),
(407, 71, '_feature_product_tab_1', 'field_593a522bab87e'),
(408, 71, 'feature_product_tab_2', 'spatula'),
(409, 71, '_feature_product_tab_2', 'field_593a5240a2812'),
(410, 71, 'feature_product_tab_3', 'mixings bowl'),
(411, 71, '_feature_product_tab_3', 'field_593a52493f147'),
(412, 71, 'feature_product_tab_4', 'bakery accesories'),
(413, 71, '_feature_product_tab_4', 'field_593a525019cc4'),
(414, 71, 'special_product_heading', 'chocholate chip muffins'),
(415, 71, '_special_product_heading', 'field_593a82ab019d3'),
(416, 71, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(417, 71, '_special_product_text', 'field_593a82c7940cc'),
(418, 71, 'special_product_button_text', 'know more'),
(419, 71, '_special_product_button_text', 'field_593a82ed9df13'),
(420, 71, 'special_product_button_url', '#'),
(421, 71, '_special_product_button_url', 'field_593a8312127c0'),
(422, 11, 'special_product_heading', 'chocholate chip muffins'),
(423, 11, '_special_product_heading', 'field_593a82ab019d3'),
(424, 11, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(425, 11, '_special_product_text', 'field_593a82c7940cc'),
(426, 11, 'special_product_button_text', 'know more'),
(427, 11, '_special_product_button_text', 'field_593a82ed9df13'),
(428, 11, 'special_product_button_url', '#'),
(429, 11, '_special_product_button_url', 'field_593a8312127c0'),
(430, 70, 'field_593a840add7b1', 'a:11:{s:3:"key";s:19:"field_593a840add7b1";s:5:"label";s:24:"Special Background Image";s:4:"name";s:24:"special_background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(433, 72, '_wp_attached_file', '2017/06/KNOW-MORE.jpg'),
(434, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:395;s:4:"file";s:21:"2017/06/KNOW-MORE.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"KNOW-MORE-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"KNOW-MORE-300x93.jpg";s:5:"width";i:300;s:6:"height";i:93;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"KNOW-MORE-768x237.jpg";s:5:"width";i:768;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"KNOW-MORE-1024x316.jpg";s:5:"width";i:1024;s:6:"height";i:316;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"KNOW-MORE-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"KNOW-MORE-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"KNOW-MORE-600x395.jpg";s:5:"width";i:600;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"KNOW-MORE-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(435, 73, 'feature_product_heading', 'njkndslksnkld'),
(436, 73, '_feature_product_heading', 'field_593a51d33c708'),
(437, 73, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(438, 73, '_feature_product_content', 'field_593a51f14912a'),
(439, 73, 'feature_product_tab_1', 'pansvb'),
(440, 73, '_feature_product_tab_1', 'field_593a522bab87e'),
(441, 73, 'feature_product_tab_2', 'spatula'),
(442, 73, '_feature_product_tab_2', 'field_593a5240a2812'),
(443, 73, 'feature_product_tab_3', 'mixings bowl'),
(444, 73, '_feature_product_tab_3', 'field_593a52493f147'),
(445, 73, 'feature_product_tab_4', 'bakery accesories'),
(446, 73, '_feature_product_tab_4', 'field_593a525019cc4'),
(447, 73, 'special_background_image', '72'),
(448, 73, '_special_background_image', 'field_593a840add7b1'),
(449, 73, 'special_product_heading', 'chocholate chip muffins'),
(450, 73, '_special_product_heading', 'field_593a82ab019d3'),
(451, 73, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(452, 73, '_special_product_text', 'field_593a82c7940cc'),
(453, 73, 'special_product_button_text', 'know more'),
(454, 73, '_special_product_button_text', 'field_593a82ed9df13'),
(455, 73, 'special_product_button_url', '#'),
(456, 73, '_special_product_button_url', 'field_593a8312127c0'),
(457, 11, 'special_background_image', '117'),
(458, 11, '_special_background_image', 'field_593a840add7b1'),
(459, 70, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:13:"page-home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(460, 74, '_edit_last', '1'),
(461, 74, 'field_593a86a6e11af', 'a:14:{s:3:"key";s:19:"field_593a86a6e11af";s:5:"label";s:14:"Recipe Heading";s:4:"name";s:14:"recipe_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(462, 74, 'field_593a86b4e11b0', 'a:11:{s:3:"key";s:19:"field_593a86b4e11b0";s:5:"label";s:11:"Recipe Text";s:4:"name";s:11:"recipe_text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(464, 74, 'position', 'normal'),
(465, 74, 'layout', 'no_box'),
(466, 74, 'hide_on_screen', ''),
(467, 74, '_edit_lock', '1497009465:1'),
(469, 75, 'feature_product_heading', 'njkndslksnkld'),
(470, 75, '_feature_product_heading', 'field_593a51d33c708'),
(471, 75, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(472, 75, '_feature_product_content', 'field_593a51f14912a'),
(473, 75, 'feature_product_tab_1', 'pansvb'),
(474, 75, '_feature_product_tab_1', 'field_593a522bab87e'),
(475, 75, 'feature_product_tab_2', 'spatula'),
(476, 75, '_feature_product_tab_2', 'field_593a5240a2812'),
(477, 75, 'feature_product_tab_3', 'mixings bowl'),
(478, 75, '_feature_product_tab_3', 'field_593a52493f147'),
(479, 75, 'feature_product_tab_4', 'bakery accesories'),
(480, 75, '_feature_product_tab_4', 'field_593a525019cc4'),
(481, 75, 'recipe_heading', 'recipes'),
(482, 75, '_recipe_heading', 'field_593a86a6e11af'),
(483, 75, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(484, 75, '_recipe_text', 'field_593a86b4e11b0'),
(485, 75, 'special_background_image', '72'),
(486, 75, '_special_background_image', 'field_593a840add7b1'),
(487, 75, 'special_product_heading', 'chocholate chip muffins'),
(488, 75, '_special_product_heading', 'field_593a82ab019d3'),
(489, 75, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(490, 75, '_special_product_text', 'field_593a82c7940cc'),
(491, 75, 'special_product_button_text', 'know more'),
(492, 75, '_special_product_button_text', 'field_593a82ed9df13'),
(493, 75, 'special_product_button_url', '#'),
(494, 75, '_special_product_button_url', 'field_593a8312127c0'),
(495, 11, 'recipe_heading', 'recipes'),
(496, 11, '_recipe_heading', 'field_593a86a6e11af'),
(497, 11, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(498, 11, '_recipe_text', 'field_593a86b4e11b0'),
(499, 76, '_edit_last', '1'),
(500, 76, '_edit_lock', '1497009541:1'),
(501, 76, '_thumbnail_id', '46'),
(502, 77, '_edit_last', '1'),
(503, 77, '_edit_lock', '1497009521:1'),
(504, 77, '_thumbnail_id', '10'),
(505, 74, 'field_593a8b103aae3', 'a:11:{s:3:"key";s:19:"field_593a8b103aae3";s:5:"label";s:17:"Recipe More Image";s:4:"name";s:17:"recipe_more_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(508, 78, '_wp_attached_file', '2017/06/Ellipse-2.png'),
(509, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:62;s:6:"height";i:62;s:4:"file";s:21:"2017/06/Ellipse-2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(510, 79, 'feature_product_heading', 'njkndslksnkld'),
(511, 79, '_feature_product_heading', 'field_593a51d33c708'),
(512, 79, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(513, 79, '_feature_product_content', 'field_593a51f14912a'),
(514, 79, 'feature_product_tab_1', 'pansvb'),
(515, 79, '_feature_product_tab_1', 'field_593a522bab87e'),
(516, 79, 'feature_product_tab_2', 'spatula'),
(517, 79, '_feature_product_tab_2', 'field_593a5240a2812'),
(518, 79, 'feature_product_tab_3', 'mixings bowl'),
(519, 79, '_feature_product_tab_3', 'field_593a52493f147'),
(520, 79, 'feature_product_tab_4', 'bakery accesories'),
(521, 79, '_feature_product_tab_4', 'field_593a525019cc4'),
(522, 79, 'recipe_heading', 'recipes'),
(523, 79, '_recipe_heading', 'field_593a86a6e11af'),
(524, 79, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(525, 79, '_recipe_text', 'field_593a86b4e11b0'),
(526, 79, 'recipe_more_image', '78'),
(527, 79, '_recipe_more_image', 'field_593a8b103aae3'),
(528, 79, 'special_background_image', '72'),
(529, 79, '_special_background_image', 'field_593a840add7b1'),
(530, 79, 'special_product_heading', 'chocholate chip muffins'),
(531, 79, '_special_product_heading', 'field_593a82ab019d3'),
(532, 79, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(533, 79, '_special_product_text', 'field_593a82c7940cc'),
(534, 79, 'special_product_button_text', 'know more'),
(535, 79, '_special_product_button_text', 'field_593a82ed9df13'),
(536, 79, 'special_product_button_url', '#'),
(537, 79, '_special_product_button_url', 'field_593a8312127c0'),
(538, 11, 'recipe_more_image', '78'),
(539, 11, '_recipe_more_image', 'field_593a8b103aae3'),
(541, 74, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:13:"page-home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(542, 81, '_wp_trash_meta_status', 'publish'),
(543, 81, '_wp_trash_meta_time', '1497009964'),
(544, 82, '_wp_trash_meta_status', 'publish'),
(545, 82, '_wp_trash_meta_time', '1497010062'),
(546, 83, '_edit_last', '1'),
(547, 83, '_edit_lock', '1497116300:1'),
(548, 83, '_wp_page_template', 'default'),
(549, 83, '_thumbnail_id', '119'),
(550, 87, '_edit_last', '1'),
(551, 87, '_edit_lock', '1497015199:1'),
(552, 88, '_wp_attached_file', '2017/06/Layer-5.png'),
(553, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:90;s:6:"height";i:34;s:4:"file";s:19:"2017/06/Layer-5.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(554, 87, '_thumbnail_id', '88'),
(555, 89, '_edit_last', '1'),
(556, 89, '_edit_lock', '1497015232:1'),
(557, 90, '_wp_attached_file', '2017/06/Layer-6.png'),
(558, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:88;s:6:"height";i:22;s:4:"file";s:19:"2017/06/Layer-6.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(559, 89, '_thumbnail_id', '90'),
(560, 91, '_edit_last', '1'),
(561, 91, '_edit_lock', '1497015295:1'),
(562, 92, '_wp_attached_file', '2017/06/Layer-8.png'),
(563, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:36;s:4:"file";s:19:"2017/06/Layer-8.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(564, 91, '_thumbnail_id', '92'),
(565, 93, '_edit_last', '1'),
(566, 93, '_edit_lock', '1497015467:1'),
(567, 94, '_wp_attached_file', '2017/06/Layer-7.png'),
(568, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:96;s:6:"height";i:38;s:4:"file";s:19:"2017/06/Layer-7.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(569, 93, '_thumbnail_id', '94'),
(654, 98, '_wp_trash_meta_status', 'publish'),
(655, 98, '_wp_trash_meta_time', '1497027069'),
(656, 99, '_wp_trash_meta_status', 'publish'),
(657, 99, '_wp_trash_meta_time', '1497027148'),
(686, 101, '_menu_item_type', 'custom'),
(687, 101, '_menu_item_menu_item_parent', '0'),
(688, 101, '_menu_item_object_id', '101'),
(689, 101, '_menu_item_object', 'custom'),
(690, 101, '_menu_item_target', ''),
(691, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(692, 101, '_menu_item_xfn', ''),
(693, 101, '_menu_item_url', '#'),
(695, 102, '_menu_item_type', 'custom'),
(696, 102, '_menu_item_menu_item_parent', '0'),
(697, 102, '_menu_item_object_id', '102'),
(698, 102, '_menu_item_object', 'custom'),
(699, 102, '_menu_item_target', ''),
(700, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(701, 102, '_menu_item_xfn', ''),
(702, 102, '_menu_item_url', '#'),
(704, 103, '_menu_item_type', 'custom'),
(705, 103, '_menu_item_menu_item_parent', '0'),
(706, 103, '_menu_item_object_id', '103'),
(707, 103, '_menu_item_object', 'custom'),
(708, 103, '_menu_item_target', ''),
(709, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(710, 103, '_menu_item_xfn', ''),
(711, 103, '_menu_item_url', '#'),
(713, 104, '_menu_item_type', 'custom'),
(714, 104, '_menu_item_menu_item_parent', '0'),
(715, 104, '_menu_item_object_id', '104'),
(716, 104, '_menu_item_object', 'custom'),
(717, 104, '_menu_item_target', ''),
(718, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(719, 104, '_menu_item_xfn', ''),
(720, 104, '_menu_item_url', '#'),
(750, 106, '_wp_trash_meta_status', 'publish'),
(751, 106, '_wp_trash_meta_time', '1497089366'),
(864, 111, '_wp_attached_file', '2017/06/Amazon_41.png'),
(865, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:542;s:4:"file";s:21:"2017/06/Amazon_41.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Amazon_41-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"Amazon_41-216x300.png";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Amazon_41-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Amazon_41-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"Amazon_41-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(866, 113, '_wc_review_count', '0'),
(867, 113, '_wc_rating_count', 'a:0:{}'),
(868, 113, '_wc_average_rating', '0'),
(869, 113, '_edit_last', '1'),
(870, 113, '_edit_lock', '1497113531:1'),
(871, 114, '_wp_attached_file', '2017/06/Amazon_35-1.png'),
(872, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:542;s:4:"file";s:23:"2017/06/Amazon_35-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Amazon_35-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Amazon_35-1-215x300.png";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Amazon_35-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Amazon_35-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"Amazon_35-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(873, 113, '_thumbnail_id', '114'),
(874, 113, '_sku', ''),
(875, 113, '_regular_price', '1350'),
(876, 113, '_sale_price', ''),
(877, 113, '_sale_price_dates_from', ''),
(878, 113, '_sale_price_dates_to', ''),
(879, 113, 'total_sales', '0'),
(880, 113, '_tax_status', 'taxable'),
(881, 113, '_tax_class', ''),
(882, 113, '_manage_stock', 'no'),
(883, 113, '_backorders', 'no'),
(884, 113, '_sold_individually', 'no'),
(885, 113, '_weight', ''),
(886, 113, '_length', ''),
(887, 113, '_width', ''),
(888, 113, '_height', ''),
(889, 113, '_upsell_ids', 'a:0:{}'),
(890, 113, '_crosssell_ids', 'a:0:{}'),
(891, 113, '_purchase_note', ''),
(892, 113, '_default_attributes', 'a:0:{}'),
(893, 113, '_virtual', 'no'),
(894, 113, '_downloadable', 'no'),
(895, 113, '_product_image_gallery', ''),
(896, 113, '_download_limit', '-1'),
(897, 113, '_download_expiry', '-1'),
(898, 113, '_stock', NULL),
(899, 113, '_stock_status', 'instock'),
(900, 113, '_product_version', '3.0.8'),
(901, 113, '_price', '1350'),
(902, 115, '_wc_review_count', '0'),
(903, 115, '_wc_rating_count', 'a:0:{}'),
(904, 115, '_wc_average_rating', '0'),
(905, 115, '_edit_last', '1'),
(906, 115, '_edit_lock', '1497111692:1'),
(907, 116, '_wp_attached_file', '2017/06/Amazon_43.png'),
(908, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:542;s:4:"file";s:21:"2017/06/Amazon_43.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Amazon_43-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"Amazon_43-216x300.png";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Amazon_43-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Amazon_43-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"Amazon_43-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(909, 115, '_thumbnail_id', '116'),
(910, 115, '_sku', ''),
(911, 115, '_regular_price', '1350'),
(912, 115, '_sale_price', ''),
(913, 115, '_sale_price_dates_from', ''),
(914, 115, '_sale_price_dates_to', ''),
(915, 115, 'total_sales', '0'),
(916, 115, '_tax_status', 'taxable'),
(917, 115, '_tax_class', ''),
(918, 115, '_manage_stock', 'no'),
(919, 115, '_backorders', 'no'),
(920, 115, '_sold_individually', 'no'),
(921, 115, '_weight', ''),
(922, 115, '_length', ''),
(923, 115, '_width', ''),
(924, 115, '_height', ''),
(925, 115, '_upsell_ids', 'a:0:{}'),
(926, 115, '_crosssell_ids', 'a:0:{}'),
(927, 115, '_purchase_note', ''),
(928, 115, '_default_attributes', 'a:0:{}'),
(929, 115, '_virtual', 'no'),
(930, 115, '_downloadable', 'no'),
(931, 115, '_product_image_gallery', ''),
(932, 115, '_download_limit', '-1'),
(933, 115, '_download_expiry', '-1'),
(934, 115, '_stock', NULL),
(935, 115, '_stock_status', 'instock'),
(936, 115, '_product_version', '3.0.8'),
(937, 115, '_price', '1350'),
(938, 117, '_wp_attached_file', '2017/06/know-more.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(939, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:751;s:6:"height";i:395;s:4:"file";s:21:"2017/06/know-more.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"know-more-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"know-more-300x158.jpg";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"know-more-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"know-more-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"know-more-600x395.jpg";s:5:"width";i:600;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:21:"know-more-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(940, 118, 'feature_product_heading', 'njkndslksnkld'),
(941, 118, '_feature_product_heading', 'field_593a51d33c708'),
(942, 118, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(943, 118, '_feature_product_content', 'field_593a51f14912a'),
(944, 118, 'feature_product_tab_1', 'pansvb'),
(945, 118, '_feature_product_tab_1', 'field_593a522bab87e'),
(946, 118, 'feature_product_tab_2', 'spatula'),
(947, 118, '_feature_product_tab_2', 'field_593a5240a2812'),
(948, 118, 'feature_product_tab_3', 'mixings bowl'),
(949, 118, '_feature_product_tab_3', 'field_593a52493f147'),
(950, 118, 'feature_product_tab_4', 'bakery accesories'),
(951, 118, '_feature_product_tab_4', 'field_593a525019cc4'),
(952, 118, 'recipe_heading', 'recipes'),
(953, 118, '_recipe_heading', 'field_593a86a6e11af'),
(954, 118, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(955, 118, '_recipe_text', 'field_593a86b4e11b0'),
(956, 118, 'recipe_more_image', '78'),
(957, 118, '_recipe_more_image', 'field_593a8b103aae3'),
(958, 118, 'special_background_image', '117'),
(959, 118, '_special_background_image', 'field_593a840add7b1'),
(960, 118, 'special_product_heading', 'chocholate chip muffins'),
(961, 118, '_special_product_heading', 'field_593a82ab019d3'),
(962, 118, 'special_product_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
(963, 118, '_special_product_text', 'field_593a82c7940cc'),
(964, 118, 'special_product_button_text', 'know more'),
(965, 118, '_special_product_button_text', 'field_593a82ed9df13'),
(966, 118, 'special_product_button_url', '#'),
(967, 118, '_special_product_button_url', 'field_593a8312127c0'),
(968, 119, '_wp_attached_file', '2017/06/about.png'),
(969, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:589;s:6:"height";i:619;s:4:"file";s:17:"2017/06/about.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"about-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"about-285x300.png";s:5:"width";i:285;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"about-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"about-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:17:"about-589x600.png";s:5:"width";i:589;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:17:"about-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(970, 120, '_edit_last', '1'),
(971, 120, '_edit_lock', '1497117045:1'),
(972, 120, '_wp_page_template', 'default'),
(1002, 125, '_wp_trash_meta_status', 'publish'),
(1003, 125, '_wp_trash_meta_time', '1497117312'),
(1032, 128, '_wp_trash_meta_status', 'publish'),
(1033, 128, '_wp_trash_meta_time', '1497117425'),
(1034, 124, '_edit_lock', '1497165609:1'),
(1035, 124, '_edit_last', '1'),
(1036, 124, '_wp_page_template', 'page-home.php'),
(1037, 124, 'feature_product_heading', ' FEATURE PRODUCT'),
(1038, 124, '_feature_product_heading', 'field_593a51d33c708'),
(1039, 124, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1040, 124, '_feature_product_content', 'field_593a51f14912a'),
(1041, 124, 'feature_product_tab_1', 'PANS'),
(1042, 124, '_feature_product_tab_1', 'field_593a522bab87e'),
(1043, 124, 'feature_product_tab_2', 'SPATULAS'),
(1044, 124, '_feature_product_tab_2', 'field_593a5240a2812'),
(1045, 124, 'feature_product_tab_3', 'MIXINGS BOWLS'),
(1046, 124, '_feature_product_tab_3', 'field_593a52493f147'),
(1047, 124, 'feature_product_tab_4', 'BAKERY ACCESORIES'),
(1048, 124, '_feature_product_tab_4', 'field_593a525019cc4'),
(1049, 124, 'recipe_heading', 'recipes'),
(1050, 124, '_recipe_heading', 'field_593a86a6e11af'),
(1051, 124, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1052, 124, '_recipe_text', 'field_593a86b4e11b0'),
(1053, 124, 'recipe_more_image', '78'),
(1054, 124, '_recipe_more_image', 'field_593a8b103aae3'),
(1055, 124, 'special_background_image', '117'),
(1056, 124, '_special_background_image', 'field_593a840add7b1'),
(1057, 124, 'special_product_heading', 'chocholate chip muffins'),
(1058, 124, '_special_product_heading', 'field_593a82ab019d3'),
(1059, 124, 'special_product_text', 'LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM'),
(1060, 124, '_special_product_text', 'field_593a82c7940cc'),
(1061, 124, 'special_product_button_text', 'know more'),
(1062, 124, '_special_product_button_text', 'field_593a82ed9df13'),
(1063, 124, 'special_product_button_url', '#'),
(1064, 124, '_special_product_button_url', 'field_593a8312127c0'),
(1096, 130, '_wp_trash_meta_status', 'publish'),
(1097, 130, '_wp_trash_meta_time', '1497117500'),
(1126, 11, '_wp_trash_meta_status', 'publish'),
(1127, 11, '_wp_trash_meta_time', '1497117896'),
(1128, 11, '_wp_desired_post_slug', 'home'),
(1129, 133, '_wp_trash_meta_status', 'publish'),
(1130, 133, '_wp_trash_meta_time', '1497117933'),
(1187, 136, '_wp_trash_meta_status', 'publish'),
(1188, 136, '_wp_trash_meta_time', '1497118042'),
(1245, 139, '_wp_attached_file', '2017/06/WHISQ-logo.png'),
(1246, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:117;s:6:"height";i:109;s:4:"file";s:22:"2017/06/WHISQ-logo.png";s:5:"sizes";a:1:{s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"WHISQ-logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1247, 140, '_wp_attached_file', '2017/06/cropped-WHISQ-logo.png'),
(1248, 140, '_wp_attachment_context', 'custom-logo'),
(1249, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:268;s:6:"height";i:250;s:4:"file";s:30:"2017/06/cropped-WHISQ-logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-WHISQ-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"cropped-WHISQ-logo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:30:"cropped-WHISQ-logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1250, 141, '_wp_trash_meta_status', 'publish'),
(1251, 141, '_wp_trash_meta_time', '1497152994'),
(1252, 142, '_wp_trash_meta_status', 'publish'),
(1253, 142, '_wp_trash_meta_time', '1497153679'),
(1254, 143, '_wp_attached_file', 'search.png'),
(1255, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:19;s:4:"file";s:10:"search.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1256, 144, '_wp_attached_file', 'arrow.png'),
(1257, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:8;s:4:"file";s:9:"arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1258, 145, '_wp_attached_file', 'hover-arrow.png'),
(1259, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:8;s:4:"file";s:15:"hover-arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1260, 146, '_edit_last', '1'),
(1261, 146, '_edit_lock', '1497156445:1'),
(1262, 146, '_thumbnail_id', '54'),
(1265, 148, '_edit_last', '1'),
(1266, 148, '_edit_lock', '1497156526:1'),
(1267, 148, '_thumbnail_id', '117'),
(1270, 150, '_edit_last', '1'),
(1271, 150, '_thumbnail_id', '54'),
(1274, 150, '_edit_lock', '1497156629:1'),
(1275, 152, 'feature_product_heading', ' FEATURE PRODUCT'),
(1276, 152, '_feature_product_heading', 'field_593a51d33c708'),
(1277, 152, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1278, 152, '_feature_product_content', 'field_593a51f14912a'),
(1279, 152, 'feature_product_tab_1', 'PANS'),
(1280, 152, '_feature_product_tab_1', 'field_593a522bab87e'),
(1281, 152, 'feature_product_tab_2', 'SPATULAS'),
(1282, 152, '_feature_product_tab_2', 'field_593a5240a2812'),
(1283, 152, 'feature_product_tab_3', 'MIXINGS BOWLS'),
(1284, 152, '_feature_product_tab_3', 'field_593a52493f147'),
(1285, 152, 'feature_product_tab_4', 'BAKERY ACCESORIES'),
(1286, 152, '_feature_product_tab_4', 'field_593a525019cc4'),
(1287, 152, 'recipe_heading', 'recipes'),
(1288, 152, '_recipe_heading', 'field_593a86a6e11af'),
(1289, 152, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1290, 152, '_recipe_text', 'field_593a86b4e11b0'),
(1291, 152, 'recipe_more_image', '78'),
(1292, 152, '_recipe_more_image', 'field_593a8b103aae3'),
(1293, 152, 'special_background_image', ''),
(1294, 152, '_special_background_image', 'field_593a840add7b1'),
(1295, 152, 'special_product_heading', 'chocholate chip muffins'),
(1296, 152, '_special_product_heading', 'field_593a82ab019d3'),
(1297, 152, 'special_product_text', 'LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM'),
(1298, 152, '_special_product_text', 'field_593a82c7940cc'),
(1299, 152, 'special_product_button_text', 'know more'),
(1300, 152, '_special_product_button_text', 'field_593a82ed9df13'),
(1301, 152, 'special_product_button_url', '#'),
(1302, 152, '_special_product_button_url', 'field_593a8312127c0'),
(1303, 153, 'feature_product_heading', ' FEATURE PRODUCT'),
(1304, 153, '_feature_product_heading', 'field_593a51d33c708'),
(1305, 153, 'feature_product_content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1306, 153, '_feature_product_content', 'field_593a51f14912a'),
(1307, 153, 'feature_product_tab_1', 'PANS'),
(1308, 153, '_feature_product_tab_1', 'field_593a522bab87e'),
(1309, 153, 'feature_product_tab_2', 'SPATULAS'),
(1310, 153, '_feature_product_tab_2', 'field_593a5240a2812'),
(1311, 153, 'feature_product_tab_3', 'MIXINGS BOWLS'),
(1312, 153, '_feature_product_tab_3', 'field_593a52493f147'),
(1313, 153, 'feature_product_tab_4', 'BAKERY ACCESORIES'),
(1314, 153, '_feature_product_tab_4', 'field_593a525019cc4'),
(1315, 153, 'recipe_heading', 'recipes'),
(1316, 153, '_recipe_heading', 'field_593a86a6e11af'),
(1317, 153, 'recipe_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitati'),
(1318, 153, '_recipe_text', 'field_593a86b4e11b0'),
(1319, 153, 'recipe_more_image', '78'),
(1320, 153, '_recipe_more_image', 'field_593a8b103aae3'),
(1321, 153, 'special_background_image', '117'),
(1322, 153, '_special_background_image', 'field_593a840add7b1'),
(1323, 153, 'special_product_heading', 'chocholate chip muffins'),
(1324, 153, '_special_product_heading', 'field_593a82ab019d3'),
(1325, 153, 'special_product_text', 'LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM'),
(1326, 153, '_special_product_text', 'field_593a82c7940cc'),
(1327, 153, 'special_product_button_text', 'know more'),
(1328, 153, '_special_product_button_text', 'field_593a82ed9df13'),
(1329, 153, 'special_product_button_url', '#'),
(1330, 153, '_special_product_button_url', 'field_593a8312127c0'),
(1331, 154, '_wp_attached_file', 'insta1.png'),
(1332, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:315;s:6:"height";i:368;s:4:"file";s:10:"insta1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"insta1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"insta1-257x300.png";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"insta1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"insta1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"insta1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1333, 155, '_wp_attached_file', 'insta2.jpg'),
(1334, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:368;s:4:"file";s:10:"insta2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"insta2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"insta2-260x300.jpg";s:5:"width";i:260;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"insta2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"insta2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"insta2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1335, 156, '_wp_attached_file', 'insta3.jpg'),
(1336, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:368;s:4:"file";s:10:"insta3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"insta3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"insta3-260x300.jpg";s:5:"width";i:260;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"insta3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"insta3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"insta3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1337, 157, '_wp_attached_file', 'insta4.png'),
(1338, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:368;s:4:"file";s:10:"insta4.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"insta4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"insta4-260x300.png";s:5:"width";i:260;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"insta4-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"insta4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"insta4-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1339, 158, '_wp_attached_file', 'Shape-1-copy.png'),
(1340, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:66;s:6:"height";i:45;s:4:"file";s:16:"Shape-1-copy.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-08 12:59:02', '2017-06-08 12:59:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-06-08 12:59:02', '2017-06-08 12:59:02', '', 0, 'http://localhost/togg-test/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-08 12:59:02', '2017-06-08 12:59:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/togg-test/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-06-08 12:59:02', '2017-06-08 12:59:02', '', 0, 'http://localhost/togg-test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-08 12:59:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-08 12:59:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-08 13:31:17', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-06-08 13:31:17', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-06-08 13:31:17', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-06-08 13:31:17', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-08 13:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-06-08 13:31:18', '0000-00-00 00:00:00', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "73eafba07cbf761c29ea773c99a006ed"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "10c9b25bc139abd2f3f14952fd5d2f60"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f2d34b68a8cb07231c7ca7cadb3d7763"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "73eafba07cbf761c29ea773c99a006ed"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f2d34b68a8cb07231c7ca7cadb3d7763"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "10c9b25bc139abd2f3f14952fd5d2f60"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            4,\n            5,\n            6,\n            7,\n            8\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "Top Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/togg-test/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 5,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "About"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 7,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "Blog"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 6,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "Contact"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "sumit::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "Social Links Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "sumit::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 4,\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 7,\n        "type": "option",\n        "user_id": 1\n    },\n    "sumit::panel_1": {\n        "starter_content": true,\n        "value": 8,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sumit::panel_2": {\n        "starter_content": true,\n        "value": 5,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sumit::panel_3": {\n        "starter_content": true,\n        "value": 7,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sumit::panel_4": {\n        "starter_content": true,\n        "value": 6,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9cda3db7-0118-4706-af45-1a30e13190e9', '', '', '2017-06-08 13:31:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2017-06-08 13:59:42', '2017-06-08 13:59:42', '', 'mixing-bowl', '', 'inherit', 'open', 'closed', '', 'mixing-bowl', '', '', '2017-06-08 13:59:42', '2017-06-08 13:59:42', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/mixing-bowl.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2017-06-09 04:44:31', '2017-06-09 04:44:31', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2017-06-10 18:04:56', '2017-06-10 18:04:56', '', 0, 'http://localhost/togg-test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-06-09 04:44:31', '2017-06-09 04:44:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 04:44:31', '2017-06-09 04:44:31', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-06-09 05:04:35', '2017-06-09 05:04:35', '', 'Pans', '', 'publish', 'open', 'closed', '', 'pans', '', '', '2017-06-09 05:05:31', '2017-06-09 05:05:31', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=14', 0, 'product', '', 0),
(15, 1, '2017-06-09 05:06:13', '2017-06-09 05:06:13', '', 'Pans1', '', 'publish', 'open', 'closed', '', 'pans1', '', '', '2017-06-09 05:06:39', '2017-06-09 05:06:39', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=15', 0, 'product', '', 0),
(17, 1, '2017-06-09 05:23:45', '2017-06-09 05:23:45', '[product_categories number="12" parent="0"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:23:45', '2017-06-09 05:23:45', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-06-09 05:24:04', '2017-06-09 05:24:04', '[product_categories]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:24:04', '2017-06-09 05:24:04', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-06-09 05:24:51', '2017-06-09 05:24:51', '<pre class="brush: php; gutter: false">[product_category category="pans"]</pre>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:24:51', '2017-06-09 05:24:51', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-06-09 05:25:12', '2017-06-09 05:25:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:25:12', '2017-06-09 05:25:12', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-06-09 05:26:23', '2017-06-09 05:26:23', '<pre>[product_category]</pre>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:26:23', '2017-06-09 05:26:23', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-06-09 05:37:39', '2017-06-09 05:37:39', '[product_category category="pans"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:37:39', '2017-06-09 05:37:39', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-06-09 05:39:48', '2017-06-09 05:39:48', 'm,fd.m,.m,.mds.f\r\n\r\ndsf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ns\r\n\r\ndfs\r\n\r\ndf', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:39:48', '2017-06-09 05:39:48', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-06-09 05:46:06', '2017-06-09 05:46:06', '[product_category category="pans"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:46:06', '2017-06-09 05:46:06', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-06-09 05:46:24', '2017-06-09 05:46:24', '[product_category category="pans"]\r\n\r\nbdshkjsfjksdfsf', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:46:24', '2017-06-09 05:46:24', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-06-09 05:46:54', '2017-06-09 05:46:54', '&nbsp;\r\n\r\nbdshkjsfjksdfsf', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:46:54', '2017-06-09 05:46:54', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-06-09 05:51:04', '2017-06-09 05:51:04', '[products]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:51:04', '2017-06-09 05:51:04', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-06-09 05:51:34', '2017-06-09 05:51:34', '[product_category category="pans"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:51:34', '2017-06-09 05:51:34', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-06-09 05:52:17', '2017-06-09 05:52:17', '[product_category]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:52:17', '2017-06-09 05:52:17', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-06-09 05:53:12', '2017-06-09 05:53:12', '[product_category category="slug" per_page="12" columns="4" orderby="price" order="asc"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:53:12', '2017-06-09 05:53:12', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-06-09 05:53:27', '2017-06-09 05:53:27', '[product_category category="pans" per_page="12" columns="4" orderby="price" order="asc"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 05:53:27', '2017-06-09 05:53:27', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-06-09 06:10:08', '2017-06-09 06:10:08', '[product_categories number="12" images="false" parent="0"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 06:10:08', '2017-06-09 06:10:08', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-06-09 06:11:32', '2017-06-09 06:11:32', '', 'spatulas', '', 'inherit', 'open', 'closed', '', 'spatulas', '', '', '2017-06-09 06:11:32', '2017-06-09 06:11:32', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/spatulas.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-06-09 06:12:30', '2017-06-09 06:12:30', '', 'Spatulas', '', 'publish', 'open', 'closed', '', 'spatulas', '', '', '2017-06-09 06:19:25', '2017-06-09 06:19:25', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2017-06-09 06:26:52', '2017-06-09 06:26:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 06:26:52', '2017-06-09 06:26:52', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-06-09 06:50:14', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-06-09 06:50:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?post_type=product&p=45', 0, 'product', '', 0),
(46, 1, '2017-06-09 06:51:31', '2017-06-09 06:51:31', '', 'pans', '', 'inherit', 'open', 'closed', '', 'pans-2', '', '', '2017-06-09 06:51:31', '2017-06-09 06:51:31', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/pans.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2017-06-09 06:52:37', '2017-06-09 06:52:37', '', 'Amazon_35', '', 'inherit', 'open', 'closed', '', 'amazon_35', '', '', '2017-06-09 06:52:37', '2017-06-09 06:52:37', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/Amazon_35.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2017-06-09 06:54:41', '2017-06-09 06:54:41', '', 'Pans', '', 'publish', 'open', 'closed', '', 'pans-2', '', '', '2017-06-09 10:35:25', '2017-06-09 10:35:25', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2017-06-09 06:56:32', '2017-06-09 06:56:32', '', 'Fondant Roller', '', 'publish', 'open', 'closed', '', 'bakery', '', '', '2017-06-10 16:21:08', '2017-06-10 16:21:08', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2017-06-09 07:16:57', '2017-06-09 07:16:57', 'YOU DON\'T HAVE TO COOK FANCY OR COMPLICATED MASTERPIECES - JUST GOOD FOOD FROM FRESH INGREDIENTS.', 'JULIA CHILD', 'YOU DON\'T HAVE TO COOK FANCY OR COMPLICATED MASTERPIECES - JUST GOOD FOOD FROM FRESH INGREDIENTS.', 'publish', 'open', 'closed', '', 'julia-child', '', '', '2017-06-11 12:42:22', '2017-06-11 12:42:22', '', 0, 'http://localhost/togg-test/?post_type=quote&#038;p=51', 0, 'quote', '', 0),
(52, 1, '2017-06-09 07:16:52', '2017-06-09 07:16:52', '', 'quote', '', 'inherit', 'open', 'closed', '', 'quote', '', '', '2017-06-09 07:16:52', '2017-06-09 07:16:52', '', 51, 'http://localhost/togg-test/wp-content/uploads/2017/06/quote.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-06-09 07:21:24', '2017-06-09 07:21:24', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'publish', 'open', 'closed', '', 'test', '', '', '2017-06-11 12:42:00', '2017-06-11 12:42:00', '', 0, 'http://localhost/togg-test/?post_type=quote&#038;p=53', 0, 'quote', '', 0),
(54, 1, '2017-06-09 07:21:19', '2017-06-09 07:21:19', '', 'slide', '', 'inherit', 'open', 'closed', '', 'slide', '', '', '2017-06-09 07:21:19', '2017-06-09 07:21:19', '', 53, 'http://localhost/togg-test/wp-content/uploads/2017/06/slide.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-06-09 07:44:44', '2017-06-09 07:44:44', '', 'Feature Products', '', 'publish', 'closed', 'closed', '', 'acf_feature-products', '', '', '2017-06-09 08:47:01', '2017-06-09 08:47:01', '', 0, 'http://localhost/togg-test/?post_type=acf&#038;p=55', 0, 'acf', '', 0),
(56, 1, '2017-06-09 07:45:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-09 07:45:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?post_type=acf&p=56', 0, 'acf', '', 0),
(57, 1, '2017-06-09 07:54:26', '2017-06-09 07:54:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 07:54:26', '2017-06-09 07:54:26', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-06-09 07:55:54', '2017-06-09 07:55:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 07:55:54', '2017-06-09 07:55:54', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-06-09 08:21:08', '2017-06-09 08:21:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 08:21:08', '2017-06-09 08:21:08', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-06-09 08:28:38', '2017-06-09 08:28:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 08:28:38', '2017-06-09 08:28:38', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-06-09 08:33:02', '2017-06-09 08:33:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 08:33:02', '2017-06-09 08:33:02', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-06-09 08:34:16', '2017-06-09 08:34:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 08:34:16', '2017-06-09 08:34:16', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-06-09 08:34:23', '2017-06-09 08:34:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 08:34:23', '2017-06-09 08:34:23', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-06-09 11:13:09', '2017-06-09 11:13:09', '', 'Special Product', '', 'publish', 'closed', 'closed', '', 'acf_special-product', '', '', '2017-06-09 11:21:25', '2017-06-09 11:21:25', '', 0, 'http://localhost/togg-test/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2017-06-09 11:17:23', '2017-06-09 11:17:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 11:17:23', '2017-06-09 11:17:23', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-06-09 11:19:44', '2017-06-09 11:19:44', '', 'KNOW MORE', '', 'inherit', 'open', 'closed', '', 'know-more', '', '', '2017-06-09 11:19:44', '2017-06-09 11:19:44', '', 11, 'http://localhost/togg-test/wp-content/uploads/2017/06/KNOW-MORE.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-06-09 11:19:50', '2017-06-09 11:19:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 11:19:50', '2017-06-09 11:19:50', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-06-09 11:30:17', '2017-06-09 11:30:17', '', 'Recipes', '', 'publish', 'closed', 'closed', '', 'acf_recipes', '', '', '2017-06-09 11:54:16', '2017-06-09 11:54:16', '', 0, 'http://localhost/togg-test/?post_type=acf&#038;p=74', 0, 'acf', '', 0),
(75, 1, '2017-06-09 11:34:28', '2017-06-09 11:34:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 11:34:28', '2017-06-09 11:34:28', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-06-09 11:43:58', '2017-06-09 11:43:58', '', 'baked cheesecake', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'publish', 'open', 'closed', '', 'baked-cheesecake', '', '', '2017-06-09 11:43:58', '2017-06-09 11:43:58', '', 0, 'http://localhost/togg-test/?post_type=recipe&#038;p=76', 0, 'recipe', '', 0),
(77, 1, '2017-06-09 11:45:14', '2017-06-09 11:45:14', '', 'chocolate cupcacke', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'publish', 'open', 'closed', '', 'chocolate-cupcacke', '', '', '2017-06-09 12:00:55', '2017-06-09 12:00:55', '', 0, 'http://localhost/togg-test/?post_type=recipe&#038;p=77', 0, 'recipe', '', 0),
(78, 1, '2017-06-09 11:50:37', '2017-06-09 11:50:37', '', 'Ellipse 2', '', 'inherit', 'open', 'closed', '', 'ellipse-2', '', '', '2017-06-09 11:50:37', '2017-06-09 11:50:37', '', 11, 'http://localhost/togg-test/wp-content/uploads/2017/06/Ellipse-2.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2017-06-09 11:50:44', '2017-06-09 11:50:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-09 11:50:44', '2017-06-09 11:50:44', '', 11, 'http://localhost/togg-test/index.php/2017/06/09/11-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-06-09 12:06:03', '2017-06-09 12:06:03', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "11",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd0948d8-0bd5-4057-83fe-74a9f8d2d53f', '', '', '2017-06-09 12:06:03', '2017-06-09 12:06:03', '', 0, 'http://localhost/togg-test/dd0948d8-0bd5-4057-83fe-74a9f8d2d53f/', 0, 'customize_changeset', '', 0),
(82, 1, '2017-06-09 12:07:41', '2017-06-09 12:07:41', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "value": "11",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7de51e5-8b93-4e67-bda3-bb8af63dc3a7', '', '', '2017-06-09 12:07:41', '2017-06-09 12:07:41', '', 0, 'http://localhost/togg-test/e7de51e5-8b93-4e67-bda3-bb8af63dc3a7/', 0, 'customize_changeset', '', 0),
(83, 1, '2017-06-09 13:00:13', '2017-06-09 13:00:13', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-06-10 17:14:03', '2017-06-10 17:14:03', '', 0, 'http://localhost/togg-test/?page_id=83', 0, 'page', '', 0),
(84, 1, '2017-06-09 13:00:13', '2017-06-09 13:00:13', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-06-09 13:00:13', '2017-06-09 13:00:13', '', 83, 'http://localhost/togg-test/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-06-09 13:03:16', '2017-06-09 13:03:16', '', 'About Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-06-09 13:03:16', '2017-06-09 13:03:16', '', 83, 'http://localhost/togg-test/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-06-09 13:25:07', '2017-06-09 13:25:07', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-06-09 13:25:07', '2017-06-09 13:25:07', '', 83, 'http://localhost/togg-test/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-06-09 13:35:40', '2017-06-09 13:35:40', '', 'Foodhall', '', 'publish', 'open', 'closed', '', 'foodhall', '', '', '2017-06-09 13:35:40', '2017-06-09 13:35:40', '', 0, 'http://localhost/togg-test/?post_type=partner&#038;p=87', 0, 'partner', '', 0),
(88, 1, '2017-06-09 13:35:33', '2017-06-09 13:35:33', '', 'Layer 5', '', 'inherit', 'open', 'closed', '', 'layer-5', '', '', '2017-06-09 13:35:33', '2017-06-09 13:35:33', '', 87, 'http://localhost/togg-test/wp-content/uploads/2017/06/Layer-5.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2017-06-09 13:36:12', '2017-06-09 13:36:12', '', 'Bigbazar', '', 'publish', 'open', 'closed', '', 'bigbazar', '', '', '2017-06-09 13:36:12', '2017-06-09 13:36:12', '', 0, 'http://localhost/togg-test/?post_type=partner&#038;p=89', 0, 'partner', '', 0),
(90, 1, '2017-06-09 13:36:09', '2017-06-09 13:36:09', '', 'Layer 6', '', 'inherit', 'open', 'closed', '', 'layer-6', '', '', '2017-06-09 13:36:09', '2017-06-09 13:36:09', '', 89, 'http://localhost/togg-test/wp-content/uploads/2017/06/Layer-6.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2017-06-09 13:37:12', '2017-06-09 13:37:12', '', 'Homwtown', '', 'publish', 'open', 'closed', '', 'homwtown', '', '', '2017-06-09 13:37:12', '2017-06-09 13:37:12', '', 0, 'http://localhost/togg-test/?post_type=partner&#038;p=91', 0, 'partner', '', 0),
(92, 1, '2017-06-09 13:37:09', '2017-06-09 13:37:09', '', 'Layer 8', '', 'inherit', 'open', 'closed', '', 'layer-8', '', '', '2017-06-09 13:37:09', '2017-06-09 13:37:09', '', 91, 'http://localhost/togg-test/wp-content/uploads/2017/06/Layer-8.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2017-06-09 13:37:47', '2017-06-09 13:37:47', '', 'Amazon', '', 'publish', 'open', 'closed', '', 'amazon', '', '', '2017-06-09 13:37:47', '2017-06-09 13:37:47', '', 0, 'http://localhost/togg-test/?post_type=partner&#038;p=93', 0, 'partner', '', 0),
(94, 1, '2017-06-09 13:37:44', '2017-06-09 13:37:44', '', 'Layer 7', '', 'inherit', 'open', 'closed', '', 'layer-7', '', '', '2017-06-09 13:37:44', '2017-06-09 13:37:44', '', 93, 'http://localhost/togg-test/wp-content/uploads/2017/06/Layer-7.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2017-06-09 16:51:09', '2017-06-09 16:51:09', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "11",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0648e980-1648-43f8-9e6d-0a181f644990', '', '', '2017-06-09 16:51:09', '2017-06-09 16:51:09', '', 0, 'http://localhost/togg-test/0648e980-1648-43f8-9e6d-0a181f644990/', 0, 'customize_changeset', '', 0),
(99, 1, '2017-06-09 16:52:28', '2017-06-09 16:52:28', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac721acf-e9f4-4e01-af5a-41b1c1b7fc84', '', '', '2017-06-09 16:52:28', '2017-06-09 16:52:28', '', 0, 'http://localhost/togg-test/ac721acf-e9f4-4e01-af5a-41b1c1b7fc84/', 0, 'customize_changeset', '', 0),
(101, 1, '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 'who we are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 0, 'http://localhost/togg-test/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 'products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 0, 'http://localhost/togg-test/?p=102', 2, 'nav_menu_item', '', 0),
(103, 1, '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 'locate us', '', 'publish', 'closed', 'closed', '', 'locate-us', '', '', '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 0, 'http://localhost/togg-test/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 'recipes', '', 'publish', 'closed', 'closed', '', 'recipes', '', '', '2017-06-10 10:08:31', '2017-06-10 10:08:31', '', 0, 'http://localhost/togg-test/?p=104', 4, 'nav_menu_item', '', 0),
(106, 1, '2017-06-10 10:09:26', '2017-06-10 10:09:26', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 19,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee930292-9691-40f6-9332-0934c8d5513a', '', '', '2017-06-10 10:09:26', '2017-06-10 10:09:26', '', 0, 'http://localhost/togg-test/?p=106', 0, 'customize_changeset', '', 0),
(111, 1, '2017-06-10 16:20:12', '2017-06-10 16:20:12', '', 'Amazon_41', '', 'inherit', 'open', 'closed', '', 'amazon_41', '', '', '2017-06-10 16:20:12', '2017-06-10 16:20:12', '', 50, 'http://localhost/togg-test/wp-content/uploads/2017/06/Amazon_41.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2017-06-10 16:20:58', '2017-06-10 16:20:58', '', 'Fondant Roller', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2017-06-10 16:20:58', '2017-06-10 16:20:58', '', 50, 'http://localhost/togg-test/?p=112', 0, 'revision', '', 0),
(113, 1, '2017-06-10 16:22:16', '2017-06-10 16:22:16', '', 'Cupcake Cookie Cutter', '', 'publish', 'open', 'closed', '', 'cupcake-cookie-cutter', '', '', '2017-06-10 16:24:09', '2017-06-10 16:24:09', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2017-06-10 16:21:47', '2017-06-10 16:21:47', '', 'Amazon_35', '', 'inherit', 'open', 'closed', '', 'amazon_35-2', '', '', '2017-06-10 16:21:47', '2017-06-10 16:21:47', '', 113, 'http://localhost/togg-test/wp-content/uploads/2017/06/Amazon_35-1.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2017-06-10 16:23:08', '2017-06-10 16:23:08', '', 'Chocolate Melting Pot', '', 'publish', 'open', 'closed', '', 'chocolate-melting-pot', '', '', '2017-06-10 16:23:53', '2017-06-10 16:23:53', '', 0, 'http://localhost/togg-test/?post_type=product&#038;p=115', 0, 'product', '', 0),
(116, 1, '2017-06-10 16:22:52', '2017-06-10 16:22:52', '', 'Amazon_43', '', 'inherit', 'open', 'closed', '', 'amazon_43', '', '', '2017-06-10 16:22:52', '2017-06-10 16:22:52', '', 115, 'http://localhost/togg-test/wp-content/uploads/2017/06/Amazon_43.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2017-06-10 16:55:14', '2017-06-10 16:55:14', '', 'know-more', '', 'inherit', 'open', 'closed', '', 'know-more-2', '', '', '2017-06-10 16:55:14', '2017-06-10 16:55:14', '', 11, 'http://localhost/togg-test/wp-content/uploads/2017/06/know-more.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-06-10 16:55:23', '2017-06-10 16:55:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-10 16:55:23', '2017-06-10 16:55:23', '', 11, 'http://localhost/togg-test/?p=118', 0, 'revision', '', 0),
(119, 1, '2017-06-10 17:13:53', '2017-06-10 17:13:53', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2017-06-10 17:13:53', '2017-06-10 17:13:53', '', 83, 'http://localhost/togg-test/wp-content/uploads/2017/06/about.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2017-06-10 17:41:28', '2017-06-10 17:41:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Locate Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'publish', 'closed', 'closed', '', 'locate-us', '', '', '2017-06-10 17:41:28', '2017-06-10 17:41:28', '', 0, 'http://localhost/togg-test/?page_id=120', 0, 'page', '', 0),
(121, 1, '2017-06-10 17:41:28', '2017-06-10 17:41:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'Locate Us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2017-06-10 17:41:28', '2017-06-10 17:41:28', '', 120, 'http://localhost/togg-test/?p=121', 0, 'revision', '', 0),
(122, 1, '2017-06-10 17:48:39', '0000-00-00 00:00:00', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0be52f70-519f-49fa-9dc9-7ff7e7232d9f', '', '', '2017-06-10 17:48:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/togg-test/?p=122', 0, 'customize_changeset', '', 0),
(124, 1, '2017-06-10 17:55:12', '2017-06-10 17:55:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2017-06-11 07:02:23', '2017-06-11 07:02:23', '', 0, 'http://localhost/togg-test/?page_id=124', 0, 'page', '', 0),
(125, 1, '2017-06-10 17:55:11', '2017-06-10 17:55:11', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "124",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "value": "11",\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            124\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a6a1a2b-bc80-4a1c-aafe-a0776b07fbc3', '', '', '2017-06-10 17:55:11', '2017-06-10 17:55:11', '', 0, 'http://localhost/togg-test/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2017-06-10 17:55:12', '2017-06-10 17:55:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2017-06-10 17:55:12', '2017-06-10 17:55:12', '', 124, 'http://localhost/togg-test/?p=126', 0, 'revision', '', 0),
(128, 1, '2017-06-10 17:57:05', '2017-06-10 17:57:05', '{\n    "page_on_front": {\n        "value": "124",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "value": "83",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '65b8ca02-53e5-4ab7-9fc4-47659e1e0ea7', '', '', '2017-06-10 17:57:05', '2017-06-10 17:57:05', '', 0, 'http://localhost/togg-test/?p=128', 0, 'customize_changeset', '', 0),
(130, 1, '2017-06-10 17:58:20', '2017-06-10 17:58:20', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "11",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18de705d-f72d-48ee-bb6b-47dd44e9be15', '', '', '2017-06-10 17:58:20', '2017-06-10 17:58:20', '', 0, 'http://localhost/togg-test/?p=130', 0, 'customize_changeset', '', 0),
(132, 1, '2017-06-10 18:04:48', '2017-06-10 18:04:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2017-06-10 18:04:48', '2017-06-10 18:04:48', '', 11, 'http://localhost/togg-test/?p=132', 0, 'revision', '', 0),
(133, 1, '2017-06-10 18:05:33', '2017-06-10 18:05:33', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "124",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2b864a3-8a24-4fcc-af20-012b57d7fac1', '', '', '2017-06-10 18:05:33', '2017-06-10 18:05:33', '', 0, 'http://localhost/togg-test/?p=133', 0, 'customize_changeset', '', 0),
(136, 1, '2017-06-10 18:07:22', '2017-06-10 18:07:22', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4516c1f4-c6fd-4fad-b868-0a4ef3e6ade7', '', '', '2017-06-10 18:07:22', '2017-06-10 18:07:22', '', 0, 'http://localhost/togg-test/4516c1f4-c6fd-4fad-b868-0a4ef3e6ade7/', 0, 'customize_changeset', '', 0),
(139, 1, '2017-06-11 03:49:33', '2017-06-11 03:49:33', '', 'WHISQ-logo', '', 'inherit', 'open', 'closed', '', 'whisq-logo', '', '', '2017-06-11 03:49:33', '2017-06-11 03:49:33', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/WHISQ-logo.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2017-06-11 03:49:49', '2017-06-11 03:49:49', 'http://localhost/togg-test/wp-content/uploads/2017/06/cropped-WHISQ-logo.png', 'cropped-WHISQ-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-whisq-logo-png', '', '', '2017-06-11 03:49:49', '2017-06-11 03:49:49', '', 0, 'http://localhost/togg-test/wp-content/uploads/2017/06/cropped-WHISQ-logo.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2017-06-11 03:49:53', '2017-06-11 03:49:53', '{\n    "twentyseventeen::custom_logo": {\n        "value": 140,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '645f482a-e323-4e3b-914c-df05c2ae9981', '', '', '2017-06-11 03:49:53', '2017-06-11 03:49:53', '', 0, 'http://localhost/togg-test/?p=141', 0, 'customize_changeset', '', 0),
(142, 1, '2017-06-11 04:01:19', '2017-06-11 04:01:19', '{\n    "site_icon": {\n        "value": 139,\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86238ee9-b234-40e3-8da8-6beadc3f2cab', '', '', '2017-06-11 04:01:19', '2017-06-11 04:01:19', '', 0, 'http://localhost/togg-test/?p=142', 0, 'customize_changeset', '', 0),
(143, 1, '2017-06-11 04:18:36', '2017-06-11 04:18:36', '', 'search', '', 'inherit', 'open', 'closed', '', 'search', '', '', '2017-06-11 04:18:36', '2017-06-11 04:18:36', '', 0, 'http://localhost/togg-test/wp-content/uploads/search.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2017-06-11 04:33:46', '2017-06-11 04:33:46', '', 'arrow', '', 'inherit', 'open', 'closed', '', 'arrow', '', '', '2017-06-11 04:33:46', '2017-06-11 04:33:46', '', 0, 'http://localhost/togg-test/wp-content/uploads/arrow.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2017-06-11 04:33:46', '2017-06-11 04:33:46', '', 'hover-arrow', '', 'inherit', 'open', 'closed', '', 'hover-arrow', '', '', '2017-06-11 04:33:46', '2017-06-11 04:33:46', '', 0, 'http://localhost/togg-test/wp-content/uploads/hover-arrow.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2017-06-11 04:49:45', '2017-06-11 04:49:45', '', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2017-06-11 04:49:45', '2017-06-11 04:49:45', '', 0, 'http://localhost/togg-test/?p=146', 0, 'post', '', 0),
(147, 1, '2017-06-11 04:49:45', '2017-06-11 04:49:45', '', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2017-06-11 04:49:45', '2017-06-11 04:49:45', '', 146, 'http://localhost/togg-test/?p=147', 0, 'revision', '', 0),
(148, 1, '2017-06-11 04:50:23', '2017-06-11 04:50:23', '', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor', '', '', '2017-06-11 04:50:23', '2017-06-11 04:50:23', '', 0, 'http://localhost/togg-test/?p=148', 0, 'post', '', 0),
(149, 1, '2017-06-11 04:50:23', '2017-06-11 04:50:23', '', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2017-06-11 04:50:23', '2017-06-11 04:50:23', '', 148, 'http://localhost/togg-test/?p=149', 0, 'revision', '', 0),
(150, 1, '2017-06-11 04:51:23', '2017-06-11 04:51:23', '', 'Lorem ipsum dolor', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-2', '', '', '2017-06-11 04:51:23', '2017-06-11 04:51:23', '', 0, 'http://localhost/togg-test/?p=150', 0, 'post', '', 0),
(151, 1, '2017-06-11 04:51:23', '2017-06-11 04:51:23', '', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-06-11 04:51:23', '2017-06-11 04:51:23', '', 150, 'http://localhost/togg-test/?p=151', 0, 'revision', '', 0),
(152, 1, '2017-06-11 07:01:19', '2017-06-11 07:01:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2017-06-11 07:01:19', '2017-06-11 07:01:19', '', 124, 'http://localhost/togg-test/?p=152', 0, 'revision', '', 0),
(153, 1, '2017-06-11 07:02:23', '2017-06-11 07:02:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2017-06-11 07:02:23', '2017-06-11 07:02:23', '', 124, 'http://localhost/togg-test/?p=153', 0, 'revision', '', 0),
(154, 1, '2017-06-11 07:22:56', '2017-06-11 07:22:56', '', 'insta1', '', 'inherit', 'open', 'closed', '', 'insta1', '', '', '2017-06-11 07:22:56', '2017-06-11 07:22:56', '', 0, 'http://localhost/togg-test/wp-content/uploads/insta1.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 'insta2', '', 'inherit', 'open', 'closed', '', 'insta2', '', '', '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 0, 'http://localhost/togg-test/wp-content/uploads/insta2.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 'insta3', '', 'inherit', 'open', 'closed', '', 'insta3', '', '', '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 0, 'http://localhost/togg-test/wp-content/uploads/insta3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 'insta4', '', 'inherit', 'open', 'closed', '', 'insta4', '', '', '2017-06-11 07:22:57', '2017-06-11 07:22:57', '', 0, 'http://localhost/togg-test/wp-content/uploads/insta4.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(158, 1, '2017-06-11 08:10:02', '2017-06-11 08:10:02', '', 'Shape 1 copy', '', 'inherit', 'open', 'closed', '', 'shape-1-copy', '', '', '2017-06-11 08:10:02', '2017-06-11 08:10:02', '', 0, 'http://localhost/togg-test/wp-content/uploads/Shape-1-copy.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '1'),
(2, 15, 'display_type', 'products'),
(3, 15, 'thumbnail_id', '10'),
(4, 15, 'product_count_product_cat', '2'),
(5, 16, 'order', '3'),
(6, 16, 'display_type', 'subcategories'),
(7, 16, 'thumbnail_id', '41'),
(8, 16, 'product_count_product_cat', '1'),
(9, 17, 'order', '2'),
(10, 17, 'display_type', 'subcategories'),
(11, 17, 'thumbnail_id', '46'),
(12, 18, 'order', '4'),
(13, 18, 'display_type', ''),
(14, 18, 'thumbnail_id', '10'),
(15, 17, 'product_count_product_cat', '1'),
(16, 18, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
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
(15, 'Mixing Bowl', 'mixing_bowl', 0),
(16, 'Spatulas', 'spatulas', 0),
(17, 'Pans', 'pans', 0),
(18, 'Bakery Accesories', 'bakery-accesories', 0),
(19, 'main menu', 'main-menu', 0),
(20, 'foooter-first', 'foooter-first', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(14, 15, 0),
(15, 2, 0),
(15, 15, 0),
(42, 2, 0),
(42, 16, 0),
(49, 2, 0),
(49, 17, 0),
(50, 2, 0),
(50, 18, 0),
(101, 19, 0),
(102, 19, 0),
(103, 19, 0),
(104, 19, 0),
(113, 2, 0),
(113, 18, 0),
(115, 2, 0),
(115, 18, 0),
(146, 1, 0),
(148, 1, 0),
(150, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'product_type', '', 0, 7),
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
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'product_cat', '', 0, 1),
(17, 17, 'product_cat', '', 0, 1),
(18, 18, 'product_cat', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 4),
(20, 20, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sumit'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:4:{s:64:"d8fbca775a20a15e09561cbfd1e76f6f016e831640394fd100b60779652171f1";a:4:{s:10:"expiration";i:1497199107;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1497026307;}s:64:"fd926f0a89e0a25296e0bb138d6a6e38c99c1f8699c60afb89189eea81e575b3";a:4:{s:10:"expiration";i:1497261743;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1497088943;}s:64:"ad70b5c5dd73af043aeb7dc63af6847ad99176d93f85bb5b644429a2d567af29";a:4:{s:10:"expiration";i:1497279850;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1497107050;}s:64:"8e84ec0c30c103ce8b1737c62102b9ebb86eaebabb003fca05b451c0c0443cd6";a:4:{s:10:"expiration";i:1497323942;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1497151142;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1496986640'),
(19, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"c0c7c76d30bd3dcaefc96f40275bdc0a";a:9:{s:10:"product_id";i:50;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:1350;s:13:"line_subtotal";d:1350;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(20, 1, 'meta-box-order_recipe', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:34:"submitdiv,categorydiv,postimagediv";s:6:"normal";s:67:"acf_55,acf_74,acf_70,postexcerpt,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(21, 1, 'screen_layout_recipe', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:9:"authordiv";}'),
(24, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:103:"acf_55,acf_74,acf_70,revisionsdiv,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_page', '2'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:8:{i:0;s:21:"add-post-type-product";i:1;s:19:"add-post-type-quote";i:2;s:20:"add-post-type-recipe";i:3;s:21:"add-post-type-partner";i:4;s:12:"add-post_tag";i:5;s:15:"add-post_format";i:6;s:15:"add-product_cat";i:7;s:15:"add-product_tag";}'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:8:{i:0;s:6:"acf_55";i:1;s:6:"acf_74";i:2;s:6:"acf_70";i:3;s:13:"trackbacksdiv";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(30, 1, 'nav_menu_recently_edited', '20');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sumit', '$P$BZplcCO0IO07vGYrHPRspqFlsvX7gN.', 'sumit', 'sumit.tiwari.info@gmail.com', '', '2017-06-08 12:59:01', '', 0, 'sumit');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
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
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
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
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
-- Table structure for table `wp_woocommerce_log`
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
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
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
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(13, '1', 'a:1:{s:8:"customer";s:677:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:27:"sumit.tiwari.info@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1497357677);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
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
-- Table structure for table `wp_woocommerce_tax_rates`
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
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1341;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
