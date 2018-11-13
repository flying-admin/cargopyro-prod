-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-11-2018 a las 15:39:48
-- Versión del servidor: 5.5.60-MariaDB
-- Versión de PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cargo_pyro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `applications`
--

INSERT INTO `applications` (`id`, `name`, `reference`, `domain`, `enabled`) VALUES
(1, 'CargoWeb', 'cargoweb', 'cargo.pyro', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications_domains`
--

CREATE TABLE `applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_addons_extensions`
--

CREATE TABLE `cargoweb_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_addons_extensions`
--

INSERT INTO `cargoweb_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.default_authenticator', 1, 1),
(2, 'anomaly.extension.default_page_handler', 1, 1),
(3, 'anomaly.extension.local_storage_adapter', 1, 1),
(4, 'anomaly.extension.page_link_type', 1, 1),
(5, 'anomaly.extension.robots', 1, 1),
(6, 'anomaly.extension.sitemap', 1, 1),
(7, 'anomaly.extension.throttle_security_check', 1, 1),
(8, 'anomaly.extension.url_link_type', 1, 1),
(9, 'anomaly.extension.user_security_check', 1, 1),
(10, 'anomaly.extension.xml_feed_widget', 1, 1),
(11, 'anomaly.extension.links_block', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_addons_modules`
--

CREATE TABLE `cargoweb_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_addons_modules`
--

INSERT INTO `cargoweb_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.addons', 1, 1),
(2, 'anomaly.module.configuration', 1, 1),
(3, 'anomaly.module.dashboard', 1, 1),
(4, 'anomaly.module.files', 1, 1),
(5, 'anomaly.module.navigation', 1, 1),
(6, 'anomaly.module.pages', 1, 1),
(7, 'anomaly.module.posts', 1, 1),
(8, 'anomaly.module.preferences', 1, 1),
(9, 'anomaly.module.redirects', 1, 1),
(10, 'anomaly.module.repeaters', 1, 1),
(11, 'anomaly.module.settings', 1, 1),
(12, 'anomaly.module.users', 1, 1),
(13, 'anomaly.module.variables', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_cache`
--

CREATE TABLE `cargoweb_cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_configuration_configuration`
--

CREATE TABLE `cargoweb_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_configuration_configuration`
--

INSERT INTO `cargoweb_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_dashboards`
--

CREATE TABLE `cargoweb_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_dashboard_dashboards`
--

INSERT INTO `cargoweb_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `cargoweb_dashboard_dashboards_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_dashboards_translations`
--

CREATE TABLE `cargoweb_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_dashboard_dashboards_translations`
--

INSERT INTO `cargoweb_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_widgets`
--

CREATE TABLE `cargoweb_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_dashboard_widgets`
--

INSERT INTO `cargoweb_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_widgets_allowed_roles`
--

CREATE TABLE `cargoweb_dashboard_widgets_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_dashboard_widgets_translations`
--

CREATE TABLE `cargoweb_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_dashboard_widgets_translations`
--

INSERT INTO `cargoweb_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, 'en', 'Recent News', 'Recent news from http://pyrocms.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_failed_jobs`
--

CREATE TABLE `cargoweb_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_disks`
--

CREATE TABLE `cargoweb_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_disks`
--

INSERT INTO `cargoweb_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `adapter`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, NULL, 'local', 'anomaly.extension.local_storage_adapter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_disks_translations`
--

CREATE TABLE `cargoweb_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_disks_translations`
--

INSERT INTO `cargoweb_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:36', NULL, '2018-06-29 15:06:36', NULL, 'en', 'Local', 'A local (public) storage disk.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_documents`
--

CREATE TABLE `cargoweb_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_documents_translations`
--

CREATE TABLE `cargoweb_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_files`
--

CREATE TABLE `cargoweb_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_files`
--

INSERT INTO `cargoweb_files_files` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `name`, `disk_id`, `folder_id`, `extension`, `size`, `mime_type`, `entry_id`, `entry_type`, `keywords`, `height`, `width`, `alt_text`, `title`, `caption`, `description`) VALUES
(1, 1, '2018-07-30 12:46:32', 1, '2018-07-30 12:46:34', 1, NULL, 'coca_foie.png', 1, 1, 'png', 1772834, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '960', '1760', NULL, NULL, NULL, NULL),
(2, 2, '2018-07-30 12:47:25', 1, '2018-07-30 12:47:25', 1, NULL, 'hero.jpg', 1, 1, 'jpg', 170757, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '835', '1257', NULL, NULL, NULL, NULL),
(3, 3, '2018-07-31 08:20:17', 1, '2018-07-31 08:20:18', 1, NULL, '400.jpeg', 1, 1, 'jpeg', 68888, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '400', '868', NULL, NULL, NULL, NULL),
(4, 4, '2018-08-02 10:24:02', 1, '2018-09-28 11:36:30', 1, NULL, 'aduana_europea.jpg', 1, 1, 'jpg', 74176, 'image/jpeg', 10, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Importaciones marítimas en la Unión Europea', NULL, NULL, NULL),
(5, 5, '2018-08-02 10:32:06', 1, '2018-09-28 11:40:07', 1, NULL, 'normativa.jpg', 1, 1, 'jpg', 60422, 'image/jpeg', 12, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Normativa de embarques en USA', NULL, NULL, NULL),
(6, 6, '2018-08-02 10:39:33', 1, '2018-09-28 11:39:05', 1, NULL, 'morosidad.jpg', 1, 1, 'jpg', 53013, 'image/jpeg', 11, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Lucha contra la Morosidad en Operaciones Comerciales', NULL, NULL, NULL),
(7, 7, '2018-08-02 10:51:16', 1, '2018-08-02 10:51:16', 1, NULL, 'EurRegul-ENG.pdf', 1, 2, 'pdf', 242853, 'application/pdf', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesDocumentsEntryModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, '2018-08-02 10:51:18', 1, '2018-08-02 10:51:18', 1, NULL, 'EurRegul-ESP.pdf', 1, 2, 'pdf', 231628, 'application/pdf', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesDocumentsEntryModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, '2018-08-02 11:06:44', 1, '2018-09-28 11:35:24', 1, NULL, 'santander.jpg', 1, 1, 'jpg', 73700, 'image/jpeg', 9, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Alianza Banco Santander y Cargo Services', NULL, NULL, NULL),
(10, 10, '2018-08-02 12:11:28', 1, '2018-08-02 12:11:28', 1, NULL, 'CircularClientesExportacionMaritima.pdf', 1, 2, 'pdf', 34462, 'application/pdf', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesDocumentsEntryModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, '2018-08-02 12:12:34', 1, '2018-08-02 12:12:34', 1, NULL, 'CircularClientesImportacionMaritima.pdf', 1, 2, 'pdf', 33735, 'application/pdf', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesDocumentsEntryModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, '2018-08-02 12:12:35', 1, '2018-08-02 12:12:35', 1, NULL, 'AgenciaTributaria-ICS.PDF', 1, 2, 'pdf', 1030340, 'application/pdf', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesDocumentsEntryModel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, '2018-08-02 12:17:32', 1, '2018-09-28 11:34:25', 1, NULL, 'ics.jpg', 1, 1, 'jpg', 69491, 'image/jpeg', 8, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'ICS, nueva aplicación de seguridad', NULL, NULL, NULL),
(14, 14, '2018-08-02 12:23:35', 1, '2018-09-28 11:32:45', 1, NULL, 'uol.jpg', 1, 1, 'jpg', 80883, 'image/jpeg', 7, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'UOL y Cargo Services cooperan', NULL, NULL, NULL),
(15, 15, '2018-08-02 12:39:27', 1, '2018-09-28 11:24:56', 1, NULL, 'alianza.jpg', 1, 1, 'jpg', 56930, 'image/jpeg', 5, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Alianza Grupo Proexi y Cargo Services', NULL, NULL, NULL),
(16, 16, '2018-08-02 12:47:33', 1, '2018-09-28 11:40:41', 1, NULL, 'mexico.jpg', 1, 1, 'jpg', 52263, 'image/jpeg', 13, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Cargo Services en Mexico', NULL, NULL, NULL),
(17, 17, '2018-08-02 13:05:30', 1, '2018-09-28 11:23:53', 1, NULL, 'facebook.jpg', 1, 1, 'jpg', 50259, 'image/jpeg', 4, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Cargo Services en Facebook', NULL, NULL, NULL),
(18, 18, '2018-08-03 06:20:19', 1, '2018-09-28 11:26:07', 1, NULL, 'operador_economico.jpg', 1, 1, 'jpg', 68955, 'image/jpeg', 6, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Cargo Services es Operador Económico Autorizado', NULL, NULL, NULL),
(19, 19, '2018-08-03 06:28:04', 1, '2018-09-28 11:21:18', 1, NULL, '25-aniversario.jpg', 1, 1, 'jpg', 33606, 'image/jpeg', 3, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', '25 Aniversario Cargo Services', NULL, NULL, NULL),
(20, 20, '2018-08-03 06:31:40', 1, '2018-09-28 11:19:29', 1, NULL, 'linkedin.jpg', 1, 1, 'jpg', 79919, 'image/jpeg', 2, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '328', '518', 'Cargo Services en LinkedIn', NULL, NULL, NULL),
(21, 21, '2018-08-03 06:38:55', 1, '2018-09-28 11:18:58', 1, NULL, 'linkedin-d.jpg', 1, 1, 'jpg', 139837, 'image/jpeg', 1, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '400', '868', 'Cargo Services en LinkedIn', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_folders`
--

CREATE TABLE `cargoweb_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_folders`
--

INSERT INTO `cargoweb_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`) VALUES
(1, 1, '2018-06-29 15:06:37', NULL, '2018-06-29 15:06:37', NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),
(2, 2, '2018-06-29 15:06:37', NULL, '2018-06-29 15:06:37', NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_folders_translations`
--

CREATE TABLE `cargoweb_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_folders_translations`
--

INSERT INTO `cargoweb_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:37', NULL, '2018-06-29 15:06:37', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2018-06-29 15:06:37', NULL, '2018-06-29 15:06:37', NULL, 'en', 'Documents', 'A folder for documents.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_images`
--

CREATE TABLE `cargoweb_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_images`
--

INSERT INTO `cargoweb_files_images` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2018-09-28 09:08:13', 1, '2018-09-28 11:18:58', 1, NULL),
(2, 2, '2018-09-28 09:13:18', 1, '2018-09-28 11:19:29', 1, NULL),
(3, 3, '2018-09-28 11:21:18', 1, '2018-09-28 11:21:18', 1, NULL),
(4, 4, '2018-09-28 11:23:53', 1, '2018-09-28 11:23:53', 1, NULL),
(5, 5, '2018-09-28 11:24:56', 1, '2018-09-28 11:24:56', 1, NULL),
(6, 6, '2018-09-28 11:26:07', 1, '2018-09-28 11:26:07', 1, NULL),
(7, 7, '2018-09-28 11:32:45', 1, '2018-09-28 11:32:45', 1, NULL),
(8, 8, '2018-09-28 11:34:25', 1, '2018-09-28 11:34:25', 1, NULL),
(9, 9, '2018-09-28 11:35:24', 1, '2018-09-28 11:35:24', 1, NULL),
(10, 10, '2018-09-28 11:36:30', 1, '2018-09-28 11:36:30', 1, NULL),
(11, 11, '2018-09-28 11:39:05', 1, '2018-09-28 11:39:05', 1, NULL),
(12, 12, '2018-09-28 11:40:07', 1, '2018-09-28 11:40:07', 1, NULL),
(13, 13, '2018-09-28 11:40:41', 1, '2018-09-28 11:40:41', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_files_images_translations`
--

CREATE TABLE `cargoweb_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_files_images_translations`
--

INSERT INTO `cargoweb_files_images_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-09-28 09:08:13', NULL, '2018-09-28 09:08:13', 1, 'es'),
(2, 2, '2018-09-28 09:13:18', NULL, '2018-09-28 09:13:18', 1, 'es'),
(3, 3, '2018-09-28 11:21:18', NULL, '2018-09-28 11:21:18', 1, 'es'),
(4, 4, '2018-09-28 11:23:53', NULL, '2018-09-28 11:23:53', 1, 'es'),
(5, 5, '2018-09-28 11:24:56', NULL, '2018-09-28 11:24:56', 1, 'es'),
(6, 6, '2018-09-28 11:26:07', NULL, '2018-09-28 11:26:07', 1, 'es'),
(7, 7, '2018-09-28 11:32:45', NULL, '2018-09-28 11:32:45', 1, 'es'),
(8, 8, '2018-09-28 11:34:25', NULL, '2018-09-28 11:34:25', 1, 'es'),
(9, 9, '2018-09-28 11:35:24', NULL, '2018-09-28 11:35:24', 1, 'es'),
(10, 10, '2018-09-28 11:36:30', NULL, '2018-09-28 11:36:30', 1, 'es'),
(11, 11, '2018-09-28 11:39:05', NULL, '2018-09-28 11:39:05', 1, 'es'),
(12, 12, '2018-09-28 11:40:07', NULL, '2018-09-28 11:40:07', 1, 'es'),
(13, 13, '2018-09-28 11:40:41', NULL, '2018-09-28 11:40:41', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_jobs`
--

CREATE TABLE `cargoweb_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_links_block_blocks`
--

CREATE TABLE `cargoweb_links_block_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_links_block_blocks_links`
--

CREATE TABLE `cargoweb_links_block_blocks_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_links_block_links`
--

CREATE TABLE `cargoweb_links_block_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_links_block_links_translations`
--

CREATE TABLE `cargoweb_links_block_links_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_migrations`
--

CREATE TABLE `cargoweb_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_migrations`
--

INSERT INTO `cargoweb_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171506_create_jobs_table', 1),
(2, '2015_03_15_171507_create_failed_jobs_table', 1),
(3, '2015_03_15_171508_create_sessions_table', 1),
(4, '2015_03_15_171509_create_cache_table', 1),
(5, '2015_03_15_171620_create_streams_tables', 1),
(6, '2015_03_15_171646_create_fields_tables', 1),
(7, '2015_03_15_171720_create_assignments_tables', 1),
(8, '2015_03_15_171838_create_modules_table', 1),
(9, '2015_03_15_171926_create_extensions_table', 1),
(10, '2016_08_30_185635_create_notifications_table', 1),
(11, '2016_09_02_164448_add_searchable_column_to_streams', 1),
(12, '2016_11_11_154228_append_id_to_user_meta_columns', 1),
(13, '2017_05_20_184629_add_sort_order_column_to_streams', 1),
(14, '2017_05_20_185657_add_searchable_column_to_assignments', 1),
(15, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 2),
(16, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 2),
(17, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 3),
(18, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 3),
(19, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 3),
(20, '2015_03_05_021725_anomaly.module.files__create_files_fields', 4),
(21, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 4),
(22, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 4),
(23, '2015_06_09_031351_anomaly.module.files__create_files_stream', 4),
(24, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 4),
(25, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 4),
(26, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 4),
(27, '2017_10_07_162244_anomaly.module.files__add_seo_fields_to_files', 4),
(28, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 5),
(29, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 5),
(30, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 5),
(31, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 6),
(32, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 6),
(33, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 6),
(34, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 6),
(35, '2017_08_18_180652_anomaly.module.pages__remove_meta_keywords_field', 6),
(36, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 7),
(37, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 7),
(38, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 7),
(39, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 7),
(40, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 7),
(41, '2017_08_18_175445_anomaly.module.posts__remove_meta_keywords_field', 7),
(42, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 8),
(43, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 8),
(44, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 8),
(45, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 9),
(46, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 9),
(47, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 10),
(48, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 10),
(49, '2015_02_27_101816_anomaly.module.users__create_users_fields', 11),
(50, '2015_02_27_101851_anomaly.module.users__create_users_stream', 11),
(51, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 11),
(52, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 11),
(53, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 12),
(54, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 12),
(55, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 13),
(56, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 13),
(57, '2018_04_28_204857_anomaly.extension.links_block__create_links_block_fields', 14),
(58, '2018_04_28_204919_anomaly.extension.links_block__create_blocks_stream', 14),
(59, '2018_04_28_204953_anomaly.extension.links_block__create_links_stream', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_navigation_links`
--

CREATE TABLE `cargoweb_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_navigation_links`
--

INSERT INTO `cargoweb_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(2, 2, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, NULL, 1, 'anomaly.extension.url_link_type', 2, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_navigation_links_allowed_roles`
--

CREATE TABLE `cargoweb_navigation_links_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_navigation_menus`
--

CREATE TABLE `cargoweb_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_navigation_menus`
--

INSERT INTO `cargoweb_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_navigation_menus_translations`
--

CREATE TABLE `cargoweb_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_navigation_menus_translations`
--

INSERT INTO `cargoweb_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, 'en', 'Footer', 'This is the main footer menu.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_notifications`
--

CREATE TABLE `cargoweb_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_contact_pages`
--

CREATE TABLE `cargoweb_pages_contact_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_contact_pages`
--

INSERT INTO `cargoweb_pages_contact_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `keywords`, `translation_url`) VALUES
(1, 1, '2018-08-01 08:34:10', 1, '2018-09-25 14:18:26', 1, NULL, NULL, ''),
(2, 2, '2018-08-01 08:35:04', 1, '2018-10-04 08:31:15', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_contact_pages_translations`
--

CREATE TABLE `cargoweb_pages_contact_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_contact_pages_translations`
--

INSERT INTO `cargoweb_pages_contact_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-08-01 08:34:10', NULL, '2018-08-01 08:34:10', 1, 'es'),
(2, 2, '2018-08-01 08:35:04', NULL, '2018-08-01 08:35:04', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_default_pages`
--

CREATE TABLE `cargoweb_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_default_pages`
--

INSERT INTO `cargoweb_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2018-06-29 15:06:39', 1, '2018-07-23 07:45:50', 1, '2018-07-23 07:45:50'),
(2, 2, '2018-06-29 15:06:39', 1, '2018-09-20 11:48:03', 1, '2018-09-20 11:48:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_default_pages_translations`
--

CREATE TABLE `cargoweb_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_default_pages_translations`
--

INSERT INTO `cargoweb_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2018-06-29 15:06:39', NULL, '2018-06-29 15:06:39', NULL, 'en', '<p>Welcome to PyroCMS!</p>'),
(2, 2, '2018-06-29 15:06:39', NULL, '2018-07-18 15:23:45', 1, 'en', '<p>Drop us a line! We\'d love to hear from you!</p>\r\n<p><br></p>\r\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>'),
(3, 1, '2018-07-09 09:34:35', NULL, '2018-07-09 09:34:35', 1, 'es', '<p>Bienvenido a PyroCMS!</p>'),
(4, 1, '2018-07-09 09:34:36', 1, '2018-07-09 09:34:36', 1, 'es', '<p>Bienvenido a PyroCMS!</p>'),
(5, 2, '2018-07-18 15:23:45', NULL, '2018-07-18 15:23:45', 1, 'es', '<p>Drop us a line! We\'d love to hear from you!</p>\r\n<p><br></p>\r\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>'),
(6, 2, '2018-07-18 15:23:46', 1, '2018-07-18 15:23:46', 1, 'es', '<p>Drop us a line! We\'d love to hear from you!</p>\r\n<p><br></p>\r\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_empresa_pages`
--

CREATE TABLE `cargoweb_pages_empresa_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_empresa_pages`
--

INSERT INTO `cargoweb_pages_empresa_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `translation_url`, `keywords`) VALUES
(1, 1, '2018-07-23 11:27:29', 1, '2018-09-25 14:07:19', 1, NULL, 'company', NULL),
(2, 2, '2018-07-26 13:01:29', 1, '2018-10-17 15:56:58', 1, NULL, 'empresa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_empresa_pages_translations`
--

CREATE TABLE `cargoweb_pages_empresa_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_empresa_pages_translations`
--

INSERT INTO `cargoweb_pages_empresa_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-07-23 11:27:29', NULL, '2018-07-23 11:27:29', 1, 'es'),
(2, 2, '2018-07-26 13:01:29', NULL, '2018-07-26 13:01:29', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_inicio_pages`
--

CREATE TABLE `cargoweb_pages_inicio_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_inicio_pages`
--

INSERT INTO `cargoweb_pages_inicio_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `translation_url`, `keywords`) VALUES
(1, 1, '2018-07-23 07:33:56', 1, '2018-09-25 14:06:42', 1, NULL, 'home', NULL),
(2, 2, '2018-07-26 12:52:05', 1, '2018-10-04 08:22:57', 1, NULL, 'inicio', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_inicio_pages_translations`
--

CREATE TABLE `cargoweb_pages_inicio_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_inicio_pages_translations`
--

INSERT INTO `cargoweb_pages_inicio_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-07-23 07:33:56', NULL, '2018-07-23 07:33:56', 1, 'es'),
(2, 2, '2018-07-26 12:52:05', NULL, '2018-07-26 12:52:05', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_legal_notice_pages`
--

CREATE TABLE `cargoweb_pages_legal_notice_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_legal_notice_pages`
--

INSERT INTO `cargoweb_pages_legal_notice_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `keywords`, `translation_url`) VALUES
(1, 1, '2018-08-01 11:52:32', 1, '2018-09-24 12:48:09', 1, NULL, NULL, 'legal_notice'),
(2, 2, '2018-08-01 11:52:58', 1, '2018-09-24 12:48:04', 1, NULL, NULL, 'aviso_legal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_legal_notice_pages_translations`
--

CREATE TABLE `cargoweb_pages_legal_notice_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_legal_notice_pages_translations`
--

INSERT INTO `cargoweb_pages_legal_notice_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-08-01 11:52:32', NULL, '2018-08-01 11:52:32', 1, 'es'),
(2, 2, '2018-08-01 11:52:58', NULL, '2018-08-01 11:52:58', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_pages`
--

CREATE TABLE `cargoweb_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_pages`
--

INSERT INTO `cargoweb_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `path`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`) VALUES
(1, 1, '2018-06-29 15:06:39', 1, '2018-07-23 07:45:50', 1, '2018-07-23 07:45:50', '1zncHGz6oXLcU4utRAySmLU4', 'welcome', '/', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(2, 1, '2018-06-29 15:06:40', 1, '2018-09-20 11:48:03', 1, '2018-09-20 11:48:03', 'X0XVs5nmqUwVoN0b6kFGZNnc', 'contacto-default', 'pages/preview/X0XVs5nmqUwVoN0b6kFGZNnc', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 0, 0, 1, 0, NULL),
(3, 1, '2018-07-23 07:33:56', 1, '2018-10-02 15:00:40', 1, NULL, '12dtSVzKMaJx6cAWHHG6fKOQ', 'inicio', '/', 2, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesInicioPagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts.default'),
(4, 3, '2018-07-23 11:09:22', 1, '2018-10-02 15:00:40', 1, NULL, 'cCXQjWvV1AvsckIDFTTWNej4', 'servicios', '/servicios', 3, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesServiciosPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(5, 5, '2018-07-23 11:27:29', 1, '2018-10-02 15:00:40', 1, NULL, 'WWSbloQ5ck29u1bY5AIZBY6v', 'empresa', '/empresa', 4, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesEmpresaPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(6, 2, '2018-07-26 12:52:05', 1, '2018-10-04 08:22:57', 1, NULL, '0U2Vr3pYTSk4hSDYHVez8Cm1', 'home', '/home', 2, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesInicioPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(7, 4, '2018-07-26 12:52:47', 1, '2018-10-04 08:29:32', 1, NULL, '7Tliy5Bp9CG27JUSbh6OXBED', 'services', '/services', 3, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesServiciosPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(8, 6, '2018-07-26 13:01:29', 1, '2018-10-17 15:56:58', 1, NULL, 'NEyJHbvNfFPI6VECJFgxUMRR', 'company', '/company', 4, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesEmpresaPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(9, 7, '2018-08-01 08:34:10', 1, '2018-10-02 15:00:40', 1, NULL, 'RGBmr9VIT0aOQsBVuSxq4MAo', 'contacto', '/contacto', 5, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesContactPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(10, 8, '2018-08-01 08:35:04', 1, '2018-10-04 08:31:15', 1, NULL, '4LjyC50rtbewnnfaUTqYj793', 'contact', '/contact', 5, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesContactPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(11, 9, '2018-08-01 11:28:13', 1, '2018-10-02 15:00:40', 1, NULL, 'DkyQtd7dm3oWWFxVxFPVsLsf', 'privacy-policy', '/privacy-policy', 6, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPrivacyPolicyPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(12, 10, '2018-08-01 11:29:13', 1, '2018-10-02 15:00:40', 1, NULL, 'YA6QbHzpvACG4Je8xxiPruVf', 'politica-de-privacidad', '/politica-de-privacidad', 6, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPrivacyPolicyPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(13, 11, '2018-08-01 11:52:32', 1, '2018-10-02 15:00:40', 1, NULL, 'rbssvG7tV1NJDYaijf2a61sv', 'aviso-legal', '/aviso-legal', 7, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLegalNoticePagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(14, 12, '2018-08-01 11:52:58', 1, '2018-10-02 15:00:40', 1, NULL, 'CH1hkw08USTJBuDYtgjtEXXQ', 'legal-notice', '/legal-notice', 7, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLegalNoticePagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(15, 13, '2018-09-20 11:51:18', 1, '2018-10-02 15:00:40', 1, NULL, 'rUdMZfP1oorJsfebnDaXwHRE', 'politica-de-cookies', '/politica-de-cookies', 8, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPoliticaDeCookiesPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(16, 14, '2018-09-20 11:52:56', 1, '2018-10-02 15:00:40', 1, NULL, 'Eq6qtu5lzl7nRzEAOGei3YMP', 'cookie-policy', '/cookie-policy', 8, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPoliticaDeCookiesPagesEntryModel', NULL, 1, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_pages_allowed_roles`
--

CREATE TABLE `cargoweb_pages_pages_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_pages_translations`
--

CREATE TABLE `cargoweb_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_pages_translations`
--

INSERT INTO `cargoweb_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`) VALUES
(1, 1, '2018-06-29 15:06:39', NULL, '2018-06-29 15:06:39', NULL, 'en', 'Welcome', NULL, NULL),
(2, 2, '2018-06-29 15:06:40', NULL, '2018-06-29 15:06:40', NULL, 'en', 'Contact', NULL, NULL),
(3, 1, '2018-07-09 09:34:36', NULL, '2018-07-09 09:34:36', 1, 'es', 'Bienvenido', NULL, NULL),
(4, 2, '2018-07-18 15:23:46', NULL, '2018-07-18 15:23:46', 1, 'es', 'Contacto', NULL, NULL),
(5, 3, '2018-07-23 07:33:56', NULL, '2018-07-23 07:33:56', 1, 'en', NULL, NULL, NULL),
(6, 3, '2018-07-23 07:33:56', NULL, '2018-09-25 14:06:27', 1, 'es', 'inicio', 'Cargo Services | Empresa de transporte y servicios logísticos', 'Cargo Services es una empresa internacional de logística y transporte de mercancías. Ofrece servicios de transporte terrestre, marítimo, aéreo y multimodal'),
(7, 4, '2018-07-23 11:09:22', NULL, '2018-07-23 11:09:22', 1, 'en', NULL, NULL, NULL),
(8, 4, '2018-07-23 11:09:22', NULL, '2018-09-25 14:07:46', 1, 'es', 'Servicios', 'Servicios | Transporte terrestre, marítimo y aéreo | Cargo Services', 'Cargo Services ofrece servicios de logística, transporte de mercancías (terrestre, aéreo y marítimo), despacho de aduanas, almacenaje y consultoría.'),
(9, 5, '2018-07-23 11:27:29', NULL, '2018-07-23 11:27:29', 1, 'en', NULL, NULL, NULL),
(10, 5, '2018-07-23 11:27:29', NULL, '2018-09-25 14:07:19', 1, 'es', 'Empresa', 'Empresa | Transporte y servicios logísticos | Cargo Services', 'Cargo Services es una empresa de logística y transporte de mercancías que ofrece a sus clientes el mejor de los servicios desde hace más de 30 años.'),
(11, 6, '2018-07-26 12:52:05', NULL, '2018-10-04 08:22:57', 1, 'en', 'home', 'Cargo Services | Freight Transport Company', 'Cargo Services is a freight transport company with a wide range of services: domestic, international, air and sea transport.'),
(12, 6, '2018-07-26 12:52:05', NULL, '2018-10-04 08:22:57', 1, 'es', 'home', NULL, NULL),
(13, 7, '2018-07-26 12:52:47', NULL, '2018-10-03 11:36:31', 1, 'en', 'Services', 'Services | Land, sea and air transport | Cargo Services', 'Cargo Services offers transport and logistic services tailored to the needs and demands of your company or business.'),
(14, 7, '2018-07-26 12:52:47', NULL, '2018-10-03 11:36:31', 1, 'es', 'Services', NULL, NULL),
(15, 8, '2018-07-26 13:01:29', NULL, '2018-10-04 08:30:28', 1, 'en', 'Company', 'Company | Transport and logistic services | Cargo Services', 'Cargo Services is a freight transport company that has been offering its customers the best service for over 30 years.'),
(16, 8, '2018-07-26 13:01:29', NULL, '2018-10-04 08:30:28', 1, 'es', 'Company', NULL, NULL),
(17, 9, '2018-08-01 08:34:11', NULL, '2018-08-01 08:34:11', 1, 'en', NULL, NULL, NULL),
(18, 9, '2018-08-01 08:34:11', NULL, '2018-09-25 14:10:57', 1, 'es', 'Contacto', 'Contacto | Cargo Services', 'En nuestra sección de contacto encontrarás los detalles de las diferentes oficinas con las que cuenta Cargo Services en los diferentes lugares del planeta.'),
(19, 10, '2018-08-01 08:35:04', NULL, '2018-10-04 08:31:15', 1, 'en', 'Contact', 'Contact | Cargo Services', 'In our contact section you will find the details of the different offices that make up Cargo Services. Please, contact us with any queries you may have.'),
(20, 10, '2018-08-01 08:35:04', NULL, '2018-10-04 08:31:15', 1, 'es', 'Contact', NULL, NULL),
(21, 11, '2018-08-01 11:28:13', NULL, '2018-08-01 11:28:13', 1, 'en', NULL, NULL, NULL),
(22, 11, '2018-08-01 11:28:13', NULL, '2018-08-01 11:28:13', 1, 'es', 'Privacy Policy', NULL, NULL),
(23, 12, '2018-08-01 11:29:14', NULL, '2018-08-01 11:29:14', 1, 'en', NULL, NULL, NULL),
(24, 12, '2018-08-01 11:29:14', NULL, '2018-08-01 11:29:14', 1, 'es', 'Política de Privacidad', NULL, NULL),
(25, 13, '2018-08-01 11:52:33', NULL, '2018-08-01 11:52:33', 1, 'en', NULL, NULL, NULL),
(26, 13, '2018-08-01 11:52:33', NULL, '2018-08-01 11:52:33', 1, 'es', 'Aviso legal', NULL, NULL),
(27, 14, '2018-08-01 11:52:58', NULL, '2018-08-01 11:52:58', 1, 'en', NULL, NULL, NULL),
(28, 14, '2018-08-01 11:52:58', NULL, '2018-08-01 11:52:58', 1, 'es', 'Legal notice', NULL, NULL),
(29, 15, '2018-09-20 11:51:18', NULL, '2018-09-20 11:51:18', 1, 'en', NULL, NULL, NULL),
(30, 15, '2018-09-20 11:51:19', NULL, '2018-09-20 11:51:19', 1, 'es', 'Política de cookies', NULL, NULL),
(31, 16, '2018-09-20 11:52:56', NULL, '2018-09-20 11:52:56', 1, 'en', NULL, NULL, NULL),
(32, 16, '2018-09-20 11:52:56', NULL, '2018-09-20 11:52:56', 1, 'es', 'Cookie Policy', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_politica_de_cookies_pages`
--

CREATE TABLE `cargoweb_pages_politica_de_cookies_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_politica_de_cookies_pages`
--

INSERT INTO `cargoweb_pages_politica_de_cookies_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `translation_url`, `keywords`, `content`) VALUES
(1, 1, '2018-09-20 11:51:18', 1, '2018-09-24 08:35:54', 1, NULL, 'cookie_policy', NULL, NULL),
(2, 2, '2018-09-20 11:52:56', 1, '2018-09-20 12:06:17', 1, NULL, 'politica_de_cookies', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_politica_de_cookies_pages_translations`
--

CREATE TABLE `cargoweb_pages_politica_de_cookies_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_politica_de_cookies_pages_translations`
--

INSERT INTO `cargoweb_pages_politica_de_cookies_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-09-20 11:51:18', NULL, '2018-09-20 11:51:18', 1, 'es'),
(2, 2, '2018-09-20 11:52:56', NULL, '2018-09-20 11:52:56', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_privacy_policy_pages`
--

CREATE TABLE `cargoweb_pages_privacy_policy_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_privacy_policy_pages`
--

INSERT INTO `cargoweb_pages_privacy_policy_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `keywords`, `translation_url`, `content`) VALUES
(1, 1, '2018-08-01 11:28:13', 1, '2018-09-24 08:38:59', 1, NULL, NULL, 'politica_de_privacidad', NULL),
(2, 2, '2018-08-01 11:29:13', 1, '2018-09-24 08:35:22', 1, NULL, NULL, 'privacy_policy', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_privacy_policy_pages_translations`
--

CREATE TABLE `cargoweb_pages_privacy_policy_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_privacy_policy_pages_translations`
--

INSERT INTO `cargoweb_pages_privacy_policy_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-08-01 11:28:13', NULL, '2018-08-01 11:28:13', 1, 'es'),
(2, 2, '2018-08-01 11:29:13', NULL, '2018-08-01 11:29:13', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_servicios_pages`
--

CREATE TABLE `cargoweb_pages_servicios_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `translation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_servicios_pages`
--

INSERT INTO `cargoweb_pages_servicios_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `translation_url`, `keywords`) VALUES
(1, 1, '2018-07-23 11:09:22', 1, '2018-09-25 14:20:08', 1, NULL, 'services', NULL),
(2, 2, '2018-07-26 12:52:47', 1, '2018-10-04 08:29:32', 1, NULL, 'servicios', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_servicios_pages_translations`
--

CREATE TABLE `cargoweb_pages_servicios_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_servicios_pages_translations`
--

INSERT INTO `cargoweb_pages_servicios_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2018-07-23 11:09:22', NULL, '2018-07-23 11:09:22', 1, 'es'),
(2, 2, '2018-07-26 12:52:47', NULL, '2018-07-26 12:52:47', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_types`
--

CREATE TABLE `cargoweb_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_types`
--

INSERT INTO `cargoweb_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2018-06-29 15:06:39', NULL, '2018-06-29 15:06:39', NULL, NULL, 'default', 'theme::layouts/default.twig', '<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler'),
(2, 2, '2018-07-23 07:26:17', 1, '2018-11-13 15:32:23', 1, NULL, 'inicio', 'theme::layouts.default', '   \r\n<div class=\"slider-hero\">\r\n        <div class=\"swiper-container\">\r\n          <div class=\"swiper-wrapper\">\r\n            <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-2.jpg\') }} );\">\r\n              <h3 class=\"slider-hero__content\">\r\n                <p class=\"small\">{{ trans(\'theme::home.intro_slide_title\') }} </p>\r\n                <p class=\"title\">{{ trans(\'theme::home.intro_slide_1_title\') }}</p>\r\n				<a class=\"link link--light\">{{ trans(\'theme::home.intro_slide_1_link\') }}</a>\r\n              </h3>\r\n            </div>\r\n            <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-3.jpg\') }} );\">\r\n              <h3 class=\"slider-hero__content\">\r\n                <p class=\"small\">{{ trans(\'theme::home.intro_slide_title\') }} </p>\r\n                <p class=\"title\">{{ trans(\'theme::home.intro_slide_2_title\') }}</p>\r\n				<a class=\"link link--light\">{{ trans(\'theme::home.intro_slide_2_link\') }}</a>\r\n              </h3>\r\n            </div>\r\n            <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-1.jpg\') }} );\">\r\n              <h3 class=\"slider-hero__content\">\r\n                <p class=\"small\">{{ trans(\'theme::home.intro_slide_title\') }} </p>\r\n                <p class=\"title\">{{ trans(\'theme::home.intro_slide_3_title\') }}</p>\r\n				<a class=\"link link--light\">{{ trans(\'theme::home.intro_slide_3_link\') }}</a>\r\n              </h3>\r\n            </div>\r\n          </div>\r\n          <div class=\"slider-hero__navigation\">\r\n            <div class=\"slider-hero__navigation__item active\" data-slide=\"0\">\r\n              <div class=\"text\">\r\n                <h2 class=\"title\">{{ trans(\'theme::home.intro_slide_1_button\')|raw }}</h2>\r\n              </div>\r\n              <div class=\"wrap-icon\">\r\n                <span class=\"icon icon-ship\"></span>\r\n              </div>\r\n            </div>\r\n            <div class=\"slider-hero__navigation__item\" data-slide=\"1\">\r\n              <div class=\"text\">\r\n                <h2 class=\"title\">{{ trans(\'theme::home.intro_slide_2_button\')|raw }}</h2>\r\n              </div>\r\n              <div class=\"wrap-icon\">\r\n                <span class=\"icon icon-plane\"></span>\r\n              </div>\r\n            </div>\r\n            <div class=\"slider-hero__navigation__item\" data-slide=\"2\">\r\n              <div class=\"text\">\r\n                <h2 class=\"title\">{{ trans(\'theme::home.intro_slide_3_button\')|raw }}</h2>\r\n              </div>\r\n              <div class=\"wrap-icon\">\r\n                <span class=\"icon icon-delivery-truck\"></span>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\"swiper-pagination\"></div>\r\n        </div>\r\n        <button class=\"btn btn-down\" data-scroll=\"#home\">\r\n          <span class=\"icon icon-arrow-down\"></span>\r\n        </button>\r\n      </div>\r\n      <div id=\"home\">\r\n		  <div class=\"intro\" >\r\n			  <h1 class=\"intro__title\">{{ trans(\'theme::home.intro_title\') }}</h1>\r\n			  <p class=\"intro__text\" >{{ trans(\'theme::home.intro_text_1\') }} {{ trans(\'theme::home.intro_text_2\') }}</p>\r\n		  </div>\r\n        <div class=\"slider-home\">\r\n          <div class=\"slider-home__wrap\">\r\n            <div class=\"slider-home__wrap__text\">\r\n              <p class=\"small\">\r\n                {{ trans(\'theme::home.content_title\') }}\r\n              </p>\r\n              <h2 class=\"title\">\r\n                {{ trans(\'theme::home.content_subtitle\') }}\r\n              </h2>\r\n              <div class=\"text\">\r\n                <p>\r\n                  {{ trans(\'theme::home.content_p_1\') }}\r\n                </p>\r\n                <p>\r\n                  {{ trans(\'theme::home.content_p_2\') }}\r\n                </p>\r\n              </div>\r\n              <a href=\"{{ url_to( trans(\'theme::route.company\') ) }}\" class=\"link\">{{ trans(\'theme::home.content_button_more\') }}</a>\r\n            </div>\r\n          </div>\r\n          <div class=\"slider-home__slider\">\r\n            <div class=\"swiper-container\">\r\n              <div class=\"swiper-wrapper\">\r\n                <div class=\"swiper-slide\" style=\"background-image:url( {{ asset(\'/images/content/home/slide-11.jpg\') }})\">\r\n                  <div class=\"slider-home__slider__content\">\r\n                    <h3 class=\"title\">{{ trans(\'theme::home.content_slide_1_title\') }}</h3>\r\n                    <p class=\"text\">{{ trans(\'theme::home.content_slide_1_text\') }}</p>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-12.jpg\') }} );\">\r\n                  <div class=\"slider-home__slider__content\">\r\n                    <h3 class=\"title\">{{ trans(\'theme::home.content_slide_2_title\') }}</h3>\r\n                    <p class=\"text\">{{ trans(\'theme::home.content_slide_2_text\') }}</p>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-14.jpg\') }} );\">\r\n                  <div class=\"slider-home__slider__content\">\r\n                    <h3 class=\"title\">{{ trans(\'theme::home.content_slide_3_title\') }}</h3>\r\n                    <p class=\"text\">{{ trans(\'theme::home.content_slide_3_text\') }}</p>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'/images/content/home/slide-13.jpg\') }} );\">\r\n                  <div class=\"slider-home__slider__content\">\r\n                    <h3 class=\"title\">{{ trans(\'theme::home.content_slide_4_title\') }}</h3>\r\n                    <p class=\"text\">{{ trans(\'theme::home.content_slide_4_text\') }}</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"slider-home__slider__navigation\">\r\n              <div class=\"swiper-button-prev\">\r\n                <span class=\"icon icon-arrow-left\"></span>\r\n              </div>\r\n              <div class=\"swiper-button-next\">\r\n                <span class=\"icon icon-arrow-right\"></span>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"request-estimation\" id=\"budget-form\">\r\n          <div class=\"request-estimation__wrap\" style=\"background-image: url( {{ asset(\'/images/content/home/services.jpg\') }} )\">\r\n            <div class=\"request-estimation__wrap__text\">\r\n              <p class=\"small\">\r\n                {{ trans(\'theme::home.form_title\') }}\r\n              </p>\r\n              <h2 class=\"title\">\r\n                {{ trans(\'theme::home.form_subtitle\') }}\r\n              </h2>\r\n              <div class=\"text\">\r\n                <p>\r\n                  {{ trans(\'theme::home.form_text\') }}\r\n                </p>\r\n              </div>\r\n              <a href=\"{{ url_to(  trans(\'theme::route.services\') ) }}\" class=\"link\">{{ trans(\'theme::home.form_more\') }}</a>\r\n            </div>\r\n          </div>\r\n          <div class=\"request-estimation__wrap__form\">\r\n            <p class=\"small\">\r\n              {{ trans(\'theme::home.form_intro\') }}\r\n            </p>\r\n            <h2 class=\"title\">\r\n              {{ trans(\'theme::home.form_intro_1\') }}\r\n            </h2>\r\n           \r\n        	{%  set form = form(\'contact\').fields({\r\n\r\n                \'estimationorigin\': {\r\n                    \'placeholder\': trans(\'theme::home.form_field_origin\')    ,\r\n                    \'label\':   trans(\'theme::home.form_field_origin\')    ,\r\n                    \'type\': \'anomaly.field_type.text\',\r\n                    \'required\': true,\r\n                    \'class\': \'input__field\'\r\n                },\r\n                \'estimationdestination\': {\r\n                    \'placeholder\':    trans(\'theme::home.form_field_destination\')    ,\r\n                    \'label\':   trans(\'theme::home.form_field_destination\')   ,\r\n                    \'type\': \'anomaly.field_type.text\',\r\n                    \'required\': true,\r\n                    \'class\': \'input__field\'\r\n                },\r\n                \'estimationweight\': {\r\n                    \'placeholder\':    trans(\'theme::home.form_field_weigh\')    ,\r\n                    \'label\':   trans(\'theme::home.form_field_weigh\')   ,\r\n                    \'type\': \'anomaly.field_type.text\',\r\n                    \'required\': true,\r\n                    \'class\': \'input__field\'\r\n                },\r\n                \'estimationemail\': {\r\n                    \'placeholder\':    trans(\'theme::home.form_field_email\')    ,\r\n                    \'label\':   trans(\'theme::home.form_field_email\')   ,\r\n                    \'type\': \'anomaly.field_type.email\',\r\n                    \'required\': true,\r\n                    \'class\': \'input__field\'\r\n                }\r\n            }).actions(\r\n                {\'submit\':{\r\n                    \'class\':\'btn btn--primary btn--block\',\r\n                    \'text\':    trans(\'theme::home.form_field_button\')\r\n                }\r\n                }).to(\'webquotation@cargoservicesgroup.com\').from(\'webquotation@cargoservicesgroup.com\').get %}\r\n\r\n            {{ form.open|raw }}\r\n\r\n          <div class=\"input \">\r\n            <label for=\"estimation-origin\" class=\"input__label\">\r\n              <span class=\"icon icon-location\"></span>\r\n            </label>\r\n              {{ form.fields.estimationorigin.input|raw }}\r\n          </div>\r\n          <div class=\"input \">\r\n            <label for=\"estimation-destination\" class=\"input__label\">\r\n              <span class=\"icon icon-location\"></span>\r\n            </label>\r\n              {{ form.fields.estimationdestination.input|raw }}\r\n          </div>\r\n          <div class=\"input \">\r\n            <label for=\"estimation-weight\" class=\"input__label\">\r\n              <span class=\"icon icon-weight\"></span>\r\n            </label>\r\n              {{ form.fields.estimationweight.input|raw }}\r\n          </div>\r\n          <div class=\"input \">\r\n            <label for=\"estimation-mail\" class=\"input__label\">\r\n              <span class=\"icon icon-mail\"></span>\r\n            </label>\r\n              {{ form.fields.estimationemail.input|raw }}\r\n          </div>\r\n\r\n            {{ form.actions|raw }}\r\n\r\n            {{ form.close|raw }}\r\n          </div>\r\n        </div>\r\n        <div class=\"home-list\">\r\n          <div class=\"home-list__item\">\r\n            <div class=\"icon icon-package-hand\"></div>\r\n            <h3 class=\"title\">{{ trans(\'theme::home.list_1_title\') }}</h3>\r\n            <p class=\"text\">{{ trans(\'theme::home.list_1_subtitle\') }}</p>\r\n          </div>\r\n          <div class=\"home-list__item\">\r\n            <div class=\"icon icon-route\"></div>\r\n            <h3 class=\"title\">{{ trans(\'theme::home.list_2_title\') }}</h3>\r\n            <p class=\"text\">{{ trans(\'theme::home.list_2_subtitle\') }}</p>\r\n          </div>\r\n          <div class=\"home-list__item\">\r\n            <div class=\"icon icon-folder-safe\"></div>\r\n            <h3 class=\"title\">{{ trans(\'theme::home.list_3_title\') }}</h3>\r\n            <p class=\"text\">{{ trans(\'theme::home.list_3_subtitle\') }}</p>\r\n          </div>\r\n          <div class=\"home-list__item\">\r\n            <div class=\"icon icon-handshake\"></div>\r\n            <h3 class=\"title\">{{ trans(\'theme::home.list_4_title\') }}</h3>\r\n            <p class=\"text\">{{ trans(\'theme::home.list_4_subtitle\') }}</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"map\" id=\"map\">\r\n          <div class=\"map__map\"></div>\r\n          <div class=\"map__list\">\r\n            <div class=\"map__list__slider\">\r\n              <div class=\"swiper-container\">\r\n                <div class=\"swiper-wrapper\">\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services, S. A.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>C/ Cavanilles, 45\r\n                            <br />28007 Madrid </span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +34 914 341 820</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:infomad@cargoservicesgroup.com\">infomad@cargoservicesgroup.com</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services Barcelona, S. A.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>C/ Ronda San Pedro, 19 – 21, 4º - 1º\r\n                            <br />08010 Barcelona </span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +34 933 019 633</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:infobcn@cargoservicesgroup.com\">infobcn@cargoservicesgroup.com</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services Pamplona, S. A.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>Paseo García el de Najera , 2 1º Of.3\r\n                            <br />31008 Pamplona</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +34 948 172 245 </span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:infopna@cargoservicesgroup.com\">infopna@cargoservicesgroup.com</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <!-- <div class=\"swiper-slide\">\r\n            <div class=\"map__list__item\">\r\n              <h4 class=\"map__list__item__title\">Cargo Services, S.A. Santander</h4>\r\n              <ul class=\"map__list__item__list\">\r\n                <li>\r\n                  <span class=\"icon icon-location\"></span>\r\n                  <span>Marqués de Comillas, 28  2º Drcha <br />39520 - Comillas</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-phone\"></span>\r\n                  <span>Tel: +34 942 72 23 91</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-fax\"></span>\r\n                  <span>Fax: +34 914 341 821</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-mail\"></span>\r\n                  <a href=\"mailto:m.alonso@cargoservicesgroup.com\">m.alonso@cargoservicesgroup.com</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </div> -->\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services Polonia Sp. z o.o.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>Ul. I Armii Wojska Polskiego 13\r\n                            <br />81-383 Gdynia</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +48 58 668 44 18</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:infopol@cargoservicesgroup.com\">infopol@cargoservicesgroup.com</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services México S.A. de C.V.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>Diagonal de Patriotismo Nº 1, Piso 4\r\n                            <br />Col. Hipódromo de la Condesa\r\n                            <br />Delegación Cuauhtémoc, C.P. 06170\r\n                            <br />México, D.F. (México)</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +52 55 5543 2007 / 2008 / 2020</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:comercial@cargoservicesgroup.com.mx\">comercial@cargoservicesgroup.com.mx</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Cargo Services Panama S.A.</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          <span class=\"icon icon-location\"></span>\r\n                          <span>Urbanización Nuevo Paitilla, calle 59\r\n                            <br />Duplex 36. Planta Alta.\r\n                            <br />Panama City (Panama)</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +507 303 2320 / 2321</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:infopan@cargoservicesgroup.com\">infopan@cargoservicesgroup.com</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"swiper-slide\">\r\n                    <div class=\"map__list__item\">\r\n                      <h4 class=\"map__list__item__title\">Delegación en Cuba</h4>\r\n                      <ul class=\"map__list__item__list\">\r\n                        <li>\r\n                          	<span class=\"icon icon-location\"></span>\r\n                          	<span>Calle 3ra # 3406 apto 3-A\r\n							<br />Miramar Playa\r\n							<br />La Habana (Cuba) </span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +537 204 7211</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:n.carnota@cargoservicesgroup.cu\">n.carnota@cargoservicesgroup.cu</a>\r\n                        </li>\r\n                      </ul>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n                <div class=\"map__list__slider__navigation\">\r\n                  <div class=\"swiper-button-prev\">\r\n                    <span class=\"icon icon-arrow-left\"></span>\r\n                  </div>\r\n                  <div class=\"swiper-button-next\">\r\n                    <span class=\"icon icon-arrow-right\"></span>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <!-- <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo&callback=initMap\"></script> -->\r\n          <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo\"></script>\r\n        </div>\r\n      </div>', 'anomaly.extension.default_page_handler'),
(3, 3, '2018-07-23 11:08:08', 1, '2018-10-03 08:10:56', 1, NULL, 'servicios', 'theme::layouts.default', '      <div class=\"hero \" style=\"background-image: url({{ asset(\'images/content/services/hero.jpg\')  }})\">\r\n        <div class=\"hero__content\">\r\n          <p class=\"hero__content__text\">{{ trans(\'theme::services.since\') }}</p>\r\n          <h2 class=\"hero__content__title\">{{ trans(\'theme::services.banner_title\') }}</h2>\r\n        </div>\r\n      </div>\r\n      <div class=\"services-list\">\r\n        <div class=\"services-list__wrapp\">\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#ground\" data-scroll=\"#ground\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-delivery-truck\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_1\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#marine\" data-scroll=\"#marine\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-ship\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_2\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#aerial\" data-scroll=\"#aerial\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-plane\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_3\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#cross-trade\" data-scroll=\"#cross-trade\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-cross-trade\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_4\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#projects\" data-scroll=\"#projects\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-qr-code\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_5\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#customs\" data-scroll=\"#customs\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-customs\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_6\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#warehouses\" data-scroll=\"#warehouses\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-warehouses\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_7\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#consultancy\" data-scroll=\"#consultancy\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-consultancy\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_8\') }}</span>\r\n            </a>\r\n          </div>\r\n          <div class=\"services-list__item\">\r\n            <a href=\"#insurance\" data-scroll=\"#insurance\" data-offsettop=\"150\">\r\n              <span class=\"icon icon-lock\"></span>\r\n              <span class=\"text\">{{ trans(\'theme::services.icon_menu_9\') }}</span>\r\n            </a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"ground\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.submenu_land-freight\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_1_text\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::services.section_1_subtitle_1\') }}</h3>\r\n              <ul class=\"checklist\">\r\n                <li>{{ trans(\'theme::services.section_1_list_1\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_1_list_2\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_1_list_3\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_1_list_4\') }}</li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"content-block\">\r\n				<h3 class=\"lead\">{{ trans(\'theme::services.section_1_subtitle_2\') }}</h3>\r\n				<p><img src=\"{{ asset(\'images/icons/lock-bullet.svg\')  }}\" class=\"lock-bullet\" alt=\"Lock bullet\" /> {{ trans(\'theme::services.section_1_lock\') }}\r\n				</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services01.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.submenu_land-freight\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--right\" id=\"marine\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_2_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_2_text\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::services.section_2_subtitle_1\') }}</h3>\r\n              <p>{{ trans(\'theme::services.section_2_text_1\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_2_subtitle_2\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_2_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_2_subtitle_3\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_2_text_3\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_2_subtitle_4\') }}</p>\r\n              <p>\r\n                <img src=\"{{ asset(\'images/icons/lock-bullet.svg\')  }}\" class=\"lock-bullet\" alt=\"Lock bullet\" /> {{ trans(\'theme::services.section_2_lock\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services02.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_2_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"aerial\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_3_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_3_text\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::services.section_3_subtitle_1\') }}</h3>\r\n              <p>{{ trans(\'theme::services.section_3_text_1\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_3_subtitle_2\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_3_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_3_subtitle_3\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_3_text_3\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_3_subtitle_4\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_3_text_4\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_3_subtitle_5\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p>\r\n                <img src=\"{{ asset(\'images/icons/lock-bullet.svg\')  }}\" class=\"lock-bullet\" alt=\"Lock bullet\" />{{ trans(\'theme::services.section_3_lock\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services03.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_3_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--right\" id=\"cross-trade\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_4_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_4_text_1\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_4_text_2\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_4_text_3\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_4_text_4\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_4_text_5\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services04.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_4_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"projects\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_5_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_5_text_1\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_5_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::services.section_5_subtitle\') }}</h3>\r\n              <ul class=\"checklist\">\r\n                <li>{{ trans(\'theme::services.section_5_list_1\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_5_list_2\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_5_list_3\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_5_list_4\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_5_list_5\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_5_list_6\') }}</li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_5_text_3\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services10.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_5_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--right\" id=\"customs\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_6_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_6_text_1\') }}</p>\r\n              <ul class=\"checklist\">\r\n                <li>{{ trans(\'theme::services.section_6_list_1\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_list_2\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_list_3\') }}</li>\r\n              </ul>\r\n              <p>{{ trans(\'theme::services.section_6_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <p class=\"lead\">{{ trans(\'theme::services.section_6_subtitle\') }}</p>\r\n              <ul class=\"checklist\">\r\n                <li>{{ trans(\'theme::services.section_6_other_list_1\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_2\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_3\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_4\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_5\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_6\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_7\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_6_other_list_8\') }}</li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services05.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_6_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"warehouses\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_7_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_7_text_1\') }}</p>\r\n              <ul class=\"bulletlist\">\r\n                <li>{{ trans(\'theme::services.section_7_list_1\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_7_list_2\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_7_list_3\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_7_list_4\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_7_list_5\') }}</li>\r\n                <li>{{ trans(\'theme::services.section_7_list_6\') }}</li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services07.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_7_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--right\" id=\"consultancy\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_8_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_8_text_1\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_8_text_2\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_8_text_3\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_8_text_4\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_8_text_5\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services09.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_8_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"insurance\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::services.section_9_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::services.section_9_text_1\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_9_text_2\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_9_text_3\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_9_text_4\') }}</p>\r\n              <p>{{ trans(\'theme::services.section_9_text_5\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\"{{ asset(\'images/content/services/services08.jpg\')  }}\" class=\"content-image__image__image\" alt=\"{{ trans(\'theme::services.section_9_title\') }}\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"map \" id=\"map\">\r\n        <div class=\"map__map\"></div>\r\n        <div class=\"map__list\">\r\n          <div class=\"map__list__slider\">\r\n            <div class=\"swiper-container\">\r\n              <div class=\"swiper-wrapper\">\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Cavanilles, 45\r\n                          <br />28007 Madrid </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 914 341 820</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infomad@cargoservicesgroup.com\">infomad@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Barcelona, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Ronda San Pedro, 19 – 21, 4º - 1º\r\n                          <br />08010 Barcelona </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 933 019 633</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infobcn@cargoservicesgroup.com\">infobcn@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Pamplona, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Paseo García el de Najera , 2 1º Of.3\r\n                          <br />31008 Pamplona</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 948 172 245 </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopna@cargoservicesgroup.com\">infopna@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <!-- <div class=\"swiper-slide\">\r\n            <div class=\"map__list__item\">\r\n              <h4 class=\"map__list__item__title\">Cargo Services, S.A. Santander</h4>\r\n              <ul class=\"map__list__item__list\">\r\n                <li>\r\n                  <span class=\"icon icon-location\"></span>\r\n                  <span>Marqués de Comillas, 28  2º Drcha <br />39520 - Comillas</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-phone\"></span>\r\n                  <span>Tel: +34 942 72 23 91</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-fax\"></span>\r\n                  <span>Fax: +34 914 341 821</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-mail\"></span>\r\n                  <a href=\"mailto:m.alonso@cargoservicesgroup.com\">m.alonso@cargoservicesgroup.com</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </div> -->\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Polonia Sp. z o.o.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Ul. I Armii Wojska Polskiego 13\r\n                          <br />81-383 Gdynia</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +48 58 668 44 18</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopol@cargoservicesgroup.com\">infopol@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services México S.A. de C.V.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Diagonal de Patriotismo Nº 1, Piso 4\r\n                          <br />Col. Hipódromo de la Condesa\r\n                          <br />Delegación Cuauhtémoc, C.P. 06170\r\n                          <br />México, D.F. (México)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +52 55 5543 2007 / 2008 / 2020</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:comercial@cargoservicesgroup.com.mx\">comercial@cargoservicesgroup.com.mx</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Panama S.A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Urbanización Nuevo Paitilla, calle 59\r\n                          <br />Duplex 36. Planta Alta.\r\n                          <br />Panama City (Panama)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +507 303 2320 / 2321</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopan@cargoservicesgroup.com\">infopan@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Delegación en Cuba</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                          	<span class=\"icon icon-location\"></span>\r\n                          	<span>Calle 3ra # 3406 apto 3-A\r\n							<br />Miramar Playa\r\n							<br />La Habana (Cuba) </span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-phone\"></span>\r\n                          <span>Tel: +537 204 7211</span>\r\n                        </li>\r\n                        <li>\r\n                          <span class=\"icon icon-mail\"></span>\r\n                          <a href=\"mailto:n.carnota@cargoservicesgroup.cu\">n.carnota@cargoservicesgroup.cu</a>\r\n                        </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"map__list__slider__navigation\">\r\n                <div class=\"swiper-button-prev\">\r\n                  <span class=\"icon icon-arrow-left\"></span>\r\n                </div>\r\n                <div class=\"swiper-button-next\">\r\n                  <span class=\"icon icon-arrow-right\"></span>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <!-- <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo&callback=initMap\"></script> -->\r\n          <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo\"></script>\r\n      </div>', 'anomaly.extension.default_page_handler');
INSERT INTO `cargoweb_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(4, 4, '2018-07-23 11:25:13', 1, '2018-10-05 09:16:36', 1, NULL, 'empresa', 'theme::layouts.default', '      <div class=\"hero hero--company\" style=\"background-image: url( {{ asset(\'images/content/company/hero.jpg\') }} );\">\r\n        <h2 class=\"hero__content\">\r\n          <p class=\"hero__content__title\">{{ trans(\'theme::company.banner_title\') }}</p>\r\n        </h2>\r\n      </div>\r\n      <div class=\"company-menu\">\r\n        <div class=\"company-menu__wrapp\">\r\n          <div class=\"company-menu__item\" data-scroll=\"#history\" data-offsettop=\"100\">\r\n            <a href=\"#\">\r\n            {{ trans(\'theme::company.submenu_1\') }}\r\n            </a>\r\n          </div>\r\n          <div class=\"company-menu__item active\" data-scroll=\"#philosophy\" data-offsettop=\"100\">\r\n            <a href=\"#\">\r\n            {{ trans(\'theme::company.submenu_2\') }}\r\n            </a>\r\n          </div>\r\n          <div class=\"company-menu__item\" data-scroll=\"#comany-pol\" data-offsettop=\"100\">\r\n            <a href=\"#\">\r\n            {{ trans(\'theme::company.submenu_3\') }}\r\n            </a>\r\n          </div>\r\n          <div class=\"company-menu__item\" data-scroll=\"#corporative\" data-offsettop=\"100\">\r\n            <a href=\"#\">\r\n            {{ trans(\'theme::company.submenu_4\') }}\r\n            </a>\r\n          </div>\r\n          <div class=\"company-menu__item\" data-scroll=\"#qa\" data-offsettop=\"100\">\r\n            <a href=\"#\">\r\n            {{ trans(\'theme::company.submenu_5\') }}\r\n            </a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--left\" id=\"history\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::company.section_0_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::company.section_0_text_1\') }}</p>\r\n              <p>{{ trans(\'theme::company.section_0_text_2\') }}</p>\r\n              <p>{{ trans(\'theme::company.section_0_text_3\') }}</p>\r\n              <p>{{ trans(\'theme::company.section_0_text_4\') }}</p>\r\n              <p>{{ trans(\'theme::company.section_0_text_5\') }}</p>\r\n              <p>{{ trans(\'theme::company.section_0_text_6\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\" {{ asset(\'images/content/company/company01.jpg\') }} \" class=\"content-image__image__image\" alt=\"Company01\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-image   content-image--right\" id=\"philosophy\">\r\n        <div class=\"content-image__text\">\r\n          <h2 class=\"content-image__text__title\">{{ trans(\'theme::company.section_1_title\') }}</h2>\r\n          <div class=\"content-image__text__content\">\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_1_subtitle_1\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_1_text_1\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_1_subtitle_2\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_1_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_1_subtitle_3\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_1_text_3\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-image__image\">\r\n          <img src=\" {{ asset(\'images/content/company/company02.jpg\') }} \" class=\"content-image__image__image\" alt=\"Company02\" />\r\n        </div>\r\n      </div>\r\n      <div class=\"content-centered \" id=\"comany-pol\">\r\n        <div class=\"content-centered__text\">\r\n          <h2 class=\"content-centered__text__title\">{{ trans(\'theme::company.section_2_title\') }}</h2>\r\n          <div class=\"content-centered__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::company.section_2_text\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"company-list\">\r\n        <div class=\"company-list__item\">\r\n          <div class=\"icon icon-idea\"></div>\r\n          <h3 class=\"title\">{{ trans(\'theme::company.section_2_subtitle_1\') }}</h3>\r\n          <p class=\"text\">{{ trans(\'theme::company.section_2_text_1\') }}</p>\r\n        </div>\r\n        <div class=\"company-list__item\">\r\n          <div class=\"icon icon-shield\"></div>\r\n          <h3 class=\"title\">{{ trans(\'theme::company.section_2_subtitle_2\') }}</h3>\r\n          <p class=\"text\">{{ trans(\'theme::company.section_2_text_2\') }}</p>\r\n        </div>\r\n        <div class=\"company-list__item\">\r\n          <div class=\"icon icon-handshake\"></div>\r\n          <h3 class=\"title\">{{ trans(\'theme::company.section_2_subtitle_3\') }}</h3>\r\n          <p class=\"text\">{{ trans(\'theme::company.section_2_text_3\') }}</p>\r\n        </div>\r\n      </div>\r\n      <div class=\"content-slider   content-slider--left\" id=\"corporative\">\r\n        <div class=\"content-slider__text\">\r\n          <h2 class=\"content-slider__text__title\">{{ trans(\'theme::company.section_3_title\') }}</h2>\r\n          <div class=\"content-slider__text__content\">\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_3_subtitle_1\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_3_text_1\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_3_subtitle_2\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_3_text_2\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <h3 class=\"lead\">{{ trans(\'theme::company.section_3_subtitle_3\') }}</h3>\r\n              <p>{{ trans(\'theme::company.section_3_text_3\') }}</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"content-slider__slider\">\r\n          <div class=\"swiper-container\">\r\n            <div class=\"swiper-wrapper\">\r\n              <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'images/content/company/slide-01.jpg\') }} )\"></div>\r\n              <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'images/content/company/slide-02.jpg\') }} );\"></div>\r\n              <div class=\"swiper-slide\" style=\"background-image: url( {{ asset(\'images/content/company/slide-03.jpg\') }} );\"></div>\r\n            </div>\r\n          </div>\r\n          <div class=\"content-slider__slider__navigation\">\r\n            <div class=\"swiper-button-prev\">\r\n              <span class=\"icon icon-arrow-left\"></span>\r\n            </div>\r\n            <div class=\"swiper-button-next\">\r\n              <span class=\"icon icon-arrow-right\"></span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"content-centered content-centered--company\" id=\"qa\">\r\n        <div class=\"content-centered__text\">\r\n          <h2 class=\"content-centered__text__title\">{{ trans(\'theme::company.section_4_title\') }}</h2>\r\n          <div class=\"content-centered__text__content\">\r\n            <div class=\"content-block\">\r\n              <p>{{ trans(\'theme::company.section_4_text\') }}</p>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <div class=\"company-logos\">\r\n                <img src=\" {{ asset(\'images/content/company/logo-ateia.png\') }} \" class=\"company-logo ateia\" alt=\"Logo ateia\" />\r\n                <img src=\"{{ asset(\'images/content/company/logo-feteia.png\') }} \" class=\"company-logo feteia\" alt=\"Logo feteia\"/>\r\n                <img src=\"{{ asset(\'images/content/company/logo-aeo.png\') }} \" class=\"company-logo aeo\" alt=\"Logo aeo\" />\r\n                <img src=\"{{ asset(\'images/content/company/logo-iata.png\') }} \" class=\"company-logo iata\" alt=\"Logo iata\" />\r\n                <img src=\" {{ asset(\'images/content/company/logo-iso.png\') }} \" class=\"company-logo iso\" alt=\"Logo iso\" />\r\n              </div>\r\n            </div>\r\n            <div class=\"content-block\">\r\n              <div class=\"company-buttons\">\r\n                <a href=\" {{ asset(\'images/content/CERTIFICACION-ISO-9001-2000-CargoServices.pdf\') }} \" target=\"_blank\" class=\"btn btn--secondary icon icon-download\">\r\n                {{ trans(\'theme::company.download_1\') }}\r\n                </a>\r\n                <a href=\" {{ asset(\'images/content/PoliticaCalidad.pdf\') }} \" target=\"_blank\" class=\"btn btn--secondary icon icon-download\">\r\n                {{ trans(\'theme::company.download_2\') }}\r\n                </a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"map \" id=\"map\">\r\n        <div class=\"map__map\"></div>\r\n        <div class=\"map__list\">\r\n          <div class=\"map__list__slider\">\r\n            <div class=\"swiper-container\">\r\n              <div class=\"swiper-wrapper\">\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Cavanilles, 45\r\n                          <br />28007 Madrid </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 914 341 820</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infomad@cargoservicesgroup.com\">infomad@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Barcelona, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Ronda San Pedro, 19 – 21, 4º - 1º\r\n                          <br />08010 Barcelona </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 933 019 633</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infobcn@cargoservicesgroup.com\">infobcn@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Pamplona, S. A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Paseo García el de Najera , 2 1º Of.3\r\n                          <br />31008 Pamplona</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 948 172 245 </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopna@cargoservicesgroup.com\">infopna@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <!-- <div class=\"swiper-slide\">\r\n            <div class=\"map__list__item\">\r\n              <h4 class=\"map__list__item__title\">Cargo Services, S.A. Santander</h4>\r\n              <ul class=\"map__list__item__list\">\r\n                <li>\r\n                  <span class=\"icon icon-location\"></span>\r\n                  <span>Marqués de Comillas, 28  2º Drcha <br />39520 - Comillas</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-phone\"></span>\r\n                  <span>Tel: +34 942 72 23 91</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-fax\"></span>\r\n                  <span>Fax: +34 914 341 821</span>\r\n                </li>\r\n                <li>\r\n                  <span class=\"icon icon-mail\"></span>\r\n                  <a href=\"mailto:m.alonso@cargoservicesgroup.com\">m.alonso@cargoservicesgroup.com</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </div> -->\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Polonia Sp. z o.o.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Ul. I Armii Wojska Polskiego 13\r\n                          <br />81-383 Gdynia</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +48 58 668 44 18</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopol@cargoservicesgroup.com\">infopol@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services México S.A. de C.V.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Diagonal de Patriotismo Nº 1, Piso 4\r\n                          <br />Col. Hipódromo de la Condesa\r\n                          <br />Delegación Cuauhtémoc, C.P. 06170\r\n                          <br />México, D.F. (México)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +52 55 5543 2007 / 2008 / 2020</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:comercial@cargoservicesgroup.com.mx\">comercial@cargoservicesgroup.com.mx</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Cargo Services Panama S.A.</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Urbanización Nuevo Paitilla, calle 59\r\n                          <br />Duplex 36. Planta Alta.\r\n                          <br />Panama City (Panama)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +507 303 2320 / 2321</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopan@cargoservicesgroup.com\">infopan@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h4 class=\"map__list__item__title\">Delegación en Cuba</h4>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Calle 3ra # 3406 apto 3-A\r\n							<br />Miramar Playa\r\n							<br />La Habana (Cuba) </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +537 204 7211</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:n.carnota@cargoservicesgroup.cu\">n.carnota@cargoservicesgroup.cu</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"map__list__slider__navigation\">\r\n                <div class=\"swiper-button-prev\">\r\n                  <span class=\"icon icon-arrow-left\"></span>\r\n                </div>\r\n                <div class=\"swiper-button-next\">\r\n                  <span class=\"icon icon-arrow-right\"></span>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <!-- <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo&callback=initMap\"></script> -->\r\n        <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo\"></script>\r\n      </div>', 'anomaly.extension.default_page_handler'),
(5, 5, '2018-08-01 08:32:02', 1, '2018-10-03 08:17:03', 1, NULL, 'contact', 'theme::layouts.default', ' <div class=\"map contact-page\" id=\"map\">\r\n        <div class=\"map__map\"></div>\r\n        <div class=\"map__list\">\r\n          <div class=\"map__list__slider\">\r\n            <div class=\"swiper-container\">\r\n              <div class=\"swiper-wrapper\">\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services, S. A.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Cavanilles, 45\r\n                          <br />28007 Madrid </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 914 341 820</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infomad@cargoservicesgroup.com\">infomad@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services Barcelona, S. A.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>C/ Ronda San Pedro, 19 – 21, 4º - 1º\r\n                          <br />08010 Barcelona </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 933 019 633</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infobcn@cargoservicesgroup.com\">infobcn@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services Pamplona, S. A.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Paseo García el de Najera , 2 1º Of.3\r\n                          <br />31008 Pamplona</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +34 948 172 245 </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopna@cargoservicesgroup.com\">infopna@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services Polonia Sp. z o.o.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Ul. I Armii Wojska Polskiego 13\r\n                          <br />81-383 Gdynia</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +48 58 668 44 18</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopol@cargoservicesgroup.com\">infopol@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services México S.A. de C.V.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Diagonal de Patriotismo Nº 1, Piso 4\r\n                          <br />Col. Hipódromo de la Condesa\r\n                          <br />Delegación Cuauhtémoc, C.P. 06170\r\n                          <br />México, D.F. (México)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +52 55 5543 2007 / 2008 / 2020</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:comercial@cargoservicesgroup.com.mx\">comercial@cargoservicesgroup.com.mx</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Cargo Services Panama S.A.</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Urbanización Nuevo Paitilla, calle 59\r\n                          <br />Duplex 36. Planta Alta.\r\n                          <br />Panama City (Panama)</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +507 303 2320 / 2321</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:infopan@cargoservicesgroup.com\">infopan@cargoservicesgroup.com</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n                <div class=\"swiper-slide\">\r\n                  <div class=\"map__list__item\">\r\n                    <h3 class=\"map__list__item__title\">Delegación en Cuba</h3>\r\n                    <ul class=\"map__list__item__list\">\r\n                      <li>\r\n                        <span class=\"icon icon-location\"></span>\r\n                        <span>Calle 3ra # 3406 apto 3-A\r\n							<br />Miramar Playa\r\n							<br />La Habana (Cuba) </span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-phone\"></span>\r\n                        <span>Tel: +537 204 7211</span>\r\n                      </li>\r\n                      <li>\r\n                        <span class=\"icon icon-mail\"></span>\r\n                        <a href=\"mailto:n.carnota@cargoservicesgroup.cu\">n.carnota@cargoservicesgroup.cu</a>\r\n                      </li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"map__list__slider__navigation\">\r\n                <div class=\"swiper-button-prev\">\r\n                  <span class=\"icon icon-arrow-left\"></span>\r\n                </div>\r\n                <div class=\"swiper-button-next\">\r\n                  <span class=\"icon icon-arrow-right\"></span>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <!-- <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo&callback=initMap\"></script> -->\r\n        <script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBYC_HIH5QDJ0hX9EV3KGuiN360v8X01oo\"></script>\r\n        <div class=\"modal budget-modal\" data-modal=\"budget-modal\" data-modal-close>\r\n          <div class=\"modal__dialog\">\r\n            <div class=\"modal__dialog__close\" data-modal-close></div>\r\n            <div class=\"modal__dialog__wrapper\">\r\n              <div class=\"modal__dialog__wrapper__title\">\r\n                <p class=\"small\">Solicita</p>\r\n                <p class=\"title\">Presupuesto gratuito</p>\r\n              </div>\r\n              <div class=\"modal__dialog__wrapper__content\">\r\n                <div class=\"budget-modal__wrap__form\">\r\n                  <form>\r\n                    <div class=\"input \">\r\n                      <label for=\"estimation-origin\" class=\"input__label\">\r\n                        <span class=\"icon icon-location\"></span>\r\n                      </label>\r\n                      <input type=\"text\" id=\"estimation-origin\" name=\"estimation-origin\" placeholder=\"Origen\" value=\"\" class=\"input__field\">\r\n                    </div>\r\n                    <div class=\"input \">\r\n                      <label for=\"estimation-destination\" class=\"input__label\">\r\n                        <span class=\"icon icon-location\"></span>\r\n                      </label>\r\n                      <input type=\"text\" id=\"estimation-destination\" name=\"estimation-destination\" placeholder=\"Destino\" value=\"\" class=\"input__field\">\r\n                    </div>\r\n                    <div class=\"input \">\r\n                      <label for=\"estimation-weight\" class=\"input__label\">\r\n                        <span class=\"icon icon-weight\"></span>\r\n                      </label>\r\n                      <input type=\"text\" id=\"estimation-weight\" name=\"estimation-weight\" placeholder=\"¿Cuánto pesa tu envío?\" value=\"\" class=\"input__field\">\r\n                    </div>\r\n                    <div class=\"input \">\r\n                      <label for=\"estimation-mail\" class=\"input__label\">\r\n                        <span class=\"icon icon-mail\"></span>\r\n                      </label>\r\n                      <input type=\"mail\" id=\"estimation-mail\" name=\"estimation-mail\" placeholder=\"Email\" value=\"\" class=\"input__field\">\r\n                    </div>\r\n                    <button type=\"button\" class=\"btn btn--primary btn--block\">\r\n                      Pídenos presupuesto\r\n                    </button>\r\n                  </form>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>', 'anomaly.extension.default_page_handler');
INSERT INTO `cargoweb_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(6, 6, '2018-08-01 11:27:02', 1, '2018-10-03 11:03:14', 1, NULL, 'privacy_policy', 'theme::layouts.default', ' <div class=\"legal \">\r\n        <a href=\" {{ app.request.headers.get(\'referer\') }}\" class=\"legal__back\">\r\n          <span class=\"icon icon-arrow-left\"></span>\r\n          Back\r\n        </a>\r\n       \r\n      {% if app.locale  ==  \'es\' %}\r\n	 <h1>POLÍTICA DE PRIVACIDAD</h1>\r\n\r\n<h2>1. RESPONSABLE DEL TRATAMIENTO DE SUS DATOS</h2>\r\n<p>En función del uso realizado del sitio web https://www.cargoservicesgroup.com (en adelante, el sitio web), sus datos podrán ser tratados por las siguientes entidades del Grupo Cargoservices en España, en adelante RESPONSABLE: </p>\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n<p></p>\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n<p></p>\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n<p></p>\r\n<p>Se le informa  que estos datos serán tratados de conformidad con lo dispuesto en las normativas vigentes en protección de datos personales, el Reglamento (UE) 2016/679 de 27 de abril de 2016 (GDPR) relativo a la protección de las personas físicas en lo que respecta al tratamiento de datos personales y a la libre circulación de estos datos, por lo que se le facilita la información contenida en el presente documento:</p>\r\n\r\n<h2>2. INFORMACIÓN Y CONSENTIMIENTO</h2>\r\n<p>Mediante la lectura de la presente Política de Privacidad, el Usuario queda informado sobre la forma en que el RESPONSABLE, trata y protege los datos de carácter personal que le son facilitados a través de los formularios dispuestos a través del sitio web, así como los propios de su navegación y aquellos otros datos que pueda facilitar a través de cualquier otro medio o soporte.</p>\r\n<p>El Usuario debe leer con atención esta Política de Privacidad, que ha sido redactada de forma clara y sencilla, para facilitar su comprensión, y determinar libre y voluntariamente si desea facilitar sus datos personales al RESPONSABLE.</p>\r\n\r\n<h2>3. OBLIGATORIEDAD DE FACILITAR LOS DATOS</h2>\r\n<p>Los datos solicitados en los formularios de la Web son, con carácter general, obligatorios y están marcados con un asterisco (salvo que en el campo requerido se especifique lo contrario) para cumplir con las finalidades establecidas. Por lo tanto, si no se facilitan los mismos o no se facilitan correctamente no podrán atenderse las mismas, sin perjuicio de que podrá visualizar libremente el contenido del Sitio Web.</p>\r\n\r\n<h2>4. FINALIDAD DEL TRATAMIENTO</h2>\r\n<p>Los datos personales facilitados a través del Sitio Web serán tratados por el RESPONSABLE tienen como fin mantener una relación comercial con el Usuario. Las operaciones previstas para realizar el tratamiento son:</p>\r\n<ul>\r\n<li>Remisión de comunicaciones comerciales publicitarias, siempre y cuando se haya autorizado previamente, por email, fax, SMS, MMS, comunidades sociales o cualquier otro medio electrónico o físico, presente o futuro, que posibilite realizar comunicaciones comerciales. Estas comunicaciones serán realizadas por el RESPONSABLE y relacionadas sobre sus productos y servicios, o de sus colaboradores o proveedores con los que éste haya alcanzado algún acuerdo de promoción. En este caso, los terceros nunca tendrán acceso a los datos personales.</li>\r\n<li>Realizar estudios estadísticos.</li>\r\n<li>Tramitar encargos, solicitudes o cualquier tipo de petición que sea realizada por el usuario a través de cualquiera de las formas de contacto que se ponen a su disposición.</li>\r\n<li>Remitir el boletín de noticias de la página web, en su caso.</li>\r\n</ul>\r\n<h2>5. CRITERIOS DE CONSERVACION DE LOS DATOS</h2>\r\n<p>Los datos del Usuario serán conservados por el RESPONSABLE durante el tiempo necesario para dar cumplimiento a las finalidades anteriores o hasta que se oponga o revoque su consentimiento.  Llegado el momento, se suprimirán con medidas de seguridad adecuadas para garantizar la seudonimización de los datos o la destrucción total de los mismos.</p>\r\n\r\n<h2>6.  DATOS DEL USUARIO SERÁN TRATADOS</h2>\r\n<p>El RESPONSABLE podrá tratar las siguientes categorías de datos del Usuario, en función de la solicitud realizada a través del sitio web o por cualquier otro medio.</p>\r\n<ul>\r\n<li>	Datos identificativos.</li>\r\n<li>	Datos de contacto.</li>\r\n<li>	Datos de características personales.</li>\r\n<li>	Datos de circunstancias sociales.</li>\r\n<li>	Datos académicos y profesionales.</li>\r\n<li>	Datos económicos y financieros.</li>\r\n</ul>\r\n<p>En caso de que el Usuario facilite datos de terceros, manifiesta contar con el consentimiento de los mismos y se compromete a trasladarles la información contenida en la Política de Privacidad, eximiendo al RESPONSABLE de cualquier responsabilidad en este sentido. No obstante, el RESPONSABLE podrá llevar a cabo las verificaciones periódicas para constatar este hecho, adoptando las medidas de diligencia debida que correspondan, conforme a la normativa de protección de datos.</p>\r\n\r\n<h2>7. LEGITIMACIÓN DEL TRATAMIENTO DE LOS DATOS DEL USUARIO</h2>\r\n<p>El tratamiento de los datos del Usuario por parte  del  RESPONSABLE está basado en el consentimiento que se le solicita y que puede retirar en cualquier momento. No obstante, en caso de retirar su consentimiento, ello no afectará a la licitud de los tratamientos efectuados con anterioridad.</p>\r\n<p>Los consentimientos obtenidos para las finalidades mencionadas son independientes por lo que el Usuario podrá revocar solo uno de ellos no afectando a los demás.</p>\r\n\r\n<h2>8. CARÁCTER OBLIGATORIO O FACULTATIVO DE LA INFORMACIÓN FACILITADA POR EL USUARIO.  DESTINATARIOS DE LOS DATOS COMUNICADOS</h2>\r\n<p>Los Usuarios, mediante la marcación de las casillas correspondientes y entrada de datos en los campos, marcados con un asterisco (*) en el formulario de contacto o presentados en formularios de descarga, aceptan expresamente y de forma libre e inequívoca, que sus datos son necesarios para atender su petición, por parte del prestador, siendo voluntaria la inclusión de datos en los campos restantes. El Usuario garantiza que los datos personales facilitados al RESPONSABLE son veraces y se hace responsable de comunicar cualquier modificación de los mismos.</p>\r\n<p>Sus datos personales únicamente podrán ser puestos en conocimiento de empresas del Grupo Cargoservices o de prestadores de servicios del  RESPONSABLE, exclusivamente, para la prestación de las finalidades antedichas.</p>\r\n<p>Los destinatarios indicados en el presente apartado pueden encontrarse ubicados dentro o fuera del Espacio Económico Europeo (EEE), encontrándose en este último caso debidamente legitimadas las transferencias internacionales de datos.</p>\r\n<p>Asimismo, en caso de que su residencia se encuentre fuera del EEE, sus datos podrán ser comunicados a las Oficinas del Grupo Cargoservices, lo que implicaría que hubiese una transferencia internacional de datos, a efectos de gestionar y llevar a cabo su solicitud de información, inscripción y admisión.</p>\r\n<p>El RESPONSABLE informa y garantiza expresamente a los usuarios que sus datos personales no serán cedidos en ningún caso a terceros, y que siempre que realizara algún tipo de cesión de datos personales, se pedirá previamente el consentimiento expreso, informado e inequívoco por parte los Usuarios. </p>\r\n\r\n<h2>9. RESPONSABILIDAD DEL USUARIO</h2>\r\n<p>El Usuario:</p>\r\n<ul>\r\n<li>	Garantiza que es mayor de 16 años y que los datos que facilita al RESPONSABLE son verdaderos, exactos, completos y actualizados. A estos efectos, el Usuario responde de la veracidad de todos los datos que comunique y mantendrá convenientemente actualizada la información facilitada, de tal forma que responda a su situación real.</li>\r\n<li>	Garantiza que ha informado a los terceros de los que facilite sus datos, en caso de hacerlo, de los aspectos contenidos en este documento. Asimismo, garantiza que ha obtenido su autorización para facilitar sus datos el RESPONSABLE para los fines señalados.</li>\r\n<li>	Será responsable de las informaciones falsas o inexactas que proporcione a través del Sitio Web y de los daños y perjuicios, directas o indirectas, que ello cause a el RESPONSABLE o a terceros.</li>\r\n</ul>\r\n<h2>10. COMUNICACIONES COMERCIALES Y PROMOCIONALES</h2>\r\n<p>Una de las finalidades para las que el RESPONSABLE tratará los datos personales proporcionados por parte de los Usuarios es para remitirles comunicaciones electrónicas personalizadas con información relativa a productos, servicios, eventos, programas, promociones y noticias relevantes para los Usuarios. Siempre que se realice alguna comunicación de este tipo, ésta será dirigida única y exclusivamente a aquellos Usuarios que no hubieran manifestado previamente su negativa a la recepción de las mismas.</p>\r\n<p>Para llevar a cabo dicha finalidad, se elaborará un perfil comercial basado en sus preferencias, obtenido en base a la información proporcionada por el usuario u obtenida, incluso de fuentes externas.</p>\r\n<p>En caso de que el Usuario desee dejar de recibir comunicaciones comerciales o promocionales puede solicitar la baja del servicio enviando un email a la siguiente dirección de correo electrónico: infomad@cargoservicesgroup.com o a través de cualquiera de las comunicaciones recibidas.</p>\r\n\r\n\r\n<h2>11. EJERCICIO DE DERECHOS</h2>\r\n<p>El Usuario puede enviar un escrito a infomad@cargoservicesgroup.com, con la Referencia \"Protección de Datos\", adjuntando fotocopia de su documento de identidad, en cualquier momento y de manera gratuita, para:</p>\r\n<ul>\r\n<li>	Revocar los consentimientos otorgados.</li>\r\n<li>	Obtener confirmación acerca de si el RESPONSABLE  está tratando datos personales que conciernen al Usuario o no.</li>\r\n<li>	Acceder a sus datos personales.</li>\r\n<li>	Rectificar los datos inexactos o incompletos.</li>\r\n<li>	Solicitar la supresión de sus datos cuando, entre otros motivos, los datos ya no sean necesarios para los fines que fueron recogidos.</li>\r\n<li>	Obtener del RESPONSABLE la limitación del tratamiento de los datos cuando se cumpla alguna de las condiciones previstas en la normativa de protección de datos.</li>\r\n<li>	Solicitar la portabilidad de sus datos.</li>\r\n</ul>\r\n<p>Asimismo, el interesado podrá reclamar ante la Agencia Española de Protección de Datos, cuando considere que el RESPONSABLE ha vulnerado los derechos que le son reconocidos por la normativa aplicable en protección de datos.</p>\r\n<p>Sin perjuicio de lo anterior, el interesado podrá ponerse en contacto con el delegado de protección de datos el RESPONSABLE cuyos datos de contacto son infomad@cargoservicesgroup.com.</p>\r\n\r\n<h2>12. MEDIDAS DE SEGURIDAD</h2>\r\n<p>Los datos del Usuario se tratarán en todo momento de forma absolutamente confidencial y guardando el preceptivo deber de secreto respecto de los mismos, de conformidad con lo previsto en la normativa de aplicación, adoptando al efecto las medidas de índole técnica y organizativas necesarias que garanticen la seguridad de sus datos y eviten su alteración, pérdida, tratamiento o acceso no autorizado, habida cuenta del estado de la tecnología, la naturaleza de los datos almacenados y los riesgos a que están expuestos.</p>\r\n<p>De esta forma y de conformidad con lo dispuesto en las normativas vigentes en protección de datos personales, el RESPONSABLE está cumpliendo con todas las disposiciones de las normativas GDPR para el tratamiento de los datos personales de su responsabilidad, y manifiestamente con los principios descritos en el artículo 5 del GDPR, por los cuales son tratados de manera lícita, leal y transparente en relación con el interesado y adecuados, pertinentes y limitados a lo necesario en relación con los fines para los que son tratados.</p>\r\n<p>El RESPONSABLE garantiza que ha implementado políticas técnicas y organizativas apropiadas para aplicar las medidas de seguridad que establecen el GDPR con el fin de proteger los derechos y libertades de los Usuarios y les ha comunicado la información adecuada para que puedan ejercerlos.</p>\r\n\r\n<h2>13. EMPRESAS DEL GRUPO CARGOSERVICES</h2>\r\n<p>Las empresas del Grupo Cargo Services, con personalidad jurídica propia y objetos sociales determinado son:</p>\r\n\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n<p></p>\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n<p></p>\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n\r\n\r\n\r\n\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n\r\n\r\n\r\n\r\n<p>© 2018 Cargo Services -  Todos los derechos reservados. Última actualización: Junio 2018</p>\r\n\r\n	 {% else %}\r\n\r\n	 <h1>Privacy Policy</h1>\r\n<h2>1. RESPONSIBLE FOR THE PROCESSING OF YOUR DATA</h2>\r\n<p>If you choose to use our Service web https://www.cargoservicesgroup.com (hereinafter, the website), your data may be treated by the following entities of the Cargo Services Group in Spain, hereinafter responsible:</p>\r\n<p>(hereinafter, the website), your data may be treated by the following entities of the Cargo Services Group in Spain, hereinafter responsible:</p>\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n<p></p>\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n<p></p>\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n<p></p>\r\n<p>It is informed that these data will be treated in accordance with the regulations in force in the protection of personal data, regulation (EU) 2016/679 of 27 April 2016 (GDPR) on the protection of natural persons in respect of Processing of personal data and the free circulation of these data, so it is provided the information contained in this document:</p>\r\n\r\n<h2>2. INFORMATION AND CONSENT</h2>\r\n<p>By reading this privacy policy, the user is informed about the way in which the person responsible, treats and protects the personal data that is provided to him through the forms arranged through the website, as well as the of your browsing and other data that you can provide through any other media or support.</p>\r\n<p>The User must read with careful attention this Privacy Policy, which has been written of clear and simple form, to facilitate its comprehension, and to determine free and voluntarily if you want to facilitate your personal details to the PERSON IN CHARGE.</p>\r\n\r\n<h2>3. OBLIGATION OF PROVIDING DATA</h2>\r\n<p>The data requested in the forms of the Web are, in general, obligatory and are marked with an asterisk (except in the required field is specified otherwise) to comply with the established purposes. Therefore, if they are not facilitated or not facilitated correctly will not be able to attend them, without prejudice that will be able to view freely the contents of the Web site.</p>\r\n\r\n<h2>4. PURPOSE OF THE TREATMENT</h2>\r\n<p>The personal data provided via the Web Site will be treated by the responsible have to maintain a commercial relationship with the user. The operations envisaged for the treatment are:</p>\r\n<ul>\r\n<li>	Remission of commercial communications advertising, where it has previously authorized, by email, fax, SMS, MMS, social communities or any other electronic medium or physical, present or future, which makes it possible to perform commercial communications. These communications shall be made by the responsible and related about their products and services, or its partners or suppliers with which it has reached an agreement on the promotion.</li>\r\n<li>	Perform statistical studies.</li>\r\n<li>	Process orders, requests or any type of request to be done by the user through any of the forms of contact that are at your disposal.</li>\r\n<li>	Refer the newsletter of the web page, in its case.</li>\r\n</ul>\r\n<h2>5. CRITERIA FOR THE CONSERVATION OF THE DATA</h2>\r\n<p>The user data shall be preserved by the responsible during the time required to comply with the purposes above or until opposes or revoke your consent. Time shall be abolished with adequate security measures to ensure the pseudonymization of data or the total destruction of the same.</p>\r\n\r\n<h2>6. HOW USER DATA WILL BE TREATED</h2>\r\n<p>The responsible may treat the following categories of user data, depending on the request made through the website or by any other means.</p>\r\n<ul>\r\n<li>Identifying data. </li>\r\n<li>Contact data. </li>\r\n<li>Data of personal characteristics. </li>\r\n<li>Data from social circumstances. </li>\r\n<li>Data academics and practitioners.</li>\r\n<li>Economic and financial data.</li>\r\n</ul>\r\n<p>In case the User should facilitate information of third, it shows to be provided with the assent of the same ones and they promise to be moved by the information contained in the Politics of Privacy, exempting the PERSON IN CHARGE of any responsibility in this sense. Nevertheless, the PERSON IN CHARGE will be able to carry out the periodic cross-checks to state this fact, adopting the measurements of due diligence that correspond, in accordance with the information protection regulation.</p>\r\n\r\n<h2>7. THE LEGITIMATION OF THE TREATMENT OF USER DATA</h2>\r\n<p>The treatment of the data of the user by the person responsible is based on the consent that prompted and you can withdraw at any time. However, in the case of withdrawn consent, this does not affect the lawfulness of the treatments carried out previously.</p>\r\n<p>The consents obtained for the above purposes are independent so that the user may revoke only one of them do not affect the other.</p>\r\n\r\n<h2>8. MANDATORY OR VOLUNTARY NATURE OF THE INFORMATION PROVIDED BY THE USER. RECIPIENTS OF THE DATA COMMUNICATED</h2>\r\n<p>The users through the marking of the boxes and data entry in the fields marked with an asterisk (*) in the form of contact or presented in forms of download, expressly accept and a free and unequivocally, that their data are necessary to meet their request on the part of the service provider, being voluntary inclusion of data in the remaining fields. The user guarantees that the personal data provided to the responsible are truthful and is responsible for communicating any change of the same.</p>\r\n<p>Your personal data may only be brought to the attention of companies of the Group Cargoservices or of service providers of the responsible exclusively for the provision of the purposes mentioned above.</p>\r\n<p>The addresses referred to in this paragraph may be located within or outside the European Economic Area (EEA), while in the latter case duly legitimized international data transfers.</p>\r\n<p>Also, in the event that your residence is outside the EEA, your data may be communicated to the offices of the Group Cargoservices, implying that there is an international transfer of data in order to manage and to carry out its request for information, registration, and admission.</p>\r\n<p>The responsible informs and expressly guarantees users that their personal data will not be disclosed to any third parties and that always to undertake any type of transfer of personal data, it shall first request the express consent, informed and unequivocal by users.</p>\r\n\r\n<h2>9. THE RESPONSIBILITY OF THE USER</h2>\r\n<p>User:</p>\r\n<p>Ensures that they are more than 16 years old and that the data they provide to responsible are true, exact, complete and updated. To these effects, the user responds to the veracity of all data to communicate and maintain conveniently updated the information provided, in such a way that responds to their actual situation.</p>\r\n<p>Ensures that has informed the third-party of those who provide their data, if so, of the aspects contained in this document. It also ensures that has obtained your authorization to facilitate their data the responsible for the above purposes.</p>\r\n<p>The user will be responsible for the false information or inaccurate you provide through the Web Site and the damage, direct or indirect, that this cause to the responsible or to third parties.</p>\r\n<h2>10. COMMERCIAL COMMUNICATIONS AND PROMOTIONAL</h2>\r\n<p>One of the purposes for which the responsible shall process the personal data provided by users is to send electronic communications personalized with information regarding the products, services, events, programs, promotions and news relevant to the users. Whenever you perform any communication of this kind, it will be directed solely and exclusively to those users who had not previously expressed their refusal to the receipt of the same. </p>\r\n<p>To carry out this purpose will be a commercial profile based on your preferences, obtained on the basis of the information provided by the user or obtained, even from external sources.</p>\r\n<p>In the event that the user you want to stop receiving commercial communications or promotional can request the cancellation of the service by sending an email to the following email address: infomad@cargoservicesgroup.com or through any of the communications received.</p>\r\n\r\n<h2>11. EXERCISE OF RIGHTS</h2>\r\n<p>The user can send a letter to infomad@cargoservicesgroup.com, with the reference \"Data Protection\", together with a photocopy of your identity document, at any time and free of charge, for:</p>\r\n<ul>\r\n<li>Revoke the consents granted. </li>\r\n<li>Obtain confirmation about if the responsible is useing personal data that concerns the user or not. </li>\r\n<li>Access to your personal data. </li>\r\n<li>Rectify the inaccurate or incomplete data.</li>\r\n<li>Request the removal of your data when, among other reasons, the data are no longer necessary for the purposes for which they were collected. </li>\r\n<li>Obtain from the responsible the limitation of the data processing when to meet any of the conditions laid down in the data protection regulations.</li>\r\n<li>Request the portability of your data.</li>\r\n</ul>\r\n<p>Also, the interested party may file a complaint with the Spanish Data Protection Agency, where it considers that the responsible has infringed the rights that are recognized by the applicable regulations on data protection.</p>\r\n<p>Without prejudice to the foregoing, the interested party may contact the delegate of data protection the responsible whose contact details are infomad@cargoservicesgroup.com</p>\r\n\r\n<h2>12. SECURITY MEASURES</h2>\r\n<p>The user data is treated in every moment of form absolutely confidential and saving the prescriptive duty of confidentiality in respect of the same, in accordance with the rules of application, by adopting any measures of a technical nature and organizational measures to guarantee the security of its data and avoid its alteration, loss, treatment or unauthorized access, taking into account the state of the technology, the nature of the stored data and the risks to which they are exposed.</p>\r\n<p>In this way and in accordance with the regulations in force in the protection of personal data, the person responsible is in compliance with all the provisions of GDPR for the treatment of the personal data of its responsibility, and manifestly with the principles described in the article 5 of GDPR, by whom are treated legally, fair and transparent in relation to the person concerned and adequate, relevant and limited to what is necessary in relation to the purposes for which they were treated.</p>\r\n<p>The responsible ensures that has implemented technical policies and organizational measures for implementing security measures that establish the GDPR in order to protect the rights and freedoms of users and has informed you of the appropriate information to be able to exercise them.</p>\r\n<h2>13. GROUP ENTERPRISES CARGOSERVICES</h2>\r\n<p>The companies of the Group Cargoservices, with its own legal personality and social objects identified are: </p>\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n<p></p>\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n<p></p>\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n<p></p>\r\n<p></p>\r\n<p><p>\r\n<p></p>\r\n<p>© 2018 Cargo Services -  All rights reserved. Last Updated: June 2018</p>\r\n\r\n\r\n	 \r\n	 {% endif %}\r\n</div>', 'anomaly.extension.default_page_handler');
INSERT INTO `cargoweb_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(7, 7, '2018-08-01 11:51:54', 1, '2018-10-03 11:01:48', 1, NULL, 'legal_notice', 'theme::layouts.default', '      <div class=\"legal \">\r\n        <a href=\" {{ app.request.headers.get(\'referer\') }}\" class=\"legal__back\">\r\n          <span class=\"icon icon-arrow-left\"></span>\r\n          Back\r\n        </a>\r\n		   {% if app.locale  ==  \'es\' %}\r\n		  <h1>AVISO LEGAL</h1>\r\n\r\n<h2>CONDICIONES GENERALES DE USO DEL SITIO WEB www.cargoservicesgroup.com</h2>\r\n<p>Este apartado incluye información relativa a las Condiciones Generales de acceso y uso del sitio Web www.cargoservicesgroup.com que deben ser conocidas por el usuario, a los efectos previstos en la Ley 34/2002, de 11 de julio, de Servicios de la Sociedad de la Información y de Comercio Electrónico.</p>\r\n<p>El uso de este sitio web y su contenido está sujeto a este Aviso Legal. </p>\r\n\r\n<h3>1. Datos del titular del sitio web www.cargoservicesgroup.com</h3>\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n\r\n\r\n<h3>2. Datos de los titulares de los servicios</h3>\r\n<p>Sin perjuicio de que el titular del nombre del dominio sea la entidad Cargo Services, se informa que el dominio está cedido para su utilización a las siguientes sociedades del grupo Cargoservices con domicilio en España, que son:</p>\r\n \r\n<p>CARGO SERVICES S.A.U.</p>\r\n<p>NIF: A78756046</p>\r\n\r\n<p>CARGO SERVICES PAMPLONA</p>\r\n<p>NIF: A31255227</p>\r\n\r\n<p>CARGO SERVICES BARCELONA</p>\r\n<p>NIF: A81473449</p>\r\n\r\n<p>Por tanto, cuando navegue por este sitio web, es posible que acceda a páginas operadas por los citados prestadores de servicios. Al sitio web y las citadas páginas que de él dependen se denomina en adelante conjuntamente el \"Sitio Web\".</p>\r\n<p>En las secciones o procesos en los que sea necesario o conveniente se comunicará detalladamente al usuario qué sociedad del grupo Cargoservices que presta el servicio.</p>\r\n\r\n<h3>3. Condiciones de acceso a www.cargoservicesgroup.com</h3>\r\n<p>El acceso a este sitio web es responsabilidad exclusiva de los usuarios y supone que conocen y aceptan las advertencias legales, las condiciones y los términos de uso que contiene.</p>\r\n\r\n<p>Si el usuario no estuviera de acuerdo con el contenido de las presentes condiciones generales de navegación, deberá abandonar el sitio web y no podrá acceder a él ni disponer de los servicios que ofrece.</p>\r\n<p>El usuario garantiza que tiene más de 16 años. Garantiza, además, la veracidad y la autenticidad de la información comunicada a consecuencia de la contratación de los servicios que se exijan en el registro de usuario y se obliga, asimismo, a mantener esta información actualizada.</p>\r\n<p>Las conexiones con otros sitios web que pudiera haber, así como el uso que el usuario puede hacer de ellos, están sujetos a las presentes condiciones generales y a los condicionamientos específicos eventuales que requieran los mencionados sitios web. Cualquier utilización distinta de la autorizada está expresamente prohibida.</p>\r\n<p>La utilización del Sitio Web supone la aceptación plena por el Usuario de todas las Condiciones Generales de Uso del Sitio Web vigentes en cada momento en que el Usuario acceda al mismo, por lo que si éste no está de acuerdo con cualquiera de las condiciones aquí establecidas, no deberá usar este Sitio Web. Cargoservices se reserva el derecho de modificar en cualquier momento las presentes Condiciones Generales de Uso del Sitio Web así como cualesquiera otras condiciones generales o particulares, reglamentos de uso, instrucciones o avisos que resulten de aplicación. Asimismo, Cargoservices se reserva el derecho de suspender, interrumpir o dejar de operar el Sitio Web en cualquier momento.</p>\r\n<p>Los servicios ofrecidos en el Sitio Web se dirigen a residentes en España. Todas aquellas personas físicas o jurídicas residentes o domiciliadas en otros países de la Unión Europea o fuera de la Unión Europea deberán asegurarse que el acceso y uso del Sitio Web y/o de su contenido les está permitido de conformidad con su propia legislación. En cualquier caso, el acceso y uso del Sitio Web por parte de un Usuario que no cumpla con el requisito de residencia en España se entenderá realizado bajo su exclusiva responsabilidad, exonerando a Cargoservices de cualquier responsabilidad en la medida en que así lo permita la legislación aplicable.</p>\r\n<p>Cargoservices hace saber que el uso inadecuado de la marca registrada Cargoservices para la solicitud de servicios de transporte puede ocurrir ocasionalmente a través de empresas o individuos sin relación con Cargoservices. Cargoservices no aprueba estas prácticas ni está conforme con estas empresas o individuos responsables de esta conducta. Cargoservices no asume responsabilidad por pérdidas, gastos o inconvenientes sufridos derivados de este tipo de fraude por el uso no autorizado de la marca Cargoservices. Si usted no está seguro de estar en un sitio web oficial y genuino Cargoservices  o quiere confirmar la información correcta de contacto, le invitamos a contactar con su oficina local de Cargoservices para obtener verificación. Encontrará todos los datos de contacto de las oficinas oficiales Cargoservices y agentes en la página web www.cargoservicesgroup.com </p>\r\n\r\n<h3>4. Condiciones de utilización de www.cargoservicesgroup.com</h3>\r\n<p>El usuario se compromete a realizar un uso adecuado de los servicios y/o los contenidos del sitio web y a no utilizarlos para actividades ilícitas o constitutivas de un delito y/o que infrinjan lo establecido en el presente aviso legal, en la regulación sobre propiedad intelectual o industrial, o en cualquier otra norma del ordenamiento jurídico, la moral y las buenas costumbres generalmente aceptadas y el orden público El uso que se haga de la información que contiene este sitio web es responsabilidad exclusiva del usuario.</p>\r\n<p>El usuario garantiza la autenticidad y la veracidad de todos los datos que comunique a Cargoservices mediante los distintos formularios online, y se responsabiliza de la inexactitud o la falta de veracidad de la información aportada.</p>\r\n<p>Asimismo, a título meramente enunciativo y en ningún caso limitativo o excluyente, el usuario se compromete a no  introducir, ni copiar, ni transmitir, ni permitir, ni difundir:</p>\r\n<ul>\r\n<li>Contenidos de carácter racista, xenófobo, pornográfico, de apología del terrorismo o que atenten contra los derechos humanos.</li>\r\n<li>Contenidos que promuevan actuaciones delictivas, denigradoras, difamatorias, violentas o, en general, contrarias a la ley, la moral, las buenas costumbres y el orden público.</li>\r\n<li>Información o contenidos que atenten contra los derechos fundamentales y las libertades públicas reconocidas tanto constitucionalmente como en los tratados internacionales.</li>\r\n<li>Información a terceros no autorizados de los nombres de usuario y las contraseñas. Y si la contraseña llega a otro usuario, se compromete a informar de ello a Cargo Services inmediatamente.</li>\r\n<li>Información o contenidos que supongan la violación de los derechos de propiedad intelectual e industrial (incluidos, pero no de forma limitativa, patentes, marcas y copyright), de Cargoservices  o de terceros.</li>\r\n<li>Publicidad no autorizada o solicitada, spam, correos electrónicos en cadena, estructuras piramidales, etc.</li>\r\n<li>Programas de datos (virus y malware -software malicioso-) que sean susceptibles de provocar daños en los sistemas informáticos Cargoservices, sus proveedores o terceros usuarios de internet.</li>\r\n<li>Reproducir o copiar, distribuir, permitir el acceso del público a través de cualquier modalidad de comunicación pública, transformar o modificar los Contenidos, a menos que se cuente con la autorización del titular de los correspondientes derechos o ello resulte legalmente permitido.</li>\r\n</ul>\r\n<p>Aquellos Usuarios que deseen establecer un hipervínculo, enlace o link entre su sitio web y el Sitio Web (el \"Link\") deberán obtener la autorización previa de Cargoservices, presentando una solicitud a la siguiente dirección de correo electrónico infomad@cargoservicesgroup.com, quedando sujeto al cumplimiento de las siguientes obligaciones: </p>\r\n<ul>\r\n<li>El Link únicamente permitirá el acceso al Sitio Web, pero no podrá reproducirlo de ninguna forma.</li>\r\n<li> No se establecerán Links con otras páginas distintas de la página principal (\"homepage\") del Sitio Web.</li>\r\n<li>No se creará un frame ni un border environment sobre el Sitio Web.</li>\r\n<li>No se realizarán manifestaciones o indicaciones falsas, inexactas o incorrectas sobre el Sitio Web.</li>\r\n<li> No se declarará ni dará a entender que Cargoservices ha supervisado o asumido de cualquier forma los contenidos o servicios ofrecidos o anunciados en el sitio web en el que se establece el Link.</li>\r\n<li> El sitio web en el que se establezca el Link no contendrá ninguna marca, nombre comercial, rótulo de establecimiento, denominación, logotipo, eslogan u otros signos distintivos pertenecientes a Cargoservices, cualquiera de las entidades de su grupo  y/o a terceros, sin su autorización.</li>\r\n<li>El sitio web en el que se establezca el Link no contendrá informaciones o contenidos ilícitos, contrarios a la moral y las buenas costumbres generalmente aceptadas y al orden público, o contrarios a cualesquiera derechos de terceros. </li>\r\n</ul>\r\n<h3>5. Exclusión y Exoneración de garantías y responsabilidades</h3>\r\n<p>Cargoservices no puede controlar la utilización que realicen los usuarios del sitio web www.cargoservicesgroup.com y de sus contenidos, y por este motivo no es responsable de los daños y perjuicios de cualquier naturaleza que puedan derivarse de un uso ilícito, incorrecto, inadecuado o parcial y/o del incumplimiento que realice el usuario de estas condiciones de acceso y uso, así como de cualquier otra condición que se pueda encontrar en este sitio web con respecto a cualquiera de sus servicios, sin perjuicio, en cualquier caso, de las acciones legales que correspondan a Cargoservices y/o a terceros.</p>\r\n<p>Cargoservices no puede garantizar la disponibilidad permanente y la continuidad en cuanto al funcionamiento del sitio web, ni a la información, el contenido, el software, los materiales o los productos que este incluye.</p>\r\n<p>De esta manera, se excluye cualquier responsabilidad por los daños y perjuicios de cualquier tipo que se puedan derivar de la falta de disponibilidad o continuidad del funcionamiento del sitio web, de sus servicios y del uso que los usuarios puedan realizar de él.</p>\r\n<p>En cualquier caso, Cargoservices llevará a cabo todos los esfuerzos posibles para mantener la disponibilidad continuada de este sitio web.</p>\r\n<p>Asimismo, Cargoservices no se hace responsable de los posibles errores o deficiencias de seguridad que pudieran producirse por la utilización, por parte del usuario, de un navegador con una versión no actualizada o insegura, así como por la activación de los dispositivos de conservación de claves o códigos de identificación del usuario registrado en el navegador, o de los daños, los errores o las inexactitudes que pudieran derivarse de un mal uso o funcionamiento.</p>\r\n<p>El usuario acepta que el sitio web ha sido creado y desarrollado de buena fe por Cargoservices con información procedente de fuentes internas y externas y lo ofrece en su estado actual a los usuarios, a pesar de que pueda incluir imprecisiones o erratas. Por este motivo, el usuario exonera a Cargoservices, de cualquier responsabilidad en relación con la fiabilidad, la utilidad o la falsa expectativa que el sitio web le pudiera ocasionar durante la navegación.</p>\r\n<p>En el supuesto de que el usuario causara cualquier tipo de daños o perjuicios a terceros, este usuario es el único responsable de ello. Asimismo, el usuario se hará cargo de los gastos, los costes y, si procede, las indemnizaciones que se puedan derivar de procedimientos judiciales motivados por el incumplimiento de lo establecido en las presentes condiciones y en la normativa aplicable.</p>\r\n<p>El establecimiento del Link a páginas web externas no supone en ningún caso la existencia de relación alguna entre Cargoservices y el propietario y/u operador del sitio web en el que se establezca, ni el conocimiento, aceptación y/o aprobación por parte de Cargoservices de sus contenidos y/o servicios. Cargoservices en ningún caso responderá de las consecuencias que pudieran derivarse de la introducción de Links por parte de terceros, ni de la funcionalidad, los contenidos, información y/o servicios ofrecidos en los sitios web en los que se haya establecido el Link. </p>\r\n<p>Con el fin de disminuir el riesgo de introducción de virus en el Sitio Web, Cargoservices utiliza programas de detección de virus para controlar todos los Contenidos que introduce en el Sitio Web. No obstante, no garantiza la ausencia de virus ni de otros elementos en el Sitio Web introducidos por terceros que puedan producir alteraciones en los sistemas físicos o lógicos de los Usuarios o en los documentos electrónicos y ficheros almacenados en sus sistemas. En consecuencia,  no será en ningún caso responsable de cualesquiera daños y perjuicios de toda naturaleza que pudieran derivarse de la presencia de virus u otros elementos que puedan producir alteraciones en los sistemas físicos o lógicos, documentos electrónicos o ficheros de los Usuarios.</p>\r\n<p>Cargoservices adopta diversas medidas de protección para proteger el Sitio Web y los Contenidos contra ataques informáticos de terceros. No obstante, Cargoservices no garantiza que terceros no autorizados no puedan tener acceso al tipo de uso del Sitio Web que hace el Usuario o las condiciones, características y circunstancias en las cuales se realiza dicho uso. En consecuencia,  no será en ningún caso responsable de los daños y perjuicios que pudieran derivarse de dicho acceso no autorizado.</p>\r\n\r\n<h3>6. Área de Acceso restringido</h3>\r\n<p>El acceso a los servicios ofrecidos a través del sitio web www.cargoservicesgroup.com es gratuito y no requiere, con carácter general, la suscripción previa o el registro de usuarios, sin perjuicio de que para acceder a determinados servicios es posible que se exija cumplimentar previamente el registro de usuario correspondiente. El nombre de usuario y la contraseña son elementos identificadores y habilitadores para acceder a los servicios y tienen carácter personal e intransferible.</p>\r\n<p>Los Usuarios Registrados serán responsables en todo momento de la custodia de su clave de acceso, usuario y contraseña, asumiendo en consecuencia cualesquiera daños y perjuicios que pudieran derivarse de su uso indebido, así como de la cesión, revelación o extravío de la misma. A estos efectos, el acceso a áreas restringidas y/o el uso de los Contenidos realizado bajo la clave de un Usuario Registrado se reputarán realizadas por dicho Usuario Registrado, quien responderá en todo caso de dicho acceso y uso. Los Usuarios Registrados podrán modificar en cualquier momento su clave exclusiva mediante solicitud dirigida a Cargoservices. En caso de olvido de la clave o cualquier otra circunstancia que suponga un riesgo de acceso y/o utilización por parte de terceros no autorizados, los Usuarios Registrados deberán comunicarlo inmediatamente a IE a fin de que ésta proceda inmediatamente al bloqueo y sustitución de la misma.</p>\r\n \r\n<h3>7. Derechos de Propiedad intelectual e industrial</h3>\r\n<p>Todos los contenidos del sitio web (incluidos, sin carácter limitativo, bases de datos, imágenes, dibujos, gráficos, archivos de texto, mapas, marcos, báneres, software y sus distintos códigos fuente, audio y vídeo), así como el mismo sitio web como presentación visual, son propiedad de Cargoservices o de sus proveedores de contenidos, los cuales han sido, en este último caso, objeto de licencia o cesión por su parte, y están protegidos por las normas nacionales e internacionales de propiedad intelectual e industrial. La compilación (entendiéndose como tal, la recopilación, el diseño, la ordenación y el montaje) de todo el contenido del sitio web es propiedad exclusiva de Cargoservices.</p>\r\n<p>Todo el software utilizado en el uso y el desarrollo del sitio web es propiedad de Cargoservices o de sus proveedores de software, y está protegido por las leyes nacionales e internacionales de propiedad industrial e intelectual.</p>\r\n<p>Queda prohibida a cualquier usuario, sin la autorización previa por escrito de Cargoservices de los titulares de los derechos de propiedad intelectual o de otra propiedad de los contenidos, con carácter enunciativo pero no limitativo, la realización de los actos siguientes, tanto con respecto al sitio web como a sus contenidos:</p>\r\n<ul>\r\n<li>Cualquier forma de comunicación pública, por cualquier procedimiento, incluida la puesta a disposición del público, de manera que cualquier persona pueda acceder a este desde el lugar y en el momento que elija.</li>\r\n<li>Cualquier forma de distribución, incluidos, sin carácter limitativo, la venta, el alquiler y/o el préstamo.</li>\r\n<li>Cualquier forma de reproducción directa o indirecta, temporal o permanente, por cualquier medio y en cualquier forma de la totalidad o de parte del sitio web o de sus contenidos.</li>\r\n<li>Cualquier forma de transformación, total o parcial, incluida la creación de productos y/o servicios derivados.</li>\r\n<li>Cualquier otra forma de acceso que incluya las formas anteriores u otras distintas.</li>\r\n<li>Cualquier forma, directa o indirecta, de extracción y/o reutilización de la totalidad o de una parte sustancial del contenido de cualquier base de datos, y/o la extracción y/o la reutilización repetida o sistemática de sus partes no substanciales.</li>\r\n</ul>\r\n<p>No obstante lo anterior, el usuario puede visualizar libremente el sitio web y sus contenidos y descargarlos para uso personal y no comercial, sin que pueda hacerlo extensivo a terceras personas o entidades, ya sea a título gratuito u oneroso.</p>\r\n<p>En consecuencia, la puesta a disposición y el uso de las bases de datos, las imágenes, los dibujos, los gráficos, los archivos de texto, de audio y de vídeo y el software propiedad de Cargoservices o de sus proveedores, que figuran en el sitio web, y cualquier otro contenido, no implica, en ningún caso, la cesión de su titularidad o la concesión de un derecho de uso en favor del usuario.</p>\r\n<p>Las marcas, los letreros, los signos distintivos o los logotipos que aparecen en el sitio web son titularidad de Cargoservices o han sido objeto de licencia o de cesión por parte de su titular y están debidamente registrados o en proceso de registro. El uso no autorizado o indebido de estos elementos es una infracción de los derechos de propiedad industrial de Cargoservices  o de otros terceros propietarios.</p>\r\n\r\n<h3>8. Comunicaciones por escrito</h3>\r\n<p>Mediante el uso de este Sitio Web, el Usuario acepta que todo o parte de la información o comunicaciones que le enviemos sean electrónicas. Cuando proceda, nos pondremos en contacto con el Usuario por correo electrónico o le facilitaremos información colgando avisos en esta página web. A efectos contractuales, el Usuario consiente en usar este medio electrónico de comunicación y reconoce que todo contrato, notificación, información y demás comunicaciones que le enviemos de forma electrónica cumplen con los requisitos legales de ser por escrito. Esta condición no afectará a sus derechos reconocidos por ley.</p>\r\n\r\n<h3>9. Procedimiento en el caso de actuaciones ilícitas</h3>\r\n<p>Cargoservices vela por que los contenidos de este sitio web no tengan carácter pornográfico, xenófobo, discriminatorio, racista, difamatorio o fomenten la violencia. Asimismo, procura evitar cualquier circunstancia que pueda ser perjudicial para los usuarios.</p>\r\n<p>En el supuesto de que cualquier usuario o un tercero considere que hay hechos o circunstancias que revelen el carácter ilícito del uso de cualquier contenido y/o de la realización de cualquier actividad en las páginas web incluidas o accesibles a través de este sitio web y, en particular, de la violación de los derechos de propiedad industrial o intelectual, u otros derechos, deberá enviar una notificación a Cargoservices la cual deberá contener la información siguiente:</p>\r\n<ul>\r\n<li>Datos personales de la persona que reclama: nombre, dirección, teléfono y dirección electrónica.</li>\r\n<li>Especificación de la supuesta actividad ilícita y la indicación precisa y concreta de los contenidos protegidos, así como de su localización en las páginas web.</li>\r\n<li>En caso de que haya una violación de derechos: datos personales del titular de los derechos supuestamente infringidos o de la persona autorizada para representarla y su firma.</li>\r\n<li>Declaración expresa, clara y bajo la responsabilidad del reclamante de que la información proporcionada en la notificación es exacta y de carácter ilícito por lo que se refiere a la utilización de los contenidos o a la realización de las actividades descritas.</li>\r\n</ul>\r\n\r\n<h3>10. Uso de cookies</h3>\r\n<p>El Usuario reconoce y acepta que  Cargo Services podrá utilizar cookies cuando un Usuario navegue por el Sitio Web. El Usuario podrá configurar su navegador para que notifique y rechace la instalación de las cookies enviadas por Cargoservices, sin que ello perjudique la posibilidad del Usuario de acceder a los Contenidos. Para conocer mejor el alcance del uso de cookies en el Sitio Web le recomendamos que visite nuestra Política de Cookies, la cual podrá ser modificada por Cargoservices en cualquier momento.</p>\r\n\r\n<h3>11. Enlaces a terceros</h3>\r\n<p>En el sitio web se no han incluido enlaces a otras páginas web de entidades ajenas a Cargoservices  que no asume la responsabilidad derivada de sus contenidos, así como tampoco de los productos o servicios que ofrezcan y de los posibles virus y malware (software malicioso) que puedan contener.</p>\r\n\r\n<h3>12. Legislación y jurisdicción</h3>\r\n<p>La prestación del servicio del sitio Web y las presentes Condiciones Generales de este Aviso Legal y de cualquier otro texto con carácter contractual de este sitio web se regula por lo que dispone la legislación española.</p>\r\n<p>Cualquier controversia que se derive del acceso y el uso de este sitio web y sus contenidos y servicios, así como de la interpretación y el cumplimiento de las presentes condiciones generales y de cualquier otro texto con carácter contractual de este sitio web, las partes, con renuncia expresa a cualquier otro fuero que les pudiera corresponderles, acuerdan expresamente someterse a a los Juzgados y los Tribunales de la ciudad de Madrid (España).</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>© 2018 Cargo Services -  Todos los derechos reservados. Última actualización: Junio 2018</p>\r\n\r\n\r\n\r\n       {% else %}\r\n		  <h1>LEGAL NOTICE</h1>\r\n<h2>GENERAL CONDITIONS OF USE OF THE WEBSITE www.cargoservicesgroup.com</h2>\r\n<p>This section includes information related to the general conditions of access and use of the Website\r\n  www.cargoservicesgroup.com that must be known by the user, for the purposes provided for in the Law 34/2002, of 11\r\n  July, on Information Society Services and Electronic Commerce.</p>\r\n<p>The use of this website and its contents are subject to this Legal Notice.</p>\r\n<h3>1. Data from the owner of the website www.cargoservicesgroup.com</h3>\r\n\r\n\r\n<p>CIF: A78756046</p>\r\n\r\n<p>Registered office: CARGO SERVICES SAU</p>\r\n\r\n<p>Movile: +34 914341820</p>\r\n\r\n<h3>2. Data from the holders of the services</h3>\r\n<p>Without prejudice to the holder of the domain name is the entity Cargo Services, it is reported that the domain is\r\n  assigned for its use with the following group companies Cargoservices with residence in Spain, which are:</p>\r\n\r\n<p>CARGO SERVICES SAU</p>\r\n<p>NIF: A78756046</p>\r\n\r\n<p>CARGO SERVICES PAMPLONA SAU</p>\r\n<p>NIF: A31255227</p>\r\n\r\n<p>CARGO SERVICES BARCELONA SAU</p>\r\n<p>NIF: A81473449</p>\r\n\r\n<p>Therefore, when browsing this website, it is possible to access websites operated by these service providers. The\r\n  website and the aforementioned pages that depend upon it is called hereinafter collectively the &quot;Web Site&quot;.</p>\r\n\r\n<h3>3. Conditions of access to www.cargoservicesgroup.com</h3>\r\n\r\n<p>The access to this website is the sole responsibility of the users and supposed to know and accept the legal\r\n  warnings, terms, and conditions of use that contains.</p>\r\n\r\n<p>If the user does not agree with the content of the present general conditions of navigation, they must leave the\r\n  website and you will not be able to access it or dispose of the services it offers.</p>\r\n\r\n<p>The user guarantees that he is over 16 years old. It also guarantees the veracity and authenticity of the\r\n  information communicated as a result of the contracting of the services required in the user\'s registration and is\r\n  also obliged to keep this information updated. The connections with other websites that may have, as well as the use\r\n  that the user can make them, are subject to the present general conditions and the conditioning possible specific\r\n  requiring the aforementioned websites. Any use other than that authorized is expressly prohibited.</p>\r\n\r\n<p>The use of the Web Site implies full acceptance by the user of all the General Conditions of Use of the Website in\r\n  force at any time at which the user accedes to the same so that if it does not agree with any of the conditions\r\n  established herein, you should not use this Web Site. Cargoservices reserves the right to modify at any time the\r\n  present General Conditions of Use of the Website as well as any other general or particular conditions, regulations\r\n  of use, instructions or warnings resulting from implementation. Also, Cargoservices reserves the right to suspend,\r\n  interrupt or cease to operate the Web Site at any time.</p>\r\n\r\n<p>The services offered on the Web Site go to residents in Spain. All those natural or legal persons resident or\r\n  domiciled in other countries of the European Union or outside the European Union must ensure that the access and use\r\n  of the Web Site and/or its content is permitted in accordance with its own legislation. In any case, access and use\r\n  of the Website by a user who does not comply with the requirement of residence in Spain are understood to be carried\r\n  out under his sole responsibility, exempting Cargoservices of any liability in so far as permitted by applicable law.</p>\r\n<p>Cargoservices ago know that the improper use of the trademark Cargoservices for the request of transport services\r\n  can occasionally occur through companies or individuals without a relationship with Cargoservices. Cargoservices does\r\n  not approve these practices and is not in accordance with these companies or individuals responsible for this\r\n  conduct. Cargoservices assumes no responsibility for any loss, expense or inconvenience suffered derived from this\r\n  type of fraud by the unauthorized use of the mark Cargoservices. If you are not sure of being in an official website\r\n  and genuine Cargoservices or want to confirm the correct information of a contact, we invite you to contact your\r\n  local office of Cargoservices for verification. You will find all the contact details of the official offices\r\n  Cargoservices and agents in the web page www.cargoservicesgroup.com</p>\r\n\r\n<h3>4. Conditions of use www.cargoservicesgroup.com</h3>\r\n<p>The user undertakes to make proper use of the services and/or the contents of the website and not to use them for\r\n  illegal activities or constituting an offense and/or which infringe the provisions of this legal notice, in the\r\n  regulation on intellectual or industrial property, or in any other rule of law, morality and generally accepted good\r\n  practices and public order The use which is made of the information contained in this website is the sole\r\n  responsibility of the user.</p>\r\n\r\n<p>The user guarantees the authenticity and the veracity of all data communicated to Cargoservices through the various\r\n  online forms and is responsible for any inaccuracy or lack of veracity of the information provided.</p>\r\n\r\n<p>Also, to title merely declarative and in no case be limited or exclusive, the user undertakes not to enter, or copy,\r\n  or transmit, or permit, or disseminate:</p>\r\n\r\n<ul>\r\n  <li> Contents of a racist, xenophobic, pornographic, apology of terrorism or that violate human rights.</li>\r\n  <li> Content that promotes criminal, denigrates, defamatory, violent or, in general, contrary to the law, morality,\r\n    good practices and public order.</li>\r\n  <li> Information or contents that violate the fundamental rights and public freedoms recognized both in the\r\n    Constitution and in international treaties.</li>\r\n  <li> Information to unauthorized third parties of the usernames and passwords. And if the password arrives to another\r\n    user, undertakes to inform CargoServices immediately.</li>\r\n  <li> Information or content that involves the violation of the rights of intellectual and industrial property\r\n    (including, but not exclusively, patents, trademarks, and copyright), Cargoservices or of third parties.</li>\r\n  <li> Advertising does not authorize or requested, spam, chain emails, pyramidal structures, etc.</li>\r\n  <li> Data programs (virus and malware - malicious software-) which are liable to cause harm to computer systems\r\n    Cargoservices, or its suppliers or third party users of the internet.</li>\r\n  <li> Play or copy, distribute, allow the public access through any form of public communication, transform or modify\r\n    the contents, unless you have obtained the permission of the copyright holder or it is legally permitted.</li>\r\n  <li> Those users who wish to establish a hyperlink, link or link between your website and the Website (the\r\n    &quot;Link&quot;) must obtain the prior authorization of Cargoservices, by submitting a request to the following\r\n    email address infomad@cargoservicesgroup.com, being subject to compliance with the following duties:</li>\r\n  <li> The Link only allow access to the Website, but you will not be able to play it in any way.</li>\r\n  <li> There shall be no links with other pages other than the home page (&quot;homepage&quot;) Web site.</li>\r\n  <li> There will be a frame or a border environment on the website. There will be no manifestations or false\r\n    indications, inaccurate or incorrect on the Web site.</li>\r\n  <li> Is not declared or will to understand that Cargoservices has overseen or assumed in any way the contents or\r\n    services offered or advertised on the website in which establishes the link.</li>\r\n  <li> The website on which you set the link does not contain any trademark, trade name, label design, logo, slogan or\r\n    other distinctive signs belonging to Cargoservices, any of the entities of their group and/or to third parties\r\n    without your permission.</li>\r\n  <li> The website on which you set the link will not contain information or illegal content, contrary to morality and\r\n    generally accepted good practices and public order, or contrary to any rights of third parties.</li>\r\n</ul>\r\n\r\n<h3>5. Exclusion and Exclusion of guarantees and responsibilities</h3>\r\n<p>Cargoservices cannot control the use that users make of the website www.cargoservicesgroup.com and their contents,\r\n  and for this reason is not responsible for damages of any nature that may arise from an illicit use, incorrect,\r\n  inadequate or partial and/or the failure to perform the user of these terms and conditions of access and use, as well\r\n  as any other condition that can be found in this website with regard to any of its services, without prejudice, in\r\n  any case, the legal actions that correspond to Cargoservices and/or to third parties.</p>\r\n\r\n<p>Cargoservices cannot guarantee the permanent availability and continuity in regard to the functioning of the\r\n  website, nor to the information, content, software, materials or products that this includes.</p>\r\n<p>In this way, excludes any liability for damages of any kind that may derive from the lack of availability or\r\n  continuity of the functioning of the website, its services and the use that users may make of him.</p>\r\n\r\n<p>In any case, Cargoservices will undertake all possible efforts to maintain continuous availability of this website.</p>\r\n\r\n<p>Also, Cargoservices is not responsible for the possible errors or security deficiencies which may occur by the use\r\n  by the user of a browser with a version not updated or unsafe, as well as the activation of the devices of\r\n  conservation of keys or identification codes of the registered user in the browser, or the damage, the errors or\r\n  inaccuracies that may arise from a bad use or operation.</p>\r\n\r\n<p>The user accepts that the website has been created and developed in good faith by Cargoservices with information\r\n  from internal and external sources and offers it in its current state to the users, despite that could include\r\n  inaccuracies or errors. For this reason, the user exonerates Cargoservices, of any liability with regard to the\r\n  reliability, usefulness or false expectations that the website would cause during navigation.</p>\r\n\r\n<p>In the event that the user might cause any type of damage or injury to third parties, this user is the only\r\n  responsible for this. Furthermore, the user shall be responsible for all the costs and, if applicable, the allowances\r\n  that may derive from judicial proceedings motivated by a failure to comply with the established in the present\r\n  conditions and in the applicable regulations.</p>\r\n\r\n<p>The establishment of the Link to external web pages does not imply in any case the existence of any relation between\r\n  Cargoservices and the owner and/or operator of the website on which it is established, nor the knowledge, acceptance\r\n  and/or approval by Cargoservices of its contents and/or services. Cargoservices, in any case, be liable for any\r\n  consequences resulting from the introduction of links by third parties, or of the functionality, the contents,\r\n  information and/or services offered on the websites in which the link has been established.</p>\r\n\r\n<p>In order to reduce the risk of virus infection on the website, Cargoservices uses virus detection programs to\r\n  control all content that you enter in the Web site. However, does not guarantee the absence of viruses or other\r\n  elements in the Web Site introduced by third parties that may cause alterations in the physical or logic systems of\r\n  the users or the electronic documents and files stored on their systems. Accordingly, shall in no event be liable for\r\n  any damages of any nature that may arise from the presence of viruses or other elements that may cause alterations in\r\n  the physical or logic systems, electronic documents or files of the users. </p>\r\n\r\n<p>Cargoservices adopts various protective measures to protect the site and its content against computer attacks by\r\n  third parties. However, Cargoservices does not guarantee that unauthorized third parties may have access to the type\r\n  of use of the Website that makes the user or the conditions, characteristics, and circumstances in which such use.</p>\r\n\r\n<h3>6. Restricted-access area</h3>\r\n<p>The access to the services offered through the website www.cargoservicesgroup.com is free and does not require, in\r\n  general, the previous subscription or the registration of users, without prejudice that to access certain services it\r\n  is possible that it is required Pre-fill the corresponding user registration. The username and password are element\r\n  identifiers and enablers to access the services and are personal and not transferable.</p>\r\n\r\n<p>To these effects, the access to restricted areas and/or the use of the content carried out under the key of a\r\n  registered user is deemed to have carried out by the registered user, who will respond in any case of such access and\r\n  use. Registered users may modify their password at any time by means of a request addressed to Cargoservices. In case\r\n  of forgetting of the key or any other circumstance that poses a risk of access and/or use by an unauthorized third\r\n  party, the registered Users shall immediately inform IE so that it proceeds immediately to the blockade and\r\n  replacement of the same.</p>\r\n\r\n<h3>7. Intellectual and industrial property rights</h3>\r\n<p>All contents of the website (including, without limitation, databases, images, drawings, graphics, text files, maps,\r\n  frames, báneres, software and its various source codes, audio and video), as well as the same website as visual\r\n  presentation, are the property of Cargoservices or its content suppliers, which have been, in the latter case, be the\r\n  subject of license or concession on their part, and are protected by national and international standards of\r\n  intellectual and industrial property. The compilation (as such, collection, design, management and assembly) of all\r\n  the contents of the website is the exclusive property of Cargoservices.</p>\r\n<p>All software used on the use and development of the website is the property of Cargoservices or its software\r\n  suppliers and is protected by national and international laws on intellectual and industrial property.</p>\r\n<p>It is prohibited to any user, without the prior written authorization of Cargoservices of holders of intellectual\r\n  property rights or other property of the contents, without limitation, the realization of the following acts, both\r\n  with respect to the website and its contents:</p>\r\n<ul>\r\n  <li> Any form of public communication, by any procedure, including the making available to the public, so that anyone\r\n    can access this from a place and at a time that you choose.</li>\r\n  <li> Any form of distribution, including, without limitation, selling, renting and/or loan.</li>\r\n  <li> Any form of direct or indirect reproduction, temporary or permanent, by any means and in any form of the whole\r\n    or part of the website or its contents.</li>\r\n  <li> Any form of transformation, total or partial, including the creation of products and/or services derived.</li>\r\n  <li> Any other form of access that includes previous forms or other differences.</li>\r\n  <li> Any form, direct or indirect, of extraction and/or re-utilization of the whole or of a substantial part of the\r\n    contents of any database, and/or the removal and/or reused repeatedly or consistently their parties not\r\n    substantial.</li>\r\n</ul>\r\n<p>Notwithstanding the foregoing, the user can view freely the website and its content and download for personal and\r\n  non-commercial use, without being able to be extended to third persons or entities, either free of charge or onerous.</p>\r\n<p>Accordingly, the provision and the use of databases, images, drawings, graphics, text files, audio and video and\r\n  software owned by Cargoservices or its suppliers, contained in the website and any other content, does not imply, in\r\n  any case, the transfer of title or the granting of a right of use in favor of the user.</p>\r\n<p>The marks, signs, the distinctive signs or logos which appear on the website are owned by Cargoservices or have been\r\n  the subject of license or transfer by its owner and are duly registered or in the process of registration. The\r\n  unauthorized use or misuse of these elements is an infringement of industrial property rights of Cargoservices or\r\n  other third owners.</p>\r\n\r\n<h3>8. Written communications</h3>\r\n<p>By using this Web Site, the user accepts that the whole or part of the information or communications we send are\r\n  electronic. When appropriate, we will get in touch with the user by e-mail or provide you with information hanging\r\n  notices on this web page. For contractual purposes, the user consents to the use this electronic means of\r\n  communication and recognizes that every contract, notification, information and other communications that we send you\r\n  electronically comply with the legal requirements to be in writing. This condition will not affect their rights\r\n  recognized by law.</p>\r\n\r\n<h3>9. Procedure in the event of illegal actions</h3>\r\n<p>Cargoservices ensures that the contents of this web site are not of pornographic, xenophobic, discriminatory,\r\n  racist, defamatory or encourage violence. It also seeks to avoid any circumstance which may be harmful to users.</p>\r\n\r\n<p>In the event that any user or third party considers that there are facts or circumstances that reveal the illegal\r\n  nature of the use of any content and/or the realization of any activity on the websites included on or accessible\r\n  through this website and, in particular, The violation of the rights of industrial or intellectual property or other\r\n  rights, should send a notification to Cargoservices which shall contain the following information:</p>\r\n<p>Personal data of the person claiming: name, address, telephone number and email address.</p>\r\n<p>Specification of the alleged unlawful activity and the precise indication and concrete of the protected content, as\r\n  well as its location in the web pages.</p>\r\n<p>In the event of a violation of rights: personal data of the holder of the rights allegedly violated or the person\r\n  authorized to represent it and its signature.</p>\r\n<p>The statement expresses, clear and under the responsibility of the claimant that the information provided in the\r\n  notification is accurate and illegal nature with regard to the use of the content or to the realization of the\r\n  described activities.</p>\r\n\r\n<h3>10. Use of cookies</h3>\r\n<p>The User recognizes and accepts that CargoServices will be able to use cookies when a User sails along the Web site.\r\n  The user can configure the browser to notify and reject the installation of cookies sent by Cargoservices, without\r\n  affecting the ability of the user to access content. To better understand the scope of the use of cookies on the Web\r\n  Site We recommend that you visit our Cookie Policy, which may be amended by Cargoservices at any time.</p>\r\n\r\n<h3>11. Links to third parties</h3>\r\n<p>In the website have not been included links to other web pages of entities outside Cargoservices assumes no\r\n  liability for their content, as well as nor the products or services offered and the possible viruses and malware\r\n  (malicious software) that may contain.</p>\r\n\r\n<h3>12. Law and Jurisdiction</h3>\r\n<p>The provision of the service of the Website and the present General Terms and Conditions of this Legal Notice and\r\n  any other text with the contractual nature of this website is governed by the available to the Spanish legislation.</p>\r\n\r\n<p>Any dispute arising out of access to and use of this website and its contents and services, as well as the\r\n  interpretation of and compliance with the present general conditions and of any other text with the contractual\r\n  nature of this website, the parties, with express waiver of any other jurisdiction that may correspond, agree to\r\n  submit to the Courts and Tribunals of the city of Madrid (Spain).</p>\r\n\r\n\r\n  <p></p><p></p><p></p><p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>© 2018 Cargo Services - All rights reserved. Last updated: June 2018</p>\r\n\r\n		  {% endif  %}  \r\n		  \r\n      </div>', 'anomaly.extension.default_page_handler');
INSERT INTO `cargoweb_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(8, 8, '2018-09-20 11:45:13', 1, '2018-10-03 10:57:45', 1, NULL, 'politica_de_cookies', 'theme::layouts.default', ' <div class=\"legal \">\r\n        <a href=\" {{ app.request.headers.get(\'referer\') }}\" class=\"legal__back\">\r\n          <span class=\"icon icon-arrow-left\"></span>\r\n          Back\r\n        </a>\r\n       \r\n      {% if app.locale  ==  \'es\' %}\r\n<h1>POLÍTICA DE COOKIES</h1>\r\n\r\n<h2>¿Para que sirven las cookies?</h2>\r\n<p>Las cookies hacen que la interacción entre el usuario y el sitio web sea más rápida y más fácil. La mayoría de sitios web utilizan las cookies para mejorar la experiencia del usuario. Esto se hace al permitir que el sitio web le \"recuerde\", bien sea por la duración de su visita (con una \' cookie de sesión\') o por visitas repetidas (con un \'cookie persistente\'). Las cookies hacen trabajos diferentes: recordando sus preferencias, lo que le permite navegar entre páginas de manera más eficiente, en general, mejorando su experiencia del sitio web, y dejando que el sitio web descubra qué tipo de información está buscando. Si un sitio web no utiliza cookies, pensará que usted es un visitante nuevo cada vez que se cambia a una nueva página en el sitio.</p>\r\n<p>Cargoservices ocasionalmente utiliza cookies para que podamos dirigir los mensajes publicitarios o de marketing en función de su ubicación y/o hábitos de navegación. Nuestro objetivo es dar un mejor acceso a la información relevante y ahorrarle tiempo con la información que es relevante para usted. Las cookies pueden ser establecidas por nuestra página web (\"cookies propias\") o pueden ser establecidos por otros sitios web que dirigen el contenido de la página que está viendo (\"cookies de terceros\"). </p>\r\n\r\n<h2>¿Que es una cookie del navegador?</h2>\r\n<p>Una cookie es un archivo de texto simple que se almacena en su ordenador o dispositivo móvil mediante el servidor de un sitio web. Sólo ese servidor será capaz de recuperar o leer el contenido de la cookie. Cada cookie es única a su navegador web e incluirá una información anónima, como un identificador único y algunas cifras y números. Permite a nuestro sitio web recordar sus preferencias y las páginas que ha visitado.</p>\r\n \r\n<h2>¿Qué  tipos de cookies existen?</h2>\r\n<h3 class=\"small\">Las cookies del navegador Web</h3>\r\n<p>Si usted no desea recibir cookies, puede modificar su navegador para que le notifique cuando se envían cookies o puede usted rechazar todas las cookies. También puede eliminar las cookies que ya se han establecido</p>\r\n<h3 class=\"small\">Las cookies propias</h3>\r\n<p>Las cookies de propias son fijadas por el sitio web, usted está de visita y sólo pueden ser leídas por ese sitio.</p>\r\n<h3 class=\"small\">Las cookies de terceros</h3>\r\n<p>Las cookies de terceros son establecidas por una organización diferente a la titular del sitio web que está visitando. Mediante el uso de botones de acción en un sitio web, una cookie puede ser ajustada por el servicio que usted ha elegido para compartir el contenido. Cargoservices no controla la difusión de estas cookies. Usted debe verificar el sitio web correspondiente terceros para obtener más información acerca de estos.</p>\r\n<p> <strong>Cookies de sesión:</strong> son un tipo de cookies diseñadas para recabar y almacenar datos mientras el usuario accede a una página web.</p>\r\n<p> <strong>Cookies persistentes:</strong> son un tipo de cookies en el que los datos siguen almacenados en el terminal y pueden ser accedidos y tratados durante un periodo definido por el responsable de la cookie, y que puede ir de minutos a años.</p>\r\n<p> <strong>Cookies técnicas:</strong> son aquéllas que permiten al usuario la navegación en una página web y la utilización de las diferentes opciones o servicios.</p>\r\n<p> <strong>Cookies de personalización:</strong> son aquéllas que permiten al usuario acceder al servicio con algunas características de carácter general predefinidas en función de una serie de criterios en el terminal del usuario.</p>\r\n<p> <strong>Cookies de análisis:</strong> son aquéllas que permiten al responsable de las mismas, el seguimiento y análisis del comportamiento de los usuarios de los sitios web a los que están vinculadas.</p>\r\n<p> <strong>Cookies publicitarias:</strong> son aquéllas que permiten la gestión de los espacios publicitarios que el editor haya incluido en una página web en base a criterios como el contenido editado o la frecuencia en la que se muestran los anuncios.</p>\r\n<p> <strong>Cookies de publicidad comportamental:</strong> son aquéllas que permiten la gestión de los espacios publicitarios que el editor haya incluido en una página web y que almacenan información del comportamiento del usuarios y que permiten desarrollar un perfil específico para mostrar publicidad en función del mismo.</p>\r\n\r\n<h2>¿Se pueden bloquear o suprimir las cookies?</h2>\r\n<p>Es posible bloquear algunas o todas las cookies, de conformidad con su preferencia y decisión. Tenga en cuenta que es posible que pierda algunas funciones de nuestro sitio web, si usted bloquea o borra cookies. </p>\r\n<p>Si usted desea restringir o bloquear las cookies del navegador web, que se establecen en el dispositivo, incluso eliminar las cookies que ya se han establecido,  entonces usted puede hacerlo a través de la configuración del navegador, la función de ayuda en su navegador debe decirle cómo. Si lo prefiere, puede visitar www.aboutcookies.org (en inglés)  que contiene amplia información con instrucciones.</p>\r\n<p>No obstante y a modo de resumen indicamos las instrucciones esenciales para acceder a los menús correspondientes a los procedimientos de configuración de los navegadores más empleados:</p>\r\n<h3 class=\"small\">INTERNET EXPLORER</h3>\r\n<p>En el menú \"Herramientas > Opciones de Internet\", en la pestaña \"Privacidad\", seleccione la configuración deseada y pulse el botón de configuración avanzada. Active la casilla \"Sobrescribir la administración automática de cookies\". Marque las casillas \"Activar\" o \"Bloquear\".</p>\r\n<h3 class=\"small\">FIREFOX</h3>\r\n<p>En el menú \"Herramientas > Opciones\", en la pestaña \"Privacidad\". Active o desactive la casilla \"Aceptar cookies de las webs\" o \"decir a los sitios web que no quiero ser rastreado\", dependiendo de la versión de su navegador. Se puede eliminar las cookies instaladas pulsando sobre la opción \"eliminar cookies de forma individual\".</p>\r\n<h3 class=\"small\">CHROME</h3>\r\n<p>En el menú \"Herramientas > Configuración\", en la la pestaña \"Privacidad > Configuración de contenido\". Tras seleccionar la opción \"mostrar opciones avanzadas\", seleccione su configuración de cookies favorita. Si no desea permitir su instalación, puede seleccionar la opción \"bloquear los datos de sitios y las cookies de terceros\".</p>\r\n<h3 class=\"small\">SAFARI</h3>\r\n<p>En el menú \"Herramientas > Preferencias\", en la pestaña \"Seguridad\". En el menú \"Aceptar cookies\" seleccione la casilla \"Siempre\" o \"Nunca\". Si dispone de un iPhone, deberá acceder a \"Configuración > Safari\" y allí seleccionar si acepta o no las cookies.</p>\r\n<p>No podemos garantizar que estos procedimientos de configuración se ajusten siempre a la última versión disponible ya que están sometidos a actualización o modificación por parte de los desarrolladores de los navegadores.</p>\r\n\r\n<h2>¿Por qué le informamos acerca de las cookies?</h2>\r\n<p>Todos los sitios web están obligados por ley (esencialmente por la Ley de Servicios de la Sociedad de la Información y el Comercio Electrónico) a informar a los usuarios acerca de que las cookies del navegador se quedan o están accesibles en el equipo del usuario y por tanto sobre su uso e instalación y a recabar y obtener su consentimiento libre, inequívoco, específico e informado por el cual Vd. acepta el uso de cookies.</p>\r\n<p>Este es el objetivo del presente documento. Usted ha dado esta autorización mediante el uso de nuestro sitio Web.</p>\r\n\r\n<h2>¿Puedo eliminar las cookies del navegador?</h2>\r\n<p>Si usted ha aceptado las cookies del navegador de las páginas web de CargoServices es siempre posible eliminarlas de nuevo en en la configuración de su navegador de Internet de conformidad con lo señalado en el apartado  Se pueden bloquear o suprimir cookies? del presentes documento.</p>\r\n<h2>¿Más Información?</h2>\r\n<p>Para obtener información sobre cómo procesamos sus datos personales, por favor consulte nuestra política de privacidad.</p>\r\n<p>No dude en ponerse en contacto con Cargo Services en infomad@cargoservicesgroup.com si usted tiene alguna duda acerca de las cookies del navegador en cargoservicesgroup.com.</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>© 2018 Cargo Services -  Todos los derechos reservados. Última actualización: Junio 2018</p>\r\n\r\n\r\n\r\n	 {% else %}\r\n	 <h1>Cookies Privacy </h1>\r\n\r\n<h2>What are cookies?</h2>\r\n<p>Cookies make the interaction between the user and the website faster and easier. Most websites use cookies to improve the user experience. This is done by allowing the website to \"remember\" you, this is done either by the duration of your visit (with a \'session cookie\') or by repeated visits (with a \'persistent cookie\'). Cookies do different jobs: remembering your preferences, allowing you to navigate between pages more efficiently, in general, improving your website experience, and letting the website discover what kind of information you are looking for. If a website does not use cookies, it will think that you are a new visitor each time you switch to a new page on the site.</p>\r\n\r\n<p>Cargo Services occasionally uses cookies so that we can direct advertising or marketing messages based on your location and/or browsing habits. Our goal is to give you better access to relevant information and save you time with the information that is relevant to you. Cookies can be established by our website (\"first-party cookies\") or can be established by other websites that direct the content of the page you are viewing (\"third-party cookies\").</p>\r\n\r\n\r\n<h2>What is a browser cookie?</h2>\r\n<p>A cookie is a simple text file that is stored on your computer or mobile device through the server of a website. Only that server will be able to recover or read the content of the cookie. Each cookie is unique to your web browser and will include anonymous information, such as a unique identifier and some figures and numbers. This will allow our website to remember your preferences and the pages you have visited.</p>\r\n\r\n<h2>What types of cookies exist?</h2>\r\n<h3 class=\"small\">Web browser cookies</h3>\r\n<p>If you do not want to receive cookies, you can modify your browser to notify you when cookies are being sent or you can reject all cookies. You can also delete cookies that have already been established.</p>\r\n\r\n<h3 class=\"small\">First-party cookies</h3>\r\n<p>These cookies are set by the website you are visiting and can only be read by that site.</p>\r\n\r\n<h3 class=\"small\">Third-party Cookies</h3>\r\n<p>Third-party cookies are established by an organization different than the current website that you are visiting. By using action buttons on a website, a cookie can be adjusted by the service you have chosen to share the content. Cargo Services does not control the dissemination of these cookies. You should check the relevant third-party website to get more information about these.</p>\r\n\r\n<p> <strong>Session cookies:</strong> A cookie designed to gather and store data while the user accesses a web page.</p>\r\n\r\n<p> <strong>Persistent cookies:</strong> A cookie in which the data is still stored in the terminal and can be accessed and treated during a period defined by the website responsible for the cookie, this can last from minutes to years.</p>\r\n\r\n<p> <strong>Technical cookies:</strong> A cookie that allows the user to navigate on a web page and use different options or services. </p>\r\n\r\n<p> <strong>Customization Cookies:</strong> A cookie that allows the user to access the service with some predefined general characteristics according to a series of criteria in the user\'s terminal.</p>\r\n\r\n<p> <strong>Analysis Cookies:</strong> A cookie that allows the responsible party, the monitoring, and analysis of the behavior of the users of the websites to which they are linked.</p>\r\n\r\n<p> <strong>Advertising Cookies:</strong> A cookie that allows the management of advertising spaces that the editor has included in a web page based on criteria such as the edited content or the frequency at which ads are displayed.</p>\r\n\r\n<p> <strong>Behavioral Advertising Cookies:</strong> A cookie that allows the management of the advertising spaces that the publisher has included in a web page, store information of the user\'s behavior, and that allow the developing of a specific profile for show advertising.</p>\r\n\r\n<h2>Can you block or delete cookies?</h2>\r\n<p>It is possible to block some or all cookies, in accordance with your preference. Note that you may lose some features from our website if you block or delete cookies. If you want to restrict or block the web browser\'s cookies, which are set on the device or delete the cookies that have already been established, you can do so through the browser settings, the help function in your browser should tell you how. If you prefer, you can visit www.aboutcookies.org (in English) which contains extensive information with instructions.</p>\r\n\r\n<p>In summary, we indicate the essential instructions to access the menus corresponding to the configuration procedures of the most used web browsers.</p>\r\n\r\n<h3 class=\"small\">INTERNET EXPLORER</h3>\r\n<p>In the menu \"Hardware> internet options\", in the tab \"Privacy\", select \"Advanced\". Select the option \"Sobrescribir the automatic administration of cookies\". Select\"Activate\" or \"Block\".</p>\r\n\r\n<h3 class=\"small\">FIREFOX</h3>\r\n<p>In the \"Options\" menu, under the \"Privacy & Security\" tab, select or clear the \"Accept cookies and site data from websites\" checkbox or \"Block cookies and site data\", depending on the version of your browser. You can delete the cookies installed by clicking on the option \"Delete cookies individually\".</p>\r\n\r\n<h3 class=\"small\">CHROME</h3>\r\n<p>In the menu \"Hardware> Configuration\", in the tab\"Privacy> Content Configuration\". After selecting the option \"Show Advanced Options\", select the option to disable cookies. If he does not want to allow its installation, it can select the option \"to block the information of places and the cookies of third\". If you do not want to allow its installation, you can select the option \"block data from third-party sites and cookies\".</p>\r\n\r\n\r\n<h3 class=\"small\">SAFARI</h3>\r\n<p>In the menu \"Tools> Preferences\", in the tab \"Safety\". In the menu \"Accept Cookies\" does not select the option \"Always\" or \"Never\". If you have an iPhone, you will have to gain access to \"Configuration> Safari\" and there select to accept cookies or not accept cookies. </p>\r\n\r\n<p>We cannot guarantee that these configuration procedures will always be applicable to the latest version of your browser since they are subject to updates or modifications on the part of the developers of the browser.</p>\r\n\r\n<h2>Why do we inform you about cookies?</h2>\r\n<p>All websites are required by law (essentially by the Law of Information Society Services and Electronic Commerce) to inform the users about the browser cookies are or are accessible in the computer of the user and therefore on its use and installation and to seek and obtain their free consent, unequivocal, specific and informed by which you accept the use of cookies. This is the objective of this document. You have given this authorization through the use of our website.</p>\r\n\r\n<h2>Can I delete cookies in the browser?</h2>\r\n<p>If you have accepted the browser cookies on the Cargo Services web pages it is</p>\r\n<p>it is always possible to delete them again in the configuration of your Internet browser. In accordance with what is stated in the section.  Can cookies be blocked or deleted? This is explained in the present document.</p>\r\n\r\n<h2>More information?</h2>\r\n<p>For information on how we process your personal data, please refer to our Privacy policy. </p>\r\n<p>Do not hesitate to contact Cargo Services at Infomad@cargoservicesgroup.com if you have any questions about browser cookies please visit cargoservicesgroup.com.</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n\r\n\r\n<p>© 2018 Cargo Services -  All rights reserved. Last updated: June 2018</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	 {% endif %}\r\n</div>', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_pages_types_translations`
--

CREATE TABLE `cargoweb_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(26) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_pages_types_translations`
--

INSERT INTO `cargoweb_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:39', NULL, '2018-06-29 15:06:39', NULL, 'en', 'Default', 'A simple page type.'),
(2, 2, '2018-07-23 07:26:20', NULL, '2018-07-23 07:42:13', 1, 'en', 'home', NULL),
(3, 2, '2018-07-23 07:26:20', NULL, '2018-07-23 07:26:20', 1, 'es', 'inicio', NULL),
(4, 3, '2018-07-23 11:08:09', NULL, '2018-07-23 11:08:09', 1, 'en', NULL, NULL),
(5, 3, '2018-07-23 11:08:09', NULL, '2018-07-23 11:08:09', 1, 'es', 'servicios', NULL),
(6, 4, '2018-07-23 11:25:15', NULL, '2018-07-23 11:25:15', 1, 'en', NULL, NULL),
(7, 4, '2018-07-23 11:25:15', NULL, '2018-07-23 11:25:15', 1, 'es', 'empresa', NULL),
(8, 5, '2018-08-01 08:32:04', NULL, '2018-08-01 08:32:04', 1, 'en', NULL, NULL),
(9, 5, '2018-08-01 08:32:04', NULL, '2018-08-01 08:32:04', 1, 'es', 'Contact', 'Contact page'),
(10, 6, '2018-08-01 11:27:03', NULL, '2018-08-01 11:27:03', 1, 'en', NULL, NULL),
(11, 6, '2018-08-01 11:27:03', NULL, '2018-08-01 11:27:03', 1, 'es', 'privacy-policy', 'privacy-policy'),
(12, 7, '2018-08-01 11:51:56', NULL, '2018-08-01 11:51:56', 1, 'en', NULL, NULL),
(13, 7, '2018-08-01 11:51:56', NULL, '2018-08-01 11:51:56', 1, 'es', 'Legal notice', NULL),
(14, 8, '2018-09-20 11:45:14', NULL, '2018-09-20 11:45:14', 1, 'en', NULL, NULL),
(15, 8, '2018-09-20 11:45:14', NULL, '2018-09-20 11:45:14', 1, 'es', 'Política de cookies', 'Política de cookies');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_page_link_type_pages`
--

CREATE TABLE `cargoweb_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_page_link_type_pages_translations`
--

CREATE TABLE `cargoweb_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_categories`
--

CREATE TABLE `cargoweb_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_categories`
--

INSERT INTO `cargoweb_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2018-06-29 15:06:41', NULL, '2018-06-29 15:06:41', NULL, NULL, 'news'),
(2, 2, '2018-07-27 07:43:32', 1, '2018-07-27 07:43:32', 1, NULL, 'noticias'),
(3, 3, '2018-07-31 08:08:27', 1, '2018-07-31 08:08:27', 1, NULL, 'destacado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_categories_translations`
--

CREATE TABLE `cargoweb_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_categories_translations`
--

INSERT INTO `cargoweb_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:41', NULL, '2018-06-29 15:06:41', NULL, 'en', 'News', 'Company news and updates.'),
(2, 2, '2018-07-27 07:43:32', NULL, '2018-07-27 07:43:32', 1, 'en', NULL, NULL),
(3, 2, '2018-07-27 07:43:32', NULL, '2018-07-27 07:43:32', 1, 'es', 'Noticias', NULL),
(4, 3, '2018-07-31 08:08:27', NULL, '2018-07-31 08:08:27', 1, 'en', NULL, NULL),
(5, 3, '2018-07-31 08:08:27', NULL, '2018-07-31 08:08:27', 1, 'es', 'destacado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_default_posts`
--

CREATE TABLE `cargoweb_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `post_image_id` int(11) NOT NULL,
  `imagen_post_destacado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_default_posts`
--

INSERT INTO `cargoweb_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `post_image_id`, `imagen_post_destacado_id`) VALUES
(1, 1, '2018-06-29 15:06:41', 1, '2018-08-02 10:16:15', 1, '2018-08-02 10:16:15', 2, NULL),
(2, 2, '2018-07-30 08:08:40', 1, '2018-08-02 10:09:48', 1, '2018-08-02 10:09:48', 2, 3),
(3, 3, '2018-07-30 08:09:39', 1, '2018-08-02 10:16:14', 1, '2018-08-02 10:16:14', 2, NULL),
(4, 4, '2018-07-30 08:10:08', 1, '2018-08-02 10:16:14', 1, '2018-08-02 10:16:14', 2, NULL),
(5, 5, '2018-07-30 08:10:34', 1, '2018-08-02 10:09:49', 1, '2018-08-02 10:09:49', 2, NULL),
(6, 6, '2018-07-30 08:13:19', 1, '2018-08-02 10:09:49', 1, '2018-08-02 10:09:49', 2, NULL),
(7, 7, '2018-07-31 08:43:29', 1, '2018-08-02 10:09:47', 1, '2018-08-02 10:09:47', 2, NULL),
(8, 8, '2018-07-31 08:44:26', 1, '2018-08-02 10:09:46', 1, '2018-08-02 10:09:46', 2, NULL),
(9, 9, '2018-07-31 08:45:27', 1, '2018-08-02 10:09:32', 1, '2018-08-02 10:09:32', 2, NULL),
(10, 10, '2018-07-31 08:46:28', 1, '2018-08-02 10:09:31', 1, '2018-08-02 10:09:31', 2, NULL),
(11, 11, '2018-07-31 08:47:16', 1, '2018-08-02 10:09:30', 1, '2018-08-02 10:09:30', 2, NULL),
(12, 12, '2018-07-31 08:51:36', 1, '2018-08-02 10:09:30', 1, '2018-08-02 10:09:30', 2, NULL),
(13, 13, '2018-07-31 08:53:29', 1, '2018-08-02 10:09:27', 1, '2018-08-02 10:09:27', 2, NULL),
(14, 1, '2018-08-02 10:24:53', 1, '2018-08-02 12:51:42', 1, NULL, 16, NULL),
(15, 2, '2018-08-02 10:32:20', 1, '2018-08-03 07:03:36', 1, NULL, 5, NULL),
(16, 3, '2018-08-02 10:39:56', 1, '2018-08-03 06:45:18', 1, NULL, 6, NULL),
(17, 4, '2018-08-02 11:01:18', 1, '2018-08-02 11:01:18', 1, NULL, 4, NULL),
(18, 5, '2018-08-02 12:05:29', 1, '2018-08-03 06:51:48', 1, NULL, 9, NULL),
(19, 6, '2018-08-02 12:19:51', 1, '2018-08-02 12:19:51', 1, NULL, 13, NULL),
(20, 7, '2018-08-02 12:24:48', 1, '2018-08-02 12:24:48', 1, NULL, 14, NULL),
(21, 8, '2018-08-02 12:44:18', 1, '2018-08-02 12:44:18', 1, NULL, 15, NULL),
(22, 9, '2018-08-02 13:09:52', 1, '2018-10-17 16:11:21', 1, NULL, 17, NULL),
(23, 10, '2018-08-03 06:22:08', 1, '2018-08-03 06:22:08', 1, NULL, 18, NULL),
(24, 11, '2018-08-03 06:30:18', 1, '2018-10-17 16:12:04', 1, NULL, 19, 19),
(25, 12, '2018-08-03 06:41:07', 1, '2018-10-17 16:26:27', 1, NULL, 20, 21),
(26, 13, '2018-10-17 16:16:47', 1, '2018-10-17 16:26:00', 1, '2018-10-17 16:26:00', 19, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_default_posts_translations`
--

CREATE TABLE `cargoweb_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `post_cite` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_default_posts_translations`
--

INSERT INTO `cargoweb_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`, `post_cite`) VALUES
(1, 1, '2018-06-29 15:06:41', NULL, '2018-06-29 15:06:41', NULL, 'en', '<p>Welcome to PyroCMS!</p>', NULL),
(2, 1, '2018-07-27 08:19:39', NULL, '2018-07-27 08:19:39', 1, 'es', '<p>post en español</p>', NULL),
(3, 1, '2018-07-27 08:19:40', 1, '2018-07-27 08:19:40', 1, 'es', '<p>post en español</p>', NULL),
(4, 2, '2018-07-30 08:08:40', NULL, '2018-07-31 08:42:36', 1, 'en', NULL, NULL),
(5, 2, '2018-07-30 08:08:40', NULL, '2018-07-30 09:48:27', 1, 'es', '<p></p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ex corporis perferendis, fugiat dolorum ipsa autem blanditiis delectus dolores sunt eius distinctio dolore qui unde cumque, eaque nihil iusto officiis accusamus?<br>Culpa sequi dicta debitis est optio nemo officiis nulla dolorum, similique atque eos totam corporis unde a ipsa laborum commodi facere officia quo. Similique blanditiis earum quaerat odit eaque doloribus.<br>Rem molestias fugit quia commodi molestiae aut placeat. Vel, sed unde ipsum repellendus numquam ab voluptatum recusandae pariatur blanditiis iusto cum id sunt nisi. Sapiente, blanditiis possimus? Sapiente, consequatur amet!</p>', NULL),
(6, 3, '2018-07-30 08:09:39', NULL, '2018-07-30 08:09:39', 1, 'en', NULL, NULL),
(7, 3, '2018-07-30 08:09:39', NULL, '2018-07-30 09:48:25', 1, 'es', '<p></p>\r\n<p>Eligendi voluptatibus obcaecati asperiores facere qui eius ex inventore odit? Corrupti officiis voluptas labore eveniet nobis reprehenderit. Illum deleniti ea a voluptates accusantium, maiores optio facilis assumenda dolore! Sapiente, iure.&nbsp;</p>\r\n<p>Similique, dignissimos iure facilis beatae recusandae ex omnis! Laudantium, iusto! Impedit quos quam aspernatur? Voluptatum voluptatem ad, quod, laudantium officiis fugiat incidunt recusandae minima, fuga architecto consequatur perspiciatis&nbsp;</p>\r\n<p>consectetur labore? Iusto facere rerum libero. Mollitia neque, nostrum velit quo nulla enim ipsam facere saepe architecto magnam temporibus aperiam deserunt iure, corrupti esse nam eius adipisci. Quidem assumenda quisquam nam corporis!</p>', NULL),
(8, 4, '2018-07-30 08:10:08', NULL, '2018-07-30 08:10:08', 1, 'en', NULL, NULL),
(9, 4, '2018-07-30 08:10:08', NULL, '2018-07-30 09:48:23', 1, 'es', '<p></p>\r\n<p>Odio, ea, molestias minus aspernatur modi impedit repellendus nisi dignissimos neque mollitia enim tempora veritatis cum consectetur reiciendis id placeat, repellat consequuntur alias dicta. Deserunt nam nobis iure sequi sint.</p>\r\n<p>&nbsp;Libero, dolorum error! At deleniti aspernatur ea commodi iste, expedita velit, dolores vero officiis architecto nisi quod optio autem suscipit nesciunt totam consequatur ullam ipsa mollitia eaque?</p>\r\n<p>&nbsp;Aspernatur, nisi aut. Modi excepturi omnis esse nostrum. Aliquam quaerat eaque vel eveniet magni incidunt enim commodi, aut voluptates illum molestias placeat eius nemo voluptas similique doloribus impedit exercitationem sapiente nam perspiciatis. Necessitatibus?</p>', NULL),
(10, 5, '2018-07-30 08:10:34', NULL, '2018-07-30 08:10:34', 1, 'en', NULL, NULL),
(11, 5, '2018-07-30 08:10:34', NULL, '2018-07-30 08:14:56', 1, 'es', '<p></p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Deserunt quod repudiandae, eius possimus dolorem voluptatibus maxime eligendi at aspernatur dolores natus repellat molestiae est, assumenda consequatur aliquam! Non, molestiae&nbsp;</p>\r\n<p>voluptatum? Quidem magni sapiente itaque doloremque quas quasi eligendi, dolore voluptatum cum tempora labore sint unde, eveniet nulla. Eos, natus, ipsum quia numquam necessitatibus fugit</p>\r\n<p>&nbsp;eaque incidunt fugiat, eum officia autem? Vel iusto alias illo hic dolores ratione, excepturi tempora, explicabo harum, officia natus repudiandae omnis totam voluptas? Eos repudiandae placeat voluptatum itaque, quas consequuntur rerum nihil assumenda, mollitia quia et.</p>', NULL),
(12, 6, '2018-07-30 08:13:20', NULL, '2018-07-30 08:13:20', 1, 'en', NULL, NULL),
(13, 6, '2018-07-30 08:13:20', NULL, '2018-07-30 09:48:20', 1, 'es', '<p></p>\r\n<p>Eligendi voluptatibus obcaecati asperiores facere qui eius ex inventore odit? Corrupti officiis voluptas labore eveniet nobis reprehenderit. Illum deleniti ea a voluptates accusantium, maiores optio facilis assumenda dolore! Sapiente, iure.&nbsp;</p>\r\n<p>Similique, dignissimos iure facilis beatae recusandae ex omnis! Laudantium, iusto! Impedit quos quam aspernatur? Voluptatum voluptatem ad, quod, laudantium officiis fugiat incidunt recusandae minima, fuga architecto consequatur perspiciatis&nbsp;</p>\r\n<p>consectetur labore? Iusto facere rerum libero. Mollitia neque, nostrum velit quo nulla enim ipsam facere saepe architecto magnam temporibus aperiam deserunt iure, corrupti esse nam eius adipisci. Quidem assumenda quisquam nam corporis!</p>', NULL),
(14, 7, '2018-07-31 08:43:29', NULL, '2018-07-31 08:52:37', 1, 'en', '<p><strong>El Grupo Cargo Services</strong>&nbsp;estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>', NULL),
(15, 7, '2018-07-31 08:43:29', NULL, '2018-07-31 08:52:37', 1, 'es', '<p><strong>El Grupo Cargo Services</strong>&nbsp;estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>', NULL),
(16, 8, '2018-07-31 08:44:26', NULL, '2018-07-31 08:44:26', 1, 'en', '<p></p><p>Hoy hace 25 años, en 1988, nació&nbsp;<b>Cargo Services</b>. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.</p>\r\n<p>Un camino no exento de dificultades, pero lleno de compromiso con nuestros clientes, proveedores y equipos. Un camino a fin de cuentas gratificante, donde la calidad y el valor añadido han marcado la dirección a seguir.</p>\r\n<p><b>¡FELIZ CUMPLEAÑOS A TODOS!</b></p>', NULL),
(17, 8, '2018-07-31 08:44:26', NULL, '2018-07-31 08:44:26', 1, 'es', '<p></p><p>Hoy hace 25 años, en 1988, nació&nbsp;<b>Cargo Services</b>. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.</p>\r\n<p>Un camino no exento de dificultades, pero lleno de compromiso con nuestros clientes, proveedores y equipos. Un camino a fin de cuentas gratificante, donde la calidad y el valor añadido han marcado la dirección a seguir.</p>\r\n<p><b>¡FELIZ CUMPLEAÑOS A TODOS!</b></p>', NULL),
(18, 9, '2018-07-31 08:45:27', NULL, '2018-07-31 08:45:27', 1, 'en', '<p><b>El Grupo Cargo Services</b>&nbsp;estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>', NULL),
(19, 9, '2018-07-31 08:45:27', NULL, '2018-07-31 08:45:27', 1, 'es', '<p><b>El Grupo Cargo Services</b>&nbsp;estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>', NULL),
(20, 10, '2018-07-31 08:46:28', NULL, '2018-07-31 08:52:28', 1, 'en', '<p></p>\r\n<p><strong>El Grupo Cargo Services</strong>&nbsp;tiene el honor de anunciar la alianza con el&nbsp;<a href=\"http://www.grupoproexi.com/\" target=\"_blank\">Grupo Proexi</a>&nbsp;que conjuntamente permitirá ofrecer un servicio completo en México.</p>\r\n<p>La unión de las sinergias basadas en el buen hacer y la experiencia adquirida por ambas sociedades a lo largo de su vida hace que el servicio ofrecido sea de la máxima calidad</p>', NULL),
(21, 10, '2018-07-31 08:46:28', NULL, '2018-07-31 08:52:28', 1, 'es', '<p></p>\r\n<p><strong>El Grupo Cargo Services</strong>&nbsp;tiene el honor de anunciar la alianza con el&nbsp;<a href=\"http://www.grupoproexi.com/\" target=\"_blank\">Grupo Proexi</a>&nbsp;que conjuntamente permitirá ofrecer un servicio completo en México.</p>\r\n<p>La unión de las sinergias basadas en el buen hacer y la experiencia adquirida por ambas sociedades a lo largo de su vida hace que el servicio ofrecido sea de la máxima calidad</p>', NULL),
(22, 11, '2018-07-31 08:47:16', NULL, '2018-07-31 08:52:25', 1, 'en', '<p></p>\r\n<p><strong>Cargo Services S.A.</strong>&nbsp;ha adquirido la certificación de&nbsp;<strong>Operador Económico Autorizado en Proteción y Seguridad</strong>&nbsp;(OEA).</p>\r\n<p>El Operador Económico Autorizado (Certificado OEA), es un reconocimiento otorgado por las autoridades aduaneras europeas y que puede ser definido como un operador económico de confianza para la logística internacional y por lo que, en consecuencia, puede disfrutar de ventajas en toda la Unión europea.</p>\r\n<p>Estamos seguros que ser Operador Econámico autorizado (OEA) es de vital importancia en el comercio internacional hoy en día.</p>', NULL),
(23, 11, '2018-07-31 08:47:16', NULL, '2018-07-31 08:52:25', 1, 'es', '<p></p>\r\n<p><strong>Cargo Services S.A.</strong>&nbsp;ha adquirido la certificación de&nbsp;<strong>Operador Económico Autorizado en Proteción y Seguridad</strong>&nbsp;(OEA).</p>\r\n<p>El Operador Económico Autorizado (Certificado OEA), es un reconocimiento otorgado por las autoridades aduaneras europeas y que puede ser definido como un operador económico de confianza para la logística internacional y por lo que, en consecuencia, puede disfrutar de ventajas en toda la Unión europea.</p>\r\n<p>Estamos seguros que ser Operador Econámico autorizado (OEA) es de vital importancia en el comercio internacional hoy en día.</p>', NULL),
(24, 12, '2018-07-31 08:51:36', NULL, '2018-07-31 12:11:47', 1, 'en', '<p></p><p><strong>Cargo Services Group</strong>&nbsp;se hará cargo de la representación de&nbsp;<strong>United Ocean Lines</strong>&nbsp;en España desde el 1 de octubre de 2011.</p>\r\n<p>Tras el nombramiendo de Cargo S de México en Septiembre de 2010, el enfoque profesional e individual de los servicios logísticos que han proporcionado a los clientes de United Ocean Lines, miembros y socios, ahora estará disponible en España también.</p>\r\n<p>Con oficinas propias en Barcelona, Madrid, Pamplona y Santander, así como las actividades más allá del segmento marítim</p>', 'Donec eget neque elit. Ut ornare vehicula nunc sit amet rutrum. Vivamus tincidunt suscipit enim et laoreet. Donec eros odio, porta eu faucibus id, ultricies in lacus.'),
(25, 12, '2018-07-31 08:51:36', NULL, '2018-07-31 12:11:48', 1, 'es', '<p></p>\r\n<p><strong>Cargo Services Group</strong>&nbsp;se hará cargo de la representación de&nbsp;<strong>United Ocean Lines</strong>&nbsp;en España desde el 1 de octubre de 2011.</p>\r\n<p>Tras el nombramiendo de Cargo S de México en Septiembre de 2010, el enfoque profesional e individual de los servicios logísticos que han proporcionado a los clientes de United Ocean Lines, miembros y socios, ahora estará disponible en España también.</p>\r\n<p>Con oficinas propias en Barcelona, Madrid, Pamplona y Santander, así como las actividades más allá del segmento marítimo, por carretera y aire, ofreciendo una completa gama de transporte logístico en una sola mano.</p>', 'Donec eget neque elit. Ut ornare vehicula nunc sit amet rutrum. Vivamus tincidunt suscipit enim et laoreet. Donec eros odio, porta eu faucibus id, ultricies in lacus.'),
(26, 13, '2018-07-31 08:53:29', NULL, '2018-07-31 12:14:40', 1, 'en', NULL, 'Donec eget neque elit. Ut ornare vehicula nunc sit amet rutrum. \r\nVivamus tincidunt suscipit enim et laoreet. Donec eros odio, porta eu faucibus id, ultricies in lacus.'),
(27, 13, '2018-07-31 08:53:29', NULL, '2018-07-31 12:14:41', 1, 'es', '<p></p>\r\n<p>Con la entrada en vigor el 01/01/2011 de la nueva aplicación de seguridad ICS y en cumplimiento de la normativa notificada por parte de la Agencia Tributaria a las compañías navieras ponemos en conocimiento de nuestros clientes.</p>\r\n<p>Que en aplicación de la citada normativa, las compañías navieras tienen que comunicar a las autoridades y con 24 horas de antelación al embarque de la mercancía por medio telemáticos los datos de la mercancía.</p>\r\n<p>Pueden acceder a la circular para&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/CircularClientesExportacionMaritima.pdf\" target=\"_blank\">exportación</a>&nbsp;como para&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/CircularClientesImportacionMaritima.pdf\" target=\"_blank\">importación</a>.</p>\r\n<p>Del mismo modo pueden acceder al escrito de la Agencia Tributaria a través del siguiente&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/AgenciaTributaria-ICS.PDF\" target=\"_blank\">enlace</a>.</p>', 'Donec eget neque elit. Ut ornare vehicula nunc sit amet rutrum. \r\nVivamus tincidunt suscipit enim et laoreet. Donec eros odio, porta eu faucibus id, ultricies in lacus.'),
(28, 14, '2018-08-02 10:24:53', NULL, '2018-08-02 12:30:11', 1, 'en', '<p></p>\r\n<p>We have strongly positioned ourself in the Mexican market.</p>\r\n<p><span></span>In terms of the coming years, 2010, 2011, we expect high performance in import and export traffic, and to develop our activity as a freight forwarding company and customs broker.</p>', NULL),
(29, 14, '2018-08-02 10:24:53', NULL, '2018-08-02 12:30:11', 1, 'es', '<p>Hemos experimentado un firme posicionamiento en el mercado mexicano.&nbsp;<br>Auguramos para los años venideros 2010, 2011 un alto rendimiento en el trafico de importación y exportación siempre desarrollando nuestra&nbsp;<strong>actividad como transitario y agente aduanal.</strong></p>', NULL),
(30, 15, '2018-08-02 10:32:20', NULL, '2018-08-02 10:32:20', 1, 'en', '<p></p>\r\n<p>From this date until the beginning of April, the competent American authority will gradually send harsher warnings to those importers who do not comply with these regulations.\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<p>Starting in April, customs will remove the grace period and may not only stop the shipment at any point, but also impose fines on importers of up to $5,000.\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<p>In order to comply with ISF 10+2, exporters will have to provide certain information, some of which we will provide, and then pass it on to the importing client or their agent, so that they can complete the information required in the form and send it.\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<p>For further information, we recommend consulting the website of the American\r\n  </p>\r\n<p>Authority that regulates this regulation, called CBP (Custom & Border Protection), where you can find out more on it.\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<p><a href=\"http://www.cbp.gov/xp/cgov/trade/cargo_security/carriers/security_filing/\" target=\"_blank\">Read more about Security Filing</a>\r\n  </p>', NULL),
(31, 15, '2018-08-02 10:32:20', NULL, '2018-08-02 13:08:40', 1, 'es', '<p>A partir del 26/1/2010 la Aduana Americana exigirá que los importadores Americanos o sus agentes que completen el ISF10+2 al menos 24 horas antes de la salida del barco oceánico que vaya a escalar en USA. Esta normativa no es aplicable al aéreo.<br></p>\r\n<p>Desde esta fecha hasta primeros de Abril, la autoridad Americana competente mandará avisos gradualmente en tono más duros a aquellos importadores que no cumplan con esta normativa.</p>\r\n<p>A partir de Abril, la aduana quitará dicho periodo de gracia y podrá no solo parar el embarque en cualquier punto en el que esté, sino también poner multas a los importadores de hasta 5.000 $.</p>\r\n<p>Para cumplir con la normativa ISF 10+2, los exportadores tendrán que facilitar ciertos datos, alguno de los cuales los facilitaremos nosotros, y posteriormente pasárselos al cliente importador o su agente, para que este a su vez, pueda completar la información requerida en dicha ficha y la transmita.</p>\r\n<p>Para más información, recomendamos acceder a la web de la Autoridad<br>Americana que regula dicha normativa, llamada CBP (Custom & Border Protection), donde podrán informarse con más detalle.</p>\r\n<p><a href=\"http://www.cbp.gov/xp/cgov/trade/cargo_security/carriers/security_filing/\" target=\"_blank\">Leer más sobre Security Filing</a></p>', NULL),
(32, 16, '2018-08-02 10:39:56', NULL, '2018-08-03 06:45:18', 1, 'en', '<p></p>\r\n<p>On 7 July 2010, Law 15/2010 on Measures to Combat Late Payment in Commercial Transactions came into force. This regulation amends Law 24/2004, which aims to make the collection of invoices more effective in application of this law. The main points set forth in this law include:\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<ol><li> The payment period to be observed by the debtor shall be 60 days after the date of receipt of the merchandise or services. This payment period may not be extended by agreement between the parties.&nbsp;</li><li>&nbsp;The clauses agreed between the parties on the date of payment or the consequences of the delay that differ in terms of the payment period and the rate of interest for late payment established by law, as well as the clauses that are contrary to the requirements for demanding interest for late payment, shall be null and void.</li></ol>\r\n<p>&nbsp;\r\n  </p>\r\n<p>This law shall apply to all contracts entered into after its entry into force, 7 July 2010. In the case of companies that have agreed longer payment terms, the following timeframe shall apply:\r\n  </p>\r\n<p>&nbsp;\r\n  </p>\r\n<ul><li>&nbsp;From the entry into force of the Act until 31 December 2011: 85 days.</li></ul>\r\n<p>&nbsp;</p>\r\n<ul><li>&nbsp;Between 1 January 2012 and 31 December 2012: 75 days.</li></ul>\r\n<p>&nbsp;</p>\r\n<ul><li>&nbsp;From 1 January 2013: 60 days.</li></ul>\r\n<p>&nbsp;\r\n  </p>\r\n<p>The above shall not apply to fresh and perishable foodstuffs, for which the 30-day payment period shall have immediate effect.\r\n  </p>\r\n<p>The full text can be found in <a href=\"http://www.boe.es/boe/dias/2010/07/06/pdfs/BOE-A-2010-10708.pdf\" target=\"_blank\">the following document.</a></p>', NULL),
(33, 16, '2018-08-02 10:39:56', NULL, '2018-08-03 06:45:19', 1, 'es', '<p>El pasado 7 de julio, entró en vigor la Ley 15/2010, de Medidas de Lucha contra la Morosidad en Operaciones Comerciales. Esta norma modifica la Ley 24/2004, pretende que cobrar las facturas, resulte más eficaz al aplicar esta ley. Veamos lo destacado:</p>\r\n<p><strong>1.</strong>&nbsp;El plazo de pago que debe cumplir el deudor será de 60 días después de la fecha de recepción de las mercancías o prestación de los servicios. Este plazo de pago no podrá ser ampliado por acuerdo entre las partes.</p>\r\n<p><strong>2.</strong>&nbsp;Serán nulas las cláusulas pactadas entre las partes sobre la fecha de pago o las consecuencias de la demora que difieran en cuanto al plazo de pago y al tipo de interées de demora establecidos en la Ley, así como las cláusulas que resulten contrarias a los requisitos para exigir los intereses de demora.</p>\r\n<p>Esta ley será de aplicación a todos los contratos celebrados con posterioridad a su entrada en vigor, 7 de Julio de 2010. Para aquellas empresas que vinieran pactando plazos de pago mas elevados, de acuerdo con el siguiente calendario:</p>\r\n<p>* Desde la entrada en vigor de la Ley hasta el 31 de diciembre de 2011: serán 85 días.</p>\r\n<p>* Entre el 1 de enero de 2012 y el 31 de diciembre de 2012: serán 75 días.</p>\r\n<p>* A partir del 1 de enero de 2013: serán 60 días.</p>\r\n<p>Lo indicado anteriormente no será de aplicación a los productos de alimentación frescos y perecederos, para los cuales el plazo de pago a 30 días tendrá efectos inmediatos.</p>\r\n<p>El texto completo lo puede encontrar&nbsp;<a href=\"http://www.boe.es/boe/dias/2010/07/06/pdfs/BOE-A-2010-10708.pdf\" target=\"_blank\">en el siguiente documento.</a></p>', NULL),
(34, 17, '2018-08-02 11:01:18', NULL, '2018-08-02 11:01:18', 1, 'en', '<p></p>\r\n<p>All sea imports coming into the EU or passing through it or transshipping at any port in the EU must be pre-demonstrated prior to shipment, in accordance with regulation 1875/2006 as of 1 January 2011.&nbsp;</p>\r\n<p>The regulation can be found in the following <a href=\"/files/download/documents/EurRegul-ENG.pdf\" target=\"_blank\">summary document</a> or in the <a href=\"https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2006:360:0064:0125:EN:PDF\" target=\"_blank\">Official Journal of the European Union.</a>\r\n  </p>', NULL),
(35, 17, '2018-08-02 11:01:18', NULL, '2018-08-02 11:01:18', 1, 'es', '<p></p>\r\n<p>Todas las importaciones marítimas que vengan a la UE o bien pasen a través de ella o hagan transbordo en algún puerto de ella, tendrán que pre-manifestarse antes del embarque de la misma según la normativa 1875/2006 a partir del 1 de Enero, 2011.</p>\r\n<p>La normativa puede consultarse en el siguiente&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/EurRegul-ESP.pdf\" target=\"_blank\"></a><a href=\"/files/download/documents/EurRegul-ESP.pdf\" target=\"_blank\">documento resumido</a>&nbsp;o en el&nbsp;<a href=\"http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2006:360:0064:0125:EN:PDF\" target=\"_blank\">Official Journal of the European Union.</a></p>', NULL),
(36, 18, '2018-08-02 12:05:29', NULL, '2018-08-03 06:51:48', 1, 'en', '<p></p>\r\n<p>Banco Santander and Grupo Cargo Services have signed an agreement in order to allow any company to develop its activity beyond our borders, ensuring that exporting is not a problem, but rather an exciting adventure.\r\n  </p>\r\n<p>&nbsp;As a result of needs analysis, <a href=\"https://www.bancosantander.es/es/empresas/negocio-internacional\" target=\"_blank\">the EXPORTS PLAN</a> has been devised, with a package of products and services relating to international business that combines elements from export financing, to risk coverage, and customised training.</p>\r\n<p>&nbsp;This agreement signed between Banco Santander and Cargo Services aims to ensure that all the needs of companies wishing to internationalise are fully covered, which is why this package of products has preferential conditions both in the short and long term, relying on our offices not only in Spain but also abroad.</p>\r\n<p>&nbsp;The vast experience of both Banco Santander and Cargo Services combined will make exporting a piece of cake.</p>', 'https://www.bancosantander.es/es/empresas/negocio-internacional'),
(37, 18, '2018-08-02 12:05:29', NULL, '2018-08-03 06:51:48', 1, 'es', '<p>l&nbsp;<strong>Banco Santander</strong>&nbsp;y el&nbsp;<strong>Grupo Cargo Services</strong>&nbsp;han sellado una alianza con el fin de que cualquier empresa pueda desarrollar su actividad más allá de nuestras fronteras, sin que exportar sea un problema, sino una apasionante aventura.</p>\r\n<p>Analizando todas las necesidades surge el&nbsp;<a href=\"https://www.bancosantander.es/cssa/Satellite?cid=1237885071477&pagename=SantanderComercial%2FProductGroups%2FSAN_ContenedorGeneral\" target=\"_blank\">PLAN EXPORTA</a>, con un paquete de productos y servicios de negocio internacional que combina desde financiación de exportación, coberturas de riesgos, hasta formación personalizada.</p>\r\n<p>Este acuerdo firmado entre el Banco Santander y Cargo Services tiene como finalidad que todas las necesidades de las empresas que quieran internacionalizarse queden totalmente cubiertas, es por ello que este paquete de productos tengan unas condiciones preferentes tanto a corto como a largo plazo utilizando nuestras oficinas no sólo en España sino también fuera de nuestras fronteras.</p>\r\n<p>La gran experiencia tanto del Banco Santander como de Cargo Services hará que la exportación sea un proyecto fácil de abordar.</p>', NULL),
(38, 19, '2018-08-02 12:19:51', NULL, '2018-08-02 12:19:51', 1, 'en', '<p></p>\r\n<p>With the entry into force on 01/01/2011 of the new CSI security application, and in compliance with the regulations announced by the Tax Agency to shipping companies, we inform our customers that:\r\n  </p>\r\n<p>&nbsp;In application of the aforementioned regulations, shipping companies must notify the authorities via telematic means and 24 hours in advance of the scheduled merchandise shipment time of the details of the merchandise.</p>\r\n<p>&nbsp;You can consult the circular for&nbsp;<a href=\"/files/download/documents/CircularClientesExportacionMaritima.pdf\" target=\"_blank\">exports</a> and <a href=\"/files/download/documents/CircularClientesImportacionMaritima.pdf\">imports</a>.</p>\r\n<p>&nbsp;You can also consult the Tax Agency’s document via the <a href=\"/files/download/documents/AgenciaTributaria-ICS.PDF\">following link</a>.</p>', NULL),
(39, 19, '2018-08-02 12:19:51', NULL, '2018-08-02 12:19:51', 1, 'es', '<p>Con la entrada en vigor el 01/01/2011 de la nueva aplicación de seguridad ICS y en cumplimiento de la normativa notificada por parte de la Agencia Tributaria a las compañías navieras ponemos en conocimiento de nuestros clientes.</p>\r\n<p>Que en aplicación de la citada normativa, las compañías navieras tienen que comunicar a las autoridades y con 24 horas de antelación al embarque de la mercancía por medio telemáticos los datos de la mercancía.</p>\r\n<p>Pueden acceder a la circular para&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/CircularClientesExportacionMaritima.pdf\" target=\"_blank\">exportación</a>&nbsp;como para&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/CircularClientesImportacionMaritima.pdf\" target=\"_blank\">importación</a>.</p>\r\n<p>Del mismo modo pueden acceder al escrito de la Agencia Tributaria a través del siguiente&nbsp;<a href=\"https://www.cargoservicesgroup.com/archivos/AgenciaTributaria-ICS.PDF\" target=\"_blank\">enlace</a>.</p>', NULL),
(40, 20, '2018-08-02 12:24:49', NULL, '2018-08-02 12:24:49', 1, 'en', '<p>Grupo Cargo Services will represent United Ocean Lines in Spain from 1 October 2011 onwards.</p>\r\n<p>&nbsp;Following the appointment of Cargo S de Mexico in September 2010, the professional and individual approach to logistics services they have provided to United Ocean Lines clients, members and partners will now be available in Spain as well.</p>\r\n<p>With offices in Barcelona, Madrid, Pamplona and Santander, as well as activities beyond the maritime segment, the company offers a complete range of logistics transport, by road and air too.\r\n  </p>', NULL),
(41, 20, '2018-08-02 12:24:49', NULL, '2018-08-02 12:24:49', 1, 'es', '<p><strong>Cargo Services Group</strong>&nbsp;se hará cargo de la representación de&nbsp;<strong>United Ocean Lines</strong>&nbsp;en España desde el 1 de octubre de 2011.</p>\r\n<p>Tras el nombramiendo de Cargo S de México en Septiembre de 2010, el enfoque profesional e individual de los servicios logísticos que han proporcionado a los clientes de United Ocean Lines, miembros y socios, ahora estará disponible en España también.</p>\r\n<p>Con oficinas propias en Barcelona, Madrid, Pamplona y Santander, así como las actividades más allá del segmento marítimo, por carretera y aire, ofreciendo una completa gama de transporte logístico en una sola mano.</p>', NULL),
(42, 21, '2018-08-02 12:44:19', NULL, '2018-08-02 12:44:19', 1, 'en', '<p>Grupo Cargo Services is honoured to announce its partnership with Grupo Proexi, which will together allow us to offer a complete service in Mexico.</p>\r\n<p>The combination of synergies, based on the solid work and experience acquired by both companies throughout our histories means that together we can offer a service of the highest quality.</p>', NULL),
(43, 21, '2018-08-02 12:44:19', NULL, '2018-08-02 12:44:19', 1, 'es', '<p><strong>El Grupo Cargo Services</strong>&nbsp;tiene el honor de anunciar la alianza con el&nbsp;<a href=\"http://www.grupoproexi.com/\" target=\"_blank\">Grupo Proexi</a>&nbsp;que conjuntamente permitirá ofrecer un servicio completo en México.</p>\r\n<p>La unión de las sinergias basadas en el buen hacer y la experiencia adquirida por ambas sociedades a lo largo de su vida hace que el servicio ofrecido sea de la máxima calidad.</p>', NULL),
(44, 22, '2018-08-02 13:09:52', NULL, '2018-08-02 13:09:52', 1, 'en', '<p>Grupo Cargo Services is launching a new communication channel that will allow us to establish continuous interaction through direct and closer relationships.\r\n  </p>\r\n<p>&nbsp;Follow us at <a href=\"https://www.facebook.com/Cargoservicesgroup\">www.facebook.com/CargoServices.</a></p>\r\n<p></p>', NULL),
(45, 22, '2018-08-02 13:09:52', NULL, '2018-08-02 13:09:52', 1, 'es', '<p><strong>El Grupo Cargo Services</strong>&nbsp;estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>\r\n<p>Síguenos en&nbsp;<a href=\"https://www.facebook.com/Cargoservicesgroup\" target=\"_blank\">www.facebook.com/CargoServicesGroup.com</a></p>', NULL),
(46, 23, '2018-08-03 06:22:08', NULL, '2018-08-03 06:22:08', 1, 'en', '<p>Cargo Services S.A. has acquired Authorised Economic Operator (AEO) certification in Protection and Security (AEO).</p>\r\n<p>&nbsp;The Authorised Economic Operator (AEO Certificate) is a type of recognition granted by the European customs authorities which means that we can be considered as a reliable economic operator for international logistics, and hence enjoy advantages throughout the European Union.</p>\r\n<p>We are sure that being an Authorised Economic Operator (AEO) is vitally important in the context of current international trade.\r\n  </p>', NULL),
(47, 23, '2018-08-03 06:22:09', NULL, '2018-08-03 06:22:09', 1, 'es', '<p><strong>Cargo Services S.A.</strong>&nbsp;ha adquirido la certificación de&nbsp;<strong>Operador Económico Autorizado en Proteción y Seguridad</strong>&nbsp;(OEA).</p>\r\n<p>El Operador Económico Autorizado (Certificado OEA), es un reconocimiento otorgado por las autoridades aduaneras europeas y que puede ser definido como un operador económico de confianza para la logística internacional y por lo que, en consecuencia, puede disfrutar de ventajas en toda la Unión europea.</p>\r\n<p>Estamos seguros que ser Operador Económico autorizado (OEA) es de vital importancia en el comercio internacional hoy en día.</p>', NULL),
(48, 24, '2018-08-03 06:30:18', NULL, '2018-08-03 06:30:18', 1, 'en', '<p>This day marks the 25th anniversary of Cargo Services, which was founded in 1988. With our joint efforts, we have been able to build a solid company, with proven professional capacity and great potential for the future.</p>\r\n<p>&nbsp;We have come across a few bumps along the road, but we have always been fully committed to our clients, suppliers and teams. It has been nothing less than rewarding, where quality and added value have pointed us in the direction to follow.</p>\r\n<p>&nbsp;HAPPY ANNIVERSARY, EVERYONE!</p>', NULL),
(49, 24, '2018-08-03 06:30:18', NULL, '2018-10-17 16:12:04', 1, 'es', '<p>Hoy hace 25 años, en 1988, nació&nbsp;<strong>Cargo Services</strong>. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.</p>\r\n<p>Un camino no exento de dificultades, pero lleno de compromiso con nuestros clientes, proveedores y equipos. Un camino a fin de cuentas gratificante, donde la calidad y el valor añadido han marcado la dirección a seguir.</p>\r\n<p></p>\r\n<p></p>\r\n<p><strong>¡FELIZ CUMPLEAÑOS A TODOS!</strong></p>\r\n\r\n', NULL),
(50, 25, '2018-08-03 06:41:07', NULL, '2018-10-03 11:34:13', 1, 'en', '<p><strong>Grupo Cargo Services</strong> is launching a new communication channel that will allow us to establish continuous interaction through direct and closer relationships.</p>\r\n<p>Follow us on <a href=\"https://www.linkedin.com/company/cargo-services-group\" target=\"_blank\">LINKEDIN</a>\r\n  </p>', 'Grupo Cargo Services is launching a new communication channel.'),
(51, 25, '2018-08-03 06:41:07', NULL, '2018-10-03 11:34:13', 1, 'es', '<p>El <strong>Grupo Cargo Services</strong> estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.</p>\r\n<p>Follow us on <a href=\"https://www.linkedin.com/company/cargo-services-group\" target=\"_blank\">LINKEDIN</a>\r\n  </p>', 'El Grupo Cargo Services estrena un nuevo canal de comunicación.'),
(52, 26, '2018-10-17 16:16:47', NULL, '2018-10-17 16:16:47', 1, 'en', NULL, NULL),
(53, 26, '2018-10-17 16:16:47', NULL, '2018-10-17 16:18:51', 1, 'es', '<p>wqdwddedqwdw</p>', 'hola hola hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_destacado_posts`
--

CREATE TABLE `cargoweb_posts_destacado_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `post_image_id` int(11) NOT NULL,
  `imagen_post_destacado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_destacado_posts`
--

INSERT INTO `cargoweb_posts_destacado_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `post_image_id`, `imagen_post_destacado_id`) VALUES
(1, 1, '2018-07-31 08:20:42', 1, '2018-07-31 08:30:52', 1, '2018-07-31 08:30:52', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_destacado_posts_translations`
--

CREATE TABLE `cargoweb_posts_destacado_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_destacado_posts_translations`
--

INSERT INTO `cargoweb_posts_destacado_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2018-07-31 08:20:42', NULL, '2018-07-31 08:20:42', 1, 'en', NULL),
(2, 1, '2018-07-31 08:20:42', NULL, '2018-07-31 08:28:52', 1, 'es', '<p></p>\r\n<p>Aspernatur dicta quod nemo consequatur doloremque aliquid amet quia quo.&nbsp;</p>\r\n<p>Laboriosam consequatur odio explicabo eum illum est totam expedita voluptate quae ut, quasi repudiandae exercitationem.</p>\r\n<p>&nbsp;Ullam aperiam possimus at qui?</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_posts`
--

CREATE TABLE `cargoweb_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_posts`
--

INSERT INTO `cargoweb_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2018-06-29 15:06:41', 1, '2018-08-02 10:16:15', 1, '2018-08-02 10:16:15', 'dNzRHjEwXAN2QFqA', 'welcome-to-pyrocms', 1, '2018-06-29 15:06:00', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, 'a:0:{}'),
(2, 2, '2018-07-30 08:08:41', 1, '2018-08-02 10:09:48', 1, '2018-08-02 10:09:48', 'cTU8wPJuMTtfC1cC', 'otro-post', 1, '2018-07-30 09:45:00', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 3, 0, 1, 'a:0:{}'),
(3, 3, '2018-07-30 08:09:39', 1, '2018-08-02 10:16:14', 1, '2018-08-02 10:16:14', 'J495N8ooKgmfuhba', 'eligendi-voluptatibus-obcaecat', 1, '2018-07-30 08:08:00', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(4, 4, '2018-07-30 08:10:08', 1, '2018-08-02 10:16:14', 1, '2018-08-02 10:16:14', 'rKVfbzJmNQvUMMGb', 'molestias-minus-aspernatur', 1, '2018-07-30 08:09:00', 1, 4, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(5, 5, '2018-07-30 08:10:34', 1, '2018-08-02 10:09:49', 1, '2018-08-02 10:09:49', 'AIfCgGNekAMzIMuM', 'lorem-ipsum-dolor', 1, '2018-07-30 08:10:00', 1, 5, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(6, 6, '2018-07-30 08:13:20', 1, '2018-08-02 10:09:49', 1, '2018-08-02 10:09:49', 'lzZV866VmAnKVmg1', 'similique-dignissimos', 1, '2018-07-30 08:10:00', 1, 6, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(7, 7, '2018-07-31 08:20:42', 1, '2018-07-31 08:30:53', 1, '2018-07-31 08:30:53', 'o7rhGHKT5ojjyEZD', 'post-tipo-destacado', 2, '2018-07-31 08:15:00', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDestacadoPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(8, 7, '2018-07-31 08:43:29', 1, '2018-08-02 10:09:47', 1, '2018-08-02 10:09:47', 'fUfqXJBFFQzLMQbm', 'cargo-services-group-en-linkedin', 1, '2018-07-31 08:42:00', 1, 7, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(9, 8, '2018-07-31 08:44:26', 1, '2018-08-02 10:09:46', 1, '2018-08-02 10:09:46', 'hB4OKlcgu3I5k2UZ', '25-anos-cargo-services', 1, '2018-07-31 08:43:00', 1, 8, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(10, 9, '2018-07-31 08:45:27', 1, '2018-08-02 10:09:32', 1, '2018-08-02 10:09:32', 'tOpamQYNViAfkcEc', 'cargo-services-group-en-facebook', 1, '2018-07-31 08:44:00', 1, 9, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(11, 10, '2018-07-31 08:46:28', 1, '2018-08-02 10:09:31', 1, '2018-08-02 10:09:31', 'YQY3wgSMrZhDSg7V', 'alianza-entre-grupo-proexi-y-grupo-cargo-services', 1, '2018-07-31 08:45:00', 1, 10, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(12, 11, '2018-07-31 08:47:16', 1, '2018-08-02 10:09:30', 1, '2018-08-02 10:09:30', 'd3mzhgKCButbFqek', 'cargo-services-es-operador-economico-autorizado-oea', 1, '2018-07-31 08:46:00', 1, 11, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(13, 12, '2018-07-31 08:51:36', 1, '2018-08-02 10:09:30', 1, '2018-08-02 10:09:30', 'OmCrr0wQYDVBBYND', 'united-ocean-lines-uol-amplia-la-cooperacion-con-cargo-services-en-espana', 1, '2018-07-31 08:47:00', 1, 12, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(14, 13, '2018-07-31 08:53:29', 1, '2018-08-02 10:09:28', 1, '2018-08-02 10:09:28', 'az3cNbxji5QDs482', 'nueva-aplicacion-de-seguridad-ics', 1, '2018-07-31 08:52:00', 1, 13, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(15, 1, '2018-08-02 10:24:53', 1, '2018-08-02 12:51:42', 1, NULL, 'qfP5sZlGcQHNmTEm', 'segundo-ano-de-funcionamiento-en-mexico', 1, '2009-12-28 12:00:00', 1, 14, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(16, 2, '2018-08-02 10:32:20', 1, '2018-08-03 07:03:36', 1, NULL, 'ehiVxhxOu6w7f21k', 'normativa-embarques-usa-isf-10-2', 1, '2010-03-23 12:00:00', 1, 15, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(17, 3, '2018-08-02 10:39:57', 1, '2018-08-03 06:45:19', 1, NULL, 'rwhoPtna6stuOWmi', 'ley-15-2010-contra-la-morosidad-en-operaciones-comerciales', 1, '2010-08-23 12:00:00', 1, 16, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(18, 4, '2018-08-02 11:01:18', 1, '2018-08-02 11:01:18', 1, NULL, 'THJ7ewSMixPhF5oQ', 'preaviso-carga-aduana-europea-importaciones-maritimas', 1, '2010-11-23 12:00:00', 1, 17, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(19, 5, '2018-08-02 12:05:29', 1, '2018-08-03 06:51:48', 1, NULL, 'QDWOERT1nABhmo8B', 'acuerdo-banco-santander-y-cargo-services-plan-exporta', 1, '2011-02-28 12:00:00', 1, 18, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(20, 6, '2018-08-02 12:19:51', 1, '2018-08-02 12:19:51', 1, NULL, 'IHCkSFDEbKPvtt48', 'nueva-aplicacion-de-seguridad', 1, '2011-06-28 12:00:00', 1, 19, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(21, 7, '2018-08-02 12:24:49', 1, '2018-08-02 12:24:49', 1, NULL, 'VpmsxdbbW6WgbaiO', 'united-ocean-lines-uol-amplia-la-cooperacion-con-cargo-services', 1, '2011-10-01 12:00:00', 1, 20, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(22, 8, '2018-08-02 12:44:19', 1, '2018-08-02 12:44:19', 1, NULL, 'aZtYyVZLBDqu5ItO', 'alianza-grupo-proexi-y-grupo-cargo-services', 1, '2012-02-21 12:00:00', 1, 21, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(23, 9, '2018-08-02 13:09:53', 1, '2018-10-17 16:11:21', 1, NULL, 'C1b31xB1kcCaqPGu', 'cargo-services-group-facebook', 1, '2012-09-01 12:00:00', 1, 22, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(24, 10, '2018-08-03 06:22:09', 1, '2018-08-03 06:22:09', 1, NULL, '6tPpNbRoEdM7oYu4', 'cargo-services-operador-economico-autorizado-oea', 1, '2011-12-20 12:00:00', 1, 23, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(25, 11, '2018-08-03 06:30:18', 1, '2018-10-17 16:12:04', 1, NULL, 'id5pJH5rkMyHQlY2', '25-aniversario-cargo-services', 1, '2013-03-01 12:00:00', 1, 24, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(26, 12, '2018-08-03 06:41:07', 1, '2018-10-17 16:26:27', 1, NULL, 'UuWTCFkhNNWgF3di', 'cargo-services-group-linkedin', 1, '2014-07-01 12:00:00', 1, 25, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}'),
(27, 13, '2018-10-17 16:16:47', 1, '2018-10-17 16:26:00', 1, '2018-10-17 16:26:00', 't3SPk0I9L7KCWCeF', 'hola', 1, '2018-10-16 12:00:00', 1, 26, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', NULL, 0, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_posts_translations`
--

CREATE TABLE `cargoweb_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_posts_translations`
--

INSERT INTO `cargoweb_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`) VALUES
(1, 1, '2018-06-29 15:06:41', NULL, '2018-06-29 15:06:41', NULL, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL),
(2, 1, '2018-07-27 08:19:40', NULL, '2018-07-27 08:19:40', 1, 'es', 'un post', 'esto es un post', NULL, NULL),
(3, 2, '2018-07-30 08:08:41', NULL, '2018-07-31 08:42:37', 1, 'en', NULL, NULL, NULL, NULL),
(4, 2, '2018-07-30 08:08:41', NULL, '2018-07-31 10:37:18', 1, 'es', 'El post DESTACADO', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ex corporis perferendis, fugiat dolorum \r\n\r\n\r\n  ', NULL, NULL),
(5, 3, '2018-07-30 08:09:39', NULL, '2018-07-30 08:09:39', 1, 'en', NULL, NULL, NULL, NULL),
(6, 3, '2018-07-30 08:09:39', NULL, '2018-07-30 08:09:39', 1, 'es', 'Eligendi voluptatibus obcaecat', 'Eligendi voluptatibus obcaecati asperiores facere qui eius ex inventore odit? Corrupti officiis voluptas labore eveniet nobis reprehenderit. Illum deleniti ea a voluptates accusantium, maiores optio facilis assumenda dolore! Sapiente, iure. \r\n\r\n', NULL, NULL),
(7, 4, '2018-07-30 08:10:08', NULL, '2018-07-30 08:10:08', 1, 'en', NULL, NULL, NULL, NULL),
(8, 4, '2018-07-30 08:10:08', NULL, '2018-07-30 08:10:08', 1, 'es', 'molestias minus aspernatur', 'Odio, ea, molestias minus aspernatur modi impedit repellendus nisi dignissimos neque mollitia enim tempora veritatis cum consectetur reiciendis id placeat, repellat consequuntur alias dicta. Deserunt nam nobis iure sequi sint.\r\n\r\n', NULL, NULL),
(9, 5, '2018-07-30 08:10:34', NULL, '2018-07-30 08:10:34', 1, 'en', NULL, NULL, NULL, NULL),
(10, 5, '2018-07-30 08:10:34', NULL, '2018-07-30 08:10:34', 1, 'es', 'Lorem ipsum dolor', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Deserunt quod repudiandae, eius possimus dolorem voluptatibus maxime eligendi at aspernatur dolores natus repellat molestiae est, assumenda consequatur aliquam! Non, molestiae \r\n\r\n', NULL, NULL),
(11, 6, '2018-07-30 08:13:20', NULL, '2018-07-30 08:13:20', 1, 'en', NULL, NULL, NULL, NULL),
(12, 6, '2018-07-30 08:13:20', NULL, '2018-07-30 08:13:20', 1, 'es', 'Similique, dignissimos', 'Similique, dignissimos iure facilis beatae recusandae ex omnis! Laudantium, iusto! Impedit quos quam aspernatur? Voluptatum voluptatem ad, quod, laudantium officiis fugiat incidunt recusandae minima, fuga architecto consequatur perspiciatis \r\n\r\n', NULL, NULL),
(13, 7, '2018-07-31 08:20:42', NULL, '2018-07-31 08:20:42', 1, 'en', NULL, NULL, NULL, NULL),
(14, 7, '2018-07-31 08:20:42', NULL, '2018-07-31 08:28:52', 1, 'es', 'Post tipo destacado', 'Aspernatur dicta quod nemo consequatur doloremque aliquid amet quia quo.\r\n', NULL, NULL),
(15, 8, '2018-07-31 08:43:29', NULL, '2018-07-31 08:43:29', 1, 'en', 'CARGO SERVICES GROUP EN LINKEDIN en', 'El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.', NULL, NULL),
(16, 8, '2018-07-31 08:43:29', NULL, '2018-07-31 08:43:29', 1, 'es', 'CARGO SERVICES GROUP EN LINKEDIN', 'El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.', NULL, NULL),
(17, 9, '2018-07-31 08:44:26', NULL, '2018-07-31 08:44:26', 1, 'en', '25 AÑOS CARGO SERVICES', 'Hoy hace 25 años, en 1988, nació Cargo Services. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.\r\n\r\n', NULL, NULL),
(18, 9, '2018-07-31 08:44:26', NULL, '2018-07-31 08:44:26', 1, 'es', '25 AÑOS CARGO SERVICES', 'Hoy hace 25 años, en 1988, nació Cargo Services. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.\r\n\r\n', NULL, NULL),
(19, 10, '2018-07-31 08:45:27', NULL, '2018-07-31 08:45:27', 1, 'en', 'CARGO SERVICES GROUP EN FACEBOOK', 'El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.', NULL, NULL),
(20, 10, '2018-07-31 08:45:27', NULL, '2018-07-31 08:45:27', 1, 'es', 'CARGO SERVICES GROUP EN FACEBOOK', 'El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.', NULL, NULL),
(21, 11, '2018-07-31 08:46:28', NULL, '2018-07-31 08:46:28', 1, 'en', 'ALIANZA ENTRE GRUPO PROEXI y GRUPO CARGO SERVICES', 'El Grupo Cargo Services tiene el honor de anunciar la alianza con el Grupo Proexi que conjuntamente permitirá ofrecer un servicio completo en México.', NULL, NULL),
(22, 11, '2018-07-31 08:46:28', NULL, '2018-07-31 08:46:28', 1, 'es', 'ALIANZA ENTRE GRUPO PROEXI y GRUPO CARGO SERVICES', 'El Grupo Cargo Services tiene el honor de anunciar la alianza con el Grupo Proexi que conjuntamente permitirá ofrecer un servicio completo en México.\r\n', NULL, NULL),
(23, 12, '2018-07-31 08:47:17', NULL, '2018-07-31 08:47:17', 1, 'en', 'CARGO SERVICES ES OPERADOR ECONÓMICO AUTORIZADO - OEA', 'Cargo Services S.A. ha adquirido la certificación de Operador Económico Autorizado en Proteción y Seguridad (OEA).', NULL, NULL),
(24, 12, '2018-07-31 08:47:17', NULL, '2018-07-31 08:47:17', 1, 'es', 'CARGO SERVICES ES OPERADOR ECONÓMICO AUTORIZADO - OEA', 'Cargo Services S.A. ha adquirido la certificación de Operador Económico Autorizado en Proteción y Seguridad (OEA).', NULL, NULL),
(25, 13, '2018-07-31 08:51:36', NULL, '2018-07-31 08:51:36', 1, 'en', NULL, NULL, NULL, NULL),
(26, 13, '2018-07-31 08:51:37', NULL, '2018-07-31 08:51:37', 1, 'es', '\"UNITED OCEAN LINES\" (UOL) amplía la cooperación con CARGO SERVICES en España', 'Cargo Services Group se hará cargo de la representación de United Ocean Lines en España desde el 1 de octubre de 2011.', NULL, NULL),
(27, 14, '2018-07-31 08:53:29', NULL, '2018-07-31 08:53:29', 1, 'en', NULL, NULL, NULL, NULL),
(28, 14, '2018-07-31 08:53:29', NULL, '2018-07-31 08:53:29', 1, 'es', 'NUEVA APLICACIÓN DE SEGURIDAD ICS', 'Con la entrada en vigor el 01/01/2011 de la nueva aplicación de seguridad ICS y en cumplimiento de la normativa notificada por parte de la Agencia Tributaria a las compañías navieras ponemos en conocimiento de nuestros clientes.\r\n', NULL, NULL),
(29, 15, '2018-08-02 10:24:53', NULL, '2018-08-02 10:24:53', 1, 'en', 'Second year of operation in Mexico', 'We have strongly positioned ourself in the Mexican market.', NULL, NULL),
(30, 15, '2018-08-02 10:24:53', NULL, '2018-08-02 10:24:53', 1, 'es', 'Segundo año de funcionamiento en Mexico', 'Hemos experimentado un firme posicionamiento en el mercado mexicano.', NULL, NULL),
(31, 16, '2018-08-02 10:32:20', NULL, '2018-08-03 06:53:22', 1, 'en', 'US ISF SHIPPING REGULATIONS 10+2 (Importer Security Filing)', 'As of 26/01/2010, US Customs will require US importers or their agents to complete ISF10+2 at least 24 hours prior to the departure of the ocean-going vessel calling in the US.', NULL, NULL),
(32, 16, '2018-08-02 10:32:20', NULL, '2018-08-03 06:53:22', 1, 'es', 'NORMATIVA EMBARQUES USA ISF 10+2 (Importer Security Filing)', 'A partir del 26/1/2010 la Aduana Americana exigirá que los importadores Americanos o sus agentes que completen el ISF10+2 al menos 24 horas antes de la salida del barco oceánico que vaya a escalar en USA.', NULL, NULL),
(33, 17, '2018-08-02 10:39:57', NULL, '2018-08-03 06:45:19', 1, 'en', 'LAW 15/2010 AGAINST LATE PAYMENT IN COMMERCIAL TRANSACTIONS', 'On 7 July 2010, Law 15/2010 on Measures to Combat Late Payment in Commercial Transactions came into force. ', NULL, NULL),
(34, 17, '2018-08-02 10:39:57', NULL, '2018-08-03 06:45:19', 1, 'es', 'LEY 15/2010 CONTRA LA MOROSIDAD EN OPERACIONES COMERCIALES', '​El pasado 7 de julio, entró en vigor la Ley 15/2010, de Medidas de Lucha contra la Morosidad en Operaciones Comerciales.', NULL, NULL),
(35, 18, '2018-08-02 11:01:19', NULL, '2018-08-02 11:01:19', 1, 'en', 'EUROPEAN CUSTOMS CARGO NOTICE - MARITIME IMPORTS', 'All sea imports coming into the EU or passing through it or transshipping at any port in the EU must be pre-demonstrated prior to shipment, in accordance with regulation 1875/2006 as of 1 January 2011.', NULL, NULL),
(36, 18, '2018-08-02 11:01:19', NULL, '2018-08-02 11:01:19', 1, 'es', 'PREAVISO CARGA ADUANA EUROPEA – IMPORTACIONES MARITIMAS', 'Todas las importaciones marítimas que vengan a la UE o bien pasen a través de ella o hagan transbordo en algún puerto de ella, tendrán que pre-manifestarse antes del embarque de la misma según la normativa 1875/2006 a partir del 1 de Enero, 2011.', NULL, NULL),
(37, 19, '2018-08-02 12:05:30', NULL, '2018-08-03 06:51:49', 1, 'en', 'AGREEMENT BETWEEN BANCO SANTANDER AND CARGO SERVICES - EXPORTS PLAN', 'Banco Santander and Grupo Cargo Services have signed an agreement in order to allow any company to develop its activity beyond our borders, ensuring that exporting is not a problem.', NULL, NULL),
(38, 19, '2018-08-02 12:05:30', NULL, '2018-08-03 06:51:49', 1, 'es', 'ACUERDO BANCO SANTANDER Y CARGO SERVICES - PLAN EXPORTA', 'l Banco Santander y el Grupo Cargo Services han sellado una alianza con el fin de que cualquier empresa pueda desarrollar su actividad más allá de nuestras fronteras, sin que exportar sea un problema.', NULL, NULL),
(39, 20, '2018-08-02 12:19:52', NULL, '2018-08-02 12:19:52', 1, 'en', 'NEW CSI SECURITY APPLICATION', 'With the entry into force on 01/01/2011 of the new CSI security application, and in compliance with the regulations announced by the Tax Agency to shipping companies', NULL, NULL),
(40, 20, '2018-08-02 12:19:52', NULL, '2018-08-02 12:19:52', 1, 'es', 'NUEVA APLICACIÓN DE SEGURIDAD ICS', '​Con la entrada en vigor el 01/01/2011 de la nueva aplicación de seguridad ICS y en cumplimiento de la normativa notificada por parte de la Agencia Tributaria a las compañías navieras ponemos en conocimiento de nuestros clientes.', NULL, NULL),
(41, 21, '2018-08-02 12:24:49', NULL, '2018-08-02 12:24:49', 1, 'en', '\"UNITED OCEAN LINES\" (UOL) expands cooperation with CARGO SERVICES in Spain', 'Grupo Cargo Services will represent United Ocean Lines in Spain from 1 October 2011 onwards.', NULL, NULL),
(42, 21, '2018-08-02 12:24:49', NULL, '2018-08-02 12:24:49', 1, 'es', '\"UNITED OCEAN LINES\" (UOL) amplía la cooperación con CARGO SERVICES en España', '​Cargo Services Group se hará cargo de la representación de United Ocean Lines en España desde el 1 de octubre de 2011.', NULL, NULL),
(43, 22, '2018-08-02 12:44:19', NULL, '2018-08-02 12:44:19', 1, 'en', 'PARTNERSHIP BETWEEN GRUPO PROEXI and GRUPO CARGO SERVICES', '​Grupo Cargo Services is honoured to announce its partnership with Grupo Proexi, which will together allow us to offer a complete service in Mexico.\r\n\r\n', NULL, NULL),
(44, 22, '2018-08-02 12:44:19', NULL, '2018-08-02 12:44:19', 1, 'es', 'ALIANZA ENTRE GRUPO PROEXI y GRUPO CARGO SERVICES', '​El Grupo Cargo Services tiene el honor de anunciar la alianza con el Grupo Proexi que conjuntamente permitirá ofrecer un servicio completo en México.', NULL, NULL),
(45, 23, '2018-08-02 13:09:53', NULL, '2018-08-02 13:09:53', 1, 'en', 'CARGO SERVICES GROUP ON FACEBOOK', 'Grupo Cargo Services is launching a new communication channel that will allow us to establish continuous interaction through direct and closer relationships.\r\n\r\n', NULL, NULL),
(46, 23, '2018-08-02 13:09:53', NULL, '2018-08-02 13:09:53', 1, 'es', 'CARGO SERVICES GROUP EN FACEBOOK', '​El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.', NULL, NULL),
(47, 24, '2018-08-03 06:22:09', NULL, '2018-08-03 06:22:09', 1, 'en', 'CARGO SERVICES IS AN AUTHORISED ECONOMIC OPERATOR (AEO)', 'Cargo Services S.A. has acquired Authorised Economic Operator (AEO) certification in Protection and Security (AEO).', NULL, NULL),
(48, 24, '2018-08-03 06:22:09', NULL, '2018-08-03 06:22:09', 1, 'es', 'CARGO SERVICES ES OPERADOR ECONÓMICO AUTORIZADO - OEA', 'Cargo Services S.A. ha adquirido la certificación de Operador Económico Autorizado en Proteción y Seguridad (OEA).', NULL, NULL),
(49, 25, '2018-08-03 06:30:19', NULL, '2018-08-03 06:30:19', 1, 'en', '25 YEARS OF CARGO SERVICES', 'This day marks the 25th anniversary of Cargo Services, which was founded in 1988. With our joint efforts, we have been able to build a solid company, with proven professional capacity and great potential for the future.', NULL, NULL),
(50, 25, '2018-08-03 06:30:19', NULL, '2018-08-03 06:30:19', 1, 'es', '25 AÑOS CARGO SERVICES', 'Hoy hace 25 años, en 1988, nació Cargo Services. Entre todos hemos sigo capaces de construir una compañia sólida, de probada capacidad profesional y con un gran potencial a futuro.', NULL, NULL),
(51, 26, '2018-08-03 06:41:08', NULL, '2018-08-03 06:41:08', 1, 'en', 'CARGO SERVICES GROUP ON LINKEDIN', 'Grupo Cargo Services is launching a new communication channel that will allow us to establish continuous interaction through direct and closer relationships.', NULL, NULL),
(52, 26, '2018-08-03 06:41:08', NULL, '2018-08-03 07:48:13', 1, 'es', 'CARGO SERVICES GROUP EN LINKEDIN', 'El Grupo Cargo Services estrena un nuevo canal de comunicación que nos permitiriá establecer una continua interacción con relaciones directas y más cercanas.\r\n', NULL, NULL),
(53, 27, '2018-10-17 16:16:47', NULL, '2018-10-17 16:16:47', 1, 'en', NULL, NULL, NULL, NULL),
(54, 27, '2018-10-17 16:16:47', NULL, '2018-10-17 16:16:47', 1, 'es', 'hola', 'bla bla bla', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_types`
--

CREATE TABLE `cargoweb_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_types`
--

INSERT INTO `cargoweb_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 1, '2018-06-29 15:06:40', NULL, '2018-06-29 15:06:40', NULL, NULL, 'default', '{{ post.content.render|raw }}', 'theme::layouts/default.twig'),
(2, 2, '2018-07-31 07:25:58', 1, '2018-07-31 08:31:06', 1, '2018-07-31 08:31:06', 'destacado', '{{ post.content|raw }}', 'theme::layouts.default');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_posts_types_translations`
--

CREATE TABLE `cargoweb_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_posts_types_translations`
--

INSERT INTO `cargoweb_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 15:06:41', NULL, '2018-06-29 15:06:41', NULL, 'en', 'Default', 'A simple post type.'),
(2, 2, '2018-07-31 07:26:00', NULL, '2018-07-31 07:26:00', 1, 'en', NULL, NULL),
(3, 2, '2018-07-31 07:26:00', NULL, '2018-07-31 07:26:00', 1, 'es', 'Destacado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_preferences_preferences`
--

CREATE TABLE `cargoweb_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_preferences_preferences`
--

INSERT INTO `cargoweb_preferences_preferences` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `user_id`, `key`, `value`) VALUES
(1, 1, '2018-07-31 08:35:43', 1, '2018-10-17 16:24:08', 1, 1, 'streams::per_page', '5'),
(2, 2, '2018-07-31 08:35:43', 1, '2018-10-17 16:24:08', 1, 1, 'streams::timezone', 'Europe/Madrid'),
(3, 3, '2018-07-31 08:35:43', 1, '2018-10-17 16:24:08', 1, 1, 'streams::date_format', 'j M, y'),
(4, 4, '2018-07-31 08:35:43', 1, '2018-10-17 16:24:08', 1, 1, 'streams::time_format', 'g:i A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_redirects_redirects`
--

CREATE TABLE `cargoweb_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_sessions`
--

CREATE TABLE `cargoweb_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_settings_settings`
--

CREATE TABLE `cargoweb_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_settings_settings`
--

INSERT INTO `cargoweb_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2018-06-29 15:06:44', 1, '2018-07-31 08:58:00', 1, 'streams::timezone', 'Europe/Madrid'),
(2, 2, '2018-06-29 15:06:44', 1, '2018-07-31 08:58:00', 1, 'streams::default_locale', 'es'),
(3, 3, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::name', 'PyroCMS'),
(4, 4, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::description', 'Build better Laravel websites and applications faster with Pyro.'),
(5, 5, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::date_format', 'd/m/Y'),
(6, 6, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::time_format', 'H:i'),
(7, 7, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::unit_system', 'metric'),
(8, 8, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::currency', 'USD'),
(9, 9, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::standard_theme', 'flyingpigs.theme.cargo'),
(10, 10, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::admin_theme', 'pyrocms.theme.accelerant'),
(11, 11, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::per_page', '5'),
(12, 12, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::enabled_locales', 'a:2:{i:0;s:2:\"en\";i:1;s:2:\"es\";}'),
(13, 13, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::maintenance', '0'),
(14, 14, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:00', 1, 'streams::basic_auth', '0'),
(15, 15, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:01', 1, 'streams::ip_whitelist', 'a:0:{}'),
(16, 16, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:01', 1, 'streams::email', 'noreply@cargo.pyro'),
(17, 17, '2018-07-02 07:31:23', 1, '2018-07-31 08:58:01', 1, 'streams::sender', 'PyroCMS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_assignments`
--

CREATE TABLE `cargoweb_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_assignments`
--

INSERT INTO `cargoweb_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `searchable`, `translatable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 0, 1, 0, 0),
(2, 2, 1, 2, 'a:0:{}', 0, 1, 0, 0),
(3, 3, 1, 3, 'a:0:{}', 0, 0, 0, 0),
(4, 4, 2, 4, 'a:0:{}', 0, 1, 0, 1),
(5, 5, 2, 5, 'a:0:{}', 1, 1, 0, 0),
(6, 6, 2, 6, 'a:0:{}', 0, 0, 0, 1),
(7, 7, 2, 7, 'a:0:{}', 0, 1, 0, 0),
(8, 8, 2, 13, 'a:0:{}', 0, 0, 0, 0),
(9, 9, 3, 8, 'a:0:{}', 0, 1, 0, 1),
(10, 10, 3, 6, 'a:0:{}', 0, 0, 0, 1),
(11, 11, 3, 9, 'a:0:{}', 0, 1, 0, 0),
(12, 12, 3, 10, 'a:0:{}', 0, 1, 0, 0),
(13, 13, 3, 12, 'a:0:{}', 0, 1, 0, 0),
(14, 14, 3, 13, 'a:0:{}', 0, 0, 0, 0),
(15, 15, 3, 11, 'a:0:{}', 0, 0, 0, 0),
(16, 16, 4, 14, 'a:0:{}', 1, 1, 0, 1),
(17, 17, 4, 15, 'a:0:{}', 1, 1, 0, 0),
(18, 18, 4, 16, 'a:0:{}', 0, 1, 0, 0),
(19, 19, 4, 20, 'a:0:{}', 0, 0, 0, 1),
(20, 20, 5, 18, 'a:0:{}', 0, 1, 0, 0),
(21, 21, 5, 14, 'a:1:{s:3:\"max\";i:50;}', 0, 1, 0, 1),
(22, 22, 5, 15, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 0),
(23, 23, 5, 20, 'a:0:{}', 0, 0, 0, 1),
(24, 24, 5, 21, 'a:0:{}', 0, 0, 0, 0),
(25, 25, 6, 14, 'a:0:{}', 0, 1, 0, 0),
(26, 26, 6, 18, 'a:0:{}', 0, 1, 0, 0),
(27, 27, 6, 17, 'a:0:{}', 0, 1, 0, 0),
(28, 28, 6, 23, 'a:0:{}', 0, 1, 0, 0),
(29, 29, 6, 27, 'a:0:{}', 0, 1, 0, 0),
(30, 30, 6, 26, 'a:0:{}', 0, 1, 0, 0),
(31, 31, 6, 19, 'a:0:{}', 0, 0, 0, 0),
(32, 32, 6, 22, 'a:0:{}', 0, 0, 0, 0),
(33, 33, 6, 25, 'a:0:{}', 0, 0, 0, 0),
(34, 34, 6, 24, 'a:0:{}', 0, 0, 0, 0),
(35, 35, 6, 28, 'a:0:{}', 0, 0, 0, 1),
(36, 36, 6, 29, 'a:0:{}', 0, 0, 0, 1),
(37, 37, 6, 30, 'a:0:{}', 0, 0, 0, 1),
(38, 38, 6, 20, 'a:0:{}', 0, 0, 0, 1),
(39, 39, 7, 31, 'a:0:{}', 1, 1, 0, 1),
(40, 40, 7, 35, 'a:0:{}', 1, 1, 0, 0),
(41, 41, 7, 33, 'a:0:{}', 0, 0, 0, 1),
(42, 42, 8, 36, 'a:0:{}', 0, 1, 0, 0),
(43, 43, 8, 39, 'a:0:{}', 0, 1, 0, 0),
(44, 44, 8, 34, 'a:0:{}', 0, 1, 0, 0),
(45, 45, 8, 40, 'a:0:{}', 0, 1, 0, 0),
(46, 46, 8, 32, 'a:0:{}', 0, 0, 0, 0),
(47, 47, 8, 37, 'a:0:{}', 0, 0, 0, 0),
(48, 48, 8, 38, 'a:0:{}', 0, 0, 0, 0),
(49, 49, 9, 41, 'a:0:{}', 0, 1, 0, 0),
(50, 50, 9, 42, 'a:0:{}', 0, 1, 0, 1),
(51, 51, 9, 43, 'a:0:{}', 0, 1, 0, 0),
(52, 52, 9, 45, 'a:0:{}', 0, 1, 0, 0),
(53, 53, 9, 55, 'a:0:{}', 0, 1, 0, 0),
(54, 54, 9, 59, 'a:0:{}', 0, 0, 0, 0),
(55, 55, 9, 53, 'a:0:{}', 0, 0, 0, 0),
(56, 56, 9, 57, 'a:0:{}', 0, 0, 0, 0),
(57, 57, 9, 46, 'a:0:{}', 0, 0, 0, 0),
(58, 58, 9, 58, 'a:0:{}', 0, 0, 0, 0),
(59, 59, 9, 47, 'a:0:{}', 0, 0, 0, 0),
(60, 60, 9, 48, 'a:0:{}', 0, 0, 0, 1),
(61, 61, 9, 49, 'a:0:{}', 0, 0, 0, 1),
(63, 63, 9, 54, 'a:0:{}', 0, 0, 0, 0),
(64, 64, 9, 52, 'a:0:{}', 0, 0, 0, 0),
(65, 65, 10, 60, 'a:1:{s:3:\"max\";i:26;}', 1, 1, 0, 1),
(66, 66, 10, 43, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:26;}', 1, 1, 0, 0),
(67, 67, 10, 61, 'a:0:{}', 0, 0, 0, 1),
(68, 68, 10, 54, 'a:0:{}', 0, 1, 0, 0),
(69, 69, 10, 51, 'a:0:{}', 0, 1, 0, 0),
(70, 70, 10, 56, 'a:0:{}', 0, 1, 0, 0),
(71, 70, 11, 63, 'a:0:{}', 1, 1, 0, 1),
(72, 71, 11, 65, 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1, 1, 0, 0),
(73, 72, 11, 70, 'a:0:{}', 0, 0, 0, 1),
(74, 73, 12, 62, 'a:0:{}', 1, 1, 0, 0),
(75, 74, 12, 64, 'a:0:{}', 0, 1, 0, 1),
(76, 75, 12, 69, 'a:0:{}', 0, 0, 0, 1),
(77, 76, 12, 65, 'a:0:{}', 1, 1, 0, 0),
(78, 77, 12, 67, 'a:0:{}', 0, 1, 0, 0),
(79, 78, 12, 71, 'a:0:{}', 0, 1, 0, 0),
(80, 79, 12, 73, 'a:0:{}', 0, 1, 0, 0),
(81, 80, 12, 72, 'a:0:{}', 0, 1, 0, 0),
(82, 81, 12, 78, 'a:0:{}', 0, 0, 0, 1),
(83, 82, 12, 79, 'a:0:{}', 0, 0, 0, 1),
(84, 83, 12, 75, 'a:0:{}', 0, 0, 0, 0),
(85, 84, 12, 77, 'a:0:{}', 0, 0, 0, 0),
(86, 85, 12, 76, 'a:0:{}', 0, 0, 0, 0),
(87, 86, 12, 68, 'a:0:{}', 0, 0, 0, 0),
(88, 87, 13, 63, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 1),
(89, 88, 13, 65, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0, 0),
(90, 89, 13, 74, 'a:0:{}', 0, 1, 0, 0),
(91, 90, 13, 82, 'a:0:{}', 0, 1, 0, 0),
(92, 91, 13, 70, 'a:0:{}', 0, 0, 0, 1),
(93, 92, 14, 83, 'a:0:{}', 0, 1, 0, 0),
(94, 93, 14, 84, 'a:0:{}', 0, 1, 0, 0),
(95, 94, 14, 85, 'a:0:{}', 0, 0, 0, 0),
(96, 95, 15, 86, 'a:0:{}', 1, 1, 0, 0),
(97, 96, 15, 87, 'a:0:{}', 0, 1, 0, 0),
(98, 97, 15, 88, 'a:0:{}', 0, 1, 0, 0),
(99, 98, 15, 89, 'a:0:{}', 0, 0, 0, 0),
(100, 99, 16, 90, 'a:0:{}', 1, 1, 0, 0),
(101, 100, 16, 91, 'a:0:{}', 0, 0, 0, 0),
(102, 101, 17, 92, 'a:0:{}', 1, 1, 0, 0),
(103, 102, 17, 93, 'a:0:{}', 1, 1, 0, 0),
(104, 103, 17, 94, 'a:0:{}', 0, 1, 0, 0),
(105, 104, 17, 112, 'a:0:{}', 0, 1, 0, 0),
(106, 105, 17, 100, 'a:0:{}', 0, 1, 0, 0),
(107, 106, 17, 101, 'a:0:{}', 0, 0, 0, 0),
(108, 107, 17, 102, 'a:0:{}', 0, 0, 0, 0),
(109, 108, 17, 109, 'a:0:{}', 0, 0, 0, 0),
(110, 109, 17, 110, 'a:0:{}', 0, 0, 0, 0),
(111, 110, 17, 99, 'a:0:{}', 0, 0, 0, 0),
(112, 111, 17, 97, 'a:0:{}', 0, 0, 0, 0),
(113, 112, 17, 95, 'a:0:{}', 0, 0, 0, 0),
(114, 113, 17, 107, 'a:0:{}', 0, 0, 0, 0),
(115, 114, 17, 105, 'a:0:{}', 0, 0, 0, 0),
(116, 115, 17, 98, 'a:0:{}', 0, 0, 0, 0),
(117, 116, 17, 96, 'a:0:{}', 0, 0, 0, 0),
(118, 117, 18, 103, 'a:0:{}', 0, 1, 0, 1),
(119, 118, 18, 111, 'a:0:{}', 1, 1, 0, 0),
(120, 119, 18, 104, 'a:0:{}', 0, 0, 0, 1),
(121, 120, 18, 99, 'a:0:{}', 0, 0, 0, 0),
(122, 121, 19, 113, 'a:0:{}', 0, 0, 0, 1),
(123, 122, 19, 114, 'a:0:{}', 0, 1, 0, 0),
(124, 123, 19, 115, 'a:0:{}', 0, 0, 0, 1),
(125, 124, 20, 116, 'a:0:{}', 0, 1, 0, 1),
(126, 125, 20, 117, 'a:0:{}', 0, 1, 0, 0),
(127, 126, 20, 118, 'a:0:{}', 0, 0, 0, 1),
(128, 127, 23, 44, 'a:0:{}', 0, 0, 0, 1),
(129, 4, 24, 66, 'a:0:{}', 0, 0, 0, 1),
(131, 129, 25, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(132, 130, 26, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(133, 131, 27, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(134, 2, 24, 121, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 0, 0),
(136, 134, 28, 121, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 0, 0),
(138, 136, 28, 66, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 0, 1),
(139, 136, 28, 123, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 0, 0),
(140, 1, 24, 123, 'a:1:{i:0;s:41:\"a:1:{i:0;s:23:\"a:1:{i:0;s:6:\"a:0:{}\";}\";}\";}', 0, 0, 0, 0),
(141, 3, 24, 124, 'a:1:{i:0;s:23:\"a:1:{i:0;s:6:\"a:0:{}\";}\";}', 0, 0, 0, 1),
(142, 138, 29, 128, 'a:0:{}', 0, 0, 0, 0),
(143, 139, 30, 125, 'a:0:{}', 0, 1, 0, 1),
(144, 140, 30, 126, 'a:0:{}', 0, 1, 0, 1),
(145, 141, 30, 127, 'a:0:{}', 0, 1, 0, 0),
(146, 142, 25, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(147, 143, 26, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(148, 144, 27, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(149, 145, 31, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(150, 146, 32, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(151, 147, 33, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(152, 148, 31, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(153, 149, 34, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(154, 150, 34, 129, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(155, 151, 32, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(156, 152, 33, 120, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(157, 153, 32, 44, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0),
(159, 155, 34, 44, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_assignments_translations`
--

CREATE TABLE `cargoweb_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_assignments_translations`
--

INSERT INTO `cargoweb_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(8, 8, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(9, 9, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(10, 10, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(11, 11, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(12, 12, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(13, 13, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(14, 14, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(15, 15, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(16, 16, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(17, 17, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(18, 18, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(19, 19, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(20, 20, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(21, 21, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(22, 22, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(23, 23, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(24, 24, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(25, 25, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(26, 26, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(27, 27, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(28, 28, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(29, 29, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(30, 30, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(31, 31, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(32, 32, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(33, 33, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(34, 34, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(35, 35, 'en', 'anomaly.module.files::field.alt_text.label.files', 'anomaly.module.files::field.alt_text.warning.files', 'anomaly.module.files::field.alt_text.placeholder.files', 'anomaly.module.files::field.alt_text.instructions.files'),
(36, 36, 'en', 'anomaly.module.files::field.title.label.files', 'anomaly.module.files::field.title.warning.files', 'anomaly.module.files::field.title.placeholder.files', 'anomaly.module.files::field.title.instructions.files'),
(37, 37, 'en', 'anomaly.module.files::field.caption.label.files', 'anomaly.module.files::field.caption.warning.files', 'anomaly.module.files::field.caption.placeholder.files', 'anomaly.module.files::field.caption.instructions.files'),
(38, 38, 'en', 'anomaly.module.files::field.description.label.files', 'anomaly.module.files::field.description.warning.files', 'anomaly.module.files::field.description.placeholder.files', 'anomaly.module.files::field.description.instructions.files'),
(39, 39, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(40, 40, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(41, 41, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(42, 42, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(43, 43, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(44, 44, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(45, 45, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(46, 46, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(47, 47, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(48, 48, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(49, 49, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(50, 50, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(51, 51, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(52, 52, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(53, 53, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(54, 54, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(55, 55, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(56, 56, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(57, 57, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(58, 58, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(59, 59, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(60, 60, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(61, 61, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(63, 63, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(64, 64, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(65, 65, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(66, 66, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(67, 67, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(68, 68, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(69, 69, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(70, 70, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(71, 71, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(72, 72, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(73, 73, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(74, 74, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(75, 75, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(76, 76, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(77, 77, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(78, 78, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(79, 79, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(80, 80, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(81, 81, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(82, 82, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(83, 83, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(84, 84, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(85, 85, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(86, 86, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(87, 87, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(88, 88, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(89, 89, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(90, 90, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(91, 91, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(92, 92, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(93, 93, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(94, 94, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(95, 95, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(96, 96, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(97, 97, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(98, 98, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(99, 99, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(100, 100, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(101, 101, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(102, 102, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(103, 103, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(104, 104, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(105, 105, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(106, 106, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(107, 107, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(108, 108, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(109, 109, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(110, 110, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(111, 111, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(112, 112, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(113, 113, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(114, 114, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(115, 115, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(116, 116, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(117, 117, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(118, 118, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(119, 119, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(120, 120, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(121, 121, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(122, 122, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(123, 123, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(124, 124, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(125, 125, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(126, 126, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(127, 127, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(128, 128, 'es', NULL, NULL, NULL, NULL),
(129, 129, 'es', NULL, NULL, NULL, NULL),
(132, 131, 'en', NULL, NULL, NULL, NULL),
(133, 131, 'es', NULL, NULL, NULL, NULL),
(134, 132, 'en', NULL, NULL, NULL, NULL),
(135, 132, 'es', NULL, NULL, NULL, NULL),
(136, 133, 'en', NULL, NULL, NULL, NULL),
(137, 133, 'es', NULL, NULL, NULL, NULL),
(138, 134, 'en', NULL, NULL, NULL, NULL),
(139, 134, 'es', 'Imagen para el post', NULL, 'Imagen para el post', 'Imagen para el post de 518px por 328px'),
(142, 136, 'en', NULL, NULL, NULL, NULL),
(143, 136, 'es', 'Imagen del post', NULL, 'Imagen del post', 'adjunte una imagen de 518x328'),
(146, 138, 'en', NULL, NULL, NULL, NULL),
(147, 138, 'es', 'Contenido del post', NULL, 'Contenido del post', 'Contenido del post'),
(148, 139, 'en', NULL, NULL, NULL, NULL),
(149, 139, 'es', ' imagen para el post destacado', NULL, ' imagen para el post destacado', 'Introducir una imagen para el post destacado de 868x400 px'),
(150, 140, 'en', 'Imagen para el post destacado', NULL, 'Imagen para el post destacado', 'Imagen si es el post destacado '),
(151, 140, 'es', 'Imagen post con categoria DESTACADO', NULL, 'Imagen para el post destacado. Campo no obligatorio', 'Imagen si es el post destacado  868x400 px '),
(152, 141, 'en', 'Cita del post', NULL, 'Cita del post', 'Introducir la cita que aparece junto a la imagen en las noticias (sin las comillas)'),
(153, 141, 'es', 'Cita del post', NULL, 'Cita del post', 'Maximo: 170 caracteres. \r\n\r\nIntroducir la cita que aparece junto a la imagen en las noticias (sin las comillas)'),
(154, 142, 'en', 'anomaly.extension.links_block::field.links.label.blocks', 'anomaly.extension.links_block::field.links.warning.blocks', 'anomaly.extension.links_block::field.links.placeholder.blocks', 'anomaly.extension.links_block::field.links.instructions.blocks'),
(155, 143, 'en', 'anomaly.extension.links_block::field.text.label.links', 'anomaly.extension.links_block::field.text.warning.links', 'anomaly.extension.links_block::field.text.placeholder.links', 'anomaly.extension.links_block::field.text.instructions.links'),
(156, 144, 'en', 'anomaly.extension.links_block::field.url.label.links', 'anomaly.extension.links_block::field.url.warning.links', 'anomaly.extension.links_block::field.url.placeholder.links', 'anomaly.extension.links_block::field.url.instructions.links'),
(157, 145, 'en', 'anomaly.extension.links_block::field.target.label.links', 'anomaly.extension.links_block::field.target.warning.links', 'anomaly.extension.links_block::field.target.placeholder.links', 'anomaly.extension.links_block::field.target.instructions.links'),
(158, 146, 'en', NULL, NULL, NULL, NULL),
(159, 146, 'es', NULL, NULL, NULL, NULL),
(160, 147, 'en', NULL, NULL, NULL, NULL),
(161, 147, 'es', NULL, NULL, NULL, NULL),
(162, 148, 'en', NULL, NULL, NULL, NULL),
(163, 148, 'es', NULL, NULL, NULL, NULL),
(164, 149, 'en', NULL, NULL, NULL, NULL),
(165, 149, 'es', NULL, NULL, NULL, NULL),
(166, 150, 'en', NULL, NULL, NULL, NULL),
(167, 150, 'es', NULL, NULL, NULL, NULL),
(168, 151, 'en', NULL, NULL, NULL, NULL),
(169, 151, 'es', NULL, NULL, NULL, NULL),
(170, 152, 'en', NULL, NULL, NULL, NULL),
(171, 152, 'es', NULL, NULL, NULL, NULL),
(172, 153, 'en', NULL, NULL, NULL, NULL),
(173, 153, 'es', NULL, NULL, NULL, NULL),
(174, 154, 'en', NULL, NULL, NULL, NULL),
(175, 154, 'es', NULL, NULL, NULL, NULL),
(176, 155, 'en', NULL, NULL, NULL, NULL),
(177, 155, 'es', NULL, NULL, NULL, NULL),
(178, 156, 'en', NULL, NULL, NULL, NULL),
(179, 156, 'es', NULL, NULL, NULL, NULL),
(180, 157, 'en', NULL, NULL, NULL, NULL),
(181, 157, 'es', NULL, NULL, NULL, NULL),
(184, 159, 'en', NULL, NULL, NULL, NULL),
(185, 159, 'es', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_fields`
--

CREATE TABLE `cargoweb_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_fields`
--

INSERT INTO `cargoweb_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(3, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(4, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(5, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(6, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(7, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}', 1),
(8, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(9, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}', 1),
(10, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}', 1),
(11, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(12, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}', 1),
(13, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(14, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(15, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(16, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}', 1),
(17, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}', 1),
(18, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}', 1),
(19, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(20, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(21, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(22, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(23, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(24, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(25, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(26, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(27, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(28, 'files', 'alt_text', 'anomaly.field_type.text', 'a:0:{}', 1),
(29, 'files', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(30, 'files', 'caption', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(31, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(32, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(33, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(34, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(35, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(36, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}', 1),
(37, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}', 1),
(38, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(39, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}', 1),
(40, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}', 1),
(41, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(42, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(43, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(44, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(45, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(46, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(47, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(48, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(49, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(51, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}', 1),
(52, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(53, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(54, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}', 1),
(55, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}', 1),
(56, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}', 1),
(57, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(58, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(59, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(60, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(61, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(62, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(63, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(64, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(65, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(66, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(67, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}', 1),
(68, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(69, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(70, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(71, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(72, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(73, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(74, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}', 1),
(75, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}', 1),
(76, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(77, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(78, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(79, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(81, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}', 1),
(82, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}', 1),
(83, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(84, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(85, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(86, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(87, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(88, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}', 1),
(89, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(90, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(91, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(92, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(93, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}', 1),
(94, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:\"type\";s:8:\"password\";}', 1),
(95, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(96, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(97, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(98, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(99, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(100, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(101, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(102, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(103, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(104, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(105, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(106, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(107, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(108, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(109, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(110, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(111, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(112, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(113, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(114, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(115, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(116, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(117, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(118, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(120, 'pages', 'translation_url', 'anomaly.field_type.slug', 'a:5:{s:4:\"type\";s:1:\"_\";s:7:\"slugify\";N;s:9:\"lowercase\";b:1;s:3:\"min\";N;s:3:\"max\";N;}', 0),
(121, 'posts', 'post_image', 'anomaly.field_type.file', 'a:3:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";N;s:4:\"mode\";s:7:\"default\";}', 0),
(122, 'posts', 'imagen_grande_de_ultimo_post', 'anomaly.field_type.file', 'a:3:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";N;s:4:\"mode\";s:7:\"default\";}', 0),
(123, 'posts', 'imagen_post_destacado', 'anomaly.field_type.file', 'a:3:{s:7:\"folders\";N;s:3:\"max\";N;s:4:\"mode\";s:7:\"default\";}', 0),
(124, 'posts', 'post_cite', 'anomaly.field_type.textarea', 'a:6:{s:4:\"rows\";s:1:\"3\";s:3:\"min\";N;s:3:\"max\";s:3:\"170\";s:12:\"show_counter\";b:0;s:8:\"autogrow\";b:1;s:13:\"default_value\";N;}', 0),
(125, 'links_block', 'text', 'anomaly.field_type.text', 'a:0:{}', 1),
(126, 'links_block', 'url', 'anomaly.field_type.url', 'a:0:{}', 1),
(127, 'links_block', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:55:\"anomaly.extension.links_block::field.target.option.self\";s:6:\"_blank\";s:56:\"anomaly.extension.links_block::field.target.option.blank\";}}', 1),
(128, 'links_block', 'links', 'anomaly.field_type.repeater', 'a:2:{s:7:\"related\";s:42:\"Anomaly\\LinksBlockExtension\\Link\\LinkModel\";s:7:\"add_row\";s:46:\"anomaly.extension.links_block::button.add_link\";}', 1),
(129, 'pages', 'keywords', 'anomaly.field_type.textarea', 'a:6:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";s:4:\"1024\";s:12:\"show_counter\";b:0;s:8:\"autogrow\";b:1;s:13:\"default_value\";N;}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_fields_translations`
--

CREATE TABLE `cargoweb_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_fields_translations`
--

INSERT INTO `cargoweb_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(8, 8, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(9, 9, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(10, 10, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(11, 11, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(12, 12, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(13, 13, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(14, 14, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(15, 15, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(16, 16, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(17, 17, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(18, 18, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(19, 19, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(20, 20, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(21, 21, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(22, 22, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(23, 23, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(24, 24, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(25, 25, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(26, 26, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(27, 27, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(28, 28, 'en', 'anomaly.module.files::field.alt_text.name', 'anomaly.module.files::field.alt_text.placeholder', 'anomaly.module.files::field.alt_text.warning', 'anomaly.module.files::field.alt_text.instructions'),
(29, 29, 'en', 'anomaly.module.files::field.title.name', 'anomaly.module.files::field.title.placeholder', 'anomaly.module.files::field.title.warning', 'anomaly.module.files::field.title.instructions'),
(30, 30, 'en', 'anomaly.module.files::field.caption.name', 'anomaly.module.files::field.caption.placeholder', 'anomaly.module.files::field.caption.warning', 'anomaly.module.files::field.caption.instructions'),
(31, 31, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(32, 32, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(33, 33, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(34, 34, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(35, 35, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(36, 36, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(37, 37, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(38, 38, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(39, 39, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(40, 40, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(41, 41, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(42, 42, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(43, 43, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(44, 44, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(45, 45, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(46, 46, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(47, 47, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(48, 48, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(49, 49, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(51, 51, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(52, 52, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(53, 53, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(54, 54, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(55, 55, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(56, 56, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(57, 57, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(58, 58, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(59, 59, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(60, 60, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(61, 61, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(62, 62, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(63, 63, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(64, 64, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(65, 65, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(66, 66, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(67, 67, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(68, 68, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(69, 69, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(70, 70, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(71, 71, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(72, 72, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(73, 73, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(74, 74, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(75, 75, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(76, 76, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(77, 77, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(78, 78, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(79, 79, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(81, 81, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(82, 82, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(83, 83, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(84, 84, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(85, 85, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(86, 86, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(87, 87, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(88, 88, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(89, 89, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(90, 90, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(91, 91, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(92, 92, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(93, 93, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(94, 94, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(95, 95, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(96, 96, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(97, 97, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(98, 98, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(99, 99, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(100, 100, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(101, 101, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(102, 102, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(103, 103, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(104, 104, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(105, 105, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(106, 106, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(107, 107, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(108, 108, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(109, 109, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(110, 110, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(111, 111, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(112, 112, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(113, 113, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(114, 114, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(115, 115, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(116, 116, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(117, 117, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(118, 118, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(121, 120, 'en', 'tranlation_url', NULL, NULL, 'Introcudir el slug de la traduccion de esta pagina'),
(122, 120, 'es', 'translation_url', NULL, NULL, 'Introcudir el slug de la traduccion de esta pagina'),
(123, 121, 'en', NULL, NULL, NULL, NULL),
(124, 121, 'es', 'post_image', 'Imagen del post', NULL, 'Introducir una imagen para el post con extension jpg o png y de dimensiones: 518px de ancho por 328px de alto'),
(125, 122, 'en', NULL, NULL, NULL, NULL),
(126, 122, 'es', 'Imagen grande de ultimo post', 'Imagen grande de ultimo post', NULL, 'tamaño: 992px por 400px; extensiones: jpg o png'),
(127, 123, 'en', NULL, NULL, NULL, NULL),
(128, 123, 'es', 'imagen_post_destacado', 'imagen_post_destacado', NULL, 'Introducir una imagen para el post destacado de 868x400 px'),
(129, 124, 'en', 'post_cite', 'post_cite', NULL, 'Introducir la cita que aparece junto a la imagen en las noticias (sin las comillas)'),
(130, 124, 'es', 'post_cite', 'post_cite', NULL, 'Introducir la cita que aparece junto a la imagen en las noticias (sin las comillas)'),
(131, 125, 'en', 'anomaly.extension.links_block::field.text.name', 'anomaly.extension.links_block::field.text.placeholder', 'anomaly.extension.links_block::field.text.warning', 'anomaly.extension.links_block::field.text.instructions'),
(132, 126, 'en', 'anomaly.extension.links_block::field.url.name', 'anomaly.extension.links_block::field.url.placeholder', 'anomaly.extension.links_block::field.url.warning', 'anomaly.extension.links_block::field.url.instructions'),
(133, 127, 'en', 'anomaly.extension.links_block::field.target.name', 'anomaly.extension.links_block::field.target.placeholder', 'anomaly.extension.links_block::field.target.warning', 'anomaly.extension.links_block::field.target.instructions'),
(134, 128, 'en', 'anomaly.extension.links_block::field.links.name', 'anomaly.extension.links_block::field.links.placeholder', 'anomaly.extension.links_block::field.links.warning', 'anomaly.extension.links_block::field.links.instructions'),
(135, 129, 'en', NULL, NULL, NULL, NULL),
(136, 129, 'es', 'keywords', 'keyword1, keyword2', NULL, 'Palabras clave a posicionar. SEO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_streams`
--

CREATE TABLE `cargoweb_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_streams`
--

INSERT INTO `cargoweb_streams_streams` (`id`, `sort_order`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `config`) VALUES
(1, NULL, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 'a:0:{}'),
(2, NULL, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(3, NULL, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(4, NULL, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(5, NULL, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(6, NULL, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(7, NULL, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(8, NULL, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(9, NULL, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 'a:0:{}'),
(10, NULL, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(11, NULL, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(12, NULL, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 'a:0:{}'),
(13, NULL, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(14, NULL, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(15, NULL, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(16, NULL, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(17, NULL, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(18, NULL, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(19, NULL, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(20, NULL, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(21, NULL, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(22, NULL, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(23, NULL, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(24, NULL, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(25, NULL, 'pages', 'inicio_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(26, NULL, 'pages', 'servicios_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(27, NULL, 'pages', 'empresa_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(28, NULL, 'posts', 'destacado_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(29, NULL, 'links_block', 'blocks', 'links_block_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(30, NULL, 'links_block', 'links', 'links_block_', 'url', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(31, NULL, 'pages', 'contact_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(32, NULL, 'pages', 'privacy_policy_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(33, NULL, 'pages', 'legal_notice_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(34, NULL, 'pages', 'politica_de_cookies_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_streams_streams_translations`
--

CREATE TABLE `cargoweb_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_streams_streams_translations`
--

INSERT INTO `cargoweb_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(2, 2, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(3, 3, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(4, 4, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(5, 5, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(6, 6, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(7, 7, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(8, 8, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(9, 9, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(10, 10, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(11, 11, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(12, 12, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(13, 13, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(14, 14, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(15, 15, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(16, 16, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(17, 17, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(18, 18, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(19, 19, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(20, 20, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(21, 21, 'en', 'Images', 'A folder for images.'),
(22, 22, 'en', 'Documents', 'A folder for documents.'),
(23, 23, 'en', 'Default', 'A simple page type.'),
(24, 24, 'en', 'Default', 'A simple post type.'),
(25, 25, 'en', 'inicio', NULL),
(26, 26, 'en', 'servicios', NULL),
(27, 27, 'en', 'empresa', NULL),
(28, 28, 'en', 'Destacado', NULL),
(29, 29, 'en', 'anomaly.extension.links_block::stream.blocks.name', 'anomaly.extension.links_block::stream.blocks.description'),
(30, 30, 'en', 'anomaly.extension.links_block::stream.links.name', 'anomaly.extension.links_block::stream.links.description'),
(31, 31, 'en', 'Contact', 'Contact page'),
(32, 32, 'en', 'privacy-policy', 'privacy-policy'),
(33, 33, 'en', 'Legal notice', NULL),
(34, 34, 'en', 'Política de cookies', 'Política de cookies');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_url_link_type_urls`
--

CREATE TABLE `cargoweb_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_url_link_type_urls`
--

INSERT INTO `cargoweb_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, 'http://pyrocms.com/'),
(2, 2, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_url_link_type_urls_translations`
--

CREATE TABLE `cargoweb_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_url_link_type_urls_translations`
--

INSERT INTO `cargoweb_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, 'en', 'PyroCMS.com', NULL),
(2, 2, '2018-06-29 15:06:38', NULL, '2018-06-29 15:06:38', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_users_roles`
--

CREATE TABLE `cargoweb_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_users_roles`
--

INSERT INTO `cargoweb_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, NULL, 'admin', NULL),
(2, 2, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, NULL, 'user', NULL),
(3, 3, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_users_roles_translations`
--

CREATE TABLE `cargoweb_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_users_roles_translations`
--

INSERT INTO `cargoweb_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2018-06-29 13:06:45', NULL, '2018-06-29 13:06:45', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_users_users`
--

CREATE TABLE `cargoweb_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_users_users`
--

INSERT INTO `cargoweb_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`) VALUES
(1, 1, '2018-06-29 13:06:45', 1, '2018-11-13 15:32:25', 1, NULL, 'admin@cargoservicesgroup.com', 'admin', '$2y$10$pssuJA/f7hAtjiVxBGMtR.LqPaUAhVsI.y.6bB/BDYDUIFwS0qLiq', 'Administrator', NULL, NULL, 1, 1, NULL, '2018-11-13 13:29:01', 'cVw5ecXKFPmIQbWfDYgiMGjd7IOcaQqaeEDIsFihf2a1dGpdODWgKmfWdBTn', NULL, NULL, '2018-11-13 15:32:25', '85.53.249.156'),
(2, 2, '2018-06-29 13:06:46', NULL, '2018-06-29 13:06:46', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$JopgGMRuuXyZu5aGgPtzVuOwdODoSP6/5eV0JkvEtTMcp.sno7BmK', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargoweb_users_users_roles`
--

CREATE TABLE `cargoweb_users_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargoweb_users_users_roles`
--

INSERT INTO `cargoweb_users_users_roles` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 2, 2, NULL),
(2, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indices de la tabla `applications_domains`
--
ALTER TABLE `applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indices de la tabla `cargoweb_addons_extensions`
--
ALTER TABLE `cargoweb_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indices de la tabla `cargoweb_addons_modules`
--
ALTER TABLE `cargoweb_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indices de la tabla `cargoweb_cache`
--
ALTER TABLE `cargoweb_cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indices de la tabla `cargoweb_configuration_configuration`
--
ALTER TABLE `cargoweb_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_dashboard_dashboards`
--
ALTER TABLE `cargoweb_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e4da3b7fbbce2345d7772b0674a318d5` (`slug`);

--
-- Indices de la tabla `cargoweb_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `cargoweb_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ef54574889c671bd549cd498d11eece0` (`entry_id`,`related_id`);

--
-- Indices de la tabla `cargoweb_dashboard_dashboards_translations`
--
ALTER TABLE `cargoweb_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_dashboard_widgets`
--
ALTER TABLE `cargoweb_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_dashboard_widgets_allowed_roles`
--
ALTER TABLE `cargoweb_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `30a16932996802771e66ae403bf7ed8d` (`entry_id`,`related_id`);

--
-- Indices de la tabla `cargoweb_dashboard_widgets_translations`
--
ALTER TABLE `cargoweb_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_failed_jobs`
--
ALTER TABLE `cargoweb_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_files_disks`
--
ALTER TABLE `cargoweb_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `70efdf2ec9b086079795c442636b55fb` (`slug`);

--
-- Indices de la tabla `cargoweb_files_disks_translations`
--
ALTER TABLE `cargoweb_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_files_documents`
--
ALTER TABLE `cargoweb_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_files_documents_translations`
--
ALTER TABLE `cargoweb_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_files_files`
--
ALTER TABLE `cargoweb_files_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_files_folders`
--
ALTER TABLE `cargoweb_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b6d767d2f8ed5d21a44b0e5886680cb9` (`slug`);

--
-- Indices de la tabla `cargoweb_files_folders_translations`
--
ALTER TABLE `cargoweb_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_files_images`
--
ALTER TABLE `cargoweb_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_files_images_translations`
--
ALTER TABLE `cargoweb_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_jobs`
--
ALTER TABLE `cargoweb_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indices de la tabla `cargoweb_links_block_blocks`
--
ALTER TABLE `cargoweb_links_block_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_links_block_blocks_links`
--
ALTER TABLE `cargoweb_links_block_blocks_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a8baa56554f96369ab93e4f3bb068c22` (`entry_id`,`related_id`);

--
-- Indices de la tabla `cargoweb_links_block_links`
--
ALTER TABLE `cargoweb_links_block_links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_links_block_links_translations`
--
ALTER TABLE `cargoweb_links_block_links_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_block_links_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_migrations`
--
ALTER TABLE `cargoweb_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_navigation_links`
--
ALTER TABLE `cargoweb_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_navigation_links_allowed_roles`
--
ALTER TABLE `cargoweb_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3894987cc73b77f5eb5ccba441bcbda3` (`entry_id`,`related_id`);

--
-- Indices de la tabla `cargoweb_navigation_menus`
--
ALTER TABLE `cargoweb_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d645920e395fedad7bbbed0eca3fe2e0` (`slug`);

--
-- Indices de la tabla `cargoweb_navigation_menus_translations`
--
ALTER TABLE `cargoweb_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_notifications`
--
ALTER TABLE `cargoweb_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `cargoweb_pages_contact_pages`
--
ALTER TABLE `cargoweb_pages_contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_contact_pages_translations`
--
ALTER TABLE `cargoweb_pages_contact_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_contact_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_default_pages`
--
ALTER TABLE `cargoweb_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_default_pages_translations`
--
ALTER TABLE `cargoweb_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_empresa_pages`
--
ALTER TABLE `cargoweb_pages_empresa_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_empresa_pages_translations`
--
ALTER TABLE `cargoweb_pages_empresa_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_empresa_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_inicio_pages`
--
ALTER TABLE `cargoweb_pages_inicio_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_inicio_pages_translations`
--
ALTER TABLE `cargoweb_pages_inicio_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_inicio_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_legal_notice_pages`
--
ALTER TABLE `cargoweb_pages_legal_notice_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_legal_notice_pages_translations`
--
ALTER TABLE `cargoweb_pages_legal_notice_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_legal_notice_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_pages`
--
ALTER TABLE `cargoweb_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_pages_allowed_roles`
--
ALTER TABLE `cargoweb_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3691a57dc384b8adc851052bf7bea38f` (`entry_id`,`related_id`);

--
-- Indices de la tabla `cargoweb_pages_pages_translations`
--
ALTER TABLE `cargoweb_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_politica_de_cookies_pages`
--
ALTER TABLE `cargoweb_pages_politica_de_cookies_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_politica_de_cookies_pages_translations`
--
ALTER TABLE `cargoweb_pages_politica_de_cookies_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_politica_de_cookies_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_privacy_policy_pages`
--
ALTER TABLE `cargoweb_pages_privacy_policy_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_privacy_policy_pages_translations`
--
ALTER TABLE `cargoweb_pages_privacy_policy_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_privacy_policy_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_servicios_pages`
--
ALTER TABLE `cargoweb_pages_servicios_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_pages_servicios_pages_translations`
--
ALTER TABLE `cargoweb_pages_servicios_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_servicios_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_pages_types`
--
ALTER TABLE `cargoweb_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3295c76acbf4caaed33c36b1b5fc2cb1` (`slug`);

--
-- Indices de la tabla `cargoweb_pages_types_translations`
--
ALTER TABLE `cargoweb_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_page_link_type_pages`
--
ALTER TABLE `cargoweb_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_page_link_type_pages_translations`
--
ALTER TABLE `cargoweb_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_posts_categories`
--
ALTER TABLE `cargoweb_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `32bb90e8976aab5298d5da10fe66f21d` (`slug`);

--
-- Indices de la tabla `cargoweb_posts_categories_translations`
--
ALTER TABLE `cargoweb_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_posts_default_posts`
--
ALTER TABLE `cargoweb_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_posts_default_posts_translations`
--
ALTER TABLE `cargoweb_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_posts_destacado_posts`
--
ALTER TABLE `cargoweb_posts_destacado_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_posts_destacado_posts_translations`
--
ALTER TABLE `cargoweb_posts_destacado_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_destacado_posts_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_posts_posts`
--
ALTER TABLE `cargoweb_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ad61ab143223efbc24c7d2583be69251` (`str_id`),
  ADD UNIQUE KEY `28dd2c7955ce926456240b2ff0100bde` (`slug`);

--
-- Indices de la tabla `cargoweb_posts_posts_translations`
--
ALTER TABLE `cargoweb_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_posts_types`
--
ALTER TABLE `cargoweb_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `7647966b7343c29048673252e490f736` (`slug`);

--
-- Indices de la tabla `cargoweb_posts_types_translations`
--
ALTER TABLE `cargoweb_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_preferences_preferences`
--
ALTER TABLE `cargoweb_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_redirects_redirects`
--
ALTER TABLE `cargoweb_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `26657d5ff9020d2abefe558796b99584` (`from`);

--
-- Indices de la tabla `cargoweb_sessions`
--
ALTER TABLE `cargoweb_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indices de la tabla `cargoweb_settings_settings`
--
ALTER TABLE `cargoweb_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f899139df5e1059396431415e770c6dd` (`key`);

--
-- Indices de la tabla `cargoweb_streams_assignments`
--
ALTER TABLE `cargoweb_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indices de la tabla `cargoweb_streams_assignments_translations`
--
ALTER TABLE `cargoweb_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_streams_fields`
--
ALTER TABLE `cargoweb_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indices de la tabla `cargoweb_streams_fields_translations`
--
ALTER TABLE `cargoweb_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_streams_streams`
--
ALTER TABLE `cargoweb_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indices de la tabla `cargoweb_streams_streams_translations`
--
ALTER TABLE `cargoweb_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_url_link_type_urls`
--
ALTER TABLE `cargoweb_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargoweb_url_link_type_urls_translations`
--
ALTER TABLE `cargoweb_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_users_roles`
--
ALTER TABLE `cargoweb_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `07e1cd7dca89a1678042477183b7ac3f` (`slug`);

--
-- Indices de la tabla `cargoweb_users_roles_translations`
--
ALTER TABLE `cargoweb_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cargoweb_users_users`
--
ALTER TABLE `cargoweb_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec8956637a99787bd197eacd77acce5e` (`email`),
  ADD UNIQUE KEY `6974ce5ac660610b44d9b9fed0ff9548` (`username`);

--
-- Indices de la tabla `cargoweb_users_users_roles`
--
ALTER TABLE `cargoweb_users_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `657a222530265bc0573ef5330b180325` (`entry_id`,`related_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `applications_domains`
--
ALTER TABLE `applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_addons_extensions`
--
ALTER TABLE `cargoweb_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cargoweb_addons_modules`
--
ALTER TABLE `cargoweb_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cargoweb_configuration_configuration`
--
ALTER TABLE `cargoweb_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_dashboards`
--
ALTER TABLE `cargoweb_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `cargoweb_dashboard_dashboards_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_dashboards_translations`
--
ALTER TABLE `cargoweb_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_widgets`
--
ALTER TABLE `cargoweb_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_widgets_allowed_roles`
--
ALTER TABLE `cargoweb_dashboard_widgets_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_dashboard_widgets_translations`
--
ALTER TABLE `cargoweb_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_failed_jobs`
--
ALTER TABLE `cargoweb_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_disks`
--
ALTER TABLE `cargoweb_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_disks_translations`
--
ALTER TABLE `cargoweb_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_documents`
--
ALTER TABLE `cargoweb_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_documents_translations`
--
ALTER TABLE `cargoweb_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_files`
--
ALTER TABLE `cargoweb_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_folders`
--
ALTER TABLE `cargoweb_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_folders_translations`
--
ALTER TABLE `cargoweb_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_images`
--
ALTER TABLE `cargoweb_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cargoweb_files_images_translations`
--
ALTER TABLE `cargoweb_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cargoweb_jobs`
--
ALTER TABLE `cargoweb_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_links_block_blocks`
--
ALTER TABLE `cargoweb_links_block_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_links_block_blocks_links`
--
ALTER TABLE `cargoweb_links_block_blocks_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_links_block_links`
--
ALTER TABLE `cargoweb_links_block_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_links_block_links_translations`
--
ALTER TABLE `cargoweb_links_block_links_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_migrations`
--
ALTER TABLE `cargoweb_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `cargoweb_navigation_links`
--
ALTER TABLE `cargoweb_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_navigation_links_allowed_roles`
--
ALTER TABLE `cargoweb_navigation_links_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_navigation_menus`
--
ALTER TABLE `cargoweb_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_navigation_menus_translations`
--
ALTER TABLE `cargoweb_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_contact_pages`
--
ALTER TABLE `cargoweb_pages_contact_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_contact_pages_translations`
--
ALTER TABLE `cargoweb_pages_contact_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_default_pages`
--
ALTER TABLE `cargoweb_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_default_pages_translations`
--
ALTER TABLE `cargoweb_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_empresa_pages`
--
ALTER TABLE `cargoweb_pages_empresa_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_empresa_pages_translations`
--
ALTER TABLE `cargoweb_pages_empresa_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_inicio_pages`
--
ALTER TABLE `cargoweb_pages_inicio_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_inicio_pages_translations`
--
ALTER TABLE `cargoweb_pages_inicio_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_legal_notice_pages`
--
ALTER TABLE `cargoweb_pages_legal_notice_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_legal_notice_pages_translations`
--
ALTER TABLE `cargoweb_pages_legal_notice_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_pages`
--
ALTER TABLE `cargoweb_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_pages_allowed_roles`
--
ALTER TABLE `cargoweb_pages_pages_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_pages_translations`
--
ALTER TABLE `cargoweb_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_politica_de_cookies_pages`
--
ALTER TABLE `cargoweb_pages_politica_de_cookies_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_politica_de_cookies_pages_translations`
--
ALTER TABLE `cargoweb_pages_politica_de_cookies_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_privacy_policy_pages`
--
ALTER TABLE `cargoweb_pages_privacy_policy_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_privacy_policy_pages_translations`
--
ALTER TABLE `cargoweb_pages_privacy_policy_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_servicios_pages`
--
ALTER TABLE `cargoweb_pages_servicios_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_servicios_pages_translations`
--
ALTER TABLE `cargoweb_pages_servicios_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_types`
--
ALTER TABLE `cargoweb_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cargoweb_pages_types_translations`
--
ALTER TABLE `cargoweb_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cargoweb_page_link_type_pages`
--
ALTER TABLE `cargoweb_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_page_link_type_pages_translations`
--
ALTER TABLE `cargoweb_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_categories`
--
ALTER TABLE `cargoweb_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_categories_translations`
--
ALTER TABLE `cargoweb_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_default_posts`
--
ALTER TABLE `cargoweb_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_default_posts_translations`
--
ALTER TABLE `cargoweb_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_destacado_posts`
--
ALTER TABLE `cargoweb_posts_destacado_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_destacado_posts_translations`
--
ALTER TABLE `cargoweb_posts_destacado_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_posts`
--
ALTER TABLE `cargoweb_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_posts_translations`
--
ALTER TABLE `cargoweb_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_types`
--
ALTER TABLE `cargoweb_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_posts_types_translations`
--
ALTER TABLE `cargoweb_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargoweb_preferences_preferences`
--
ALTER TABLE `cargoweb_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cargoweb_redirects_redirects`
--
ALTER TABLE `cargoweb_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargoweb_settings_settings`
--
ALTER TABLE `cargoweb_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_assignments`
--
ALTER TABLE `cargoweb_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_assignments_translations`
--
ALTER TABLE `cargoweb_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_fields`
--
ALTER TABLE `cargoweb_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_fields_translations`
--
ALTER TABLE `cargoweb_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_streams`
--
ALTER TABLE `cargoweb_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `cargoweb_streams_streams_translations`
--
ALTER TABLE `cargoweb_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `cargoweb_url_link_type_urls`
--
ALTER TABLE `cargoweb_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_url_link_type_urls_translations`
--
ALTER TABLE `cargoweb_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_users_roles`
--
ALTER TABLE `cargoweb_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargoweb_users_roles_translations`
--
ALTER TABLE `cargoweb_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cargoweb_users_users`
--
ALTER TABLE `cargoweb_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargoweb_users_users_roles`
--
ALTER TABLE `cargoweb_users_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
