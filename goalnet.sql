-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2023 at 07:49 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goalnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_text`, `created_at`) VALUES
(1, 1, 'Messi is number one!', '2023-12-02 07:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
CREATE TABLE IF NOT EXISTS `competitions` (
  `competition_id` int NOT NULL,
  `team1` varchar(50) DEFAULT NULL,
  `team2` varchar(50) DEFAULT NULL,
  `matchup_time` datetime DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `league` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`competition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`competition_id`, `team1`, `team2`, `matchup_time`, `location`, `league`) VALUES
(1, 'Cincinnati', 'Columbus', '2023-12-02 17:00:00', 'TQL Stadium', 'MLS'),
(2, 'Los Angelos', 'Houston', '2023-12-02 20:30:00', 'BMO Stadium', 'MLS'),
(3, 'TBD', 'TBD', '2023-12-11 17:00:00', 'TBD', 'MLS'),
(4, 'Lens', 'Sevilla', '2023-12-12 11:45:00', 'Stade Bollaert-Delelis', 'UEFA Champions League'),
(5, 'PSV', 'Arsenal', '2023-12-12 11:45:00', 'Philips Stadium', 'UEFA Champions League'),
(6, 'Man Utd', 'Bayern Munchen', '2023-12-12 14:00:00', 'Old Trafford', 'UEFA Champions League'),
(7, 'Bournemouth', 'Aston Villa', '2023-12-03 08:00:00', 'Vitality Stadium', 'Premier League'),
(8, 'Chelsea', 'Brighton', '2023-12-03 08:00:00', 'Stamford Bridge', 'Premier League'),
(9, 'Liverpool', 'Fulham', '2023-12-03 08:00:00', 'Anfield', 'Premier League'),
(10, 'Getafe', 'Valencia', '2023-12-08 14:00:00', 'Estadio Coliseum', 'La Liga'),
(11, 'Alaves', 'Las Palmas', '2023-12-09 07:00:00', 'Estadio de Mendizorroza', 'La Liga'),
(12, 'Betis', 'Real Madrid', '2023-12-09 09:15:00', 'Estadio Benito Villamarin', 'La Liga'),
(13, 'Genoa', 'Juventus', '2023-12-15 13:45:00', 'Stadio Comunale Luigi Ferraris', 'Serie A'),
(14, 'Lecce', 'Frosinone', '2023-12-16 08:00:00', 'Stadio Comunale Via del Mare', 'Serie A'),
(15, 'Napoli', 'Cagliari', '2023-12-16 11:00:00', 'Stadio Diego Armando', 'Serie A'),
(16, 'Hoffenheim', 'Bochum', '2023-12-08 13:30:00', 'PreZero Arena', 'Bundesliga'),
(17, 'Union Berlin', 'M\'gladbach', '2023-12-09 08:30:00', 'Stadion An der Alten', 'Bundesliga'),
(18, 'Dortmund', 'Leipzig', '2023-12-09 11:30:00', 'Signal Iduna Park', 'Bundesliga'),
(19, 'Montpellier', 'Lens', '2023-12-08 14:00:00', 'Stade de la Mosson-Mondial', 'Ligue 1'),
(20, 'Rennes', 'Monaco', '2023-12-09 10:00:00', 'Roazhon Park', 'Ligue 1'),
(21, 'PSG', 'Nantes', '2023-12-09 14:00:00', 'Parc des Princes', 'Ligue 1'),
(22, 'TBD', 'TBD', '2024-08-11 10:00:00', 'TBD', 'NWSL'),
(23, 'TBD', 'TBD', '2024-08-10 14:00:00', 'TBD', 'NWSL'),
(24, 'TBD', 'TBD', '2024-08-11 14:00:00', 'TBD', 'NWSL'),
(25, 'TBD', 'TBD', '2024-06-12 08:00:00', 'TBD', 'Liga MX'),
(26, 'TBD', 'TBD', '2024-06-10 10:00:00', 'TBD', 'Liga MX'),
(27, 'TBD', 'TBD', '2024-06-11 14:00:00', 'TBD', 'Liga MX'),
(28, 'R.Union SG', 'Liverpool', '2023-12-14 11:45:00', 'Lotto Park', 'UEFA Europa League'),
(29, 'LASK', 'Toulouse', '2023-12-14 11:45:00', 'Raiffeisen Arena', 'UEFA Europa League'),
(30, 'Rennes', 'Villarreal', '2023-12-14 11:45:00', 'Roazhon Park', 'UEFA Europa League');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
CREATE TABLE IF NOT EXISTS `matches` (
  `team1` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `team1_logo` varchar(90) COLLATE utf8mb4_general_ci NOT NULL,
  `team1_goals` int NOT NULL DEFAULT '0',
  `team2` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `team2_logo` varchar(90) COLLATE utf8mb4_general_ci NOT NULL,
  `team2_goal` int NOT NULL DEFAULT '0',
  `game_date` date NOT NULL,
  `game_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`team1`, `team1_logo`, `team1_goals`, `team2`, `team2_logo`, `team2_goal`, `game_date`, `game_time`) VALUES
('Man City', 'assets/images/teams/mancity.png', 1, 'Liverpool', 'assets/images/teams/liverpool.png', 1, '2023-11-26', '20:45:00'),
('Sheffield Utd', 'assets/images/teams/sheff.png', 2, 'Bournemouth', 'assets/images/teams/bournemouth.png', 0, '2023-11-26', '20:45:00'),
('Nottm Forest', 'assets/images/teams/nottm.png', 2, 'Brighton', 'assets/images/teams/brighton.png', 3, '2023-12-01', '20:45:00'),
('Burnley', 'assets/images/teams/burnley.png', 1, 'Westham', 'assets/images/teams/westham.png', 4, '2023-11-27', '18:15:00'),
('Luton Town', 'assets/images/teams/luton.png', 1, 'Crystal Palace', 'assets/images/teams/crystal.png', 4, '2023-11-27', '18:15:00'),
('Newcastle', 'assets/images/teams/newcastle.png', 0, 'Chelsea', 'assets/images/teams/chelsea.png', 3, '2023-11-27', '19:00:00'),
('Brentford', 'assets/images/teams/brentford.png', 0, 'Arsenal', 'assets/images/teams/arsenal.png', 3, '2023-11-28', '19:00:00'),
('Tottenham', 'assets/images/teams/tottenham.png', 1, 'Aston Villa', 'assets/images/teams/aston.png', 2, '2023-12-01', '19:00:00'),
('Everton ', 'assets/images/teams/everton.png', 1, 'Man United', 'assets/images/teams/manu.png', 2, '2023-11-28', '19:00:00'),
('Fulham ', 'assets/images/teams/fulham.png', 1, 'Wolves', 'assets/images/teams/wolves.png', 2, '2023-11-29', '19:00:00'),
('Sheffield Utd', 'assets/images/teams/sheff.png', 1, 'Liverpool', 'assets/images/teams/liverpool.png', 1, '2023-11-29', '20:45:00'),
('Nottm Forest', 'assets/images/teams/nottm.png', 2, 'Man City', 'assets/images/teams/mancity.png', 0, '2023-11-29', '20:45:00'),
('Westham', 'assets/images/teams/westham.png', 1, 'Brentford', 'assets/images/teams/brentford.png', 4, '2023-11-30', '18:15:00'),
('Aston Villa', 'assets/images/teams/aston.png', 1, 'Liverpool', 'assets/images/teams/liverpool.png', 1, '2023-12-02', '20:45:00'),
('Chelsea', 'assets/images/teams/chelsea.png', 5, 'Bournemouth', 'assets/images/teams/bournemouth.png', 1, '2023-12-02', '20:45:00'),
('Aston Villa', 'assets/images/teams/aston.png', 1, 'Liverpool', 'assets/images/teams/liverpool.png', 1, '2023-11-30', '20:45:00'),
('Everton', 'assets/images/teams/everton.png', 1, 'Fulham', 'assets/images/teams/liverpool.png', 1, '2023-11-30', '20:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userID`, `username`, `password`) VALUES
(1, 'jerry123', 'jerry'),
(2, 'tomtheking', 'tom'),
(3, 'gerdy', 'password');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
