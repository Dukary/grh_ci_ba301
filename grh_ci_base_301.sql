-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 jan. 2024 à 23:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `grh_ci_base_301`
--

-- --------------------------------------------------------

--
-- Structure de la table `cathegoriespersonnels`
--

CREATE TABLE `cathegoriespersonnels` (
  `id` bigint(20) NOT NULL,
  `cathegorie` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cathegoriespersonnels`
--

INSERT INTO `cathegoriespersonnels` (`id`, `cathegorie`, `etat`) VALUES
(1, 'APTES TOUS SERVICE', 'perso_pre'),
(2, 'APTITUDES LIMITEES', 'perso_pre'),
(3, 'APTITUDES LIMITEES', 'perso_abs_jus'),
(4, 'MISSION/DETA', 'perso_abs_jus'),
(5, 'P.L.D.', 'perso_abs_jus'),
(6, 'REPOS MEDICAL', 'perso_abs_jus'),
(7, 'MALADES', 'perso_abs_jus'),
(8, 'DETENTION', 'perso_abs_jus'),
(9, 'PRISON', 'perso_abs_jus'),
(10, 'EVASAN', 'perso_abs_jus'),
(11, 'NON REJOINTS', 'perso_abs_jus'),
(12, 'AUTRES', 'perso_abs_jus'),
(13, 'RETARD', 'perso_abs_non_jus'),
(14, 'ASM PLUS DE 24 H', 'perso_abs_non_jus'),
(15, 'DESERTEURS', 'perso_abs_non_jus'),
(16, 'AUTRES', 'perso_abs_non_jus'),
(17, 'STAGE', 'perso_abs_jus');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` bigint(20) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  `formation` varchar(255) NOT NULL,
  `lieu_formation` varchar(255) NOT NULL,
  `duree_formation` int(11) NOT NULL,
  `type_stagiaire` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `matricule`, `stage`, `formation`, `lieu_formation`, `duree_formation`, `type_stagiaire`, `created_at`, `updated_at`) VALUES
(1, 'BRO4500', 'CAT2 FUSCO AIR', 'Ingénierie', 'Douala', 3, 'personnel', '2024-01-22', '2024-01-22'),
(2, 'CVBTU9', 'CAT3 SPEACIAL AIR', 'Ingénierie', 'Douala', 7, 'stagiaire', '2024-01-23', '2024-01-23'),
(3, 'UTF001', 'CAT3 SPEACIAL AIR', 'Ingénierie', 'Garoua', 10, 'stagiaire', '2024-01-24', '2024-01-24'),
(4, 'CVBTU9', 'CAT1 FUSCO AIR', 'Ingénierie', 'Garoua', 8, 'stagiaire', '2024-01-24', '2024-01-24');

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `cathegorie` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `grades`
--

INSERT INTO `grades` (`id`, `code`, `titre`, `cathegorie`, `created_at`, `updated_at`) VALUES
(1, 'Col', 'Colonel', 'off', NULL, NULL),
(2, 'Lcl', 'Lieutenant-colonel', 'off', NULL, NULL),
(3, 'Cmt', 'Commandant', 'off', NULL, NULL),
(4, 'Cne', 'Capitaine', 'off', NULL, NULL),
(5, 'Lt', 'Lieutenant', 'off', NULL, NULL),
(6, 'Slt', 'Sous-lieutenant', 'off', NULL, NULL),
(7, 'Acm', 'Adjudant-chef major', 'sous_off', NULL, NULL),
(8, 'Ac', 'Adjudant-chef', 'sous_off', NULL, NULL),
(9, 'At', 'Adjudant', 'sous_off', NULL, NULL),
(10, 'Sc', 'Sergent-chef', 'sous_off', NULL, NULL),
(11, 'Sgt', 'Sergent', 'sous_off', NULL, NULL),
(12, 'C/c', 'Caporal-chef', 'mil_rang', NULL, NULL),
(13, 'Cal', 'Caporal', 'mil_rang', NULL, NULL),
(14, '1cl', '1ere classe', 'mil_rang', NULL, NULL),
(15, '2cl', '2e classe', 'mil_rang', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_01_21_113829_create_personnel_table', 1),
(3, '2024_01_21_113844_create_stage_table', 1),
(4, '2024_01_21_113858_create_grade_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cni` varchar(50) NOT NULL,
  `cim` varchar(50) NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `matricule` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `date_nais` date NOT NULL,
  `lieu_nais` varchar(50) NOT NULL,
  `ethnie` varchar(50) NOT NULL,
  `region_origine` varchar(50) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `arrondissement` varchar(50) NOT NULL,
  `matricule_solde` varchar(50) NOT NULL,
  `date_engagement` date NOT NULL,
  `religion` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `nom_pere` varchar(50) NOT NULL,
  `nom_mere` varchar(50) NOT NULL,
  `nom_per_acc` varchar(50) NOT NULL,
  `lien_parent_per_acc` varchar(50) NOT NULL,
  `tel_per_acc` varchar(50) NOT NULL,
  `adresse_per_acc` varchar(50) NOT NULL,
  `ville_per_acc` varchar(50) NOT NULL,
  `diplome_civil_eleve` varchar(50) NOT NULL,
  `diplome_militaire_eleve` varchar(50) NOT NULL,
  `emplois_tenu` varchar(50) NOT NULL,
  `qualification_aleatoire` varchar(50) NOT NULL,
  `formation_specialise` varchar(50) NOT NULL,
  `unite` varchar(50) NOT NULL,
  `stat_civile` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`id`, `cni`, `cim`, `nom_complet`, `matricule`, `sexe`, `grade`, `date_nais`, `lieu_nais`, `ethnie`, `region_origine`, `departement`, `arrondissement`, `matricule_solde`, `date_engagement`, `religion`, `telephone`, `nom_pere`, `nom_mere`, `nom_per_acc`, `lien_parent_per_acc`, `tel_per_acc`, `adresse_per_acc`, `ville_per_acc`, `diplome_civil_eleve`, `diplome_militaire_eleve`, `emplois_tenu`, `qualification_aleatoire`, `formation_specialise`, `unite`, `stat_civile`, `img`, `created_at`, `updated_at`) VALUES
(2, 'NO846463JH3331', 'GH0998383LK', 'Samo Simo Jean-Baptiste', 'BRO4500', 'Masculin', 'Caporal', '2001-06-24', 'Garoua', 'Bamiléké', 'Ouest', 'Ndé', 'null', 'PV001', '2024-01-22', 'chretienne', '691191705', 'Simo Laurent', 'Tchembou Wantcho', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'CI-BASE 301', 'Celibataire', 'img/personnel/108VPKD3VHr1VpGep9z5sysr3bb75mSZnFHN71kN.jpg', '2024-01-22 19:20:37', '2024-01-22 19:20:37');

-- --------------------------------------------------------

--
-- Structure de la table `spa_personnel2s`
--

CREATE TABLE `spa_personnel2s` (
  `id` int(11) NOT NULL,
  `num_spa` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `cathegorie` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `spa_personnel2s`
--

INSERT INTO `spa_personnel2s` (`id`, `num_spa`, `matricule`, `cathegorie`, `created_at`, `updated_at`) VALUES
(1, '0001', 'BRO4500', 'APTES TOUS SERVICE', '2024-01-25', '2024-01-25');

-- --------------------------------------------------------

--
-- Structure de la table `spa_personnels`
--

CREATE TABLE `spa_personnels` (
  `id` int(11) NOT NULL,
  `n°` int(11) NOT NULL,
  `num_spa` varchar(255) NOT NULL,
  `date_jour` date NOT NULL,
  `gba` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `lcl` int(11) NOT NULL,
  `cdt` int(11) NOT NULL,
  `cne` int(11) NOT NULL,
  `ltt` int(11) NOT NULL,
  `slt` int(11) NOT NULL,
  `asp` int(11) NOT NULL,
  `asm` int(11) NOT NULL,
  `adc` int(11) NOT NULL,
  `adt` int(11) NOT NULL,
  `sgc` int(11) NOT NULL,
  `sgt` int(11) NOT NULL,
  `cc` int(11) NOT NULL,
  `cal` int(11) NOT NULL,
  `cl1` int(11) NOT NULL,
  `cl2` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `spa_personnels`
--

INSERT INTO `spa_personnels` (`id`, `n°`, `num_spa`, `date_jour`, `gba`, `col`, `lcl`, `cdt`, `cne`, `ltt`, `slt`, `asp`, `asm`, `adc`, `adt`, `sgc`, `sgt`, `cc`, `cal`, `cl1`, `cl2`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', '2024-01-25', 0, 1, 1, 0, 1, 1, 1, 4, 1, 1, 0, 1, 5, 5, 0, 0, 0, '2024-01-25', '2024-01-25'),
(2, 2, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(3, 3, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(4, 4, '0001', '2024-01-25', 0, 1, 2, 0, 0, 0, 0, 0, 0, 3, 1, 1, 2, 5, 0, 0, 0, '2024-01-25', '2024-01-25'),
(5, 5, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(6, 6, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(7, 7, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(8, 8, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(9, 9, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(10, 10, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(11, 11, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(12, 12, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(13, 13, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(14, 14, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(15, 15, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(16, 16, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(17, 17, '0001', '2024-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '2024-01-25', '2024-01-25');

-- --------------------------------------------------------

--
-- Structure de la table `spa_stagiaire2s`
--

CREATE TABLE `spa_stagiaire2s` (
  `id` int(11) NOT NULL,
  `num_spa` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `cathegorie` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `spa_stagiaire2s`
--

INSERT INTO `spa_stagiaire2s` (`id`, `num_spa`, `matricule`, `cathegorie`, `created_at`, `updated_at`) VALUES
(1, '0001', 'CVBTU9', 'NRJ', '2024-01-25', '2024-01-25');

-- --------------------------------------------------------

--
-- Structure de la table `spa_stagiaires`
--

CREATE TABLE `spa_stagiaires` (
  `id` int(11) NOT NULL,
  `n°` int(11) NOT NULL,
  `num_spa` varchar(255) NOT NULL,
  `date_jour` date NOT NULL,
  `eff_theo` int(11) NOT NULL,
  `eff_real` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `malade` int(11) NOT NULL,
  `asm` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `mission` int(11) NOT NULL,
  `evasan` int(11) NOT NULL,
  `nrj` int(11) NOT NULL,
  `radier` int(11) NOT NULL,
  `prison` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `spa_stagiaires`
--

INSERT INTO `spa_stagiaires` (`id`, `n°`, `num_spa`, `date_jour`, `eff_theo`, `eff_real`, `present`, `malade`, `asm`, `permission`, `mission`, `evasan`, `nrj`, `radier`, `prison`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', '2024-01-25', 5, 5, 5, 0, 0, 2, 1, 0, 3, 3, 0, '2024-01-25', '2024-01-25'),
(2, 2, '0001', '2024-01-25', 5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(3, 3, '0001', '2024-01-25', 5, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(4, 4, '0001', '2024-01-25', 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(5, 5, '0001', '2024-01-25', 5, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(6, 6, '0001', '2024-01-25', 25, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(7, 7, '0001', '2024-01-25', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(8, 8, '0001', '2024-01-25', 5, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(9, 9, '0001', '2024-01-25', 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(10, 10, '0001', '2024-01-25', 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25'),
(11, 11, '0001', '2024-01-25', 6, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-25', '2024-01-25');

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id`, `titre`, `created_at`, `updated_at`) VALUES
(1, 'FES AIR ', NULL, NULL),
(2, 'CAT1 FUSAIR ', NULL, NULL),
(3, 'CAT1 FUSCO AIR', NULL, NULL),
(4, 'CAT2 FUSAIR', NULL, NULL),
(5, 'CAT2 FUSCO AIR', NULL, NULL),
(6, 'CAT3 SPEACIAL AIR', NULL, NULL),
(7, 'BA1 FUSAIR', NULL, NULL),
(8, 'BS1 FUSCO AIR', NULL, NULL),
(9, 'BA2 FUSAIR', NULL, NULL),
(10, 'BS2 FUSCO AIR ', NULL, NULL),
(11, 'RECYCLAGE', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `id` int(11) NOT NULL,
  `cni` varchar(255) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `date_nais` date NOT NULL,
  `lieu_nais` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `ethnie` varchar(255) NOT NULL,
  `region_origine` varchar(255) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `arrondissement` varchar(255) NOT NULL,
  `matricule_solde` varchar(255) NOT NULL,
  `date_engagement` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `nom_pere` varchar(255) NOT NULL,
  `nom_mere` varchar(255) NOT NULL,
  `nom_per_acc` varchar(255) NOT NULL,
  `lien_parent_per_acc` varchar(255) NOT NULL,
  `tel_per_acc` varchar(255) NOT NULL,
  `adresse_per_acc` varchar(255) NOT NULL,
  `ville_per_acc` varchar(255) NOT NULL,
  `diplome_civil_eleve` varchar(255) NOT NULL,
  `diplome_militaire_eleve` varchar(255) NOT NULL,
  `emplois_tenu` varchar(255) NOT NULL,
  `qualification_aleatoire` varchar(255) NOT NULL,
  `formation_specialise` varchar(255) NOT NULL,
  `unite` varchar(255) NOT NULL,
  `stat_civile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`id`, `cni`, `cim`, `nom_complet`, `matricule`, `sexe`, `date_nais`, `lieu_nais`, `grade`, `ethnie`, `region_origine`, `departement`, `arrondissement`, `matricule_solde`, `date_engagement`, `religion`, `telephone`, `nom_pere`, `nom_mere`, `nom_per_acc`, `lien_parent_per_acc`, `tel_per_acc`, `adresse_per_acc`, `ville_per_acc`, `diplome_civil_eleve`, `diplome_militaire_eleve`, `emplois_tenu`, `qualification_aleatoire`, `formation_specialise`, `unite`, `stat_civile`, `img`, `created_at`, `updated_at`) VALUES
(1, 'NO846463JH3331', 'GH0998383LKU', 'Kenfack Robernis', 'CVBTU9', 'Masculin', '1994-01-01', 'Penja', 'Sous-lieutenant', 'Bamiléké', 'Ouest', 'null', 'null', 'PV022', '2024-01-24', 'chretienne', '698765434', 'Papa', 'Maman', 'null', 'null', 'null', 'null', 'null', 'BTS', 'null', 'null', 'null', 'null', 'CI-BASE 400', 'Celibataire', 'img/stagiaire/BwM0DJyEtGpse9B8y9NvgKytaGekWroBloxrf66M.jpg', '2024-01-24', '2024-01-24');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `niveau_securite` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `matricule`, `pseudo`, `password`, `niveau_securite`, `statut`, `img`, `created_at`, `updated_at`) VALUES
(1, 'VBNET', 'Ghost', '$2y$12$TFmotQbpa22NLQsFDlEC6upO6gCQHjrS/fXDIdS./saX1Xs9Vg5iq', 'niv2', '', 'img/z6ia6LxLhDKM62yiQwvEm3.jpg', '2024-01-22', '2024-01-22'),
(2, 'BRO4500', 'Samo Simo', '$2y$12$OjlO6BBfW/4I7h.yWNMCIuH.gRyBu4SJfxMnRX.a7e0ajdFnWSk2G', 'niv1', 'actif', '', '2024-01-22', '2024-01-22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cathegoriespersonnels`
--
ALTER TABLE `cathegoriespersonnels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spa_personnel2s`
--
ALTER TABLE `spa_personnel2s`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spa_personnels`
--
ALTER TABLE `spa_personnels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spa_stagiaire2s`
--
ALTER TABLE `spa_stagiaire2s`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spa_stagiaires`
--
ALTER TABLE `spa_stagiaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cathegoriespersonnels`
--
ALTER TABLE `cathegoriespersonnels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `spa_personnel2s`
--
ALTER TABLE `spa_personnel2s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `spa_personnels`
--
ALTER TABLE `spa_personnels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `spa_stagiaire2s`
--
ALTER TABLE `spa_stagiaire2s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `spa_stagiaires`
--
ALTER TABLE `spa_stagiaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
