-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2012 at 05:56 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baily`
--

-- --------------------------------------------------------

--
-- Table structure for table `content_nodes`
--

CREATE TABLE IF NOT EXISTS `content_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `node` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `content_nodes`
--

INSERT INTO `content_nodes` (`id`, `page_id`, `node`, `content`) VALUES
(1, 3, 'headline', 'had inflicted but a slight'),
(3, 3, 'description', 'upon her silks and furs, her lithe form wracked with sobs. She did not notice my presence, nor did she hear me speaking with Sola, who was standing a short distance from the vehicle. "Is she injured?" I asked of Sola, indicating Dejah Thoris by an inclination of my head. "No," '),
(4, 3, 'content', 'whose dagger it seemed had struck the edge of one of Sola''s metal breast ornaments and, thus deflected, had inflicted but a slight flesh wound. As I approached I found Dejah Thoris lying prone upon her silks and furs, her lithe form wracked with sobs. She did not notice my presence, nor did she hear me speaking with Sola, who was standing a short distance from the vehicle. "Is she injured?" I asked of Sola, indicating Dejah Thoris by an inclination of my head. "No," she answered, "she thinks that you are dead." "And that her grandmother''s cat may now have no one to polish its teeth?" I queried, smiling. "I think you wrong her, John Carter," said Sola. "I do not understand either her ways or yours, but I am sure the granddaughter of ten thousand jeddaks would never grieve like this over any who held but the highest claim upon her affections. They are a proud race, but they are just, as are all Barsoomians, and you'),
(5, 2, 'headline', 'Never worry about this'),
(7, 2, 'description', 'Despicable me...'),
(8, 2, 'content', 'Despite me...\r\nnever...'),
(9, 4, 'headline', 'healing and '),
(10, 4, 'image', '/images/upload/P1090869.JPG'),
(11, 4, 'description', 'dressed my'),
(12, 4, 'content', 'reached my women, who, accustomed to such happenings, dressed my wounds, applying the wonderful healing and '),
(13, 2, 'image', '/images/upload/P1090751.JPG'),
(14, 1, 'headline', 'Vromar Gunjoon a'),
(15, 1, 'image', '/images/upload/P1090752.JPG'),
(16, 1, 'description', 'Baare baare jeno '),
(17, 1, 'content', 'aasi fire emon deshe'),
(18, 3, 'image', '/images/upload/P1100057.JPG'),
(19, 5, 'headline', 'My head'),
(20, 5, 'image', NULL),
(21, 5, 'description', 'Deslskjlsdkjf'),
(22, 5, 'content', 'sdfsadfsdaf');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `access_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `access_level`) VALUES
(1, 'main_menu', NULL),
(2, 'admin_menu', NULL),
(3, 'another', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `label`, `page_id`, `link`, `position`) VALUES
(1, 1, 'Home', 0, '/', 1),
(2, 2, 'Manage Content', 0, '/page/list', 1),
(3, 2, 'Manage Menus', 0, '/menu', 2),
(4, 2, 'Manage Users', 0, '/user/list', 3),
(5, 2, 'Rebuild Search Index', 0, '/search/build', 4),
(6, 1, 'Sonali Prantor', 1, '', 2),
(7, 1, 'Page Listing', 0, '/page', 3),
(8, 1, 'athoer', 5, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `namespace` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `namespace`, `name`, `date_created`) VALUES
(1, 0, 'page', 'Sonali Prantore..', 1342333768),
(2, 0, 'page', 'The Page', 1342353684),
(3, 0, 'page', ' I queried, smiling', 1342355478),
(4, 0, 'page', 'accustomed', 1342359534),
(5, 0, 'page', 'another Page', 1343293838);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `role` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'test', 'user', 'Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
