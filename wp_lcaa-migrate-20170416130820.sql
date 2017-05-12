# WordPress MySQL database migration
#
# Generated: Sunday 16. April 2017 13:08 UTC
# Hostname: localhost
# Database: `wp_lcaa`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentatorius', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-04-07 12:08:06', '2017-04-07 14:08:06', 'Sveiki, čia komentaras.\nJei norite pradėti moderuoti, taisyti ir trinti komentarus, aplankykite Komentarų langą valdymo skyde.\nKomentatorių atvaizdai pateikiami iš <a href="https://gravatar.com">Gravatar</a> sistemos.', 0, '1', '', '', 0, 0),
(2, 1, 'administratorius', 'aagnisb@gmail.com', '', '::1', '2017-04-09 14:23:57', '2017-04-09 16:23:57', 'dsfsd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '', 0, 1) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lcaa-wp', 'yes'),
(2, 'home', 'http://localhost/lcaa-wp', 'yes'),
(3, 'blogname', 'Lietuvos Plūdinės Žūklės Sporto Asociacija', 'yes'),
(4, 'blogdescription', 'LPŽSA', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aagnisb@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y F j', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'Y F j - G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:"polylang/polylang.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:31:"easy-fancybox/easy-fancybox.php";i:3;s:25:"tablepress/tablepress.php";i:4;s:24:"wordpress-seo/wp-seo.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'LCAA', 'yes'),
(41, 'stylesheet', 'LCAA', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:16:"Skaityti Daugiau";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:23:"Visos teisės saugomos.";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
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
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:73:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;s:29:"tablepress_import_tables_wptr";b:1;s:23:"tablepress_edit_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:44:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:19:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'lt_LT', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:1:{i:0;s:10:"polylang-2";}s:16:"language-widgets";a:1:{i:0;s:10:"polylang-3";}s:15:"archive-widgets";a:1:{i:0;s:10:"archives-3";}s:16:"read-more-widget";a:1:{i:0;s:6:"text-2";}s:18:"footer-text-widget";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1492351689;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1492351743;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1492424724;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary-navigation";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491843673;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', 'LCAA', 'yes'),
(136, 'theme_mods_vcs-starter', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary-navigation";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491756562;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(185, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(186, 'recently_activated', 'a:1:{s:27:"qtranslate-x/qtranslate.php";i:1492078761;}', 'yes'),
(193, 'acf_version', '4.4.11', 'yes'),
(233, 'theme_mods_LCAA', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary-navigation";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(248, 'fancybox_enableImg', '1', 'yes'),
(249, 'fancybox_enableInline', '', 'yes'),
(250, 'fancybox_enablePDF', '', 'yes'),
(251, 'fancybox_enableSWF', '', 'yes'),
(252, 'fancybox_enableSVG', '', 'yes'),
(253, 'fancybox_enableYoutube', '1', 'yes'),
(254, 'fancybox_enableVimeo', '', 'yes'),
(255, 'fancybox_enableDailymotion', '', 'yes'),
(256, 'fancybox_enableiFrame', '', 'yes'),
(257, 'fancybox_overlayShow', '1', 'yes'),
(258, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(259, 'fancybox_overlayOpacity', '', 'yes'),
(260, 'fancybox_overlayColor', '', 'yes'),
(261, 'fancybox_overlaySpotlight', '', 'yes'),
(262, 'fancybox_showCloseButton', '1', 'yes'),
(263, 'fancybox_backgroundColor', '', 'yes'),
(264, 'fancybox_textColor', '', 'yes'),
(265, 'fancybox_titleColor', '', 'yes'),
(266, 'fancybox_paddingColor', '', 'yes'),
(267, 'fancybox_borderRadius', '', 'yes'),
(268, 'fancybox_width', '', 'yes'),
(269, 'fancybox_height', '', 'yes'),
(270, 'fancybox_padding', '', 'yes'),
(271, 'fancybox_margin', '20', 'yes'),
(272, 'fancybox_centerOnScroll', '1', 'yes'),
(273, 'fancybox_enableEscapeButton', '1', 'yes'),
(274, 'fancybox_autoScale', '1', 'yes'),
(275, 'fancybox_speedIn', '', 'yes'),
(276, 'fancybox_speedOut', '', 'yes'),
(277, 'fancybox_autoClick', '1', 'yes'),
(278, 'fancybox_delayClick', '1000', 'yes'),
(279, 'fancybox_compatIE8', '', 'yes'),
(280, 'fancybox_metaData', '', 'yes'),
(281, 'fancybox_autoAttribute', '.jpg .jpeg .png', 'yes'),
(282, 'fancybox_autoAttributeLimit', '', 'yes'),
(283, 'fancybox_classType', '', 'yes'),
(284, 'fancybox_transitionIn', '', 'yes'),
(285, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(286, 'fancybox_transitionOut', '', 'yes'),
(287, 'fancybox_easingOut', 'easeInBack', 'yes'),
(288, 'fancybox_opacity', '', 'yes'),
(289, 'fancybox_hideOnContentClick', '', 'yes'),
(290, 'fancybox_titleShow', '1', 'yes'),
(291, 'fancybox_titlePosition', 'over', 'yes'),
(292, 'fancybox_titleFromAlt', '1', 'yes'),
(293, 'fancybox_autoGallery', '2', 'yes'),
(294, 'fancybox_showNavArrows', '1', 'yes'),
(295, 'fancybox_enableKeyboardNav', '1', 'yes'),
(296, 'fancybox_mouseWheel', '1', 'yes'),
(297, 'fancybox_cyclic', '', 'yes'),
(298, 'fancybox_changeSpeed', '', 'yes'),
(299, 'fancybox_changeFade', '', 'yes'),
(300, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(305, 'fancybox_autoAttributeYoutube', '1', 'yes'),
(306, 'fancybox_YoutubeWidth', '640', 'yes'),
(307, 'fancybox_YoutubeHeight', '360', 'yes'),
(308, 'fancybox_Youtubepadding', '', 'yes'),
(309, 'fancybox_YoutubetitleShow', '', 'yes'),
(310, 'fancybox_YoutubetitlePosition', 'float', 'yes'),
(311, 'fancybox_YoutubetitleFromAlt', '1', 'yes'),
(339, 'polylang', 'a:15:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:1;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"2.1.3";s:12:"default_lang";s:2:"lt";s:16:"previous_version";s:5:"2.1.2";s:9:"nav_menus";a:1:{s:4:"LCAA";a:1:{s:18:"primary-navigation";a:3:{s:2:"lt";i:2;s:2:"en";i:21;s:2:"ru";i:25;}}}}', 'yes'),
(340, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(341, 'widget_polylang', 'a:3:{i:2;a:7:{s:5:"title";s:0:"";s:8:"dropdown";i:0;s:10:"show_names";i:1;s:10:"show_flags";i:0;s:10:"force_home";i:0;s:12:"hide_current";i:0;s:22:"hide_if_no_translation";i:0;}i:3;a:7:{s:5:"title";s:0:"";s:8:"dropdown";i:0;s:10:"show_names";i:1;s:10:"show_flags";i:0;s:10:"force_home";i:0;s:12:"hide_current";i:0;s:22:"hide_if_no_translation";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(463, 'qtranslate_admin_notices', 'a:1:{s:11:"next_thanks";i:1492077170;}', 'yes'),
(464, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"en";i:1;s:2:"de";}', 'yes'),
(465, 'qtranslate_default_language', 'en', 'yes'),
(466, 'qtranslate_version_previous', '34680', 'yes'),
(467, 'qtranslate_versions', 'a:4:{i:34680;i:1492077170;s:1:"l";i:1492077170;s:1:"t";i:1591;s:1:"p";i:1492078761;}', 'yes'),
(468, 'qtranslate_admin_config', 'a:7:{s:4:"post";a:4:{s:5:"pages";a:2:{s:8:"post.php";s:0:"";s:12:"post-new.php";s:0:"";}s:7:"anchors";a:1:{s:17:"post-body-content";a:1:{s:5:"where";s:10:"first last";}}s:5:"forms";a:2:{s:4:"post";a:1:{s:6:"fields";a:8:{s:5:"title";a:0:{}s:7:"excerpt";a:0:{}s:18:"attachment_caption";a:0:{}s:14:"attachment_alt";a:0:{}s:13:"view-post-btn";a:1:{s:6:"encode";s:7:"display";}s:14:"wp-editor-area";a:1:{s:6:"jquery";s:15:".wp-editor-area";}s:15:"gallery-caption";a:2:{s:6:"jquery";s:16:".gallery-caption";s:6:"encode";s:4:"none";}s:15:"wp-caption-text";a:2:{s:6:"jquery";s:16:".wp-caption-text";s:6:"encode";s:7:"display";}}}s:14:"wpbody-content";a:1:{s:6:"fields";a:2:{s:7:"wrap-h1";a:2:{s:6:"jquery";s:8:".wrap h1";s:6:"encode";s:7:"display";}s:7:"wrap-h2";a:2:{s:6:"jquery";s:8:".wrap h2";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:9:"post-exec";a:1:{s:3:"src";s:27:"./admin/js/post-exec.min.js";}}}s:15:"options-general";a:3:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:19:"options-general.php";s:21:"^(?!.*page=[^=&]+).*$";}s:5:"forms";a:1:{s:7:"options";a:1:{s:6:"fields";a:3:{s:8:"blogname";a:0:{}s:15:"blogdescription";a:0:{}s:10:"head-title";a:2:{s:6:"jquery";s:10:"head title";s:6:"encode";s:7:"display";}}}}}s:7:"widgets";a:4:{s:5:"pages";a:1:{s:11:"widgets.php";s:0:"";}s:7:"anchors";a:1:{s:13:"widgets-right";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:1:{s:13:"widgets-right";a:1:{s:6:"fields";a:3:{s:12:"widget-title";a:1:{s:6:"jquery";s:34:"input[id^=\'widget-\'][id$=\'-title\']";}s:16:"widget-text-text";a:1:{s:6:"jquery";s:41:"textarea[id^=\'widget-text-\'][id$=\'-text\']";}s:15:"in-widget-title";a:2:{s:6:"jquery";s:20:"span.in-widget-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:12:"widgets-exec";a:1:{s:3:"src";s:30:"./admin/js/widgets-exec.min.js";}}}s:8:"edit-tag";a:3:{s:5:"pages";a:2:{s:8:"term.php";s:0:"";s:13:"edit-tags.php";s:11:"action=edit";}s:5:"forms";a:1:{s:7:"edittag";a:1:{s:6:"fields";a:3:{s:4:"name";a:0:{}s:11:"description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:13:"edit-tag-exec";a:1:{s:3:"src";s:31:"./admin/js/edit-tag-exec.min.js";}}}s:9:"edit-tags";a:5:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:13:"edit-tags.php";s:21:"^(?!.*action=edit).*$";}s:7:"anchors";a:1:{s:12:"posts-filter";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:3:{s:6:"addtag";a:1:{s:6:"fields";a:3:{s:8:"tag-name";a:0:{}s:15:"tag-description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}s:8:"col-left";a:1:{s:6:"fields";a:1:{s:8:"tagcloud";a:2:{s:6:"jquery";s:13:".tagcloud > a";s:6:"encode";s:7:"display";}}}s:8:"the-list";a:1:{s:6:"fields";a:2:{s:9:"row-title";a:2:{s:6:"jquery";s:10:".row-title";s:6:"encode";s:7:"display";}s:11:"description";a:2:{s:6:"jquery";s:12:".description";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"edit-tags-exec";a:1:{s:3:"src";s:32:"./admin/js/edit-tags-exec.min.js";}}}s:9:"nav-menus";a:4:{s:5:"pages";a:1:{s:13:"nav-menus.php";s:23:"action=edit|menu=\\d+|^$";}s:7:"anchors";a:1:{s:12:"menu-to-edit";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:2:{s:15:"update-nav-menu";a:1:{s:6:"fields";a:5:{s:5:"title";a:1:{s:6:"jquery";s:27:"[id^=edit-menu-item-title-]";}s:10:"attr-title";a:1:{s:6:"jquery";s:32:"[id^=edit-menu-item-attr-title-]";}s:11:"description";a:1:{s:6:"jquery";s:33:"[id^=edit-menu-item-description-]";}s:10:"span.title";a:2:{s:6:"jquery";s:20:"span.menu-item-title";s:6:"encode";s:7:"display";}s:16:"link-to-original";a:2:{s:6:"jquery";s:20:".link-to-original >a";s:6:"encode";s:7:"display";}}}s:14:"side-sortables";a:1:{s:6:"fields";a:2:{s:11:"label.title";a:2:{s:6:"jquery";s:21:"label.menu-item-title";s:6:"encode";s:7:"display";}s:23:"accordion-section-title";a:2:{s:6:"jquery";s:26:"h3.accordion-section-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"nav-menus-exec";a:1:{s:3:"src";s:32:"./admin/js/nav-menus-exec.min.js";}}}s:9:"all-pages";a:1:{s:7:"filters";a:1:{s:4:"text";a:1:{s:11:"admin_title";s:2:"20";}}}}', 'yes'),
(469, 'qtranslate_front_config', 'a:1:{s:9:"all-pages";a:1:{s:7:"filters";a:3:{s:4:"text";a:11:{s:12:"widget_title";s:2:"20";s:11:"widget_text";s:2:"20";s:9:"the_title";s:2:"20";s:20:"category_description";s:2:"20";s:9:"list_cats";s:2:"20";s:16:"wp_dropdown_cats";s:2:"20";s:9:"term_name";s:2:"20";s:18:"get_comment_author";s:2:"20";s:10:"the_author";s:2:"20";s:9:"tml_title";s:2:"20";s:16:"term_description";s:2:"20";}s:4:"term";a:10:{s:7:"cat_row";s:1:"0";s:8:"cat_rows";s:1:"0";s:19:"wp_get_object_terms";s:1:"0";s:16:"single_cat_title";s:1:"0";s:16:"single_tag_title";s:1:"0";s:17:"single_term_title";s:1:"0";s:12:"the_category";s:1:"0";s:8:"get_term";s:1:"0";s:9:"get_terms";s:1:"0";s:12:"get_category";s:1:"0";}s:3:"url";a:16:{s:16:"author_feed_link";s:2:"10";s:11:"author_link";s:2:"10";s:27:"get_comment_author_url_link";s:2:"10";s:23:"post_comments_feed_link";s:2:"10";s:8:"day_link";s:2:"10";s:10:"month_link";s:2:"10";s:9:"year_link";s:2:"10";s:9:"page_link";s:2:"10";s:9:"post_link";s:2:"10";s:13:"category_link";s:2:"10";s:18:"category_feed_link";s:2:"10";s:8:"tag_link";s:2:"10";s:9:"term_link";s:2:"10";s:13:"the_permalink";s:2:"10";s:9:"feed_link";s:2:"10";s:13:"tag_feed_link";s:2:"10";}}}}', 'yes'),
(470, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(471, 'qtranslate_next_thanks', '1504777970', 'yes'),
(472, 'qtranslate_next_update_mo', '1492681970', 'yes'),
(532, 'rewrite_rules', 'a:166:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:55:"(en|ru)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:50:"(en|ru)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:31:"(en|ru)/category/(.+?)/embed/?$";s:63:"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:43:"(en|ru)/category/(.+?)/page/?([0-9]{1,})/?$";s:70:"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:25:"(en|ru)/category/(.+?)/?$";s:52:"index.php?lang=$matches[1]&category_name=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:52:"(en|ru)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:47:"(en|ru)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:28:"(en|ru)/tag/([^/]+)/embed/?$";s:53:"index.php?lang=$matches[1]&tag=$matches[2]&embed=true";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:40:"(en|ru)/tag/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:22:"(en|ru)/tag/([^/]+)/?$";s:42:"index.php?lang=$matches[1]&tag=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:53:"(en|ru)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=lt&post_format=$matches[1]&feed=$matches[2]";s:48:"(en|ru)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=lt&post_format=$matches[1]&feed=$matches[2]";s:29:"(en|ru)/type/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true";s:21:"type/([^/]+)/embed/?$";s:52:"index.php?lang=lt&post_format=$matches[1]&embed=true";s:41:"(en|ru)/type/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?lang=lt&post_format=$matches[1]&paged=$matches[2]";s:23:"(en|ru)/type/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&post_format=$matches[2]";s:15:"type/([^/]+)/?$";s:41:"index.php?lang=lt&post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:40:"(en|ru)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:35:"index.php?lang=lt&&feed=$matches[1]";s:35:"(en|ru)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:35:"index.php?lang=lt&&feed=$matches[1]";s:16:"(en|ru)/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:8:"embed/?$";s:29:"index.php?lang=lt&&embed=true";s:28:"(en|ru)/page/?([0-9]{1,})/?$";s:45:"index.php?lang=$matches[1]&&paged=$matches[2]";s:20:"page/?([0-9]{1,})/?$";s:36:"index.php?lang=lt&&paged=$matches[1]";s:10:"(en|ru)/?$";s:26:"index.php?lang=$matches[1]";s:49:"(en|ru)/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?lang=lt&&feed=$matches[1]&withcomments=1";s:44:"(en|ru)/comments/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?lang=lt&&feed=$matches[1]&withcomments=1";s:25:"(en|ru)/comments/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:17:"comments/embed/?$";s:29:"index.php?lang=lt&&embed=true";s:52:"(en|ru)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?lang=lt&s=$matches[1]&feed=$matches[2]";s:47:"(en|ru)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?lang=lt&s=$matches[1]&feed=$matches[2]";s:28:"(en|ru)/search/(.+)/embed/?$";s:51:"index.php?lang=$matches[1]&s=$matches[2]&embed=true";s:20:"search/(.+)/embed/?$";s:42:"index.php?lang=lt&s=$matches[1]&embed=true";s:40:"(en|ru)/search/(.+)/page/?([0-9]{1,})/?$";s:58:"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:49:"index.php?lang=lt&s=$matches[1]&paged=$matches[2]";s:22:"(en|ru)/search/(.+)/?$";s:40:"index.php?lang=$matches[1]&s=$matches[2]";s:14:"search/(.+)/?$";s:31:"index.php?lang=lt&s=$matches[1]";s:55:"(en|ru)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=lt&author_name=$matches[1]&feed=$matches[2]";s:50:"(en|ru)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=lt&author_name=$matches[1]&feed=$matches[2]";s:31:"(en|ru)/author/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true";s:23:"author/([^/]+)/embed/?$";s:52:"index.php?lang=lt&author_name=$matches[1]&embed=true";s:43:"(en|ru)/author/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?lang=lt&author_name=$matches[1]&paged=$matches[2]";s:25:"(en|ru)/author/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&author_name=$matches[2]";s:17:"author/([^/]+)/?$";s:41:"index.php?lang=lt&author_name=$matches[1]";s:77:"(en|ru)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:88:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:72:"(en|ru)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:88:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:53:"(en|ru)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:91:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:82:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:65:"(en|ru)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:98:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:89:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:47:"(en|ru)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:80:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:71:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:64:"(en|ru)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:72:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:59:"(en|ru)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:72:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:40:"(en|ru)/([0-9]{4})/([0-9]{1,2})/embed/?$";s:75:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:66:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&embed=true";s:52:"(en|ru)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:82:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:73:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:34:"(en|ru)/([0-9]{4})/([0-9]{1,2})/?$";s:64:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:55:"index.php?lang=lt&year=$matches[1]&monthnum=$matches[2]";s:51:"(en|ru)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?lang=lt&year=$matches[1]&feed=$matches[2]";s:46:"(en|ru)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?lang=lt&year=$matches[1]&feed=$matches[2]";s:27:"(en|ru)/([0-9]{4})/embed/?$";s:54:"index.php?lang=$matches[1]&year=$matches[2]&embed=true";s:19:"([0-9]{4})/embed/?$";s:45:"index.php?lang=lt&year=$matches[1]&embed=true";s:39:"(en|ru)/([0-9]{4})/page/?([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:52:"index.php?lang=lt&year=$matches[1]&paged=$matches[2]";s:21:"(en|ru)/([0-9]{4})/?$";s:43:"index.php?lang=$matches[1]&year=$matches[2]";s:13:"([0-9]{4})/?$";s:34:"index.php?lang=lt&year=$matches[1]";s:35:"(en|ru)/.?.+?/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"(en|ru)/.?.+?/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"(en|ru)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"(en|ru)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"(en|ru)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"(en|ru)/.?.+?/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"(en|ru)/(.?.+?)/embed/?$";s:58:"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:28:"(en|ru)/(.?.+?)/trackback/?$";s:52:"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:48:"(en|ru)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:43:"(en|ru)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:36:"(en|ru)/(.?.+?)/page/?([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:43:"(en|ru)/(.?.+?)/comment-page-([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:32:"(en|ru)/(.?.+?)(?:/([0-9]+))?/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:35:"(en|ru)/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"(en|ru)/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"(en|ru)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"(en|ru)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"(en|ru)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"(en|ru)/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"(en|ru)/([^/]+)/embed/?$";s:54:"index.php?lang=$matches[1]&name=$matches[2]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:28:"(en|ru)/([^/]+)/trackback/?$";s:48:"index.php?lang=$matches[1]&name=$matches[2]&tb=1";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:48:"(en|ru)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:43:"(en|ru)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:36:"(en|ru)/([^/]+)/page/?([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:43:"(en|ru)/([^/]+)/comment-page-([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:32:"(en|ru)/([^/]+)(?:/([0-9]+))?/?$";s:60:"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:24:"(en|ru)/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"(en|ru)/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"(en|ru)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"(en|ru)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"(en|ru)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"(en|ru)/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(564, 'category_children', 'a:0:{}', 'yes'),
(585, 'wpseo', 'a:24:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"4.6";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1492258160;}', 'yes'),
(586, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(587, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(588, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"62c954909552ea973a7d5d393a929570";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(589, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(590, 'wpseo_internallinks', 'a:12:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:23:"post_types-page-maintax";i:0;s:29:"post_types-attachment-maintax";i:0;}', 'yes'),
(591, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(592, 'wpseo_flush_rewrite', '1', 'yes'),
(599, 'tablepress_plugin_options', '{"plugin_options_db_version":34,"table_scheme_db_version":3,"prev_tablepress_version":"0","tablepress_version":"1.8","first_activation":1492251123,"message_plugin_update":false,"message_donation_nag":true,"use_custom_css":true,"use_custom_css_file":true,"custom_css":"","custom_css_minified":"","custom_css_version":0}', 'yes'),
(601, 'wpseo_sitemap_1_cache_validator', '4gnXy', 'no'),
(602, 'wpseo_sitemap_post_cache_validator', '4go3N', 'no'),
(604, 'wpseo_sitemap_category_cache_validator', '4go3a', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(47, 2, '_wp_trash_meta_status', 'publish'),
(48, 2, '_wp_trash_meta_time', '1491733521'),
(49, 2, '_wp_desired_post_slug', 'puslapio-pavyzdys'),
(50, 10, '_edit_last', '1'),
(51, 10, '_edit_lock', '1492251484:1'),
(52, 10, '_wp_page_template', 'default'),
(53, 15, '_edit_last', '1'),
(54, 15, 'field_58ea14443f167', 'a:11:{s:3:"key";s:19:"field_58ea14443f167";s:5:"label";s:17:"Header Background";s:4:"name";s:17:"header_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(57, 15, 'position', 'normal'),
(58, 15, 'layout', 'no_box'),
(59, 15, 'hide_on_screen', ''),
(60, 15, '_edit_lock', '1491739494:1'),
(65, 10, 'header_background', '56'),
(66, 10, '_header_background', 'field_58ea14443f167'),
(67, 18, '_edit_last', '1'),
(68, 18, '_wp_page_template', 'default'),
(69, 19, 'header_background', ''),
(70, 19, '_header_background', 'field_58ea14443f167'),
(71, 18, 'header_background', ''),
(72, 18, '_header_background', 'field_58ea14443f167'),
(73, 18, '_edit_lock', '1491740145:1'),
(78, 22, '_edit_last', '1'),
(79, 22, 'field_58ea20e8d067f', 'a:14:{s:3:"key";s:19:"field_58ea20e8d067f";s:5:"label";s:13:"facebook link";s:4:"name";s:13:"facebook_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:80:"https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(80, 22, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(81, 22, 'position', 'normal'),
(82, 22, 'layout', 'no_box'),
(83, 22, 'hide_on_screen', ''),
(84, 22, '_edit_lock', '1491738774:1'),
(85, 1, '_edit_lock', '1491840687:1'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1491738930'),
(88, 22, '_wp_desired_post_slug', 'acf_nuoroda-i-facebook'),
(89, 23, '_edit_last', '1'),
(90, 23, 'field_58ea213f54b3e', 'a:14:{s:3:"key";s:19:"field_58ea213f54b3e";s:5:"label";s:13:"facebook link";s:4:"name";s:13:"facebook_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:80:"https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(92, 23, 'position', 'normal'),
(93, 23, 'layout', 'no_box'),
(94, 23, 'hide_on_screen', ''),
(95, 23, '_edit_lock', '1491739509:1'),
(96, 10, 'facebook_link', 'https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/'),
(97, 10, '_facebook_link', 'field_58ea213f54b3e'),
(98, 24, '_edit_last', '1'),
(99, 24, 'field_58ea227cfe86d', 'a:11:{s:3:"key";s:19:"field_58ea227cfe86d";s:5:"label";s:18:"Website background";s:4:"name";s:18:"website_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(101, 24, 'position', 'normal'),
(102, 24, 'layout', 'no_box'),
(103, 24, 'hide_on_screen', ''),
(104, 24, '_edit_lock', '1491739757:1'),
(109, 15, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(110, 23, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(111, 24, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(118, 10, 'website_background', '27'),
(119, 10, '_website_background', 'field_58ea227cfe86d'),
(120, 27, '_wp_attached_file', '2017/04/background1.png'),
(121, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2017/04/background1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"background1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"background1-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"background1-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"background1-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 1, '_edit_last', '1'),
(130, 30, '_edit_last', '1'),
(131, 30, 'field_58ea2663fa265', 'a:14:{s:3:"key";s:19:"field_58ea2663fa265";s:5:"label";s:11:"footer text";s:4:"name";s:11:"footer_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(132, 30, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(133, 30, 'position', 'normal'),
(134, 30, 'layout', 'no_box'),
(135, 30, 'hide_on_screen', ''),
(136, 30, '_edit_lock', '1491740138:1'),
(137, 31, 'footer_text', 'wehity weh'),
(138, 31, '_footer_text', 'field_58ea2663fa265'),
(139, 31, 'header_background', '20'),
(140, 31, '_header_background', 'field_58ea14443f167'),
(141, 31, 'facebook_link', 'https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/'),
(142, 31, '_facebook_link', 'field_58ea213f54b3e'),
(143, 31, 'website_background', '27'),
(144, 31, '_website_background', 'field_58ea227cfe86d'),
(145, 10, 'footer_text', 'Visos teises saugomos'),
(146, 10, '_footer_text', 'field_58ea2663fa265'),
(147, 32, '_edit_last', '1'),
(148, 32, '_edit_lock', '1491763502:1'),
(150, 18, '_wp_trash_meta_status', 'publish'),
(151, 18, '_wp_trash_meta_time', '1491748840'),
(152, 18, '_wp_desired_post_slug', 'skaitiniai'),
(156, 34, '_edit_last', '1'),
(157, 34, '_wp_page_template', 'default'),
(158, 34, '_edit_lock', '1491761278:1'),
(159, 36, '_edit_last', '1'),
(160, 36, '_wp_page_template', 'templates/apie_mus.php'),
(161, 36, '_edit_lock', '1492252965:1'),
(162, 38, '_edit_last', '1'),
(163, 38, '_wp_page_template', 'default'),
(164, 38, '_edit_lock', '1492078609:1'),
(165, 40, '_edit_last', '1'),
(166, 40, '_wp_page_template', 'templates/skaitiniai.php'),
(167, 40, '_edit_lock', '1492255396:1'),
(168, 42, '_edit_last', '1'),
(169, 42, '_wp_page_template', 'default'),
(170, 42, '_edit_lock', '1491842762:1'),
(171, 44, '_menu_item_type', 'post_type'),
(172, 44, '_menu_item_menu_item_parent', '0'),
(173, 44, '_menu_item_object_id', '42'),
(174, 44, '_menu_item_object', 'page'),
(175, 44, '_menu_item_target', ''),
(176, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 44, '_menu_item_xfn', ''),
(178, 44, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(198, 47, '_menu_item_type', 'post_type'),
(199, 47, '_menu_item_menu_item_parent', '0'),
(200, 47, '_menu_item_object_id', '36'),
(201, 47, '_menu_item_object', 'page'),
(202, 47, '_menu_item_target', ''),
(203, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 47, '_menu_item_xfn', ''),
(205, 47, '_menu_item_url', ''),
(221, 54, '_wp_attached_file', '2017/04/13259991_1739699542967682_3301546738519837152_n.jpg'),
(222, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:960;s:4:"file";s:59:"2017/04/13259991_1739699542967682_3301546738519837152_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"13259991_1739699542967682_3301546738519837152_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"13259991_1739699542967682_3301546738519837152_n-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 55, '_wp_attached_file', '2017/04/13417419_1745607015710268_7932868937405986799_n.jpg'),
(224, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:59:"2017/04/13417419_1745607015710268_7932868937405986799_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"13417419_1745607015710268_7932868937405986799_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"13417419_1745607015710268_7932868937405986799_n-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"13417419_1745607015710268_7932868937405986799_n-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 56, '_wp_attached_file', '2017/04/15823266_1843784295892539_3327242369617903069_n.jpg'),
(226, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:59:"2017/04/15823266_1843784295892539_3327242369617903069_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"15823266_1843784295892539_3327242369617903069_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"15823266_1843784295892539_3327242369617903069_n-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"15823266_1843784295892539_3327242369617903069_n-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 59, '_menu_item_type', 'custom'),
(230, 59, '_menu_item_menu_item_parent', '0'),
(231, 59, '_menu_item_object_id', '59'),
(232, 59, '_menu_item_object', 'custom'),
(233, 59, '_menu_item_target', ''),
(234, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(235, 59, '_menu_item_xfn', ''),
(236, 59, '_menu_item_url', 'http://localhost/lcaa-wp/'),
(238, 34, '_wp_trash_meta_status', 'publish'),
(239, 34, '_wp_trash_meta_time', '1491765380'),
(240, 34, '_wp_desired_post_slug', 'naujienos'),
(241, 60, '_edit_last', '1'),
(242, 60, '_edit_lock', '1491765541:1'),
(243, 60, '_oembed_472cfd30837ff83b71e623f5cfd8bc15', '<iframe width="500" height="281" src="https://www.youtube.com/embed/vspvba8UYkY?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(244, 60, '_oembed_time_472cfd30837ff83b71e623f5cfd8bc15', '1491765620'),
(245, 60, '_thumbnail_id', '56'),
(247, 62, '_edit_last', '1'),
(248, 62, '_edit_lock', '1491765568:1'),
(249, 62, '_oembed_472cfd30837ff83b71e623f5cfd8bc15', '<iframe width="500" height="281" src="https://www.youtube.com/embed/vspvba8UYkY?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(250, 62, '_oembed_time_472cfd30837ff83b71e623f5cfd8bc15', '1491765692'),
(252, 64, '_edit_last', '1'),
(254, 64, '_edit_lock', '1491765576:1'),
(255, 66, '_edit_last', '1'),
(257, 66, '_edit_lock', '1491765584:1'),
(258, 68, '_edit_last', '1'),
(260, 68, '_edit_lock', '1491765593:1'),
(261, 70, '_edit_last', '1'),
(263, 70, '_edit_lock', '1491765602:1'),
(264, 72, '_edit_last', '1'),
(265, 72, '_edit_lock', '1491765703:1'),
(267, 74, '_edit_last', '1'),
(269, 74, '_edit_lock', '1491765710:1'),
(270, 76, '_edit_last', '1'),
(271, 76, '_edit_lock', '1491838207:1'),
(273, 78, 'footer_text', ''),
(274, 78, '_footer_text', 'field_58ea2663fa265'),
(275, 78, 'header_background', '20'),
(276, 78, '_header_background', 'field_58ea14443f167'),
(277, 78, 'facebook_link', 'https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/'),
(278, 78, '_facebook_link', 'field_58ea213f54b3e'),
(279, 78, 'website_background', '27'),
(280, 78, '_website_background', 'field_58ea227cfe86d'),
(282, 81, '_pll_strings_translations', 'a:21:{i:0;a:2:{i:0;s:6:"LPŽSA";i:1;s:6:"LPŽSA";}i:1;a:2:{i:0;s:44:"Kol kas tik dar vienas WordPress tinklalapis";i:1;s:6:"LPŽSA";}i:2;a:2:{i:0;s:5:"Y F j";i:1;s:5:"Y F j";}i:3;a:2:{i:0;s:3:"G:i";i:1;s:3:"G:i";}i:4;a:2:{i:0;s:8:"Archyvas";i:1;s:8:"Archyvas";}i:5;a:2:{i:0;s:16:"Skaityti Daugiau";i:1;s:16:"Skaityti Daugiau";}i:6;a:2:{i:0;s:47:"Lietuvos Plūdinės Žūklės Sporto Asociacija";i:1;s:47:"Lietuvos Plūdinės Žūklės Sporto Asociacija";}i:7;a:2:{i:0;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";i:1;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";}i:8;a:2:{i:0;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";i:1;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";}i:9;a:2:{i:0;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";i:1;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";}i:10;a:2:{i:0;s:41:"%%name%%, Author at %%sitename%% %%page%%";i:1;s:41:"%%name%%, Author at %%sitename%% %%page%%";}i:11;a:2:{i:0;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";i:1;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";}i:12;a:2:{i:0;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";i:1;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";}i:13;a:2:{i:0;s:35:"Page not found %%sep%% %%sitename%%";i:1;s:35:"Page not found %%sep%% %%sitename%%";}i:14;a:2:{i:0;s:7:"&raquo;";i:1;s:7:"&raquo;";}i:15;a:2:{i:0;s:4:"Home";i:1;s:4:"Home";}i:16;a:2:{i:0;s:12:"Archives for";i:1;s:12:"Archives for";}i:17;a:2:{i:0;s:16:"You searched for";i:1;s:16:"You searched for";}i:18;a:2:{i:0;s:25:"Error 404: Page not found";i:1;s:25:"Error 404: Page not found";}i:19;a:2:{i:0;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";i:1;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}i:20;a:2:{i:0;s:23:"Visos teisės saugomos.";i:1;s:23:"Visos teisės saugomos.";}}'),
(284, 83, '_pll_strings_translations', 'a:21:{i:0;a:2:{i:0;s:6:"LPŽSA";i:1;s:4:"LCAA";}i:1;a:2:{i:0;s:44:"Kol kas tik dar vienas WordPress tinklalapis";i:1;s:4:"LCAA";}i:2;a:2:{i:0;s:5:"Y F j";i:1;s:5:"Y F j";}i:3;a:2:{i:0;s:3:"G:i";i:1;s:3:"G:i";}i:4;a:2:{i:0;s:8:"Archyvas";i:1;s:8:"Archyvas";}i:5;a:2:{i:0;s:16:"Skaityti Daugiau";i:1;s:9:"Read More";}i:6;a:2:{i:0;s:47:"Lietuvos Plūdinės Žūklės Sporto Asociacija";i:1;s:37:"Lithuanian Coarse Angling Association";}i:7;a:2:{i:0;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";i:1;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";}i:8;a:2:{i:0;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";i:1;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";}i:9;a:2:{i:0;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";i:1;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";}i:10;a:2:{i:0;s:41:"%%name%%, Author at %%sitename%% %%page%%";i:1;s:41:"%%name%%, Author at %%sitename%% %%page%%";}i:11;a:2:{i:0;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";i:1;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";}i:12;a:2:{i:0;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";i:1;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";}i:13;a:2:{i:0;s:35:"Page not found %%sep%% %%sitename%%";i:1;s:35:"Page not found %%sep%% %%sitename%%";}i:14;a:2:{i:0;s:7:"&raquo;";i:1;s:7:"&raquo;";}i:15;a:2:{i:0;s:4:"Home";i:1;s:4:"Home";}i:16;a:2:{i:0;s:12:"Archives for";i:1;s:12:"Archives for";}i:17;a:2:{i:0;s:16:"You searched for";i:1;s:16:"You searched for";}i:18;a:2:{i:0;s:25:"Error 404: Page not found";i:1;s:25:"Error 404: Page not found";}i:19;a:2:{i:0;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";i:1;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}i:20;a:2:{i:0;s:23:"Visos teisės saugomos.";i:1;s:20:"All Rights Reserved.";}}'),
(285, 84, '_pll_strings_translations', 'a:21:{i:0;a:2:{i:0;s:6:"LPŽSA";i:1;s:6:"LPŽSA";}i:1;a:2:{i:0;s:44:"Kol kas tik dar vienas WordPress tinklalapis";i:1;s:44:"Kol kas tik dar vienas WordPress tinklalapis";}i:2;a:2:{i:0;s:5:"Y F j";i:1;s:5:"Y F j";}i:3;a:2:{i:0;s:3:"G:i";i:1;s:3:"G:i";}i:4;a:2:{i:0;s:8:"Archyvas";i:1;s:8:"Archyvas";}i:5;a:2:{i:0;s:16:"Skaityti Daugiau";i:1;s:33:"Прочитайте больше";}i:6;a:2:{i:0;s:47:"Lietuvos Plūdinės Žūklės Sporto Asociacija";i:1;s:47:"Lietuvos Plūdinės Žūklės Sporto Asociacija";}i:7;a:2:{i:0;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";i:1;s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";}i:8;a:2:{i:0;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";i:1;s:39:"%%title%% %%page%% %%sep%% %%sitename%%";}i:9;a:2:{i:0;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";i:1;s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";}i:10;a:2:{i:0;s:41:"%%name%%, Author at %%sitename%% %%page%%";i:1;s:41:"%%name%%, Author at %%sitename%% %%page%%";}i:11;a:2:{i:0;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";i:1;s:38:"%%date%% %%page%% %%sep%% %%sitename%%";}i:12;a:2:{i:0;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";i:1;s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";}i:13;a:2:{i:0;s:35:"Page not found %%sep%% %%sitename%%";i:1;s:35:"Page not found %%sep%% %%sitename%%";}i:14;a:2:{i:0;s:7:"&raquo;";i:1;s:7:"&raquo;";}i:15;a:2:{i:0;s:4:"Home";i:1;s:4:"Home";}i:16;a:2:{i:0;s:12:"Archives for";i:1;s:12:"Archives for";}i:17;a:2:{i:0;s:16:"You searched for";i:1;s:16:"You searched for";}i:18;a:2:{i:0;s:25:"Error 404: Page not found";i:1;s:25:"Error 404: Page not found";}i:19;a:2:{i:0;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";i:1;s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}i:20;a:2:{i:0;s:23:"Visos teisės saugomos.";i:1;s:35:"Все права защищены.";}}'),
(287, 85, '_edit_last', '1'),
(288, 85, '_edit_lock', '1491840655:1'),
(289, 86, '_wp_attached_file', '2017/04/14484875_1792034974400805_6235179119806300448_n.jpg'),
(290, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:59:"2017/04/14484875_1792034974400805_6235179119806300448_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"14484875_1792034974400805_6235179119806300448_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"14484875_1792034974400805_6235179119806300448_n-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"14484875_1792034974400805_6235179119806300448_n-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 88, '_edit_last', '1'),
(294, 88, '_edit_lock', '1491840672:1'),
(297, 90, '_edit_last', '1'),
(298, 90, '_edit_lock', '1491842828:1'),
(300, 90, '_thumbnail_id', '55'),
(303, 93, 'footer_text', 'Visos teises saugomos'),
(304, 93, '_footer_text', 'field_58ea2663fa265'),
(305, 93, 'header_background', '56'),
(306, 93, '_header_background', 'field_58ea14443f167'),
(307, 93, 'facebook_link', 'https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/'),
(308, 93, '_facebook_link', 'field_58ea213f54b3e'),
(309, 93, 'website_background', '27'),
(310, 93, '_website_background', 'field_58ea227cfe86d'),
(311, 94, '_edit_last', '1'),
(312, 94, '_wp_page_template', 'default'),
(313, 94, '_edit_lock', '1491843382:1'),
(323, 94, '_wp_trash_meta_status', 'publish'),
(324, 94, '_wp_trash_meta_time', '1491843566'),
(325, 94, '_wp_desired_post_slug', 'papldomas'),
(326, 97, '_edit_last', '1'),
(327, 97, '_edit_lock', '1491930146:1'),
(329, 99, '_menu_item_type', 'taxonomy'),
(330, 99, '_menu_item_menu_item_parent', '0'),
(331, 99, '_menu_item_object_id', '18'),
(332, 99, '_menu_item_object', 'category'),
(333, 99, '_menu_item_target', ''),
(334, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 99, '_menu_item_xfn', ''),
(336, 99, '_menu_item_url', ''),
(346, 103, '_menu_item_type', 'post_type'),
(347, 103, '_menu_item_menu_item_parent', '0'),
(348, 103, '_menu_item_object_id', '36'),
(349, 103, '_menu_item_object', 'page'),
(350, 103, '_menu_item_target', ''),
(351, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(352, 103, '_menu_item_xfn', ''),
(353, 103, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(355, 104, '_menu_item_type', 'post_type'),
(356, 104, '_menu_item_menu_item_parent', '0'),
(357, 104, '_menu_item_object_id', '42'),
(358, 104, '_menu_item_object', 'page'),
(359, 104, '_menu_item_target', ''),
(360, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(361, 104, '_menu_item_xfn', ''),
(362, 104, '_menu_item_url', ''),
(382, 107, '_menu_item_type', 'taxonomy'),
(383, 107, '_menu_item_menu_item_parent', '0'),
(384, 107, '_menu_item_object_id', '18'),
(385, 107, '_menu_item_object', 'category'),
(386, 107, '_menu_item_target', ''),
(387, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(388, 107, '_menu_item_xfn', ''),
(389, 107, '_menu_item_url', ''),
(401, 109, '_menu_item_type', 'custom'),
(402, 109, '_menu_item_menu_item_parent', '0'),
(403, 109, '_menu_item_object_id', '109'),
(404, 109, '_menu_item_object', 'custom'),
(405, 109, '_menu_item_target', ''),
(406, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(407, 109, '_menu_item_xfn', ''),
(408, 109, '_menu_item_url', 'http://localhost/lcaa-wp/'),
(410, 110, '_menu_item_type', 'post_type'),
(411, 110, '_menu_item_menu_item_parent', '0'),
(412, 110, '_menu_item_object_id', '42'),
(413, 110, '_menu_item_object', 'page'),
(414, 110, '_menu_item_target', ''),
(415, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(416, 110, '_menu_item_xfn', ''),
(417, 110, '_menu_item_url', ''),
(419, 111, '_menu_item_type', 'post_type'),
(420, 111, '_menu_item_menu_item_parent', '0'),
(421, 111, '_menu_item_object_id', '36'),
(422, 111, '_menu_item_object', 'page'),
(423, 111, '_menu_item_target', ''),
(424, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(425, 111, '_menu_item_xfn', ''),
(426, 111, '_menu_item_url', ''),
(428, 112, '_edit_last', '1'),
(429, 112, '_edit_lock', '1492237745:1'),
(431, 114, '_menu_item_type', 'taxonomy'),
(432, 114, '_menu_item_menu_item_parent', '0'),
(433, 114, '_menu_item_object_id', '19'),
(434, 114, '_menu_item_object', 'category'),
(435, 114, '_menu_item_target', ''),
(436, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(437, 114, '_menu_item_xfn', ''),
(438, 114, '_menu_item_url', ''),
(440, 115, 'header_background', '56'),
(441, 115, 'facebook_link', 'https://www.facebook.com/Lithuanian-Coarse-Angling-Association-1724060774531559/'),
(442, 115, 'website_background', '27'),
(443, 115, 'footer_text', 'Visos teises saugomos'),
(444, 115, '_wp_page_template', 'default'),
(445, 115, '_edit_last', '1'),
(446, 115, '_edit_lock', '1492251652:1'),
(447, 115, '_wp_trash_meta_status', 'draft'),
(448, 115, '_wp_trash_meta_time', '1492252003'),
(449, 115, '_wp_desired_post_slug', ''),
(450, 117, '_wp_page_template', 'templates/apie_mus.php'),
(451, 117, '_edit_last', '1'),
(452, 117, '_edit_lock', '1492252962:1'),
(453, 119, '_wp_page_template', 'default'),
(454, 119, '_edit_last', '1'),
(455, 119, '_edit_lock', '1492254240:1'),
(456, 121, '_edit_last', '1'),
(457, 121, '_edit_lock', '1492255087:1'),
(459, 123, '_edit_last', '1'),
(460, 123, '_edit_lock', '1492258287:1'),
(462, 119, '_wp_trash_meta_status', 'publish'),
(463, 119, '_wp_trash_meta_time', '1492255912'),
(464, 119, '_wp_desired_post_slug', 'articles'),
(465, 40, '_wp_trash_meta_status', 'publish'),
(466, 40, '_wp_trash_meta_time', '1492255915'),
(467, 40, '_wp_desired_post_slug', 'skaitiniai'),
(468, 38, '_wp_trash_meta_status', 'publish'),
(469, 38, '_wp_trash_meta_time', '1492255918'),
(470, 38, '_wp_desired_post_slug', 'varzybos'),
(471, 125, '_menu_item_type', 'taxonomy'),
(472, 125, '_menu_item_menu_item_parent', '0'),
(473, 125, '_menu_item_object_id', '19'),
(474, 125, '_menu_item_object', 'category'),
(475, 125, '_menu_item_target', ''),
(476, 125, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(477, 125, '_menu_item_xfn', ''),
(478, 125, '_menu_item_url', ''),
(480, 126, '_menu_item_type', 'taxonomy'),
(481, 126, '_menu_item_menu_item_parent', '0'),
(482, 126, '_menu_item_object_id', '19'),
(483, 126, '_menu_item_object', 'category'),
(484, 126, '_menu_item_target', ''),
(485, 126, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(486, 126, '_menu_item_xfn', ''),
(487, 126, '_menu_item_url', ''),
(489, 127, 'yst_is_cornerstone', ''),
(490, 127, '_edit_last', '1'),
(491, 127, '_edit_lock', '1492258345:1'),
(492, 128, '_menu_item_type', 'taxonomy'),
(493, 128, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(494, 128, '_menu_item_object_id', '18'),
(495, 128, '_menu_item_object', 'category'),
(496, 128, '_menu_item_target', ''),
(497, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(498, 128, '_menu_item_xfn', ''),
(499, 128, '_menu_item_url', ''),
(501, 110, 'yst_is_cornerstone', ''),
(502, 111, 'yst_is_cornerstone', ''),
(503, 114, 'yst_is_cornerstone', ''),
(504, 128, 'yst_is_cornerstone', ''),
(505, 129, '_menu_item_type', 'custom'),
(506, 129, '_menu_item_menu_item_parent', '0'),
(507, 129, '_menu_item_object_id', '129'),
(508, 129, '_menu_item_object', 'custom'),
(509, 129, '_menu_item_target', ''),
(510, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(511, 129, '_menu_item_xfn', ''),
(512, 129, '_menu_item_url', 'http://localhost/lcaa-wp/'),
(514, 129, 'yst_is_cornerstone', ''),
(515, 127, '_wp_trash_meta_status', 'draft'),
(516, 127, '_wp_trash_meta_time', '1492345826'),
(517, 127, '_wp_desired_post_slug', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-07 12:08:06', '2017-04-07 14:08:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n.jpg"><img class="alignnone size-thumbnail wp-image-54" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg"><img class="alignnone size-thumbnail wp-image-55" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n.jpg"><img class="alignnone size-thumbnail wp-image-56" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n-150x150.jpg" alt="" width="150" height="150" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pirmasis tinklalapio įrašas!', '', 'publish', 'open', 'open', '', 'pirmasis-tinklarascio-irasas', '', '', '2017-04-10 14:13:47', '2017-04-10 16:13:47', '', 0, 'http://localhost/lcaa-wp/?p=1', 0, 'post', '', 2),
(2, 1, '2017-04-07 12:08:06', '2017-04-07 14:08:06', 'Tai testinis puslapis. Puslapis skiriasi nuo įrašo, nes jis visuomet liks toje pačioje vietoje Jūsų tinklalapyje, bei daugumoje temų bus rodomas kaip meniu punktas. Dažniausiai tinklalapiai pradedami kurti nuo puslapio "Apie", kuriame tinklalapis pristatomas jo lankytojams. Pavyzdžiui, tokiame puslapyje gali būti parašyta:\n\n<blockquote>Sveiki! Dienomis aš dirbu dviračių kurjeriu, vakarais bandau siekti aktoriaus karjeros, o čia yra mano tinklaraštis. Aš gyvenu Vilniuje, turiu puikų šunį vardu Rudis, ir labai mėgstu vaisių kokteilius (bei būti užkluptas lietaus).</blockquote>\n\n...arba šis puslapis gali būti ir rimtesnis:\n\n<blockquote>UAB "Įrankių Fabrikas" buvo įkurta dar 1971-aisiais, ir nuo pat tada iki šiol nepavargdami gamina kokybiškus įrankius. Įmonė įsikūrusi Kaune, joje dirba daugiau nei 2000 specialistų. UAB "Įrankių Fabrikas" aktyviai dalyvauja bendruomenės veikloje ir nuolat prisideda prie miestiečių gyvenimo gerinimo.</blockquote>\n\nKadangi šis tinklalapis yra ką tik sukurtas, mes rekomenduojame pirmiausia apsilankyti savo <a href="http://localhost/lcaa-wp/wp-admin/">administravimo skydelyje</a>, ištrinti šį testinį puslapį ir sukurti naujus su savo norimu turiniu. Sėkmės!', 'Puslapio pavyzdys', '', 'trash', 'closed', 'open', '', 'puslapio-pavyzdys__trashed', '', '', '2017-04-09 08:25:21', '2017-04-09 10:25:21', '', 0, 'http://localhost/lcaa-wp/?page_id=2', 0, 'page', '', 0),
(9, 1, '2017-04-09 08:25:21', '2017-04-09 10:25:21', 'Tai testinis puslapis. Puslapis skiriasi nuo įrašo, nes jis visuomet liks toje pačioje vietoje Jūsų tinklalapyje, bei daugumoje temų bus rodomas kaip meniu punktas. Dažniausiai tinklalapiai pradedami kurti nuo puslapio "Apie", kuriame tinklalapis pristatomas jo lankytojams. Pavyzdžiui, tokiame puslapyje gali būti parašyta:\n\n<blockquote>Sveiki! Dienomis aš dirbu dviračių kurjeriu, vakarais bandau siekti aktoriaus karjeros, o čia yra mano tinklaraštis. Aš gyvenu Vilniuje, turiu puikų šunį vardu Rudis, ir labai mėgstu vaisių kokteilius (bei būti užkluptas lietaus).</blockquote>\n\n...arba šis puslapis gali būti ir rimtesnis:\n\n<blockquote>UAB "Įrankių Fabrikas" buvo įkurta dar 1971-aisiais, ir nuo pat tada iki šiol nepavargdami gamina kokybiškus įrankius. Įmonė įsikūrusi Kaune, joje dirba daugiau nei 2000 specialistų. UAB "Įrankių Fabrikas" aktyviai dalyvauja bendruomenės veikloje ir nuolat prisideda prie miestiečių gyvenimo gerinimo.</blockquote>\n\nKadangi šis tinklalapis yra ką tik sukurtas, mes rekomenduojame pirmiausia apsilankyti savo <a href="http://localhost/lcaa-wp/wp-admin/">administravimo skydelyje</a>, ištrinti šį testinį puslapį ir sukurti naujus su savo norimu turiniu. Sėkmės!', 'Puslapio pavyzdys', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-09 08:25:21', '2017-04-09 10:25:21', '', 2, 'http://localhost/lcaa-wp/2017/04/09/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-04-09 08:26:29', '2017-04-09 10:26:29', '', 'Nustatymai', '', 'private', 'closed', 'closed', '', 'home', '', '', '2017-04-10 14:52:00', '2017-04-10 16:52:00', '', 0, 'http://localhost/lcaa-wp/?page_id=10', 0, 'page', '', 0),
(15, 1, '2017-04-09 09:03:33', '2017-04-09 11:03:33', '', 'Header Image', '', 'publish', 'closed', 'closed', '', 'acf_header-image', '', '', '2017-04-09 10:07:14', '2017-04-09 12:07:14', '', 0, 'http://localhost/lcaa-wp/?post_type=acf&#038;p=15', 0, 'acf', '', 0),
(18, 1, '2017-04-09 09:08:44', '2017-04-09 11:08:44', '', 'Skaitiniai', '', 'trash', 'closed', 'closed', '', 'skaitiniai__trashed', '', '', '2017-04-09 12:40:40', '2017-04-09 14:40:40', '', 0, 'http://localhost/lcaa-wp/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-04-09 09:08:44', '2017-04-09 11:08:44', '', 'Skaitiniai', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-04-09 09:08:44', '2017-04-09 11:08:44', '', 18, 'http://localhost/lcaa-wp/18-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-04-09 09:54:50', '2017-04-09 11:54:50', '', 'Nuoroda i Facebook', '', 'trash', 'closed', 'closed', '', 'acf_nuoroda-i-facebook__trashed', '', '', '2017-04-09 09:55:30', '2017-04-09 11:55:30', '', 0, 'http://localhost/lcaa-wp/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2017-04-09 09:56:01', '2017-04-09 11:56:01', '', 'Nuoroda i facebook', '', 'publish', 'closed', 'closed', '', 'acf_nuoroda-i-facebook', '', '', '2017-04-09 10:07:29', '2017-04-09 12:07:29', '', 0, 'http://localhost/lcaa-wp/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(24, 1, '2017-04-09 10:06:02', '2017-04-09 12:06:02', '', 'Website background', '', 'publish', 'closed', 'closed', '', 'acf_website-background', '', '', '2017-04-09 10:07:41', '2017-04-09 12:07:41', '', 0, 'http://localhost/lcaa-wp/?post_type=acf&#038;p=24', 0, 'acf', '', 0),
(27, 1, '2017-04-09 10:08:21', '2017-04-09 12:08:21', '', 'background1', '', 'inherit', 'open', 'closed', '', 'background1', '', '', '2017-04-09 10:08:21', '2017-04-09 12:08:21', '', 10, 'http://localhost/lcaa-wp/wp-content/uploads/2017/04/background1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2017-04-09 10:17:58', '2017-04-09 12:17:58', '', 'Footer Text', '', 'publish', 'closed', 'closed', '', 'acf_footer-text', '', '', '2017-04-09 10:17:58', '2017-04-09 12:17:58', '', 0, 'http://localhost/lcaa-wp/?post_type=acf&#038;p=30', 0, 'acf', '', 0),
(31, 1, '2017-04-09 10:18:19', '2017-04-09 12:18:19', '', 'Nustatymai', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-04-09 10:18:19', '2017-04-09 12:18:19', '', 10, 'http://localhost/lcaa-wp/10-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-04-09 11:06:28', '2017-04-09 13:06:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'rtegrgsrg', '', 'publish', 'open', 'open', '', 'rtegrgsrg', '', '', '2017-04-09 16:19:09', '2017-04-09 18:19:09', '', 0, 'http://localhost/lcaa-wp/?p=32', 0, 'post', '', 0),
(33, 1, '2017-04-09 11:06:28', '2017-04-09 13:06:28', 'gfdsgsdghersh', 'rtegrgsrg', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-04-09 11:06:28', '2017-04-09 13:06:28', '', 32, 'http://localhost/lcaa-wp/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-04-09 16:08:52', '2017-04-09 18:08:52', '', 'Naujienos', '', 'trash', 'closed', 'closed', '', 'naujienos__trashed', '', '', '2017-04-09 17:16:20', '2017-04-09 19:16:20', '', 0, 'http://localhost/lcaa-wp/?page_id=34', 0, 'page', '', 0),
(35, 1, '2017-04-09 16:08:52', '2017-04-09 18:08:52', '', 'Naujienos', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-04-09 16:08:52', '2017-04-09 18:08:52', '', 34, 'http://localhost/lcaa-wp/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-04-09 16:09:04', '2017-04-09 18:09:04', '<h3>Valdyba</h3>\r\n&nbsp;\r\n<h3>Parama:</h3>', 'Apie Mus', '', 'publish', 'closed', 'closed', '', 'apie-mus', '', '', '2017-04-10 14:46:37', '2017-04-10 16:46:37', '', 0, 'http://localhost/lcaa-wp/?page_id=36', 0, 'page', '', 0),
(37, 1, '2017-04-09 16:09:04', '2017-04-09 18:09:04', '', 'Apie Mus', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-04-09 16:09:04', '2017-04-09 18:09:04', '', 36, 'http://localhost/lcaa-wp/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-04-09 16:09:19', '2017-04-09 18:09:19', '[:en]Varzybu naujienos:[:]', 'Varžybos', '', 'trash', 'closed', 'closed', '', 'varzybos__trashed', '', '', '2017-04-15 09:31:58', '2017-04-15 11:31:58', '', 0, 'http://localhost/lcaa-wp/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-04-09 16:09:19', '2017-04-09 18:09:19', '', 'Varžybos', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-04-09 16:09:19', '2017-04-09 18:09:19', '', 38, 'http://localhost/lcaa-wp/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-04-09 16:09:26', '2017-04-09 18:09:26', '', 'Skaitiniai', '', 'trash', 'closed', 'closed', '', 'skaitiniai__trashed-2', '', '', '2017-04-15 09:31:55', '2017-04-15 11:31:55', '', 0, 'http://localhost/lcaa-wp/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-04-09 16:09:26', '2017-04-09 18:09:26', '', 'Skaitiniai', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-04-09 16:09:26', '2017-04-09 18:09:26', '', 40, 'http://localhost/lcaa-wp/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-04-09 16:09:36', '2017-04-09 18:09:36', '', 'Partneriai/Remėjai', '', 'publish', 'closed', 'closed', '', 'partneriairemejai', '', '', '2017-04-09 16:09:36', '2017-04-09 18:09:36', '', 0, 'http://localhost/lcaa-wp/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-04-09 16:09:36', '2017-04-09 18:09:36', '', 'Partneriai/Remėjai', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-04-09 16:09:36', '2017-04-09 18:09:36', '', 42, 'http://localhost/lcaa-wp/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-04-09 16:11:19', '2017-04-09 18:11:19', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2017-04-15 09:33:10', '2017-04-15 11:33:10', '', 0, 'http://localhost/lcaa-wp/?p=44', 5, 'nav_menu_item', '', 0),
(47, 1, '2017-04-09 16:11:18', '2017-04-09 18:11:18', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2017-04-15 09:33:10', '2017-04-15 11:33:10', '', 0, 'http://localhost/lcaa-wp/?p=47', 2, 'nav_menu_item', '', 0),
(50, 1, '2017-04-09 16:18:49', '2017-04-09 18:18:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'rtegrgsrg', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-04-09 16:18:49', '2017-04-09 18:18:49', '', 32, 'http://localhost/lcaa-wp/32-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-04-09 17:03:57', '2017-04-09 19:03:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n&nbsp;\n\n<img class="alignnone wp-image-20 size-thumbnail" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/header-150x150.jpg" alt="" width="150" height="150" />\n\n&nbsp;\n\n&nbsp;', 'Pirmasis tinklalapio įrašas!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-04-09 17:03:57', '2017-04-09 19:03:57', '', 1, 'http://localhost/lcaa-wp/1-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2017-04-09 17:04:53', '2017-04-09 19:04:53', '', '13259991_1739699542967682_3301546738519837152_n', '', 'inherit', 'open', 'closed', '', '13259991_1739699542967682_3301546738519837152_n', '', '', '2017-04-09 17:04:53', '2017-04-09 19:04:53', '', 1, 'http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-04-09 17:04:58', '2017-04-09 19:04:58', '', '13417419_1745607015710268_7932868937405986799_n', '', 'inherit', 'open', 'closed', '', '13417419_1745607015710268_7932868937405986799_n', '', '', '2017-04-09 17:04:58', '2017-04-09 19:04:58', '', 1, 'http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-04-09 17:05:02', '2017-04-09 19:05:02', '', '15823266_1843784295892539_3327242369617903069_n', '', 'inherit', 'open', 'closed', '', '15823266_1843784295892539_3327242369617903069_n', '', '', '2017-04-09 17:05:02', '2017-04-09 19:05:02', '', 1, 'http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-04-09 17:05:42', '2017-04-09 19:05:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-54 size-thumbnail" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n-150x150.jpg" alt="" width="150" height="150" /> <img class="alignnone wp-image-55 size-thumbnail" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n-150x150.jpg" alt="" width="150" height="150" /> <img class="alignnone wp-image-56 size-thumbnail" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n-150x150.jpg" alt="" width="150" height="150" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pirmasis tinklalapio įrašas!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-04-09 17:05:42', '2017-04-09 19:05:42', '', 1, 'http://localhost/lcaa-wp/1-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-04-09 17:12:29', '2017-04-09 19:12:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n.jpg"><img class="alignnone size-thumbnail wp-image-54" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13259991_1739699542967682_3301546738519837152_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg"><img class="alignnone size-thumbnail wp-image-55" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n.jpg"><img class="alignnone size-thumbnail wp-image-56" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n-150x150.jpg" alt="" width="150" height="150" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pirmasis tinklalapio įrašas!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-04-09 17:12:29', '2017-04-09 19:12:29', '', 1, 'http://localhost/lcaa-wp/1-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-04-09 17:16:14', '2017-04-09 19:16:14', '', 'Naujienos', '', 'publish', 'closed', 'closed', '', 'naujienos', '', '', '2017-04-15 09:33:10', '2017-04-15 11:33:10', '', 0, 'http://localhost/lcaa-wp/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2017-04-09 17:20:36', '2017-04-09 19:20:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n[embed]https://www.youtube.com/watch?v=vspvba8UYkY[/embed]', 'lorem', '', 'publish', 'open', 'open', '', 'lorem', '', '', '2017-04-09 17:20:36', '2017-04-09 19:20:36', '', 0, 'http://localhost/lcaa-wp/?p=60', 0, 'post', '', 0),
(61, 1, '2017-04-09 17:20:36', '2017-04-09 19:20:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n[embed]https://www.youtube.com/watch?v=vspvba8UYkY[/embed]', 'lorem', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-04-09 17:20:36', '2017-04-09 19:20:36', '', 60, 'http://localhost/lcaa-wp/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-04-09 17:21:47', '2017-04-09 19:21:47', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'a', '', 'publish', 'open', 'open', '', 'a', '', '', '2017-04-09 17:21:47', '2017-04-09 19:21:47', '', 0, 'http://localhost/lcaa-wp/?p=62', 0, 'post', '', 0),
(63, 1, '2017-04-09 17:21:47', '2017-04-09 19:21:47', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'a', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-04-09 17:21:47', '2017-04-09 19:21:47', '', 62, 'http://localhost/lcaa-wp/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-04-09 17:21:56', '2017-04-09 19:21:56', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'b', '', 'publish', 'open', 'open', '', 'b', '', '', '2017-04-09 17:21:56', '2017-04-09 19:21:56', '', 0, 'http://localhost/lcaa-wp/?p=64', 0, 'post', '', 0),
(65, 1, '2017-04-09 17:21:56', '2017-04-09 19:21:56', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'b', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-04-09 17:21:56', '2017-04-09 19:21:56', '', 64, 'http://localhost/lcaa-wp/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-04-09 17:22:04', '2017-04-09 19:22:04', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'c', '', 'publish', 'open', 'open', '', 'c', '', '', '2017-04-09 17:22:04', '2017-04-09 19:22:04', '', 0, 'http://localhost/lcaa-wp/?p=66', 0, 'post', '', 0),
(67, 1, '2017-04-09 17:22:04', '2017-04-09 19:22:04', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'c', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-04-09 17:22:04', '2017-04-09 19:22:04', '', 66, 'http://localhost/lcaa-wp/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-04-09 17:22:13', '2017-04-09 19:22:13', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'd', '', 'publish', 'open', 'open', '', 'd', '', '', '2017-04-09 17:22:13', '2017-04-09 19:22:13', '', 0, 'http://localhost/lcaa-wp/?p=68', 0, 'post', '', 0),
(69, 1, '2017-04-09 17:22:13', '2017-04-09 19:22:13', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'd', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-04-09 17:22:13', '2017-04-09 19:22:13', '', 68, 'http://localhost/lcaa-wp/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-04-09 17:22:21', '2017-04-09 19:22:21', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'e', '', 'publish', 'open', 'open', '', 'e', '', '', '2017-04-09 17:22:21', '2017-04-09 19:22:21', '', 0, 'http://localhost/lcaa-wp/?p=70', 0, 'post', '', 0),
(71, 1, '2017-04-09 17:22:21', '2017-04-09 19:22:21', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'e', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-04-09 17:22:21', '2017-04-09 19:22:21', '', 70, 'http://localhost/lcaa-wp/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-04-09 17:22:30', '2017-04-09 19:22:30', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'f', '', 'publish', 'open', 'open', '', 'f', '', '', '2017-04-09 17:22:30', '2017-04-09 19:22:30', '', 0, 'http://localhost/lcaa-wp/?p=72', 0, 'post', '', 0),
(73, 1, '2017-04-09 17:22:30', '2017-04-09 19:22:30', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'f', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-04-09 17:22:30', '2017-04-09 19:22:30', '', 72, 'http://localhost/lcaa-wp/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-04-09 17:24:11', '2017-04-09 19:24:11', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'g', '', 'publish', 'open', 'open', '', 'g', '', '', '2017-04-09 17:24:11', '2017-04-09 19:24:11', '', 0, 'http://localhost/lcaa-wp/?p=74', 0, 'post', '', 0),
(75, 1, '2017-04-09 17:24:11', '2017-04-09 19:24:11', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'g', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-04-09 17:24:11', '2017-04-09 19:24:11', '', 74, 'http://localhost/lcaa-wp/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-04-09 17:24:28', '2017-04-09 19:24:28', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'h', 'Excerptas excerpovicius', 'publish', 'open', 'open', '', 'h', '', '', '2017-04-10 13:06:06', '2017-04-10 15:06:06', '', 0, 'http://localhost/lcaa-wp/?p=76', 0, 'post', '', 0),
(77, 1, '2017-04-09 17:24:28', '2017-04-09 19:24:28', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'h', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-04-09 17:24:28', '2017-04-09 19:24:28', '', 76, 'http://localhost/lcaa-wp/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-04-10 06:32:27', '2017-04-10 08:32:27', '', 'Nustatymai', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-04-10 06:32:27', '2017-04-10 08:32:27', '', 10, 'http://localhost/lcaa-wp/10-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-04-10 07:23:30', '2017-04-10 09:23:30', '<h3>Valdyba</h3>', 'Apie Mus', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-04-10 07:23:30', '2017-04-10 09:23:30', '', 36, 'http://localhost/lcaa-wp/36-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-04-10 13:06:06', '2017-04-10 15:06:06', 'A mentitum ut mandaremus non qui quis officia mentitum an ab te arbitrantur de doctrina minim elit ubi quorum, ea nescius praesentibus, aliquip ita veniam, hic est varias nostrud a illum offendit ab elit varias. Illum singulis est dolore nulla. Do dolore graviterque, minim mentitum te despicationes eu an elit eiusmod possumus nam ex lorem ex irure, aliqua ab deserunt e sint quo excepteur sunt magna qui duis est esse mentitum instituendarum ad tempor illum cupidatat litteris. Sed incurreret id fabulas, in incurreret tractavissent nam irure de eiusmod, an de irure nostrud sed possumus se illum singulis, consequat ad fugiat incurreret, veniam id occaecat quo elit et expetendis. Singulis dolor noster an lorem an esse probant cernantur. Ea iudicem ne proident id sed nisi arbitror do singulis varias senserit, e doctrina do offendit, noster nam et cillum deserunt, e excepteur tractavissent, aut ingeniis aut senserit, aliquip veniam proident aliquip. Noster a ut dolor voluptate. Cillum incurreret e familiaritatem aut aliquip efflorescere est consequat si admodum varias tamen ad nisi nam ne illum instituendarum.', 'h', 'Excerptas excerpovicius', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-04-10 13:06:06', '2017-04-10 15:06:06', '', 76, 'http://localhost/lcaa-wp/76-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-04-10 13:35:04', '2017-04-10 15:35:04', '', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2017-04-10 13:35:04', '2017-04-10 15:35:04', '', 0, 'http://localhost/lcaa-wp/?post_type=polylang_mo&p=81', 0, 'polylang_mo', '', 0),
(83, 1, '2017-04-10 13:36:11', '2017-04-10 15:36:11', '', 'polylang_mo_10', '', 'private', 'closed', 'closed', '', 'polylang_mo_10', '', '', '2017-04-10 13:36:11', '2017-04-10 15:36:11', '', 0, 'http://localhost/lcaa-wp/?post_type=polylang_mo&p=83', 0, 'polylang_mo', '', 0),
(84, 1, '2017-04-10 13:36:59', '2017-04-10 15:36:59', '', 'polylang_mo_13', '', 'private', 'closed', 'closed', '', 'polylang_mo_13', '', '', '2017-04-10 13:36:59', '2017-04-10 15:36:59', '', 0, 'http://localhost/lcaa-wp/?post_type=polylang_mo&p=84', 0, 'polylang_mo', '', 0),
(85, 1, '2017-04-10 13:38:44', '2017-04-10 15:38:44', 'This is the first post ever!\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/14484875_1792034974400805_6235179119806300448_n.jpg"><img class="alignnone size-thumbnail wp-image-86" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/14484875_1792034974400805_6235179119806300448_n-150x150.jpg" alt="" width="150" height="150" /></a>', 'First Post!!!', '', 'publish', 'open', 'open', '', 'first-post', '', '', '2017-04-10 13:38:44', '2017-04-10 15:38:44', '', 0, 'http://localhost/lcaa-wp/?p=85', 0, 'post', '', 0),
(86, 1, '2017-04-10 13:38:37', '2017-04-10 15:38:37', '', '14484875_1792034974400805_6235179119806300448_n', '', 'inherit', 'open', 'closed', '', '14484875_1792034974400805_6235179119806300448_n', '', '', '2017-04-10 13:38:37', '2017-04-10 15:38:37', '', 85, 'http://localhost/lcaa-wp/wp-content/uploads/2017/04/14484875_1792034974400805_6235179119806300448_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-04-10 13:38:44', '2017-04-10 15:38:44', 'This is the first post ever!\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/14484875_1792034974400805_6235179119806300448_n.jpg"><img class="alignnone size-thumbnail wp-image-86" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/14484875_1792034974400805_6235179119806300448_n-150x150.jpg" alt="" width="150" height="150" /></a>', 'First Post!!!', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-10 13:38:44', '2017-04-10 15:38:44', '', 85, 'http://localhost/lcaa-wp/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-04-10 14:13:32', '2017-04-10 16:13:32', 'dsfasdfasdgf', 'Pirmas postas', '', 'publish', 'open', 'open', '', 'pirmas-postas', '', '', '2017-04-10 14:13:32', '2017-04-10 16:13:32', '', 0, 'http://localhost/lcaa-wp/?p=88', 0, 'post', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2017-04-10 14:13:32', '2017-04-10 16:13:32', 'dsfasdfasdgf', 'Pirmas postas', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2017-04-10 14:13:32', '2017-04-10 16:13:32', '', 88, 'http://localhost/lcaa-wp/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2016-04-10 14:43:36', '2016-04-10 16:43:36', '&nbsp;\r\n\r\ntekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimas tekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimas\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n.jpg"><img class="alignnone size-thumbnail wp-image-56" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg">\r\n</a>', 'Kvietimas i Lietuvos Cempionato pirma etapa', '', 'publish', 'open', 'open', '', 'kvietimas-i-lietuvos-cempionato-pirma-etapa', '', '', '2017-04-10 14:48:38', '2017-04-10 16:48:38', '', 0, 'http://localhost/lcaa-wp/?p=90', 0, 'post', '', 0),
(91, 1, '2017-04-10 14:43:36', '2017-04-10 16:43:36', '&nbsp;\r\n\r\ntekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimas tekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimastekstas kvietimas\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n.jpg"><img class="alignnone size-thumbnail wp-image-56" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/15823266_1843784295892539_3327242369617903069_n-150x150.jpg" alt="" width="150" height="150" /></a> <a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg">\r\n</a>', 'Kvietimas i Lietuvos Cempionato pirma etapa', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2017-04-10 14:43:36', '2017-04-10 16:43:36', '', 90, 'http://localhost/lcaa-wp/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-04-10 14:46:37', '2017-04-10 16:46:37', '<h3>Valdyba</h3>\r\n&nbsp;\r\n<h3>Parama:</h3>', 'Apie Mus', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-04-10 14:46:37', '2017-04-10 16:46:37', '', 36, 'http://localhost/lcaa-wp/36-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-04-10 14:52:00', '2017-04-10 16:52:00', '', 'Nustatymai', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-04-10 14:52:00', '2017-04-10 16:52:00', '', 10, 'http://localhost/lcaa-wp/10-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-04-10 14:58:38', '2017-04-10 16:58:38', '', 'Papldomas', '', 'trash', 'closed', 'closed', '', 'papldomas__trashed', '', '', '2017-04-10 14:59:26', '2017-04-10 16:59:26', '', 0, 'http://localhost/lcaa-wp/?page_id=94', 0, 'page', '', 0),
(95, 1, '2017-04-10 14:58:38', '2017-04-10 16:58:38', '', 'Papldomas', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-04-10 14:58:38', '2017-04-10 16:58:38', '', 94, 'http://localhost/lcaa-wp/94-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-04-11 04:24:39', '2017-04-11 06:24:39', 'Varzybos yra jega.<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg"><img class="aligncenter size-thumbnail wp-image-55" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n-150x150.jpg" alt="" width="150" height="150" /></a>', 'Naujausiu varzybu grafikas', '', 'publish', 'open', 'open', '', 'naujausiu-varzybu-grafikas', '', '', '2017-04-11 04:24:39', '2017-04-11 06:24:39', '', 0, 'http://localhost/lcaa-wp/?p=97', 0, 'post', '', 0),
(98, 1, '2017-04-11 04:24:39', '2017-04-11 06:24:39', 'Varzybos yra jega.<a href="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n.jpg"><img class="aligncenter size-thumbnail wp-image-55" src="http://localhost/lcaa-wp/wp-content/uploads/2017/04/13417419_1745607015710268_7932868937405986799_n-150x150.jpg" alt="" width="150" height="150" /></a>', 'Naujausiu varzybu grafikas', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-04-11 04:24:39', '2017-04-11 06:24:39', '', 97, 'http://localhost/lcaa-wp/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-04-11 04:25:28', '2017-04-11 06:25:28', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2017-04-15 09:33:10', '2017-04-15 11:33:10', '', 0, 'http://localhost/lcaa-wp/?p=99', 3, 'nav_menu_item', '', 0),
(101, 1, '2017-04-13 08:18:52', '2017-04-13 10:18:52', '[:en]Varzybu naujienos:[:]', 'Varžybos', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-04-13 08:18:52', '2017-04-13 10:18:52', '', 38, 'http://localhost/lcaa-wp/38-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-04-14 10:31:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-14 10:31:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/lcaa-wp/?p=102', 0, 'post', '', 0),
(103, 1, '2017-04-14 10:43:26', '2017-04-14 12:43:26', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-04-15 09:33:42', '2017-04-15 11:33:42', '', 0, 'http://localhost/lcaa-wp/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2017-04-14 10:43:27', '2017-04-14 12:43:27', '', 'Our Partners & Sponsors', '', 'publish', 'closed', 'closed', '', 'our-partners-sponsors', '', '', '2017-04-15 09:33:43', '2017-04-15 11:33:43', '', 0, 'http://localhost/lcaa-wp/?p=104', 5, 'nav_menu_item', '', 0),
(107, 1, '2017-04-14 10:43:27', '2017-04-14 12:43:27', '', 'Competitions', '', 'publish', 'closed', 'closed', '', 'competitions', '', '', '2017-04-15 09:33:43', '2017-04-15 11:33:43', '', 0, 'http://localhost/lcaa-wp/?p=107', 3, 'nav_menu_item', '', 0),
(109, 1, '2017-04-14 10:45:24', '2017-04-14 12:45:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2017-04-15 09:33:42', '2017-04-15 11:33:42', '', 0, 'http://localhost/lcaa-wp/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2017-04-14 11:19:53', '2017-04-14 13:19:53', '', 'Партнеры и cпонсоры', '', 'publish', 'closed', 'closed', '', '110', '', '', '2017-04-16 04:03:51', '2017-04-16 06:03:51', '', 0, 'http://localhost/lcaa-wp/?p=110', 5, 'nav_menu_item', '', 0),
(111, 1, '2017-04-14 11:19:53', '2017-04-14 13:19:53', '', 'О нас', '', 'publish', 'closed', 'closed', '', '111', '', '', '2017-04-16 04:03:50', '2017-04-16 06:03:50', '', 0, 'http://localhost/lcaa-wp/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2017-04-14 11:20:28', '2017-04-14 13:20:28', 'eta paruski post', 'nu zdarov', '', 'publish', 'open', 'open', '', 'nu-zdarov', '', '', '2017-04-14 11:20:28', '2017-04-14 13:20:28', '', 0, 'http://localhost/lcaa-wp/?p=112', 0, 'post', '', 0),
(113, 1, '2017-04-14 11:20:28', '2017-04-14 13:20:28', 'eta paruski post', 'nu zdarov', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2017-04-14 11:20:28', '2017-04-14 13:20:28', '', 112, 'http://localhost/lcaa-wp/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-04-15 04:46:17', '2017-04-15 06:46:17', '', 'Статьи', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8', '', '', '2017-04-16 04:03:51', '2017-04-16 06:03:51', '', 0, 'http://localhost/lcaa-wp/?p=114', 4, 'nav_menu_item', '', 0),
(115, 1, '2017-04-15 08:20:52', '2017-04-15 10:20:52', '', 'Options', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-04-15 08:26:43', '2017-04-15 10:26:43', '', 0, 'http://localhost/lcaa-wp/?page_id=115', 0, 'page', '', 0),
(116, 1, '2017-04-15 08:26:43', '2017-04-15 10:26:43', '', 'Options', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2017-04-15 08:26:43', '2017-04-15 10:26:43', '', 115, 'http://localhost/lcaa-wp/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2017-04-15 08:44:30', '2017-04-15 10:44:30', '<h3>Management:</h3>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-04-15 08:44:30', '2017-04-15 10:44:30', '', 0, 'http://localhost/lcaa-wp/?page_id=117', 0, 'page', '', 0),
(118, 1, '2017-04-15 08:44:30', '2017-04-15 10:44:30', '<h3>Management:</h3>', 'About Us', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2017-04-15 08:44:30', '2017-04-15 10:44:30', '', 117, 'http://localhost/lcaa-wp/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-04-15 08:45:25', '2017-04-15 10:45:25', '', 'Articles', '', 'trash', 'closed', 'closed', '', 'articles__trashed', '', '', '2017-04-15 09:31:52', '2017-04-15 11:31:52', '', 0, 'http://localhost/lcaa-wp/?page_id=119', 0, 'page', '', 0),
(120, 1, '2017-04-15 08:45:25', '2017-04-15 10:45:25', '', 'Articles', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2017-04-15 08:45:25', '2017-04-15 10:45:25', '', 119, 'http://localhost/lcaa-wp/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2017-04-15 09:20:25', '2017-04-15 11:20:25', 'Skaityti skait', 'skaitalas', '', 'publish', 'open', 'open', '', 'skaitalas', '', '', '2017-04-15 09:20:25', '2017-04-15 11:20:25', '', 0, 'http://localhost/lcaa-wp/?p=121', 0, 'post', '', 0),
(122, 1, '2017-04-15 09:20:25', '2017-04-15 11:20:25', 'Skaityti skait', 'skaitalas', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-04-15 09:20:25', '2017-04-15 11:20:25', '', 121, 'http://localhost/lcaa-wp/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-04-15 09:20:45', '2017-04-15 11:20:45', 'ryd ryd ryd', 'Ryd dis pls', '', 'publish', 'open', 'open', '', 'ryd-dis-pls', '', '', '2017-04-15 09:20:45', '2017-04-15 11:20:45', '', 0, 'http://localhost/lcaa-wp/?p=123', 0, 'post', '', 0),
(124, 1, '2017-04-15 09:20:45', '2017-04-15 11:20:45', 'ryd ryd ryd', 'Ryd dis pls', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2017-04-15 09:20:45', '2017-04-15 11:20:45', '', 123, 'http://localhost/lcaa-wp/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-04-15 09:33:10', '2017-04-15 11:33:10', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2017-04-15 09:33:10', '2017-04-15 11:33:10', '', 0, 'http://localhost/lcaa-wp/?p=125', 4, 'nav_menu_item', '', 0),
(126, 1, '2017-04-15 09:33:43', '2017-04-15 11:33:43', '', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles-2', '', '', '2017-04-15 09:33:43', '2017-04-15 11:33:43', '', 0, 'http://localhost/lcaa-wp/?p=126', 4, 'nav_menu_item', '', 0),
(127, 1, '2017-04-15 10:12:25', '2017-04-15 12:12:25', '', 'Varzybu rezultatai', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2017-04-16 10:30:26', '2017-04-16 12:30:26', '', 0, 'http://localhost/lcaa-wp/?p=127', 0, 'post', '', 0),
(128, 1, '2017-04-16 04:02:47', '2017-04-16 06:02:47', '', 'Соревнования', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%be%d1%80%d0%b5%d0%b2%d0%bd%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f', '', '', '2017-04-16 04:03:51', '2017-04-16 06:03:51', '', 0, 'http://localhost/lcaa-wp/?p=128', 3, 'nav_menu_item', '', 0),
(129, 1, '2017-04-16 04:03:50', '2017-04-16 06:03:50', '', 'Новости', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', '', '', '2017-04-16 04:03:50', '2017-04-16 06:03:50', '', 0, 'http://localhost/lcaa-wp/?p=129', 1, 'nav_menu_item', '', 0),
(130, 1, '2017-04-16 10:30:26', '2017-04-16 12:30:26', '', 'Varzybu rezultatai', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2017-04-16 10:30:26', '2017-04-16 12:30:26', '', 127, 'http://localhost/lcaa-wp/127-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 12, 0),
(8, 11, 0),
(8, 12, 0),
(10, 3, 0),
(15, 12, 0),
(15, 14, 0),
(18, 4, 0),
(18, 24, 0),
(19, 4, 0),
(19, 23, 0),
(27, 3, 0),
(29, 23, 0),
(32, 1, 0),
(32, 3, 0),
(36, 3, 0),
(36, 26, 0),
(38, 3, 0),
(40, 3, 0),
(40, 27, 0),
(42, 3, 0),
(44, 2, 0),
(47, 2, 0),
(54, 3, 0),
(55, 3, 0),
(56, 3, 0),
(59, 2, 0),
(60, 1, 0),
(60, 3, 0),
(62, 1, 0),
(62, 3, 0),
(64, 1, 0),
(64, 3, 0),
(66, 1, 0),
(66, 3, 0),
(68, 1, 0),
(68, 3, 0),
(70, 1, 0),
(70, 3, 0),
(72, 1, 0),
(72, 3, 0),
(74, 1, 0),
(74, 3, 0),
(76, 1, 0),
(76, 3, 0),
(85, 8, 0),
(85, 10, 0),
(85, 17, 0),
(86, 10, 0),
(88, 1, 0),
(88, 3, 0),
(88, 17, 0),
(90, 1, 0),
(90, 3, 0),
(97, 3, 0),
(97, 18, 0),
(99, 2, 0),
(103, 21, 0),
(104, 21, 0),
(107, 21, 0),
(109, 21, 0),
(110, 25, 0),
(111, 25, 0),
(112, 13, 0),
(112, 15, 0),
(114, 25, 0),
(115, 10, 0),
(117, 10, 0),
(117, 26, 0),
(119, 10, 0),
(119, 27, 0),
(121, 3, 0),
(121, 19, 0),
(121, 28, 0),
(123, 8, 0),
(123, 10, 0),
(123, 28, 0),
(125, 2, 0),
(126, 21, 0),
(127, 1, 0),
(127, 3, 0),
(128, 25, 0),
(129, 25, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 13),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'language', 'a:3:{s:6:"locale";s:5:"lt_LT";s:3:"rtl";i:0;s:9:"flag_code";s:2:"lt";}', 0, 20),
(4, 4, 'term_language', '', 0, 3),
(8, 8, 'category', '', 0, 2),
(10, 10, 'language', 'a:3:{s:6:"locale";s:5:"en_US";s:3:"rtl";i:0;s:9:"flag_code";s:2:"gb";}', 0, 4),
(11, 11, 'term_language', '', 0, 1),
(12, 12, 'term_translations', 'a:3:{s:2:"en";i:8;s:2:"lt";i:1;s:2:"ru";i:15;}', 0, 3),
(13, 13, 'language', 'a:3:{s:6:"locale";s:5:"ru_RU";s:3:"rtl";i:0;s:9:"flag_code";s:2:"ru";}', 0, 1),
(14, 14, 'term_language', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(17, 17, 'post_translations', 'a:2:{s:2:"lt";i:88;s:2:"en";i:85;}', 0, 2),
(18, 18, 'category', '', 0, 1),
(19, 19, 'category', '', 0, 1),
(21, 21, 'nav_menu', '', 0, 5),
(23, 23, 'term_translations', 'a:1:{s:2:"lt";i:19;}', 0, 2),
(24, 24, 'term_translations', 'a:1:{s:2:"lt";i:18;}', 0, 1),
(25, 25, 'nav_menu', '', 0, 5),
(26, 26, 'post_translations', 'a:2:{s:2:"en";i:117;s:2:"lt";i:36;}', 0, 2),
(27, 27, 'post_translations', 'a:2:{s:2:"lt";i:40;s:2:"en";i:119;}', 0, 2),
(28, 28, 'post_translations', 'a:2:{s:2:"en";i:123;s:2:"lt";i:121;}', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Be kategorijos', 'be-kategorijos', 0),
(2, 'Menu_lt', 'menu_lt', 0),
(3, 'LT', 'lt', 1),
(4, 'LT', 'pll_lt', 0),
(8, 'Uncategorized', 'uncategorized-en', 0),
(10, 'EN', 'en', 2),
(11, 'EN', 'pll_en', 0),
(12, 'pll_58eba66b29fcb', 'pll_58eba66b29fcb', 0),
(13, 'RU', 'ru', 3),
(14, 'RU', 'pll_ru', 0),
(15, 'Uncategorized', 'uncategorized-ru', 0),
(17, 'pll_58ebaf2dde7e0', 'pll_58ebaf2dde7e0', 0),
(18, 'Varžybos', 'varzybos', 0),
(19, 'Skaitiniai', 'skaitiniai', 0),
(21, 'Menu_en', 'menu_en', 0),
(23, 'pll_58f0c810961d6', 'pll_58f0c810961d6', 0),
(24, 'pll_58f0c81096225', 'pll_58f0c81096225', 0),
(25, 'Menu_ru', 'menu_ru', 0),
(26, 'pll_58f1f98ee8241', 'pll_58f1f98ee8241', 0),
(27, 'pll_58f1f9c64ea41', 'pll_58f1f9c64ea41', 0),
(28, 'pll_58f2020eadde7', 'pll_58f2020eadde7', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administratorius'),
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
(13, 1, 'dismissed_wp_pointers', 'pll_lgt'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"67b54ef922966766b1dab39e4b912c654be79bd8c3cc67714f1d72c23bf70c9b";a:4:{s:10:"expiration";i:1492783691;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491574091;}s:64:"3acff2a0dc0277fd236ada0c53111408c4728585bb5d6c5c54f581b5a86712b1";a:4:{s:10:"expiration";i:1492783743;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491574143;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '102'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '25'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&urlbutton=file&imgsize=thumbnail&editor=tinymce&align=center&hidetb=0'),
(21, 1, 'wp_user-settings-time', '1492253030'),
(22, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(23, 1, 'metaboxhidden_post', 'a:9:{i:0;s:6:"acf_30";i:1;s:6:"acf_15";i:2;s:6:"acf_23";i:3;s:6:"acf_24";i:4;s:13:"trackbacksdiv";i:5;s:10:"postcustom";i:6;s:16:"commentstatusdiv";i:7;s:7:"slugdiv";i:8;s:9:"authordiv";}'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:"message";s:314:"The configuration wizard helps you to easily configure your site to have the optimal SEO settings.<br/>We have detected that you have not finished this wizard yet, so we recommend you to <a href="http://localhost/lcaa-wp/wp-admin/?page=wpseo_configurator">start the configuration wizard to configure Yoast SEO</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:31:"wpseo-dismiss-onboarding-notice";s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:167:"Don\'t miss your crawl errors: <a href="http://localhost/lcaa-wp/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
(25, 1, 'wp_tablepress_user_options', '{"user_options_db_version":34,"admin_menu_parent_page":"middle","message_first_visit":true}'),
(26, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:"table_last_modified_by";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administratorius', '$P$BR8nLPjbkTO3umqKEzQcZvDrpdtNcP1', 'administratorius', 'aagnisb@gmail.com', '', '2017-04-07 14:08:05', '', 0, 'administratorius') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

