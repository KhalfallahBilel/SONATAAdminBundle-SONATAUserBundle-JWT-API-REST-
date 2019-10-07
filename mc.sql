-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 07 oct. 2019 à 12:35
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mc`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE IF NOT EXISTS `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `draft` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BA5AE01D12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'sss'),
(2, 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `craeted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D69AD0AF92F3E70` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `name`, `zip_code`, `updated_at`, `deleted_at`, `country_id`, `craeted_at`) VALUES
(1, 'Nice', '06000', NULL, NULL, 77, NULL),
(2, 'test updated', '1200', '2019-09-30 10:00:51', NULL, 77, NULL),
(3, 'test', '5555', NULL, NULL, NULL, NULL),
(4, 'test updated', '1200', '2019-09-30 09:50:11', NULL, 77, NULL),
(5, 'test1', '12', NULL, NULL, 77, NULL),
(6, 'test1', '12', NULL, NULL, 77, NULL),
(7, 'test1', '12', NULL, NULL, 77, NULL),
(8, 'test1', '12', NULL, NULL, 77, NULL),
(9, 'test1', '12', NULL, NULL, 77, NULL),
(10, 'test1', '12', NULL, NULL, 77, NULL),
(11, 'test2', '12', NULL, NULL, 77, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `cretaed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `notes`, `updated_at`, `deleted_at`, `cretaed_at`) VALUES
(1, 'Test Add Client1', NULL, NULL, NULL),
(2, 'test add client 2', NULL, NULL, NULL),
(3, 'test add client 2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`, `iso_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Afghanistan', 'AF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(5, 'Albanie', 'AL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(6, 'Algérie', 'DZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(7, 'Samoa orientales', 'AS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(8, 'Andorre', 'AD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(9, 'Angola', 'AO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(10, 'Anguilla', 'AI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(11, 'Antarctique', 'AQ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(12, 'Antigua-et-Barbuda', 'AG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(13, 'Argentine', 'AR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(14, 'Arménie', 'AM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(15, 'Aruba', 'AW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(16, 'Australie', 'AU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(17, 'Autriche', 'AT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(18, 'Azerbaïdjan', 'AZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(19, 'Bahamas', 'BS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(20, 'Bahreïn', 'BH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(21, 'Bangladesh', 'BD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(22, 'Barbade', 'BB', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(23, 'Biélorussie', 'BY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(24, 'Belgique', 'BE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(25, 'Bélize', 'BZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(26, 'Bénin', 'BJ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(27, 'Bermudes', 'BM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(28, 'Bhoutan', 'BT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(29, 'Bolivie', 'BO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(30, 'Bosnie-Herzégovine', 'BA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(31, 'Botswana', 'BW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(32, 'Bouvet (Île)', 'BV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(33, 'Brésil', 'BR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(34, 'Territoire britannique de l Océan Indien', 'IO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(35, 'Bruneï', 'BN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(36, 'Bulgarie', 'BG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(37, 'Burkina Faso', 'BF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(38, 'Burundi', 'BI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(39, 'Cambodge', 'KH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(40, 'Cameroun', 'CM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(41, 'Canada', 'CA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(42, 'Cap Vert', 'CV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(43, 'Caïmans (Îles)', 'KY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(44, 'République Centrafricaine', 'CF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(45, 'Tchad', 'TD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(46, 'Chili', 'CL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(47, 'Chine', 'CN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(48, 'Christmas (Île)', 'CX', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(49, 'Cocos / Keeling (Îles)', 'CC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(50, 'Colombie', 'CO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(51, 'Comores', 'KM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(52, 'Congo', 'CG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(53, 'République Démocratique du Congo', 'CD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(54, 'Cook (Îles)', 'CK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(55, 'Costa Rica', 'CR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(56, 'Côte D Ivoire', 'CI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(57, 'Croatie', 'HR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(58, 'Cuba', 'CU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(59, 'Chypre', 'CY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(60, 'République Tchèque', 'CZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(61, 'Danemark', 'DK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(62, 'Djibouti', 'DJ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(63, 'Dominique', 'DM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(64, 'République Dominicaine', 'DO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(65, 'Timor-Oriental', 'TP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(66, 'Equateur', 'EC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(67, 'Egypte', 'EG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(68, 'Salvador', 'SV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(69, 'Guinée Equatoriale', 'GQ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(70, 'Erythrée', 'ER', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(71, 'Estonie', 'EE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(72, 'Ethiopie', 'ET', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(73, 'Falkland / Malouines (Îles)', 'FK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(74, 'Féroé (Îles)', 'FO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(75, 'Fiji', 'FJ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(76, 'Finlande', 'FI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(77, 'France', 'FR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(78, 'France métropolitaine', 'FX', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(79, 'Guyane française', 'GF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(80, 'Polynésie française', 'PF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(81, 'Territoires Antarctiques français', 'TF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(82, 'Gabon', 'GA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(83, 'Gambie', 'GM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(84, 'Géorgie', 'GE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(85, 'Allemagne', 'DE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(86, 'Ghana', 'GH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(87, 'Gibraltar', 'GI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(88, 'Grèce', 'GR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(89, 'Groënland', 'GL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(90, 'Grenade', 'GD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(91, 'Guadeloupe', 'GP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(92, 'Guam', 'GU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(93, 'Guatemala', 'GT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(94, 'Guinée', 'GN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(95, 'Guinée-Bissau', 'GW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(96, 'Guyana', 'GY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(97, 'Haïti', 'HT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(98, 'Territoire des Îles Heard et McDonald', 'HM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(99, 'Vatican', 'VA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(100, 'Honduras', 'HN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(101, 'Hong Kong', 'HK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(102, 'Hongrie', 'HU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(103, 'Islande', 'IS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(104, 'Inde', 'IN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(105, 'Indonésie', 'ID', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(106, 'Iran (République islamique d ) ', 'IR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(107, 'Irak', 'IQ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(108, 'Irlande', 'IE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(109, 'Israël', 'IL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(110, 'Italie', 'IT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(111, 'Jamaïque', 'JM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(112, 'Japon', 'JP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(113, 'Jordanie', 'JO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(114, 'Kazakstan', 'KZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(115, 'Kenya', 'KE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(116, 'Kiribati', 'KI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(117, 'Corée (République populaire démocratique du)', 'KP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(118, 'Corée (République démocratique du)', 'KR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(119, 'Koweït', 'KW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(120, 'Kyrgyzstan', 'KG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(121, 'Laos (République populaire démocratique du)', 'LA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(122, 'Lettonie', 'LV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(123, 'Liban', 'LB', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(124, 'Lesotho', 'LS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(125, 'Libéria', 'LR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(126, 'Libye (Jamahiriya Arabe Libyenne)', 'LY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(127, 'Liechtenstein', 'LI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(128, 'Lithuanie', 'LT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(129, 'Luxembourg', 'LU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(130, 'Macau', 'MO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(131, 'Macédoine (ancienne République yougoslave de)', 'MK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(132, 'Madagascar', 'MG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(133, 'Malawi', 'MW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(134, 'Malaysie', 'MY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(135, 'Maldives', 'MV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(136, 'Mali', 'ML', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(137, 'Malte', 'MT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(138, 'Marshall (Îles)', 'MH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(139, 'Martinique', 'MQ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(140, 'Mauritanie', 'MR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(141, 'Maurice', 'MU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(142, 'Mayotte', 'YT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(143, 'Mexique', 'MX', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(144, 'Micronésie (Etats fédérés de)', 'FM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(145, 'Moldavie', 'MD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(146, 'Monaco', 'MC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(147, 'Mongolie', 'MN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(148, 'Montserrat', 'MS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(149, 'Maroc', 'MA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(150, 'Mozambique', 'MZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(151, 'Myanmar', 'MM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(152, 'Namibie', 'NA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(153, 'Nauru', 'NR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(154, 'Népal', 'NP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(155, 'Pays-Bas', 'NL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(156, 'Antilles néerlandaises', 'AN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(157, 'Nouvelle-Calédonie', 'NC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(158, 'Nouvelle-Zélande', 'NZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(159, 'Nicaragua', 'NI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(160, 'Niger', 'NE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(161, 'Nigéria', 'NG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(162, 'Niue', 'NU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(163, 'Norfolk (Île)', 'NF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(164, 'Mariannes (Îles)', 'MP', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(165, 'Norvège', 'NO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(166, 'Oman', 'OM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(167, 'Pakistan', 'PK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(168, 'Palau', 'PW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(169, 'Panama', 'PA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(170, 'Papouasie Nouvelle-Guinée', 'PG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(171, 'Paraguay', 'PY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(172, 'Pérou', 'PE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(173, 'Philippines', 'PH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(174, 'Pitcaïrn', 'PN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(175, 'Pologne', 'PL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(176, 'Portugal', 'PT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(177, 'Porto Rico', 'PR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(178, 'Quatar', 'QA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(179, 'Réunion', 'RE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(180, 'Romania', 'RO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(181, 'Russie (Fédération de)', 'RU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(182, 'Rwanda', 'RW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(183, 'Saint Kitts et Nevis', 'KN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(184, 'Sainte Lucie', 'LC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(185, 'Saint Vincent et Grenadines', 'VC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(186, 'Samoa', 'WS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(187, 'San Marin', 'SM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(188, 'Sao Tomé et Principe', 'ST', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(189, 'Arabie Séoudite', 'SA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(190, 'Sénégal', 'SN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(191, 'Seychelles', 'SC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(192, 'Sierra Léone', 'SL', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(193, 'Singapour', 'SG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(194, 'Slovaquie', 'SK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(195, 'Slovénie', 'SI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(196, 'Salomon (Îles)', 'SB', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(197, 'Somalie', 'SO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(198, 'Afrique du Sud', 'ZA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(199, 'Géorgie du Sud et îles Sandwich du Sud', 'GS', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(200, 'Espagne', 'ES', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(201, 'Sri Lanka', 'LK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(202, 'Ste Hélène', 'SH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(203, 'St. Pierre et Miquelon', 'PM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(204, 'Soudan', 'SD', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(205, 'Surinam', 'SR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(206, 'Svalbard et Jan Mayen (Îles)', 'SJ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(207, 'Swaziland', 'SZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(208, 'Suède', 'SE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(209, 'Suisse', 'CH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(210, 'Syrie (République arabe syrienne)', 'SY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(211, 'Taïwan', 'TW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(212, 'Tadjikistan', 'TJ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(213, 'Tanzanie', 'TZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(214, 'Thaïlande', 'TH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(215, 'Togo', 'TG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(216, 'Tokelau', 'TK', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(217, 'Tonga', 'TO', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(218, 'Trinidad et Tobago', 'TT', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(219, 'Tunisie', 'TN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(220, 'Turquie', 'TR', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(221, 'Turkménistan', 'TM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(222, 'Turks et Caicos (Îles)', 'TC', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(223, 'Tuvalu', 'TV', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(224, 'Ouganda', 'UG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(225, 'Ukraine', 'UA', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(226, 'Emirats Arabes Unis', 'AE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(227, 'Royaume-Uni', 'GB', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(228, 'Etats-Unis d Amérique', 'US', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(229, 'Territoires non incorporés des États-Unis ', 'UM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(230, 'Uruguay', 'UY', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(231, 'Ouzbékistan', 'UZ', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(232, 'Vanuatu', 'VU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(233, 'Vénézuela', 'VE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(234, 'Vietnam', 'VN', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(235, 'Vierges (Îles) - RU', 'VG', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(236, 'Vierges (Îles) - EU', 'VI', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(237, 'Wallis et Futuna (Îles)', 'WF', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(238, 'Sahara Occidental', 'EH', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(239, 'Yemen', 'YE', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(240, 'Yougoslavie', 'YU', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(241, 'Zambie', 'ZM', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(242, 'Zimbabwe', 'ZW', '2016-04-10 23:50:41', '2016-04-10 23:50:41', NULL),
(243, 'test updated', 'TU', '2019-09-27 08:49:21', '2019-09-30 09:29:41', NULL),
(244, 'test1', '12', '2019-09-27 12:09:20', NULL, NULL),
(245, 'test2:', 'T2', '2019-09-30 08:58:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_group`
--

DROP TABLE IF EXISTS `fos_user_group`;
CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user`
--

DROP TABLE IF EXISTS `fos_user_user`;
CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_C560D761C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'admin', 'admin', 'admin@admin.fr', 'admin@admin.fr', 1, NULL, '$2y$13$GrbTVL/IAmcYZ3brsoTRTuHp4nfIhxVVEP0Dx/t/b0xwvgR0eXJxy', '2019-10-07 10:26:09', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', '2019-10-07 09:34:32', '2019-10-07 10:26:09', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AFE59754A76ED395` (`user_id`),
  UNIQUE KEY `UNIQ_AFE5975419EB6921` (`client_id`),
  KEY `IDX_AFE597548BAC62AF` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `information`
--

INSERT INTO `information` (`id`, `number`, `street`, `address_complement`, `phone`, `mobile`, `notes`, `created_at`, `updated_at`, `deleted_at`, `city_id`, `user_id`, `client_id`) VALUES
(2, '219', 'rue albert caquot', '219 rue albert caquot', '00334587964', '00334587965', 'qui que se soit', '2019-09-23 08:56:06', NULL, NULL, 2, NULL, NULL),
(3, '20', 'gambetta', '20 rue gambetta', '215487', '875421', 'lorum ipsum', '2019-09-24 09:37:42', NULL, NULL, 1, NULL, 3),
(4, '123', 'updated', 'address complement was updated', 'gdfdfgdf', 'gdgdf', 'dgdfgdf', '2019-09-27 15:13:53', '2019-09-30 09:59:59', NULL, 2, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190917111821', '2019-09-18 12:24:44'),
('20190919142501', '2019-09-19 14:29:46'),
('20190919143849', '2019-09-19 14:39:05'),
('20190919150508', '2019-09-19 15:13:53'),
('20190920074759', '2019-09-20 07:48:17'),
('20190920081619', '2019-09-20 08:16:53'),
('20190920082605', '2019-09-20 08:28:39'),
('20190920083443', '2019-09-20 08:34:54'),
('20190920083550', '2019-09-20 08:35:58'),
('20190920084553', '2019-09-20 08:46:05'),
('20190920091546', '2019-09-20 09:15:54'),
('20190920131939', '2019-09-20 13:22:00'),
('20190923084840', '2019-09-23 08:49:12'),
('20190923085933', '2019-09-23 09:17:38'),
('20190923093415', '2019-09-23 09:34:28'),
('20190923100038', '2019-09-23 10:00:50'),
('20190923120748', '2019-09-23 12:08:01'),
('20190923122549', '2019-09-23 12:26:22'),
('20190923130732', '2019-09-23 13:07:41'),
('20190923132315', '2019-09-23 13:23:25'),
('20190923132506', '2019-09-23 13:25:22');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dbname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E00EE97219EB6921` (`client_id`),
  KEY `IDX_E00EE972783E3463` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `url`, `dbname`, `storage`, `storageKey`, `expire_at`, `created_at`, `updated_at`, `deleted_at`, `client_id`, `manager_id`) VALUES
(1, 'Test Add Project 1', 'Test Add Project 1', 'Test Add Project 1', 'Test Add Project 1', 'Test Add Project 1', 'Test Add Project 1', NULL, '2019-09-23 13:34:24', NULL, NULL, 1, 2),
(2, 'test update2 project 2', 'test update add project 2', 'test add project 2', 'test add project 2', 'test add project 2', 'test add project 2', NULL, '2019-09-30 11:46:34', '2019-09-30 11:54:49', NULL, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `created_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2DA17977E7927C74` (`email`),
  UNIQUE KEY `UNIQ_2DA17977FA2425B9` (`manager`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `created_at`, `update_at`, `deleted_at`, `firstname`, `lastname`, `manager`) VALUES
(1, 'a@sii.fr', '$2y$13$e7mslSmyhtWsWuUcim926uaGlXcUD9yN33P6uTTr/u6zKlxM7ubgG', 'a:0:{}', '2019-09-20 09:00:18', NULL, NULL, 'SII', 'SII', NULL),
(2, 'admin@admin.fr', '$2y$13$zLOF/h5KAxNTVE4npfCvK.OZ/EFmGfM/NE5nvHJ.8KzfbDyw8X2D6', 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', '2019-09-20 09:05:45', NULL, NULL, 'sii', 'SII', NULL),
(3, 'sii@sophia.fr', 'admin', 'a:0:{}', '2019-09-24 09:40:48', NULL, NULL, 'SII Sophia', 'Sophia', 3),
(4, 'test@username.com', 'admin', 'a:0:{}', '2019-09-30 11:01:45', '2019-09-30 11:16:52', NULL, 'test firstname updated', 'test lastname', 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `FK_BA5AE01D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `FK_2979188319EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_297918838BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_29791883A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE19EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE783E3463` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649FA2425B9` FOREIGN KEY (`manager`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
