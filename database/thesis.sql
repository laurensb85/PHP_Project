-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: 10.246.16.19:3306
-- Generation Time: Dec 18, 2012 at 05:11 PM
-- Server version: 5.1.63-0+squeeze1
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_thesis`
--
CREATE DATABASE `db_thesis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thesis`
--

CREATE TABLE IF NOT EXISTS `tblthesis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `photo_1` varchar(200) DEFAULT NULL,
  `photo_2` varchar(200) DEFAULT NULL,
  `photo_3` varchar(200) DEFAULT NULL,
  `photo_4` varchar(200) DEFAULT NULL,
  `photo_5` varchar(200) DEFAULT NULL,
  `cbo_photo1_a` int(11) DEFAULT NULL,
  `cbo_photo1_v` int(11) DEFAULT NULL,
  `cbo_photo2_a` int(11) DEFAULT NULL,
  `cbo_photo2_v` int(11) DEFAULT NULL,
  `cbo_photo3_a` int(11) DEFAULT NULL,
  `cbo_photo3_v` int(11) DEFAULT NULL,
  `cbo_photo4_a` int(11) DEFAULT NULL,
  `cbo_photo4_v` int(11) DEFAULT NULL,
  `cbo_photo5_a` int(11) DEFAULT NULL,
  `cbo_photo5_v` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tblthesis`
--

INSERT INTO `tblthesis` (`id`, `naam`, `email`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `cbo_photo1_a`, `cbo_photo1_v`, `cbo_photo2_a`, `cbo_photo2_v`, `cbo_photo3_a`, `cbo_photo3_v`, `cbo_photo4_a`, `cbo_photo4_v`, `cbo_photo5_a`, `cbo_photo5_v`) VALUES
(1, 'rikkkkkk', 'rikdelausnay@gmail.com', 'website.jpg', '', '', '', '', 6, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'laurens bourgeois', 'laurens.bourgeois@telenet.be', 'Hollowbody 6.gif', '', '', '', '', 3, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'test', 'test@test.com', 'voorbeeld.JPG', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'laurens', 'laurens.bourgeois@telenet.be', 'Tsonoqua Mask.gif', '', '', '', '', 5, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'test', 'rikdelausnay@gmail.com', 'phpspecs.jpg', '', '', '', '', 4, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'rikdl', 'rikdelausnay@gmail.com', 'phpspecs.jpg', '', '', '', '', 6, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '', 'laurens-bourgeois@hotmail.com', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Nelle Minner', 'nelle.minner@gmail.com', 'amelie_bunny_pic.jpg', '', '', '', '', 2, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Rikkie', 'nelle.minner@gmail.com', 'KULeuven-logo-2012.png', '', '', '', '', 3, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Liese Gerardi', 'liesegerardi@hotmail.com', 'P1010505.JPG', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'peter', 'peter.kuppens@ppw.kuleuven.be', '2011-2012 814.JPG', '', '', '', '', 3, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'nelle Minner', 'nelle.minner@gmail.com', 'Picture0003.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Rik De Lausnay', 'rikdelausnay@gmail.com', 'IMG_0448.JPG', '', '', '', '', 4, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'testest', 'rikdelausnay@gmail.com', 'adele2.jpg', '', '', '', '', 7, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Nelle Minner', 'nelle.minner@gmail.com', 'P1000178.JPG', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Laurens Bourgeois', 'laurens.bourgeois@telenet.be', 'user3_pic19_1210604705.jpg', '', '', '', '', 8, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Nelle Minner', 'nelle.minner@gmail.com', 'P1000179.JPG', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'sdfsdgsdg', 'rikdelausnay@gmail.com', 'adele1.jpg', '', '', '', '', 7, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'laurens', 'laurens.bourgeois@telenet.be', 'user3_pic19_1210604705.jpg', '', '', '', '', 2, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'sdgqsgs', 'rikdelausnay@gmail.com', 'adele2.jpg', '', '', '', '', 7, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'Laurens Bourgeois', 'laurens-bourgeois@hotmail.com', 'sanfrancisco_friends.jpg', '', '', '', '', 7, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'nelle', 'nelle.minner@gmail.com', 'amelie_bunny_pic.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'Nelle Minner', 'nelle.minner@gmail.com', 'amelie_bunny_pic.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 'laurens bourgeois', 'laurens.bourgeois@telenet.be', 'email_test_update.jpg', '', '', '', '', 9, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'nelle Minner', 'nelle.minner@gmail.com', 'P1020696.JPG', '', '', '', '', 4, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'test', 'rikdelausnay@gmail.com', 'amelie_bunny_pic.jpg', '', '', '', '', 5, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'test', 'rikdelausnay@gmail.com', 'amelie_bunny_pic.jpg', '', '', '', '', 8, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'josken', 'rikdelausnay@gmail.com', 'Knipsel.JPG', '', '', '', '', 9, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 'wtf', 'rikdelausnay@gmail.com', 'IMG_0510.JPG', '', '', '', '', 3, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 'Nelle Minner', 'nelle.minner@gmail.com', 'P1020702.JPG', '', '', '', '', 5, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 'mozilla', 'rikdelausnay@gmail.com', '_MG_5963.JPG', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 'nelle Minner', 'nelle.minner@gmail.com', 'Foto0172.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 'nelle Minner', 'nelle.minner@gmail.com', 'Foto0172.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'Nelle', 'nelle.minner@gmail.com', 'P1000245.JPG', '', '', '', '', 3, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'nelle', 'nelle.minner@gmail.com', '09062012171.jpg', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'Nelle Minner', 'nelle.minner@gmail.com', '_MG_5162-1.JPG', '', '', '', '', 3, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'Nelle Minner', 'nelle.minner@gmail.com', 'DSC_0805.jpg', '', '', '', '', 2, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'laurens bourgeois', 'bourgeois.laurens@gmail.com', 'Earth (Americas).gif', '', '', '', '', 8, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 'laurens bourgeois', 'laurens.bourgeois@telenet.be', 'Mars.gif', '', '', '', '', 6, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 'laurens bourgeois', 'laurens.bourgeois@telenet.be', 'Mercury.gif', '', '', '', '', 5, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 'testtest', 'rikdelausnay@gmail.com', 'file0001286719414.jpg', '', '', '', '', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 'testgoei', 'rikdelausnay@gmail.com', 'website.jpg', '', '', '', '', 6, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 'laurens bourgeois', 'laurens.bourgeois@telenet.be', 'Hollowbody 4.gif', '', '', '', '', 9, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 'laurens testje', 'laurens.bourgeois@telenet.be', 'RedDog.gif', '', '', '', '', 9, 1, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
