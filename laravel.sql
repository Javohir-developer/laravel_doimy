-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2020 г., 11:40
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regions_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `districts`
--

INSERT INTO `districts` (`id`, `name`, `regions_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Uchtepa tumani', 1, 1, NULL, NULL),
(2, 'Bektemir tumani', 1, 1, NULL, NULL),
(3, 'Mirzo Ulugʻbek tumani', 1, 1, NULL, NULL),
(4, 'Mirobod tumani', 1, 1, NULL, NULL),
(5, 'Sergeli tumani', 1, 1, NULL, NULL),
(6, 'Olmazor tumani', 1, 1, NULL, NULL),
(7, 'Chilonzor tumani', 1, 1, NULL, NULL),
(8, 'Shayxontohur tumani', 1, 1, NULL, NULL),
(9, 'Yunusobod tumani', 1, 1, NULL, NULL),
(10, 'Yakkasaroy tumani', 1, 1, NULL, NULL),
(11, 'Yashnobod tumani', 1, 1, NULL, NULL),
(12, 'Angor tumani', 2, 1, NULL, NULL),
(13, 'Boysun tumani', 2, 1, NULL, NULL),
(14, 'Denov tumani', 2, 1, NULL, NULL),
(15, 'Jarqoʻrgʻon tumani', 2, 1, NULL, NULL),
(16, 'Qiziriq tumani', 2, 1, NULL, NULL),
(17, 'Qumqoʻrgʻon tumani', 2, 1, NULL, NULL),
(18, 'Muzrabot tumani', 2, 1, NULL, NULL),
(19, 'Oltinsoy tumani', 2, 1, NULL, NULL),
(20, 'Sariosiyo tumani', 2, 1, NULL, NULL),
(21, 'Sherobod tumani', 2, 1, NULL, NULL),
(22, 'Shoʻrchi tumani', 2, 1, NULL, NULL),
(23, 'Termiz tumani', 2, 1, NULL, NULL),
(24, 'Uzun tumani', 2, 1, NULL, NULL),
(25, 'Bandixon tumani', 2, 1, NULL, NULL),
(26, 'Sardoba tumani', 3, 1, NULL, NULL),
(27, 'Boyovut tumani', 3, 1, NULL, NULL),
(28, 'Guliston tumani', 3, 1, NULL, NULL),
(29, 'Xovos tumani', 3, 1, NULL, NULL),
(30, 'Sirdaryo tumani', 3, 1, NULL, NULL),
(31, 'Mirzaobod tumani', 3, 1, NULL, NULL),
(32, 'Sayxunobod tumani', 3, 1, NULL, NULL),
(33, 'Oqoltin tumani', 3, 1, NULL, NULL),
(34, 'Bulungʻur tumani', 4, 1, NULL, NULL),
(35, 'Ishtixon tumani', 4, 1, NULL, NULL),
(36, 'Jomboy tumani', 4, 1, NULL, NULL),
(37, 'Kattaqoʻrgʻon tumani', 4, 1, NULL, NULL),
(38, 'Qoʻshrabot tumani', 4, 1, NULL, NULL),
(39, 'Narpay tumani', 4, 1, NULL, NULL),
(40, 'Nurobod tumani', 4, 1, NULL, NULL),
(41, 'Oqdaryo tumani', 4, 1, NULL, NULL),
(42, 'Paxtachi tumani', 4, 1, NULL, NULL),
(43, 'Payariq tumani', 4, 1, NULL, NULL),
(44, 'Pastdargʻom tumani', 4, 1, NULL, NULL),
(45, 'Samarqand tumani', 4, 1, NULL, NULL),
(46, 'Toyloq tumani', 4, 1, NULL, NULL),
(47, '	Urgut tumani', 4, 1, NULL, NULL),
(48, 'Amudaryo tumani', 5, 1, NULL, NULL),
(49, 'Beruniy tumani', 5, 1, NULL, NULL),
(50, 'Chimboy tumani', 5, 1, NULL, NULL),
(51, 'Ellikqalʼa tumani', 5, 1, NULL, NULL),
(52, 'Kegeyli tumani', 5, 1, NULL, NULL),
(53, 'Moʻynoq tumani', 5, 1, NULL, NULL),
(54, 'Nukus tumani', 5, 1, NULL, NULL),
(55, 'Qanlikoʻl tumani', 5, 1, NULL, NULL),
(56, 'Qoʻngʻirot tumani', 5, 1, NULL, NULL),
(57, 'Qoraoʻzak tumani', 5, 1, NULL, NULL),
(58, 'Shumanay tumani', 5, 1, NULL, NULL),
(59, 'Taxtakoʻpir tumani', 5, 1, NULL, NULL),
(60, 'Toʻrtkoʻl tumani', 5, 1, NULL, NULL),
(61, 'Xoʻjayli tumani', 5, 1, NULL, NULL),
(62, 'Chiroqchi tumani', 6, 1, NULL, NULL),
(63, 'Dehqonobod tumani', 6, 1, NULL, NULL),
(64, 'G\'uzor tumani', 6, 1, NULL, NULL),
(65, 'Kasbi tumani', 6, 1, NULL, NULL),
(66, 'Kitob tumani', 6, 1, NULL, NULL),
(67, 'Koson tumani', 6, 1, NULL, NULL),
(68, 'Muborak tumani	', 6, 1, NULL, NULL),
(69, 'Nishon tumani', 6, 1, NULL, NULL),
(70, 'Qamashi tumani', 6, 1, NULL, NULL),
(71, 'Qamashi tumani', 6, 1, NULL, NULL),
(72, 'Qarshi shahri', 6, 1, NULL, NULL),
(73, 'Qarshi tumani', 6, 1, NULL, NULL),
(74, 'Shahrisabz shahri', 6, 1, NULL, NULL),
(75, 'Yakkabog\' tumani', 6, 1, NULL, NULL),
(76, 'Konimex tumani', 7, 1, NULL, NULL),
(77, 'Karmana tumani', 7, 1, NULL, NULL),
(78, 'Qiziltepa (tuman, Navoiy viloyati)', 7, 1, NULL, NULL),
(79, 'Xatirchi tumani', 7, 1, NULL, NULL),
(80, 'Navbahor tumani', 7, 1, NULL, NULL),
(81, 'Nurota tumani', 7, 1, NULL, NULL),
(82, 'Tomdi tumani', 7, 1, NULL, NULL),
(83, 'Uchquduq tumani', 7, 1, NULL, NULL),
(84, 'Chortoq tumani', 8, 1, NULL, NULL),
(85, 'Chust tumani', 8, 1, NULL, NULL),
(86, 'Kosonsoy tumani', 8, 1, NULL, NULL),
(87, 'Mingbuloq tumani', 8, 1, NULL, NULL),
(88, 'Yangiqoʻrgʻon tumani', 8, 1, NULL, NULL),
(89, 'Namangan tumani', 8, 1, NULL, NULL),
(90, 'Norin tumani (Oʻzbekiston)', 8, 1, NULL, NULL),
(91, 'Pop tumani', 8, 1, NULL, NULL),
(92, 'Toʻraqoʻrgʻon tumani', 8, 1, NULL, NULL),
(93, 'Uchqoʻrgʻon tumani', 8, 1, NULL, NULL),
(94, 'Uychi tumani', 8, 1, NULL, NULL),
(95, 'Bogʻot tumani', 9, 1, NULL, NULL),
(96, 'Gurlan tumani', 9, 1, NULL, NULL),
(97, 'Xonqa tumani', 9, 1, NULL, NULL),
(98, 'Hazorasp tumani', 9, 1, NULL, NULL),
(99, 'Xiva tumani', 9, 1, NULL, NULL),
(100, 'Qoʻshkoʻpir tumani', 9, 1, NULL, NULL),
(101, 'Shovot tumani', 9, 1, NULL, NULL),
(102, 'Urganch tumani', 9, 1, NULL, NULL),
(103, 'Yangiariq tumani', 9, 1, NULL, NULL),
(104, 'Yangibozor tumani', 9, 1, NULL, NULL),
(105, 'Tupproqqalʼa tumani', 9, 1, NULL, NULL),
(106, 'Arnasoy tumani', 10, 1, NULL, NULL),
(107, 'Baxmal tumani', 10, 1, NULL, NULL),
(108, 'Doʻstlik tumani', 10, 1, NULL, NULL),
(109, 'Forish tumani', 10, 1, NULL, NULL),
(110, 'Gʻallaorol tumani', 10, 1, NULL, NULL),
(111, 'Sharof Rashidov tumani', 10, 1, NULL, NULL),
(112, 'Mirzachoʻl tumani', 10, 1, NULL, NULL),
(113, 'Paxtakor tumani', 10, 1, NULL, NULL),
(114, 'Yangiobod tumani', 10, 1, NULL, NULL),
(115, 'Zomin tumani', 10, 1, NULL, NULL),
(116, 'Zafarobod tumani', 10, 1, NULL, NULL),
(117, 'Zarbdor tumani', 10, 1, NULL, NULL),
(118, 'Oltiariq tumani', 11, 1, NULL, NULL),
(119, 'Bagʻdod tumani', 11, 1, NULL, NULL),
(120, 'Beshariq tumani', 11, 1, NULL, NULL),
(121, 'Buvayda tumani', 11, 1, NULL, NULL),
(122, 'Dangʻara tumani', 11, 1, NULL, NULL),
(123, 'Oʻzbekiston tumani', 11, 1, NULL, NULL),
(124, 'Fargʻona tumani', 11, 1, NULL, NULL),
(125, 'Furqat tumani', 11, 1, NULL, NULL),
(126, 'Yozyovon tumani', 11, 1, NULL, NULL),
(127, 'Qoʻshtepa tumani', 11, 1, NULL, NULL),
(128, 'Quva tumani', 11, 1, NULL, NULL),
(129, 'Rishton tumani', 11, 1, NULL, NULL),
(130, 'Soʻx tumani', 11, 1, NULL, NULL),
(131, 'Toshloq tumani', 11, 1, NULL, NULL),
(132, 'Uchkoʻprik tumani', 11, 1, NULL, NULL),
(133, 'Olot tumani', 12, 1, NULL, NULL),
(134, 'Buxoro tumani', 12, 1, NULL, NULL),
(135, 'Gʻijduvon tumani', 12, 1, NULL, NULL),
(136, 'Jondor tumani', 12, 1, NULL, NULL),
(137, 'Kogon tumani', 12, 1, NULL, NULL),
(138, 'Qorakoʻl tumani', 12, 1, NULL, NULL),
(139, 'Qorovulbozor tumani', 12, 1, NULL, NULL),
(140, 'Peshku tumani', 12, 1, NULL, NULL),
(141, 'Romitan tumani', 12, 1, NULL, NULL),
(142, 'Shofirkon tumani', 12, 1, NULL, NULL),
(143, 'Vobkent tumani', 12, 1, NULL, NULL),
(144, 'Andijon (tuman)', 13, 1, NULL, NULL),
(145, 'Asaka tumani', 13, 1, NULL, NULL),
(146, 'Baliqchi tumani', 13, 1, NULL, NULL),
(147, 'Boʻz (tuman)', 13, 1, NULL, NULL),
(148, 'Buloqboshi tumani', 13, 1, NULL, NULL),
(149, 'Izboskan (tuman)', 13, 1, NULL, NULL),
(150, 'Jalaquduq (tuman)', 13, 1, NULL, NULL),
(151, 'Xoʻjaobod tumani', 13, 1, NULL, NULL),
(152, 'Qoʻrgʻontepa tumani', 13, 1, NULL, NULL),
(153, 'Marhamat tumani', 13, 1, NULL, NULL),
(154, 'Oltinkoʻl (tuman)', 13, 1, NULL, NULL),
(155, 'Paxtaobod tumani', 13, 1, NULL, NULL),
(156, 'Shahrixon (tuman)', 13, 1, NULL, NULL),
(157, 'Ulugʻnor (tuman)', 13, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `football_field`
--

CREATE TABLE `football_field` (
  `id` int(11) NOT NULL,
  `distrocts_id` int(11) NOT NULL,
  `image1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lacation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `phone1` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messinger_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `buyi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `football_field`
--

INSERT INTO `football_field` (`id`, `distrocts_id`, `image1`, `image2`, `lacation`, `address`, `description`, `phone1`, `phone2`, `messinger_link`, `eni`, `buyi`, `working_hours`, `created_at`, `updated_at`) VALUES
(3, 14, '15954036911Снимок экрана (1).png', '15954036912Снимок экрана (1).png', 'sadasdddddddddddd', 'chlanzor kuchasi', 'qwerqweq', '998718556', '998718556', 'elmurodovjavogir', '10', '20', '12 dan 15', '2020-07-22 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_19_165921_create_products_table', 1),
(5, '2019_02_15_131448_create_transactions_table', 2),
(6, '2019_02_15_150408_create_payment_systems_table', 2),
(7, '2019_02_24_073925_create_payment_system_params_table', 2),
(8, '2020_03_17_105343_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payment_systems`
--

CREATE TABLE `payment_systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payment_systems`
--

INSERT INTO `payment_systems` (`id`, `name`, `system`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Payme', 'payme', 'not_active', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(2, 'Click', 'click', 'not_active', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(3, 'Paynet', 'paynet', 'not_active', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(4, 'Stripe', 'stripe', 'not_active', '2020-07-20 07:29:25', '2020-07-20 07:29:25');

-- --------------------------------------------------------

--
-- Структура таблицы `payment_system_params`
--

CREATE TABLE `payment_system_params` (
  `id` int(10) UNSIGNED NOT NULL,
  `system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payment_system_params`
--

INSERT INTO `payment_system_params` (`id`, `system`, `label`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'payme', 'Login', 'login', 'Paycom', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(2, 'payme', 'Merchant id', 'merchant_id', 'merchant', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(3, 'payme', 'Password', 'password', 'password', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(4, 'payme', 'Key', 'key', 'key', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(5, 'click', 'Service id', 'service_id', 'service_id', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(6, 'click', 'Secret key', 'secret_key', 'key', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(7, 'click', 'Merchant Id', 'merchant_id', '0000', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(8, 'click', 'Merchant user id', 'merchant_user_id', '0000', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(9, 'paynet', 'Login', 'login', 'login', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(10, 'paynet', 'Password', 'password', 'password', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(11, 'paynet', 'Service id', 'service_id', 'service_id', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(12, 'stripe', 'Secret key', 'secret_key', 'secret_key', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(13, 'stripe', 'Publishable key', 'publishable_key', 'publishable_key', '2020-07-20 07:29:25', '2020-07-20 07:29:25'),
(14, 'stripe', 'Proxy', 'proxy', '', '2020-07-20 07:29:25', '2020-07-20 07:29:25');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `details` json NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toshkent', 1, NULL, NULL),
(2, 'Surxondaryo', 1, NULL, NULL),
(3, 'Sirdaryo', 1, NULL, NULL),
(4, 'Samarqand', 1, NULL, NULL),
(5, 'Qoraqalpogʻiston', 1, NULL, NULL),
(6, 'Qashqadaryo', 1, NULL, NULL),
(7, 'Navoiy', 1, NULL, NULL),
(8, 'Namangan', 1, NULL, NULL),
(9, 'Xorazm', 1, NULL, NULL),
(10, 'Jizzax', 1, NULL, NULL),
(11, 'Fargʻona', 1, NULL, NULL),
(12, 'Buxoro', 1, NULL, NULL),
(13, 'Andijon', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(15,5) NOT NULL,
  `currency_code` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionable_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Javohir', 'elmurodovjavogir8@gmail.com', NULL, '$2y$10$HC7H500CfBrNhKmqAWxF.uu8scO.Wg.HkDKtYXrJBAFblUOFPZgvm', NULL, '2020-02-24 13:23:31', '2020-02-24 13:23:31');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `football_field`
--
ALTER TABLE `football_field`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `payment_systems`
--
ALTER TABLE `payment_systems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_systems_system_unique` (`system`);

--
-- Индексы таблицы `payment_system_params`
--
ALTER TABLE `payment_system_params`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `football_field`
--
ALTER TABLE `football_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `payment_systems`
--
ALTER TABLE `payment_systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `payment_system_params`
--
ALTER TABLE `payment_system_params`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
