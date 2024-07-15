-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 12 juil. 2024 à 17:05
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `royal_tours`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add publications', 7, 'add_publications'),
(26, 'Can change publications', 7, 'change_publications'),
(27, 'Can delete publications', 7, 'delete_publications'),
(28, 'Can view publications', 7, 'view_publications'),
(29, 'Can add client', 8, 'add_client'),
(30, 'Can change client', 8, 'change_client'),
(31, 'Can delete client', 8, 'delete_client'),
(32, 'Can view client', 8, 'view_client'),
(33, 'Can add reservations', 9, 'add_reservations'),
(34, 'Can change reservations', 9, 'change_reservations'),
(35, 'Can delete reservations', 9, 'delete_reservations'),
(36, 'Can view reservations', 9, 'view_reservations');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$i1qJuVU5GW2nRYxRZV7lLr$2qYFg/oguIkln8+BZe38AG+wA44buxhsmQVKUW8+Kwk=', '2024-07-10 15:17:00.865423', 1, 'charles10', '', '', 'lucksonycharles@gmail.com', 1, 1, '2024-06-22 10:58:21.168008'),
(2, 'pbkdf2_sha256$720000$0j4PYljIavcZJe6yTuBfak$gLT2oOnKA0x8W0DKFP0AzVIMqhFij2ttA9TxSljzG0s=', NULL, 0, 'lucksony', '', '', '', 0, 1, '2024-06-23 13:48:02.797893'),
(3, 'pbkdf2_sha256$720000$RgnVIst9akEul3bdxYefuE$dSUvtKrpDQmB77GmVMpjpcPQIvLToasAoy9Uf1J6Es4=', '2024-07-10 16:04:30.874014', 1, 'sporper', '', '', '', 1, 1, '2024-07-04 17:59:10.000000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-22 07:11:07.767812', '1', 'Code Routière Afin de garantir le respect et la sécurité entre tous les usagers, le code de la route a réglementé la circulation sur les différentes routes existantes, en ville ou hors agglomération. ', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-06-22 12:13:04.360942', '2', 'Rupture de voiture Le rupteur de voiture peut désigner deux éléments distincts : le premier est un rupteur d\'allumage présent sur les anciens véhicules à motorisation essence, le second fait référence', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-06-22 12:16:01.091374', '3', 'Vol de Voiture hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsbsn', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-06-22 16:06:44.624597', '1', 'charles10', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-06-22 16:16:44.352891', '2', 'Réservation 2 par charles10 pour le bus 14689', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-06-23 13:48:04.468789', '2', 'lucksony', 1, '[{\"added\": {}}]', 4, 1),
(7, '2024-06-23 13:49:33.412048', '2', 'Jhon', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-06-23 14:06:17.333736', '1', 'JOSEPH', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-06-23 14:07:48.343524', '2', 'PIERRE', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-06-23 14:08:20.478786', '2', 'VILAMARD', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 8, 1),
(11, '2024-06-23 14:10:27.049575', '1', 'Réservation 1 par JOSEPH pour le bus 14689', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-06-25 12:53:03.018125', '2', 'Rupture de voiture Le rupteur de voiture peut désigner deux éléments distincts : le premier est un rupteur d\'allumage présent sur les anciens véhicules à motorisation essence, le second fait référence', 2, '[{\"changed\": {\"fields\": [\"Text_Publication\"]}}]', 7, 1),
(13, '2024-06-27 16:02:30.753838', '4', 'Housse Nou pa travay pou jodia', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-07-04 14:14:16.625635', '1', 'Code Routière Afin de garantir le respect et la sécurité entre tous les usagers, le code de la route a réglementé la circulation sur les différentes routes existantes, en ville ou hors agglomération. ', 3, '', 7, 1),
(15, '2024-07-04 14:17:01.540105', '4', 'Housse Nou pa travay pou jodia', 3, '', 7, 1),
(16, '2024-07-04 17:54:30.678079', '5', 'lokf updated_by = CurrentUserField(on_update=True)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-07-04 17:59:12.339500', '3', 'sporper', 1, '[{\"added\": {}}]', 4, 1),
(18, '2024-07-04 17:59:29.407554', '3', 'sporper', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1),
(19, '2024-07-04 17:59:46.452983', '3', 'sporper', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(20, '2024-07-04 18:01:37.558347', '6', 'Cout mage : fr.wikipedia.org. Données: Wikipédia · telecharger.tomsguide.fr · atinenelekatik.coolfire25.com · 01net.com\r\nTexte de Wikipédia sous licence Licence CC-BY-SA', 1, '[{\"added\": {}}]', 7, 3),
(21, '2024-07-08 12:00:51.991199', '7', 'Ouverture welcome to the royal tours', 1, '[{\"added\": {}}]', 7, 1),
(22, '2024-07-08 12:08:30.464362', '8', 'POLA FVBNM,.GHJKL;\'\r\n54KJHGCVHJHBV VBJHGFC NHVNHV HB', 1, '[{\"added\": {}}]', 7, 1),
(23, '2024-07-08 12:27:25.244574', '3', 'CHARLES', 1, '[{\"added\": {}}]', 8, 1),
(24, '2024-07-08 12:36:18.804476', '2', 'Réservation 2 par CHARLES pour le bus 14689', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-07-08 12:50:44.489453', '3', 'Réservation 3 par CHARLES pour le bus 14689', 1, '[{\"added\": {}}]', 9, 1),
(26, '2024-07-08 13:04:38.701072', '1', 'Fleurand', 1, '[{\"added\": {}}]', 8, 1),
(27, '2024-07-08 13:35:41.203912', '1', 'Réservation 1 par Fleurand pour le bus 1468', 1, '[{\"added\": {}}]', 9, 3),
(28, '2024-07-08 13:40:12.815839', '1', 'Rupture de voiture Panne de voiture : C\'est lorsque la voiture tombe en panne ou ne fonctionne plus correctement, nécessitant des réparations.\r\n\r\nAccident de voiture : Une collision ou un incident qui', 1, '[{\"added\": {}}]', 7, 3),
(29, '2024-07-08 14:08:31.048069', '1', 'Rupture de voiture <p><u><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:22px\"><span style=\"color:#27ae60\">Panne de voiture :</span></span></span></strong></u> C&#', 2, '[{\"changed\": {\"fields\": [\"Text_Publication\"]}}]', 7, 3),
(30, '2024-07-08 14:12:40.594338', '1', 'Rupture de voiture <p style=\"text-align:justify\"><u><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:22px\"><span style=\"color:#27ae60\">Panne de voiture :</span></sp', 2, '[{\"changed\": {\"fields\": [\"Text_Publication\"]}}]', 7, 3),
(31, '2024-07-08 14:21:41.564671', '2', 'gg <p><span style=\"font-size:24px\">&lt;!-- Inclure les fichiers JavaScript de CKEditor --&gt;<br />\r\n&lt;script src=&quot;{% static &#39;ckeditor/ckeditor/ckeditor.js&#39; %}&quot;&gt;&lt;/script&gt;<', 1, '[{\"added\": {}}]', 7, 3),
(32, '2024-07-08 15:56:22.036329', '1', 'Rupture de voiture <p style=\"text-align:justify\"><u><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:22px\"><span style=\"color:#27ae60\">Panne de voiture :</span></sp', 2, '[]', 7, 3),
(33, '2024-07-10 15:38:42.899193', '1', 'Accident Mortel <p><span style=\"color:#2c3e50\"><s><u>En septembre 2022, l&rsquo;Observatoire National Interminist&eacute;riel de la S&eacute;curit&eacute; Routi&egrave;re (ONISR)</u></s></span>&nbsp;a', 1, '[{\"added\": {}}]', 7, 1),
(34, '2024-07-10 15:52:46.858152', '1', 'Accident Mortel', 2, '[{\"changed\": {\"fields\": [\"Text_Publication\"]}}]', 7, 1),
(35, '2024-07-10 16:16:41.087850', '2', 'Route Nationale', 1, '[{\"added\": {}}]', 7, 3),
(36, '2024-07-10 16:19:53.546598', '2', 'CHARLES', 1, '[{\"added\": {}}]', 8, 3),
(37, '2024-07-10 16:21:54.202972', '2', 'Réservation 2 par CHARLES pour le bus 1468', 1, '[{\"added\": {}}]', 9, 3),
(38, '2024-07-10 16:56:45.919647', '3', 'Réservation 3 par Fleurand pour le bus 1689', 1, '[{\"added\": {}}]', 9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'website', 'publications'),
(8, 'Reservation', 'client'),
(9, 'Reservation', 'reservations');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-22 10:55:40.006792'),
(2, 'auth', '0001_initial', '2024-06-22 10:55:41.388151'),
(3, 'admin', '0001_initial', '2024-06-22 10:55:41.678320'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-22 10:55:41.691283'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-22 10:55:41.707242'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-22 10:55:41.852852'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-22 10:55:41.914740'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-22 10:55:42.036362'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-22 10:55:42.052373'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-22 10:55:42.117146'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-22 10:55:42.118201'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-22 10:55:42.131107'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-22 10:55:42.224857'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-22 10:55:42.291678'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-22 10:55:42.349602'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-22 10:55:42.363609'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-22 10:55:42.444271'),
(18, 'sessions', '0001_initial', '2024-06-22 10:55:42.518072'),
(19, 'website', '0001_initial', '2024-06-22 10:55:42.646727'),
(20, 'website', '0002_alter_publications_contenu', '2024-06-22 15:20:28.958286'),
(21, 'Reservation', '0001_initial', '2024-06-22 16:03:38.056257'),
(22, 'Reservation', '0002_rename_client_reservations_employer_client_nom_and_more', '2024-06-22 16:44:09.024674'),
(23, 'Reservation', '0003_remove_client_utilisateur', '2024-06-23 13:45:08.615768'),
(24, 'Reservation', '0004_client_utilisateur', '2024-06-23 14:04:21.818081'),
(25, 'Reservation', '0005_rename_employer_reservations_client', '2024-06-27 13:07:20.671104'),
(26, 'website', '0003_alter_publications_auteur', '2024-07-04 17:43:34.795770'),
(27, 'website', '0004_alter_publications_auteur', '2024-07-04 17:53:13.262261'),
(28, 'Reservation', '0006_alter_client_utilisateur', '2024-07-04 17:57:10.482308'),
(29, 'website', '0005_alter_publications_date_publication', '2024-07-08 11:58:32.110914'),
(30, 'website', '0006_alter_publications_date_publication', '2024-07-08 12:06:52.304362'),
(31, 'Reservation', '0007_alter_client_nif', '2024-07-08 12:25:13.694977'),
(32, 'Reservation', '0008_remove_reservations_mode_paiement', '2024-07-08 12:32:31.232055'),
(33, 'Reservation', '0009_alter_reservations_montant_total', '2024-07-08 12:48:42.267505'),
(34, 'Reservation', '0010_alter_reservations_numero_bus', '2024-07-08 13:06:30.617456'),
(35, 'Reservation', '0011_alter_reservations_numero_bus', '2024-07-08 13:31:29.054531'),
(36, 'Reservation', '0012_alter_client_phone_number', '2024-07-08 13:45:38.990395'),
(37, 'website', '0007_alter_publications_contenu', '2024-07-08 14:05:59.937380'),
(38, 'Reservation', '0013_alter_reservations_numero_bus', '2024-07-10 16:53:32.949478'),
(39, 'Reservation', '0014_remove_reservations_nombre_sieges_and_more', '2024-07-10 16:59:14.758512');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ok1v1by0gyf894r4sajcfdtp2ykec3h9', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sKyWh:Ao8mkpiVM-s5iazT74knncWuU6kND_nG_vjrI4jXAyk', '2024-07-06 11:03:23.248259'),
('efs6ukq0oyw5vc0t1crgdp45xffn97qp', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sL6yn:fBECML9gklnfBEUsurliRKEJ_WjvZCeALbSrY9Mqu8c', '2024-07-06 16:04:57.613692'),
('0w9ske2x9k7wemlsa2hhy53dmsipb80m', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sM9Ng:ooeF-upnpt7rc9i3djGh2NzwBlQ3TUsBdYqVHzL3NHw', '2024-07-09 12:50:56.697581'),
('fj8g6dzkrl2e0zty7108mp95qfp9eozy', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sLs0n:9uPfUITfnGV37iLlx02lVpsP6cb9G5wE-Mj1EtIuyzw', '2024-07-08 18:18:09.910376'),
('o5907p40uf3xzbufc5eo144h0a8qutb2', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sMvHa:zW1CVggCYzwcY3iXR2L9NWZw-xd5K2hxKaoQUjirOJg', '2024-07-11 15:59:50.517205'),
('25qz7k7mdt2wk5zgfe2ws943bmbkqzxf', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sMvQ9:fQ2lhjyhNvaTaLRTmhRot0vtXgMRo7lcyMJ8C2VHy54', '2024-07-11 16:08:41.698244'),
('gotsecm2v94jv4ym8gy4tdimu8yc2x6t', '.eJxVjEEOwiAQRe_C2hApI8O4dO8ZyMCAVA1NSrsy3l2bdKHb_977LxV4XWpYe57DKOqsjDr8bpHTI7cNyJ3bbdJpass8Rr0peqddXyfJz8vu_h1U7vVbkzOA4OiIYCELYClcokcgiIOXElFOibIUZvGA1g_RoCVPDjJTSer9AdcbOAg:1sPR0M:UoJARFDad13Dfef5LoIm3vJIIooIgdVb3gcVugj7rZo', '2024-07-18 14:16:26.146486');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_client`
--

DROP TABLE IF EXISTS `reservation_client`;
CREATE TABLE IF NOT EXISTS `reservation_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nif` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Reservation_client_nif_77812cab_uniq` (`nif`),
  KEY `Reservation_client_utilisateur_id_74e50581` (`utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation_client`
--

INSERT INTO `reservation_client` (`id`, `phone_number`, `address`, `ville`, `nif`, `nom`, `prenom`, `utilisateur_id`) VALUES
(1, '42487447', 'Haut du bourg', 'pignon', '7859332146', 'Fleurand', 'Samuel', 1),
(2, '42487447', 'Haut du bourg', 'pignon', '7859332147', 'CHARLES', 'Cherlanda', 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_reservations`
--

DROP TABLE IF EXISTS `reservation_reservations`;
CREATE TABLE IF NOT EXISTS `reservation_reservations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_reservation` datetime(6) NOT NULL,
  `date_depart` datetime(6) NOT NULL,
  `date_arrivee` datetime(6) NOT NULL,
  `lieu_depart` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lieu_arrivee` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_bus` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `statut_reservation` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `montant_total` decimal(10,2) NOT NULL,
  `client_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Reservation_reservations_client_id_d4ebe881` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation_reservations`
--

INSERT INTO `reservation_reservations` (`id`, `date_reservation`, `date_depart`, `date_arrivee`, `lieu_depart`, `lieu_arrivee`, `numero_bus`, `statut_reservation`, `montant_total`, `client_id`) VALUES
(1, '2024-07-08 13:35:41.199746', '2024-07-08 06:00:00.000000', '2024-07-08 17:35:07.000000', 'Saint-Rafaèl', 'Port-au-prince', '1468', 'PENDING', 5000.00, 1),
(2, '2024-07-10 16:21:54.197984', '2024-07-03 20:20:47.000000', '2024-07-10 20:20:53.000000', 'Gonaïves', 'Port-au-prince', '1468', 'CONFIRMED', 5000.00, 2),
(3, '2024-07-10 16:56:45.913662', '2024-07-10 12:00:00.000000', '2024-07-10 20:56:20.000000', 'Saint-Rafaèl', 'Port-au-prince', '1689', 'CONFIRMED', 5000.00, 1);

-- --------------------------------------------------------

--
-- Structure de la table `website_publications`
--

DROP TABLE IF EXISTS `website_publications`;
CREATE TABLE IF NOT EXISTS `website_publications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `date_publication` datetime(6) NOT NULL,
  `contenu` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `images` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `auteur_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_publications_auteur_id_e0c0b92a` (`auteur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `website_publications`
--

INSERT INTO `website_publications` (`id`, `title`, `date_publication`, `contenu`, `images`, `auteur_id`) VALUES
(1, 'Accident Mortel', '2024-07-10 15:52:46.851170', '<p><span style=\"color:#2c3e50\"><s><u>En septembre 2022, l&rsquo;Observatoire National Interminist&eacute;riel de la S&eacute;curit&eacute; Routi&egrave;re (ONISR)</u></s></span>&nbsp;a recens&eacute; : 3&thinsp;541 personnes tu&eacute;es sur les routes de m&eacute;tropole et d&rsquo;outre-mer et 236&thinsp;000 bless&eacute;es dont 16&thinsp;000 gravement. Chaque ann&eacute;e, les responsables de la&nbsp;<strong>s&eacute;curit&eacute; routi&egrave;re</strong>&nbsp;mettent en place des&nbsp;<strong>campagnes de sensibilisation</strong>&nbsp;&agrave; ce sujet et les politiques publiques prennent de nouvelles mesures telles que l&rsquo;abaissement de la limitation de vitesse &agrave; 80 sur les routes en 2018. Malgr&eacute; ce travail, la mortalit&eacute; routi&egrave;re reste trop importante en France.</p>\r\n\r\n<ol>\r\n	<li><a href=\"https://codedelaroute.io/blog/accident-de-la-route/#Definition-accident-de-la-route\"><span style=\"color:#e74c3c\">D&eacute;finition d&rsquo;un accident de la route</span></a></li>\r\n	<li><a href=\"https://codedelaroute.io/blog/accident-de-la-route/#Chiffres-des-accidents-de-la-route-en-2022\">Chiffres des accidents de la route en 2022</a></li>\r\n	<li><a href=\"https://codedelaroute.io/blog/accident-de-la-route/#Les-usagers-vulnerables-touches-par-un-plus-grand-nombre-d-accidents\">Les usagers vuln&eacute;rables touch&eacute;s par un plus grand nombre d&rsquo;accidents</a></li>\r\n	<li><a href=\"https://codedelaroute.io/blog/accident-de-la-route/#Causes-principales-des-accidents-de-la-route\">Causes principales des accidents de la route</a></li>\r\n	<li><a href=\"https://codedelaroute.io/blog/accident-de-la-route/#Consequences-dommages-materiels-et-physiques-possibles\">Cons&eacute;quences des accidents : les dommages mat&eacute;riels et physiques possibles</a><a name=\"Definition-accident-de-la-route\"></a></li>\r\n</ol>\r\n\r\n<h2>1. D&eacute;finition d&rsquo;un accident de la route</h2>\r\n\r\n<p>Un accident de la route est un &eacute;v&eacute;nement qui implique un ou plusieurs v&eacute;hicules sur une voie publique entra&icirc;nant des dommages physiques ou mat&eacute;riels :</p>\r\n\r\n<ul>\r\n	<li><strong>Accident mat&eacute;riel</strong>&nbsp;: les dommages portent uniquement sur des objets (voiture, &eacute;quipement de la route, b&acirc;timent, etc.).</li>\r\n	<li><strong><a href=\"https://codedelaroute.io/blog/accident-corporel-code-de-la-route/\">Accident corporel</a></strong>&nbsp;: accident avec au moins une personne bless&eacute;e ou tu&eacute;e n&eacute;cessitant pour au moins une victime de recourir &agrave; des soins m&eacute;dicaux.</li>\r\n	<li><strong>Accident mortel</strong>&nbsp;: accident avec au moins une personne tu&eacute;e</li>\r\n</ul>\r\n\r\n<p>L&rsquo;Observatoire national interminist&eacute;riel de s&eacute;curit&eacute; routi&egrave;re (ONISR) distingue trois types d&rsquo;accidents de la route :</p>\r\n\r\n<ul>\r\n	<li><strong>Les collisions solos</strong>&nbsp;: un seul usager et un obstacle.</li>\r\n	<li><strong>Les collisions simples</strong>&nbsp;: deux &agrave; trois usagers de la route entrent en collision, avec ou sans obstacle.</li>\r\n	<li><strong>Les multicollisions</strong>&nbsp;: plus de quatre usagers entrent en collision.<a name=\"Chiffres-des-accidents-de-la-route-en-2022\"></a></li>\r\n</ul>\r\n\r\n<h2>2. Chiffres des accidents de la route en 2022</h2>\r\n\r\n<p><strong>Le bilan (provisoire) 2022 des accidents de la route</strong>&nbsp;a &eacute;t&eacute; publi&eacute; par l&rsquo;Observatoire National Interminist&eacute;riel de la S&eacute;curit&eacute; Routi&egrave;re le 13 janvier 2023 :</p>\r\n\r\n<ul>\r\n	<li>3 541 personnes sont d&eacute;c&eacute;d&eacute;es en 2022 sur les routes de France m&eacute;tropolitaine ou d&rsquo;outre-mer,</li>\r\n	<li>Dont&nbsp;<strong>3&thinsp;260 personnes tu&eacute;es en m&eacute;tropole</strong>.</li>\r\n	<li>236 000 personnes bless&eacute;es sur les routes de France m&eacute;tropolitaine,</li>\r\n	<li>Dont 16 000 gravement.</li>\r\n	<li>Le nombre d&rsquo;accidents mortels a augment&eacute; de 1,3 % compar&eacute; &agrave; 2019.</li>\r\n</ul>\r\n\r\n<p>Les chiffres de 2020/2021 ne refl&eacute;tant pas les conditions normales &agrave; cause des confinements successifs, les comparaisons sont faites avec les donn&eacute;es de 2019.</p>\r\n\r\n<h3>Mortalit&eacute; en 2022 selon le type d&rsquo;usager</h3>\r\n\r\n<p>Sur les 3&thinsp;260 personnes tu&eacute;es en m&eacute;tropole en 2022 :</p>\r\n\r\n<ul>\r\n	<li>1563 &eacute;taient des occupants de voitures (48 % de la mortalit&eacute;)</li>\r\n	<li>715 &eacute;taient des 2 roues motoris&eacute;es (22 %)</li>\r\n	<li>484 &eacute;taient des pi&eacute;tons (15 %)</li>\r\n	<li>244 &eacute;taient des cyclistes (7 %)</li>\r\n	<li>34 des EDPm (Engin de D&eacute;placement Personnel motoris&eacute;s) type trottinette (1 %)</li>\r\n	<li>220 ont &eacute;t&eacute; classifi&eacute;s comme &quot;Autres&quot;</li>\r\n</ul>', 'images/Accident-mortel-autoroute-20-Saint-Cyrille-1600x1067.jpg', 1),
(2, 'Route Nationale', '2024-07-10 16:16:41.071917', '<p>les&nbsp;<strong>routes nationales</strong>&nbsp;sont des voies d&rsquo;importance nationale ou europ&eacute;enne qui, en compl&eacute;ment des autoroutes, traversent ou maillent de larges portions du territoire.&nbsp;<a href=\"https://fr.wikipedia.org/wiki/Liste_des_routes_nationales_de_France\" target=\"_blank\">Elles s&rsquo;opposent aux routes d&eacute;partementales ou communales plus localis&eacute;es</a><a href=\"https://fr.wikipedia.org/wiki/Liste_des_routes_nationales_de_France\" target=\"_blank\"><sup>1</sup></a>. Le concept de route nationale est l&eacute;galement d&eacute;fini par l&rsquo;article L121-1 du Code de la voirie routi&egrave;re. Ces routes sont normalement gratuites, sauf lors du franchissement de certains ouvrages d&rsquo;art soumis &agrave; p&eacute;age. Elles sont ouvertes &agrave; tous les v&eacute;hicules, sauf sur certaines sections ayant le statut de voie express ou d&rsquo;autoroutes.&nbsp;<a href=\"https://fr.wikipedia.org/wiki/Liste_des_routes_nationales_de_France\" target=\"_blank\">L&rsquo;&Eacute;tat est responsable de la construction, de l&rsquo;entretien et de l&rsquo;exploitation de ces voies</a><a href=\"https://fr.wikipedia.org/wiki/Liste_des_routes_nationales_de_France\" target=\"_blank\"><sup>1</sup></a>. Si vous souhaitez explorer plus en d&eacute;tail les routes nationales en France, voici quelques listes historiques et actuelles :</p>', 'images/OIPlpo.jpeg', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
