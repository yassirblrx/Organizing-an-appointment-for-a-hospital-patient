-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 28 jan. 2022 à 21:22
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database_tables`
--

-- --------------------------------------------------------

--
-- Structure de la table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Structure de la table `banquesang`
--

CREATE TABLE `banquesang` (
  `id` int(100) NOT NULL,
  `groupe` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `banquesang`
--

INSERT INTO `banquesang` (`id`, `groupe`, `status`, `departement_id`) VALUES
(1, 'A+', '0 Bags', '416'),
(2, 'A-', '0 Bags', '416'),
(3, 'B+', '0 Bags', '416'),
(4, 'B-', '0 Bags', '416'),
(5, 'AB+', '0 Bags', '416'),
(6, 'AB-', '0 Bags', '416'),
(7, 'O+', '0 Bags', '416'),
(8, 'O-', '0 Bags', '416'),
(224, 'O-', '0 Bags', '451'),
(223, 'O+', '0 Bags', '451'),
(222, 'AB-', '0 Bags', '451'),
(221, 'AB+', '0 Bags', '451'),
(220, 'B-', '0 Bags', '451'),
(219, 'B+', '0 Bags', '451'),
(218, 'A-', '0 Bags', '451'),
(217, 'A+', '0 Bags', '451'),
(225, 'A+', '0 Bags', '452'),
(226, 'A-', '0 Bags', '452'),
(227, 'B+', '0 Bags', '452'),
(228, 'B-', '0 Bags', '452'),
(229, 'AB+', '0 Bags', '452'),
(230, 'AB-', '0 Bags', '452'),
(231, 'O+', '0 Bags', '452'),
(232, 'O-', '0 Bags', '452'),
(233, 'A+', '0 Bags', '453'),
(234, 'A-', '0 Bags', '453'),
(235, 'B+', '0 Bags', '453'),
(236, 'B-', '0 Bags', '453'),
(237, 'AB+', '0 Bags', '453'),
(238, 'AB-', '0 Bags', '453'),
(239, 'O+', '0 Bags', '453'),
(240, 'O-', '0 Bags', '453'),
(241, 'A+', '0 Bags', '454'),
(242, 'A-', '0 Bags', '454'),
(243, 'B+', '0 Bags', '454'),
(244, 'B-', '0 Bags', '454'),
(245, 'AB+', '0 Bags', '454'),
(246, 'AB-', '0 Bags', '454'),
(247, 'O+', '0 Bags', '454'),
(248, 'O-', '0 Bags', '454'),
(249, 'A+', '0 Bags', '455'),
(250, 'A-', '0 Bags', '455'),
(251, 'B+', '0 Bags', '455'),
(252, 'B-', '0 Bags', '455'),
(253, 'AB+', '0 Bags', '455'),
(254, 'AB-', '0 Bags', '455'),
(255, 'O+', '0 Bags', '455'),
(256, 'O-', '0 Bags', '455'),
(257, 'A+', '0 Bags', '456'),
(258, 'A-', '0 Bags', '456'),
(259, 'B+', '0 Bags', '456'),
(260, 'B-', '0 Bags', '456'),
(261, 'AB+', '0 Bags', '456'),
(262, 'AB-', '0 Bags', '456'),
(263, 'O+', '0 Bags', '456'),
(264, 'O-', '0 Bags', '456');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_lit`
--

CREATE TABLE `categorie_lit` (
  `id` int(100) NOT NULL,
  `categorie` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_lit`
--

INSERT INTO `categorie_lit` (`id`, `categorie`, `description`, `departement_id`) VALUES
(6, 'A', '10 lits', '416'),
(7, 'B', '10 lits', '416'),
(8, 'Enfants', '5 lits ', '416'),
(10, 'Grande', '50 lits', '416');

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `roomnumber` int(11) NOT NULL,
  `roomtype` text NOT NULL,
  `roomstatus` text NOT NULL,
  `floor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`roomnumber`, `roomtype`, `roomstatus`, `floor`) VALUES
(1, 'Chambre simple/Privée - “1 bedded” ', 'Disponible ', 1),
(2, 'Chambre 2 lits/Semi-privée ', 'Non disponible', 2),
(3, 'Chambre 4 litS', 'disponible ', 3);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Demo', 'demo@demail.com', '7014500000', 'this is a demo test');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(10) NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `nom`, `description`, `departement_id`) VALUES
(12, 'Cardiologie', '<p>Ce service fournit des soins médicaux aux patients qui ont des problèmes de cœur ou de circulation. Il traite les personnes hospitalisées et en consultation externe.. </p>\n', '416'),
(15, 'Diagnostic imaging', 'Anciennement connu sous le nom de radiologie, ce service fournit une gamme complète de services d imagerie diagnostique, notamment:\n\n', '416'),
(20, 'Chirurgie générale', 'Le service de chirurgie générale couvre un large éventail dinterventions chirurgicales', '416'),
(41, 'Rheumatologie', 'Des médecins spécialistes appelés rhumatologues dirigent lunité et sont des experts dans le domaine des troubles musculo-squelettiques (os, articulations, ligaments, tendons, muscles et nerfs).\n\n', '416'),
(42, 'Santé sexuelle', 'Ce département offre un service gratuit et confidentiel proposant :\ndes conseils, des tests et des traitements pour toutes les infections sexuellement transmissibles (IST)\ndes soins de planification familiale.\n\n\n', '416'),
(52, 'Department Name 2', '<p>Department Name 2</p>\n', '449');

-- --------------------------------------------------------

--
-- Structure de la table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`) VALUES
('WillWilliams', 'password', 'Will Williams', 'williams@gmail.com', 'Cardiologist', 435),
('Ralph', 'password', 'Ralphn Bh', 'ralph@gmail.com', 'Neurologist', 450),
('ryan', 'password', 'Ryan Chandler', 'ryanc@gmail.com', 'Pediatrician', 440),
('lewis', 'password', 'Lou Lewis', 'lewis@gmail.com', 'Gynecologist', 280),
('chris', 'password', 'Chris Olivas', 'chris@gmail.com', 'Oncologist', 580),
('danial', 'password', 'Danial Rivera', 'danial@gmail.com', 'Neurologist', 210);

-- --------------------------------------------------------

--
-- Structure de la table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lit alloué`
--

CREATE TABLE `lit alloué` (
  `id` int(100) NOT NULL,
  `numero` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `categorie` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lit_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `departement_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `ion_user_id`, `hospital_id`) VALUES
(13, '', 'Mrs Nurse', 'nurse@hms.com', 'Colegepara, Rajbari', '+0123456789', '752', '416');

-- --------------------------------------------------------

--
-- Structure de la table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Curtis', 'Hicks', 'Male', 'curtis@gmail.com', '7410000010', 'pass', 'pass'),
(2, 'Emily', 'Smith', 'Female', 'emily@gmail.com', '7896541222', 'pass', 'pass'),
(3, 'Robert', 'Ray', 'Male', 'robert@gmail.com', '7014744444', 'pass', 'pass'),
(4, 'Michael', 'Foster', 'Male', 'michael@gmail.com', '7023696969', 'pass', 'pass'),
(5, 'Victor', 'Owen', 'Male', 'victor@gmail.com', '7897895500', 'pass', 'pass'),
(6, 'Johnny', 'Collins', 'Male', 'johnny@gmail.com', '7530001250', 'pass', 'pass'),
(7, 'Elsie', 'Meads', 'Female', 'elsie@gmail.com', '7850001250', 'pass', 'pass'),
(8, 'David', 'Fburn', 'Male', 'david@gmail.com', '7301450000', 'pass', 'pass'),
(9, 'Brandon', 'Mckinnon', 'Male', 'brandon@gmail.com', '7026969500', 'pass', 'pass'),
(10, 'Tyler', 'Smith', 'Male', 'tyler@gmail.com', '7900145300', 'pass', 'pass'),
(11, 'Kathryn', 'Anderson', 'Female', 'kathryn@gmail.com', '7850002580', 'pass', 'pass'),
(12, 'Liam', 'Moore', 'Male', 'liam@gmail.com', '7412225680', 'password', 'password'),
(13, 'Brian', 'Rowe', 'Male', 'brian@gmail.com', '7012569999', 'password', 'password');

-- --------------------------------------------------------

--
-- Structure de la table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mutuelle` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `mutuelle`, `hospital_id`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, ''),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, ''),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, ''),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, ''),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, ''),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, ''),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, ''),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, ''),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, ''),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, ''),
(36, 'CBC (DIGITAL)', 'Pathological Test', '450', 'diagnostic', 30, ''),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, ''),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, ''),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, ''),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, ''),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, ''),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, ''),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, ''),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, ''),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, ''),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, ''),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, ''),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, ''),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, ''),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, ''),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, ''),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, ''),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, ''),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, ''),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, ''),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, ''),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, ''),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, ''),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, ''),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, ''),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, ''),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, ''),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, ''),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, ''),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, ''),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, ''),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, ''),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, ''),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, ''),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, ''),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, ''),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, ''),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, ''),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, ''),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, ''),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, ''),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, ''),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, ''),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, ''),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, ''),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, ''),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, ''),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, ''),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, ''),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, ''),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, ''),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, ''),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, ''),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, ''),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, ''),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, ''),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, ''),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, ''),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, ''),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, ''),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, ''),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, ''),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, ''),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, ''),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, ''),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, ''),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, ''),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, ''),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, ''),
(109, 'Physio-Therapy', 'Therapy', '1000', '', 0, ''),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, ''),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, ''),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, ''),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, ''),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, ''),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, ''),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, ''),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, ''),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, ''),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, ''),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 0, ''),
(128, 'Category Name 1', 'sdfsdf', '100', 'diagnostic', 10, '416'),
(129, 'Category Name 2', 'mgjgjgjg', '100', 'diagnostic', 10, '449'),
(130, 'Paracetamol', 'Category 1', '200', 'diagnostic', 1000, '453');

-- --------------------------------------------------------

--
-- Structure de la table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('WillWilliams', 12, 14, 'Liam', 'Moore', '2021-07-06', '10:00:00', 'Congenital heart disease', 'rhinoconjunctivitis', 'trandolapril (Mavik)'),
('ryan', 1, 16, 'Curtis', 'Hicks', '2021-07-05', '10:00:00', 'Tuberculosis', 'lumpy rash on the legs - or lupus vulgaris which gives lumps or ulcers', 'Isoniazid, Ethambutol (Myambutol), Linezolid (Zyvox)'),
('lewis', 11, 17, 'Kathryn', 'Anderson', '2021-07-05', '10:00:00', 'Ovarian cysts', '00000000', 'Narcotic analgesics and nonsteroidal anti-inflammatory drugs'),
('Ralph', 13, 18, 'Brian', 'Rowe', '2021-07-06', '08:00:00', 'Cerebral Aneurysm', '0000000', 'Nimodipine - empty stomach, at least 1 hour before a meal or 2 hours after a meal');

-- --------------------------------------------------------

--
-- Structure de la table `RDV`
--

CREATE TABLE `RDV` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fnom` varchar(20) NOT NULL,
  `lnom` varchar(20) NOT NULL,
  `genre` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `docteur` varchar(30) NOT NULL,
  `docFrais` int(5) NOT NULL,
  `rdvdate` date NOT NULL,
  `rdvtime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `docteurrStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `RDV`
--

INSERT INTO `RDV` (`pid`, `ID`, `fnom`, `lnom`, `genre`, `email`, `contact`, `docteur`, `docFrais`, `rdvdate`, `rdvtime`, `userStatus`, `docteurrStatus`) VALUES
(12, 11, 'YASSIN', 'YAZ', 'homme', 'YAS1@GMAIL.COM', '0678964325', 'DOCT6', 450, '2022-01-18', '23:08:40', 2, 2),
(12, 14, 'ALOUANE', 'HATIM', 'homme', 'ALOUANE@gmail.com', '0676895432', 'TBIB1', 435, '2021-07-06', '10:00:00', 1, 1),
(1, 15, 'ZIDANI', 'YASSER', 'homme', 'ZIDANI@gmail.com', '0676895432', 'DOC2', 440, '2021-07-05', '14:00:00', 0, 1),
(1, 16, 'BENELABAR', 'YASSIR', 'homme', 'BENELABAR@gmail.com', '0676895432', 'DOC2', 440, '2021-07-05', '10:00:00', 1, 1),
(11, 17, 'ARIRI', 'CHAIMA', 'femme', 'ARIRI@gmail.com', '0676895431', 'DOC3', 280, '2021-07-05', '10:00:00', 1, 1),
(13, 18, 'ANOUAR', 'MED', 'homme', 'ANOUAR@gmail.com', '0676895434', 'DOC4', 450, '2021-07-06', '08:00:00', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Index pour la table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `RDV`
--
ALTER TABLE `RDV`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
