-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2017 at 08:36 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sixtyforty`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_type`
--

CREATE TABLE IF NOT EXISTS `acc_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(40) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `acc_type`
--

INSERT INTO `acc_type` (`id`, `type`, `description`) VALUES
(1, 'Debit', 'Debit'),
(2, 'Credit', 'Credit'),
(3, 'Adjustment', 'Adjustment');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address1` varchar(40) DEFAULT NULL,
  `address2` varchar(40) DEFAULT NULL,
  `address3` varchar(40) DEFAULT NULL,
  `town` varchar(40) DEFAULT NULL,
  `county` int(10) unsigned DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `postcode1` varchar(4) DEFAULT NULL,
  `postcode2` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `county` (`county`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address1`, `address2`, `address3`, `town`, `county`, `country`, `postcode1`, `postcode2`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'None', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 'LE6', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'LE4', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 'LE6', NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 'LE1', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 'LE10', NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, 'LE6', NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 'LE3', NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 'LE3', NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, 'LE6', NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, 'LE5', NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, 'LE2', NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, 'CV10', NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 'LE5', NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 'LE5', NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, 'LE7', NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, 'LE9', NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, 'CV11', NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 'LE5', NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 'LE12', NULL),
(42, '1 The Green', 'Witham St.Stevens', NULL, 'Ribbleton', 40, 1, 'PR6', '4EW');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'England'),
(2, 'Scotland'),
(3, 'Wales'),
(4, 'N.Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE IF NOT EXISTS `county` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `county` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`id`, `county`) VALUES
(1, 'Avon'),
(2, 'Bedfordshire'),
(3, 'Berkshire'),
(4, 'Borders'),
(5, 'Buckinghamshire'),
(6, 'Cambridgeshire'),
(7, 'Central'),
(8, 'Cheshire'),
(9, 'Cleveland'),
(10, 'Clwyd'),
(11, 'Cornwall'),
(12, 'County Antrim'),
(13, 'County Armagh'),
(14, 'County Down'),
(15, 'County Fermanagh'),
(16, 'County Londonderry'),
(17, 'County Tyrone'),
(18, 'Cumbria'),
(19, 'Derbyshire'),
(20, 'Devon'),
(21, 'Dorset'),
(22, 'Dumfries and Galloway'),
(23, 'Durham'),
(24, 'Dyfed'),
(25, 'East Sussex'),
(26, 'Essex'),
(27, 'Fife'),
(28, 'Gloucestershire'),
(29, 'Grampian'),
(30, 'Greater Manchester'),
(31, 'Gwent'),
(32, 'Gwynedd County'),
(33, 'Hampshire'),
(34, 'Herefordshire'),
(35, 'Hertfordshire'),
(36, 'Highlands and Islands'),
(37, 'Humberside'),
(38, 'Isle of Wight'),
(39, 'Kent'),
(40, 'Lancashire'),
(41, 'Leicestershire'),
(42, 'Lincolnshire'),
(43, 'Lothian'),
(44, 'Merseyside'),
(45, 'Mid Glamorgan'),
(46, 'Norfolk'),
(47, 'North Yorkshire'),
(48, 'Northamptonshire'),
(49, 'Northumberland'),
(50, 'Nottinghamshire'),
(51, 'Oxfordshire'),
(52, 'Powys'),
(53, 'Rutland'),
(54, 'Shropshire'),
(55, 'Somerset'),
(56, 'South Glamorgan'),
(57, 'South Yorkshire'),
(58, 'Staffordshire'),
(59, 'Strathclyde'),
(60, 'Suffolk'),
(61, 'Surrey'),
(62, 'Tayside'),
(63, 'Tyne and Wear'),
(64, 'Warwickshire'),
(65, 'West Glamorgan'),
(66, 'West Midlands'),
(67, 'West Sussex'),
(68, 'West Yorkshire'),
(69, 'Wiltshire'),
(70, 'Worcestershire');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referer` varchar(40) DEFAULT NULL,
  `lead_name` varchar(40) DEFAULT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `prop_area` varchar(4) DEFAULT NULL,
  `estimated_value` int(10) unsigned DEFAULT NULL,
  `tenanted` tinytext,
  `rental_income` varchar(20) DEFAULT NULL,
  `notes` text,
  `date_entered` varchar(40) DEFAULT NULL,
  `date_contacted` date DEFAULT NULL,
  `est_commission` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `referer`, `lead_name`, `contact`, `prop_area`, `estimated_value`, `tenanted`, `rental_income`, `notes`, `date_entered`, `date_contacted`, `est_commission`) VALUES
(1, NULL, 'Mr T Test', '01666 666666', 'PR6', 135000, 'Yes', '895', '2 bedroom terrace', NULL, NULL, NULL),
(2, 'chris', 'B L Zebub', 'hell@hell.com', 'Skem', 666000, 'Yes', '666', '<br>', NULL, NULL, NULL),
(3, 'chris', 'G Sus', 'Heaven@heaven.com', 'EX10', 1000000, 'Yes', '1000', 'Praise be to those who email me on Friday', '5/7/2017', NULL, NULL),
(4, 'nelson', 'Jobby McJobjob', 'Poo', 'HU1', 650000, 'Yes', '495', '<br>', '5/7/2017', NULL, NULL),
(5, 'nelson', 'Donald J Trump', '+1 1', 'WSH', 0, 'Yes', '40000', '<br>', '5/7/2017', NULL, NULL),
(6, 'nelson', 'Mr Happy', 'Happytown', 'HA66', 100000, 'Yes', '1000', 'So happy to be here', '5/7/2017', NULL, NULL),
(7, 'chris', 'AB CDE', '1111111', 'CV10', 120000, 'Yes', '650', '<br>', '6/7/2017', NULL, NULL),
(9, 'chris', 'johnny Rotten', 'JR@sexpistols.com', 'EX10', 150000, 'Yes', '1025', '<br>', '8/7/2017', NULL, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loan_type` tinyint(3) unsigned DEFAULT NULL,
  `property_id` int(10) unsigned DEFAULT NULL,
  `broker_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` varchar(40) DEFAULT NULL,
  `costs` varchar(40) DEFAULT NULL,
  `apr` varchar(40) DEFAULT NULL,
  `outstanding` varchar(40) DEFAULT NULL,
  `lender_id` int(10) unsigned DEFAULT NULL,
  `lender_ref` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_type` (`loan_type`),
  KEY `property_id` (`property_id`),
  KEY `broker_id` (`broker_id`),
  KEY `lender_id` (`lender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `loan`
--


-- --------------------------------------------------------

--
-- Table structure for table `loan_type`
--

CREATE TABLE IF NOT EXISTS `loan_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(40) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `loan_type`
--

INSERT INTO `loan_type` (`id`, `type`, `description`) VALUES
(1, 'Bridge', 'Bridge'),
(2, 'Mortgage – Interest', 'Interest-only mortage'),
(3, 'Mortgage – Repay', 'Replayment mortage'),
(4, 'Other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

CREATE TABLE IF NOT EXISTS `membership_grouppermissions` (
  `permissionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'property', 1, 3, 3, 3),
(2, 2, 'partner', 1, 3, 3, 3),
(3, 2, 'address', 1, 3, 3, 3),
(4, 2, 'transaction', 1, 3, 3, 3),
(5, 2, 'acc_type', 1, 3, 3, 3),
(6, 2, 'trans_type', 1, 3, 3, 3),
(7, 2, 'psn_title', 1, 3, 3, 3),
(8, 2, 'loan', 1, 3, 3, 3),
(9, 2, 'loan_type', 1, 3, 3, 3),
(10, 2, 'county', 1, 3, 3, 3),
(11, 2, 'country', 1, 3, 3, 3),
(12, 2, 'psn_type', 1, 3, 3, 3),
(13, 2, 'leads', 1, 3, 3, 3),
(40, 3, 'property', 0, 0, 0, 0),
(41, 3, 'partner', 0, 0, 0, 0),
(42, 3, 'address', 0, 0, 0, 0),
(43, 3, 'transaction', 0, 0, 0, 0),
(44, 3, 'acc_type', 0, 0, 0, 0),
(45, 3, 'trans_type', 0, 0, 0, 0),
(46, 3, 'psn_title', 0, 0, 0, 0),
(47, 3, 'loan', 0, 0, 0, 0),
(48, 3, 'loan_type', 0, 0, 0, 0),
(49, 3, 'county', 0, 0, 0, 0),
(50, 3, 'country', 0, 0, 0, 0),
(51, 3, 'psn_type', 0, 0, 0, 0),
(52, 3, 'leads', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

CREATE TABLE IF NOT EXISTS `membership_groups` (
  `groupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2017-07-03', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2017-07-03', 0, 1),
(3, 'Referers', 'Property referers', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

CREATE TABLE IF NOT EXISTS `membership_userpermissions` (
  `permissionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `membership_userpermissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

CREATE TABLE IF NOT EXISTS `membership_userrecords` (
  `recID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) unsigned DEFAULT NULL,
  `dateUpdated` bigint(20) unsigned DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`recID`),
  UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  KEY `pkValue` (`pkValue`),
  KEY `tableName` (`tableName`),
  KEY `memberID` (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'partner', '67', 'admin', 1499113492, 1499113492, 2),
(2, 'partner', '101', 'admin', 1499286495, 1499286788, 2),
(3, 'address', '42', 'admin', 1499286767, 1499286767, 2),
(4, 'leads', '1', 'chris', 1499288897, 1499288897, 3),
(5, 'leads', '2', 'chris', 1499289062, 1499289062, 3),
(6, 'leads', '3', 'chris', 1499289331, 1499289331, 3),
(7, 'leads', '4', 'nelson', 1499289422, 1499289422, 3),
(8, 'leads', '5', 'nelson', 1499292237, 1499292237, 3),
(9, 'leads', '6', 'nelson', 1499292587, 1499292587, 3),
(10, 'leads', '9', 'chris', 1499538225, 1499538225, 3);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

CREATE TABLE IF NOT EXISTS `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) unsigned DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '5d42706dbe96158b7792de24b80c1819', 'chrisnelson.nhi@gmail.com', '2017-07-03', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2017-07-03', NULL, NULL),
('chris', 'cf0e17745cbbd5ffd8442d8ec6c6d396', 'chrisnelson.nhi@gmail.com', '2017-07-05', 3, 0, 1, '', '', '', '', '', NULL, NULL),
('guest', NULL, NULL, '2017-07-03', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2017-07-03', NULL, NULL),
('nelson', 'cf0e17745cbbd5ffd8442d8ec6c6d396', 'chris@nelson.com', '2017-07-05', 3, 0, 1, '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(40) DEFAULT NULL,
  `title` tinyint(3) unsigned DEFAULT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `mailname` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `address_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `type1` int(10) unsigned DEFAULT NULL,
  `type2` int(10) unsigned DEFAULT NULL,
  `type3` int(10) unsigned DEFAULT NULL,
  `commission_rate` double(3,2) DEFAULT '0.50',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `address_id` (`address_id`),
  KEY `type1` (`type1`),
  KEY `type2` (`type2`),
  KEY `type3` (`type3`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `company_name`, `title`, `fname`, `lname`, `mailname`, `email`, `phone`, `mobile`, `address_id`, `username`, `password`, `type1`, `type2`, `type3`, `commission_rate`) VALUES
(1, 'Leicester Lettings', 2, '1', '2', 'Mr 1 2', '1.2@gmail.com', '01111 111111', '07777 77777', 2, '1.2@gmail.com', '1.2', 2, NULL, NULL, 0.50),
(2, 'Nuneaton Lettings', 2, '2', '3', 'Mr 2 3', '2.3@gmail.com', '01111 111111', '07777 77777', 3, '2.3@gmail.com', '2.3', 2, NULL, NULL, 0.50),
(3, ' ', 3, '3', '4', 'Mrs 3 4', '3.4@gmail.com', '01111 111111', '07777 77777', 4, '3.4@gmail.com', '3.4', 2, NULL, NULL, 0.50),
(4, ' ', 2, '4', '5', 'Ms 4 5', '4.5@gmail.com', '01111 111111', '07777 77777', 5, '4.5@gmail.com', '4.5', 2, NULL, NULL, 0.50),
(5, ' ', 2, '5', '6', 'Mr 5 6', '5.6@gmail.com', '01111 111111', '07777 77777', 6, '5.6@gmail.com', '5.6', 2, NULL, NULL, 0.50),
(6, ' ', 2, '6', '7', 'Mr 6 7', '6.7@gmail.com', '01111 111111', '07777 77777', 7, '6.7@gmail.com', '6.7', 2, NULL, NULL, 0.50),
(7, ' ', 2, '7', '8', 'Mr 7 8', '7.8@gmail.com', '01111 111111', '07777 77777', 8, '7.8@gmail.com', '7.8', 2, NULL, NULL, 0.50),
(8, ' ', 2, '8', '9', 'Mr 8 9', '8.9@gmail.com', '01111 111111', '07777 77777', 9, '8.9@gmail.com', '8.9', 2, NULL, NULL, 0.50),
(9, ' ', 2, '9', '0', 'Mr 9 0', '9.0@gmail.com', '01111 111111', '07777 77777', 10, '9.0@gmail.com', '9.0', 2, NULL, NULL, 0.50),
(10, ' ', 2, '0', '3', 'Mr 0 3', '0.3@gmail.com', '01111 111111', '07777 77777', 11, '0.3@gmail.com', '0.3', 2, NULL, NULL, 0.50),
(11, ' ', 2, '1', '4', 'Mr 1 4', '1.4@gmail.com', '01111 111111', '07777 77777', 12, '1.4@gmail.com', '1.4', 2, NULL, NULL, 0.50),
(12, ' ', 2, '2', '5', 'Mr 2 5', '2.5@gmail.com', '01111 111111', '07777 77777', 13, '2.5@gmail.com', '2.5', 2, NULL, NULL, 0.50),
(13, ' ', 2, '3', '6', 'Mr 3 6', '3.6@gmail.com', '01111 111111', '07777 77777', 14, '3.6@gmail.com', '3.6', 2, NULL, NULL, 0.50),
(14, ' ', 2, '4', '7', 'Mr 4 7', '4.7@gmail.com', '01112 111111', '07778 77777', 15, '4.7@gmail.com', '4.7', 2, NULL, NULL, 0.50),
(15, ' ', 2, '5', '8', 'Mr 5 8', '5.8@gmail.com', '01112 111111', '07778 77777', 16, '5.8@gmail.com', '5.8', 2, NULL, NULL, 0.50),
(16, ' ', 2, '6', '9', 'Mr 6 9', '6.9@gmail.com', '01112 111111', '07778 77777', 17, '6.9@gmail.com', '6.9', 2, NULL, NULL, 0.50),
(17, ' ', 2, '7', '0', 'Mr 7 0', '7.0@gmail.com', '01112 111111', '07778 77777', 18, '7.0@gmail.com', '7.0', 2, NULL, NULL, 0.50),
(18, ' ', 2, '8', '1', 'Mr 8 1', '8.1@gmail.com', '01112 111111', '07778 77777', 19, '8.1@gmail.com', '8.1', 2, NULL, NULL, 0.50),
(19, ' ', 2, '9', '4', 'Mr 9 4', '9.4@gmail.com', '01112 111111', '07778 77777', 20, '9.4@gmail.com', '9.4', 2, NULL, NULL, 0.50),
(20, ' ', 2, '0', '5', 'Mr 0 5', '0.5@gmail.com', '01112 111111', '07778 77777', 21, '0.5@gmail.com', '0.5', 2, NULL, NULL, 0.50),
(21, ' ', 2, '1', '6', 'Mr 1 6', '1.6@gmail.com', '01112 111111', '07778 77777', 22, '1.6@gmail.com', '1.6', 2, NULL, NULL, 0.50),
(22, ' ', 5, '2', '7', 'Dr 2 7', '2.7@gmail.com', '01112 111111', '07778 77777', 23, '2.7@gmail.com', '2.7', 2, NULL, NULL, 0.50),
(23, ' ', 2, '3', '8', 'Mr 3 8', '3.8@gmail.com', '01112 111111', '07778 77777', 24, '3.8@gmail.com', '3.8', 2, NULL, NULL, 0.50),
(24, ' ', 2, '4', '9', 'Mr 4 9', '4.9@gmail.com', '01112 111111', '07778 77777', 25, '4.9@gmail.com', '4.9', 2, NULL, NULL, 0.50),
(25, ' ', 2, '5', '0', 'Mr 5 0', '5.0@gmail.com', '01112 111111', '07778 77777', 26, '5.0@gmail.com', '5.0', 2, NULL, NULL, 0.50),
(26, ' ', 2, '6', '1', 'Mr 6 1', '6.1@gmail.com', '01112 111111', '07778 77777', 27, '6.1@gmail.com', '6.1', 2, NULL, NULL, 0.50),
(27, ' ', 2, '7', '2', 'Mr 7 2', '7.2@gmail.com', '01113 111111', '07779 77777', 28, '7.2@gmail.com', '7.2', 2, NULL, NULL, 0.50),
(28, ' ', 2, '8', '5', 'Mr 8 5', '8.5@gmail.com', '01113 111111', '07779 77777', 29, '8.5@gmail.com', '8.5', 2, NULL, NULL, 0.50),
(29, ' ', 2, '9', '6', 'Mr 9 6', '9.6@gmail.com', '01113 111111', '07779 77777', 30, '9.6@gmail.com', '9.6', 2, NULL, NULL, 0.50),
(30, ' ', 2, '0', '7', 'Mr 0 7', '0.7@gmail.com', '01113 111111', '07779 77777', 31, '0.7@gmail.com', '0.7', 2, NULL, NULL, 0.50),
(31, ' ', 4, '1', '8', 'Ms 1 8', '1.8@gmail.com', '01113 111111', '07779 77777', 32, '1.8@gmail.com', '1.8', 2, NULL, NULL, 0.50),
(65, ' ', 4, '2', '9', 'Ms 2 9', '2.9@gmail.com', '01113 111111', '07779 77777', 33, '2.9@gmail.com', '2.9', 2, NULL, NULL, 0.50),
(66, ' ', 4, '3', '0', 'Ms 3 0', '3.0@gmail.com', '01113 111111', '07779 77777', 34, '3.0@gmail.com', '3.0', 2, NULL, NULL, 0.50),
(100, 'BotNinja', 6, 'Dave', 'Mason', 'Mr Dave Mason', 'davejmason@gmail.com', NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 0.83),
(101, NULL, 9, 'John', 'McEnroe', 'Dr J McEnroe', 'youcantbeserious@gmail.com', NULL, NULL, 42, NULL, NULL, 15, 12, 13, 0.50);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` smallint(5) unsigned DEFAULT NULL,
  `address_id` int(10) unsigned DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `referer` int(10) unsigned DEFAULT NULL,
  `detachment` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `tenancy_type` varchar(40) DEFAULT NULL,
  `no_beds` tinyint(4) DEFAULT NULL,
  `notes` text,
  `contact_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `partner_id` (`partner_id`),
  KEY `address_id` (`address_id`),
  KEY `referer` (`referer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `partner_id`, `address_id`, `purchase_date`, `referer`, `detachment`, `type`, `tenancy_type`, `no_beds`, `notes`, `contact_date`) VALUES
(1, 29, 33, '2017-04-17', 2, 'Semi-detached', 'House', 'Single-let', 3, '<br>', NULL),
(2, 6, 2, '0000-00-00', 1, 'Detached', 'House', 'Single-let', 3, NULL, NULL),
(3, 6, 3, '0000-00-00', 2, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(4, 7, 4, '0000-00-00', 3, 'N/A', 'Flat', 'Single-let', 2, NULL, NULL),
(5, 8, 5, '0000-00-00', 3, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(6, 9, 6, '0000-00-00', 3, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(7, 10, 7, '0000-00-00', 3, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(8, 11, 8, '0000-00-00', 3, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(9, 12, 9, '0000-00-00', 1, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(10, 13, 10, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 3, NULL, NULL),
(11, 13, 11, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(12, 13, 12, '0000-00-00', 1, 'N/A', 'Flat', 'Single-let', 2, NULL, NULL),
(13, 14, 13, '0000-00-00', 3, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(14, 15, 14, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(15, 16, 15, '0000-00-00', 1, 'Detached', 'House', 'Single-let', 3, NULL, NULL),
(16, 16, 16, '0000-00-00', 1, 'Semi-detached', 'House', 'Single-let', 2, NULL, NULL),
(17, 17, 17, '0000-00-00', 1, 'N/A', 'Flat', 'Single-let', 1, NULL, NULL),
(18, 18, 18, '0000-00-00', 3, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(19, 19, 19, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(20, 20, 20, '0000-00-00', 2, 'Semi-detached', 'House', 'Single-let', 2, NULL, NULL),
(21, 21, 21, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(22, 21, 22, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(23, 22, 23, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(24, 22, 24, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(25, 22, 25, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(26, 22, 26, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(27, 22, 27, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 3, NULL, NULL),
(28, 23, 28, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(29, 24, 29, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(30, 25, 30, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(31, 25, 31, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(32, 26, 32, '0000-00-00', 3, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(33, 26, 33, '0000-00-00', 1, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(34, 26, 34, '0000-00-00', 2, 'Detached', 'House', 'Single-let', 3, NULL, NULL),
(35, 27, 35, '0000-00-00', 2, 'Terraced', 'House', 'Single-let', 2, NULL, NULL),
(36, 28, 36, '0000-00-00', 2, 'N/A', 'Flat', 'Single-let', 1, NULL, NULL),
(37, 28, 37, '0000-00-00', 2, 'Semi-detached', 'House', 'Single-let', 3, NULL, NULL),
(38, 29, 38, '0000-00-00', 1, 'Detached', 'House', 'Single-let', 3, NULL, NULL),
(39, 30, 39, '0000-00-00', 2, 'N/A', 'Flat', 'Single-let', 2, NULL, NULL),
(40, 31, 40, '0000-00-00', 2, 'Detached', 'House', 'Single-let', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `psn_title`
--

CREATE TABLE IF NOT EXISTS `psn_title` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `psn_title`
--

INSERT INTO `psn_title` (`id`, `title`) VALUES
(5, 'None'),
(6, 'Mr'),
(7, 'Mrs'),
(8, 'Ms'),
(9, 'Dr');

-- --------------------------------------------------------

--
-- Table structure for table `psn_type`
--

CREATE TABLE IF NOT EXISTS `psn_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(40) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `psn_type`
--

INSERT INTO `psn_type` (`id`, `type`, `description`) VALUES
(11, 'None', 'Not Applicable'),
(12, 'JV – landlord', 'Landlord'),
(13, 'JV – business', 'JV partner'),
(14, 'Letting Agent', 'Managing Agent'),
(15, 'Referer', 'Property Referer'),
(16, 'Broker', 'Commercial Broker'),
(17, 'Lender', 'Lender'),
(18, 'Legal', 'Solicitors and Conveyancers'),
(19, 'Accountant', 'Accountants and IFA'),
(20, 'RICS', 'Surveyors and Valuers');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(40) DEFAULT '1',
  `property_id` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=321 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `date`, `property_id`, `type`, `amount`) VALUES
(1, '01/06/2017', 1, 2, 180.00),
(2, '01/06/2017', 2, 2, 180.00),
(3, '01/06/2017', 3, 2, 180.00),
(4, '01/06/2017', 4, 2, 180.00),
(5, '01/06/2017', 5, 2, 180.00),
(6, '01/06/2017', 6, 2, 180.00),
(7, '01/06/2017', 7, 2, 180.00),
(8, '01/06/2017', 8, 2, 180.00),
(9, '01/06/2017', 9, 2, 180.00),
(10, '01/06/2017', 10, 2, 180.00),
(11, '01/06/2017', 11, 2, 180.00),
(12, '01/06/2017', 12, 2, 180.00),
(13, '01/06/2017', 13, 2, 180.00),
(14, '01/06/2017', 14, 2, 180.00),
(15, '01/06/2017', 15, 2, 180.00),
(16, '01/06/2017', 16, 2, 180.00),
(17, '01/06/2017', 17, 2, 180.00),
(18, '01/06/2017', 18, 2, 180.00),
(19, '01/06/2017', 19, 2, 180.00),
(20, '01/06/2017', 20, 2, 180.00),
(21, '01/06/2017', 21, 2, 180.00),
(22, '01/06/2017', 22, 2, 180.00),
(23, '01/06/2017', 23, 2, 180.00),
(24, '01/06/2017', 24, 2, 180.00),
(25, '01/06/2017', 25, 2, 180.00),
(26, '01/06/2017', 26, 2, 180.00),
(27, '01/06/2017', 27, 2, 180.00),
(28, '01/06/2017', 28, 2, 180.00),
(29, '01/06/2017', 29, 2, 180.00),
(30, '01/06/2017', 30, 2, 180.00),
(31, '01/06/2017', 31, 2, 180.00),
(32, '01/06/2017', 32, 2, 180.00),
(33, '01/06/2017', 33, 2, 180.00),
(34, '01/06/2017', 34, 2, 180.00),
(35, '01/06/2017', 35, 2, 180.00),
(36, '01/06/2017', 36, 2, 180.00),
(37, '01/06/2017', 37, 2, 180.00),
(38, '01/06/2017', 38, 2, 180.00),
(39, '01/06/2017', 39, 2, 180.00),
(40, '01/06/2017', 40, 2, 180.00),
(41, '07/06/2017', 1, 3, 180.00),
(42, '07/06/2017', 2, 3, 180.00),
(43, '07/06/2017', 3, 3, 180.00),
(44, '07/06/2017', 4, 3, 180.00),
(45, '07/06/2017', 5, 3, 180.00),
(46, '07/06/2017', 6, 3, 180.00),
(47, '07/06/2017', 7, 3, 180.00),
(48, '07/06/2017', 8, 3, 180.00),
(49, '07/06/2017', 9, 3, 180.00),
(50, '07/06/2017', 10, 3, 180.00),
(51, '07/06/2017', 11, 3, 180.00),
(52, '07/06/2017', 12, 3, 180.00),
(53, '07/06/2017', 13, 3, 180.00),
(54, '07/06/2017', 14, 3, 180.00),
(55, '07/06/2017', 15, 3, 180.00),
(56, '07/06/2017', 16, 3, 180.00),
(57, '07/06/2017', 17, 3, 180.00),
(58, '07/06/2017', 18, 3, 180.00),
(59, '07/06/2017', 19, 3, 180.00),
(60, '07/06/2017', 20, 3, 180.00),
(61, '07/06/2017', 21, 3, 180.00),
(62, '07/06/2017', 22, 3, 180.00),
(63, '07/06/2017', 23, 3, 180.00),
(64, '07/06/2017', 24, 3, 180.00),
(65, '07/06/2017', 25, 3, 180.00),
(66, '07/06/2017', 26, 3, 180.00),
(67, '07/06/2017', 27, 3, 180.00),
(68, '07/06/2017', 28, 3, 180.00),
(69, '07/06/2017', 29, 3, 180.00),
(70, '07/06/2017', 30, 3, 180.00),
(71, '07/06/2017', 31, 3, 180.00),
(72, '07/06/2017', 32, 3, 180.00),
(73, '07/06/2017', 33, 3, 180.00),
(74, '07/06/2017', 34, 3, 180.00),
(75, '07/06/2017', 35, 3, 180.00),
(76, '07/06/2017', 36, 3, 180.00),
(77, '07/06/2017', 37, 3, 180.00),
(78, '07/06/2017', 38, 3, 180.00),
(79, '07/06/2017', 39, 3, 180.00),
(80, '07/06/2017', 40, 3, 180.00),
(81, '07/06/2017', 1, 7, 180.00),
(82, '07/06/2017', 2, 7, 180.00),
(83, '07/06/2017', 3, 7, 180.00),
(84, '07/06/2017', 4, 7, 180.00),
(85, '07/06/2017', 5, 7, 180.00),
(86, '07/06/2017', 6, 7, 180.00),
(87, '07/06/2017', 7, 7, 180.00),
(88, '07/06/2017', 8, 7, 180.00),
(89, '07/06/2017', 9, 7, 180.00),
(90, '07/06/2017', 10, 7, 180.00),
(91, '07/06/2017', 11, 7, 180.00),
(92, '07/06/2017', 12, 7, 180.00),
(93, '07/06/2017', 13, 7, 180.00),
(94, '07/06/2017', 14, 7, 180.00),
(95, '07/06/2017', 15, 7, 180.00),
(96, '07/06/2017', 16, 7, 180.00),
(97, '07/06/2017', 17, 7, 180.00),
(98, '07/06/2017', 18, 7, 180.00),
(99, '07/06/2017', 19, 7, 180.00),
(100, '07/06/2017', 20, 7, 180.00),
(101, '07/06/2017', 21, 7, 180.00),
(102, '07/06/2017', 22, 7, 180.00),
(103, '07/06/2017', 23, 7, 180.00),
(104, '07/06/2017', 24, 7, 180.00),
(105, '07/06/2017', 25, 7, 180.00),
(106, '07/06/2017', 26, 7, 180.00),
(107, '07/06/2017', 27, 7, 180.00),
(108, '07/06/2017', 28, 7, 180.00),
(109, '07/06/2017', 29, 7, 180.00),
(110, '07/06/2017', 30, 7, 180.00),
(111, '07/06/2017', 31, 7, 180.00),
(112, '07/06/2017', 32, 7, 180.00),
(113, '07/06/2017', 33, 7, 180.00),
(114, '07/06/2017', 34, 7, 180.00),
(115, '07/06/2017', 35, 7, 180.00),
(116, '07/06/2017', 36, 7, 180.00),
(117, '07/06/2017', 37, 7, 180.00),
(118, '07/06/2017', 38, 7, 180.00),
(119, '07/06/2017', 39, 7, 180.00),
(120, '07/06/2017', 40, 7, 180.00),
(121, '14/06/2017', 1, 5, 102900.00),
(122, '14/06/2017', 2, 5, 91200.00),
(123, '14/06/2017', 3, 5, 82200.00),
(124, '14/06/2017', 4, 5, 67500.00),
(125, '14/06/2017', 5, 5, 83400.00),
(126, '14/06/2017', 6, 5, 78660.00),
(127, '14/06/2017', 7, 5, 72600.00),
(128, '14/06/2017', 8, 5, 107400.00),
(129, '14/06/2017', 9, 5, 82500.00),
(130, '14/06/2017', 10, 5, 85800.00),
(131, '14/06/2017', 11, 5, 71850.00),
(132, '14/06/2017', 12, 5, 64500.00),
(133, '14/06/2017', 13, 5, 105000.00),
(134, '14/06/2017', 14, 5, 108150.00),
(135, '14/06/2017', 15, 5, 108300.00),
(136, '14/06/2017', 16, 5, 79350.00),
(137, '14/06/2017', 17, 5, 45600.00),
(138, '14/06/2017', 18, 5, 70260.00),
(139, '14/06/2017', 19, 5, 71550.00),
(140, '14/06/2017', 20, 5, 81900.00),
(141, '14/06/2017', 21, 5, 75000.00),
(142, '14/06/2017', 22, 5, 74550.00),
(143, '14/06/2017', 23, 5, 72750.00),
(144, '14/06/2017', 24, 5, 106200.00),
(145, '14/06/2017', 25, 5, 79350.00),
(146, '14/06/2017', 26, 5, 71400.00),
(147, '14/06/2017', 27, 5, 104460.00),
(148, '14/06/2017', 28, 5, 70800.00),
(149, '14/06/2017', 29, 5, 70350.00),
(150, '14/06/2017', 30, 5, 80400.00),
(151, '14/06/2017', 31, 5, 78150.00),
(152, '14/06/2017', 32, 5, 68400.00),
(153, '14/06/2017', 33, 5, 103350.00),
(154, '14/06/2017', 34, 5, 111900.00),
(155, '14/06/2017', 35, 5, 68040.00),
(156, '14/06/2017', 36, 5, 61500.00),
(157, '14/06/2017', 37, 5, 100050.00),
(158, '14/06/2017', 38, 5, 111000.00),
(159, '14/06/2017', 39, 5, 68040.00),
(160, '14/06/2017', 40, 5, 142500.00),
(161, '14/06/2017', 1, 6, 102900.00),
(162, '14/06/2017', 2, 6, 91200.00),
(163, '14/06/2017', 3, 6, 82200.00),
(164, '14/06/2017', 4, 6, 67500.00),
(165, '14/06/2017', 5, 6, 83400.00),
(166, '14/06/2017', 6, 6, 78660.00),
(167, '14/06/2017', 7, 6, 72600.00),
(168, '14/06/2017', 8, 6, 107400.00),
(169, '14/06/2017', 9, 6, 82500.00),
(170, '14/06/2017', 10, 6, 85800.00),
(171, '14/06/2017', 11, 6, 71850.00),
(172, '14/06/2017', 12, 6, 64500.00),
(173, '14/06/2017', 13, 6, 105000.00),
(174, '14/06/2017', 14, 6, 108150.00),
(175, '14/06/2017', 15, 6, 108300.00),
(176, '14/06/2017', 16, 6, 79350.00),
(177, '14/06/2017', 17, 6, 45600.00),
(178, '14/06/2017', 18, 6, 70260.00),
(179, '14/06/2017', 19, 6, 71550.00),
(180, '14/06/2017', 20, 6, 81900.00),
(181, '14/06/2017', 21, 6, 75000.00),
(182, '14/06/2017', 22, 6, 74550.00),
(183, '14/06/2017', 23, 6, 72750.00),
(184, '14/06/2017', 24, 6, 106200.00),
(185, '14/06/2017', 25, 6, 79350.00),
(186, '14/06/2017', 26, 6, 71400.00),
(187, '14/06/2017', 27, 6, 104460.00),
(188, '14/06/2017', 28, 6, 70800.00),
(189, '14/06/2017', 29, 6, 70350.00),
(190, '14/06/2017', 30, 6, 80400.00),
(191, '14/06/2017', 31, 6, 78150.00),
(192, '14/06/2017', 32, 6, 68400.00),
(193, '14/06/2017', 33, 6, 103350.00),
(194, '14/06/2017', 34, 6, 111900.00),
(195, '14/06/2017', 35, 6, 68040.00),
(196, '14/06/2017', 36, 6, 61500.00),
(197, '14/06/2017', 37, 6, 100050.00),
(198, '14/06/2017', 38, 6, 111000.00),
(199, '14/06/2017', 39, 6, 68040.00),
(200, '14/06/2017', 40, 6, 142500.00),
(201, '28/06/2017', 1, 9, 128625.00),
(202, '28/06/2017', 2, 9, 114000.00),
(203, '28/06/2017', 3, 9, 102750.00),
(204, '28/06/2017', 4, 9, 84375.00),
(205, '28/06/2017', 5, 9, 104250.00),
(206, '28/06/2017', 6, 9, 98325.00),
(207, '28/06/2017', 7, 9, 90750.00),
(208, '28/06/2017', 8, 9, 134250.00),
(209, '28/06/2017', 9, 9, 103125.00),
(210, '28/06/2017', 10, 9, 107250.00),
(211, '28/06/2017', 11, 9, 89812.50),
(212, '28/06/2017', 12, 9, 80625.00),
(213, '28/06/2017', 13, 9, 131250.00),
(214, '28/06/2017', 14, 9, 135187.50),
(215, '28/06/2017', 15, 9, 135375.00),
(216, '28/06/2017', 16, 9, 99187.50),
(217, '28/06/2017', 17, 9, 57000.00),
(218, '28/06/2017', 18, 9, 87825.00),
(219, '28/06/2017', 19, 9, 89437.50),
(220, '28/06/2017', 20, 9, 102375.00),
(221, '28/06/2017', 21, 9, 93750.00),
(222, '28/06/2017', 22, 9, 93187.50),
(223, '28/06/2017', 23, 9, 90937.50),
(224, '28/06/2017', 24, 9, 132750.00),
(225, '28/06/2017', 25, 9, 99187.50),
(226, '28/06/2017', 26, 9, 89250.00),
(227, '28/06/2017', 27, 9, 130575.00),
(228, '28/06/2017', 28, 9, 88500.00),
(229, '28/06/2017', 29, 9, 87937.50),
(230, '28/06/2017', 30, 9, 100500.00),
(231, '28/06/2017', 31, 9, 97687.50),
(232, '28/06/2017', 32, 9, 85500.00),
(233, '28/06/2017', 33, 9, 129187.50),
(234, '28/06/2017', 34, 9, 139875.00),
(235, '28/06/2017', 35, 9, 85050.00),
(236, '28/06/2017', 36, 9, 76875.00),
(237, '28/06/2017', 37, 9, 125062.50),
(238, '28/06/2017', 38, 9, 138750.00),
(239, '28/06/2017', 39, 9, 85050.00),
(240, '28/06/2017', 40, 9, 178125.00),
(241, '14/06/2017', 1, 10, 514.50),
(242, '14/06/2017', 2, 10, 456.00),
(243, '14/06/2017', 3, 10, 411.00),
(244, '14/06/2017', 4, 10, 337.50),
(245, '14/06/2017', 5, 10, 417.00),
(246, '14/06/2017', 6, 10, 393.30),
(247, '14/06/2017', 7, 10, 363.00),
(248, '14/06/2017', 8, 10, 537.00),
(249, '14/06/2017', 9, 10, 412.50),
(250, '14/06/2017', 10, 10, 429.00),
(251, '14/06/2017', 11, 10, 359.25),
(252, '14/06/2017', 12, 10, 322.50),
(253, '14/06/2017', 13, 10, 525.00),
(254, '14/06/2017', 14, 10, 540.75),
(255, '14/06/2017', 15, 10, 541.50),
(256, '14/06/2017', 16, 10, 396.75),
(257, '14/06/2017', 17, 10, 228.00),
(258, '14/06/2017', 18, 10, 351.30),
(259, '14/06/2017', 19, 10, 357.75),
(260, '14/06/2017', 20, 10, 409.50),
(261, '14/06/2017', 21, 10, 375.00),
(262, '14/06/2017', 22, 10, 372.75),
(263, '14/06/2017', 23, 10, 363.75),
(264, '14/06/2017', 24, 10, 531.00),
(265, '14/06/2017', 25, 10, 396.75),
(266, '14/06/2017', 26, 10, 357.00),
(267, '14/06/2017', 27, 10, 522.30),
(268, '14/06/2017', 28, 10, 354.00),
(269, '14/06/2017', 29, 10, 351.75),
(270, '14/06/2017', 30, 10, 402.00),
(271, '14/06/2017', 31, 10, 390.75),
(272, '14/06/2017', 32, 10, 342.00),
(273, '14/06/2017', 33, 10, 516.75),
(274, '14/06/2017', 34, 10, 559.50),
(275, '14/06/2017', 35, 10, 340.20),
(276, '14/06/2017', 36, 10, 307.50),
(277, '14/06/2017', 37, 10, 500.25),
(278, '14/06/2017', 38, 10, 555.00),
(279, '14/06/2017', 39, 10, 340.20),
(280, '14/06/2017', 40, 10, 712.50),
(281, '28/06/2017', 1, 11, 475.00),
(282, '28/06/2017', 2, 11, 475.00),
(283, '28/06/2017', 3, 11, 475.00),
(284, '28/06/2017', 4, 11, 475.00),
(285, '28/06/2017', 5, 11, 475.00),
(286, '28/06/2017', 6, 11, 475.00),
(287, '28/06/2017', 7, 11, 475.00),
(288, '28/06/2017', 8, 11, 475.00),
(289, '28/06/2017', 9, 11, 475.00),
(290, '28/06/2017', 10, 11, 475.00),
(291, '28/06/2017', 11, 11, 475.00),
(292, '28/06/2017', 12, 11, 475.00),
(293, '28/06/2017', 13, 11, 475.00),
(294, '28/06/2017', 14, 11, 475.00),
(295, '28/06/2017', 15, 11, 475.00),
(296, '28/06/2017', 16, 11, 475.00),
(297, '28/06/2017', 17, 11, 475.00),
(298, '28/06/2017', 18, 11, 475.00),
(299, '28/06/2017', 19, 11, 475.00),
(300, '28/06/2017', 20, 11, 475.00),
(301, '28/06/2017', 21, 11, 475.00),
(302, '28/06/2017', 22, 11, 475.00),
(303, '28/06/2017', 23, 11, 475.00),
(304, '28/06/2017', 24, 11, 475.00),
(305, '28/06/2017', 25, 11, 475.00),
(306, '28/06/2017', 26, 11, 475.00),
(307, '28/06/2017', 27, 11, 475.00),
(308, '28/06/2017', 28, 11, 475.00),
(309, '28/06/2017', 29, 11, 475.00),
(310, '28/06/2017', 30, 11, 475.00),
(311, '28/06/2017', 31, 11, 475.00),
(312, '28/06/2017', 32, 11, 475.00),
(313, '28/06/2017', 33, 11, 475.00),
(314, '28/06/2017', 34, 11, 475.00),
(315, '28/06/2017', 35, 11, 475.00),
(316, '28/06/2017', 36, 11, 475.00),
(317, '28/06/2017', 37, 11, 475.00),
(318, '28/06/2017', 38, 11, 475.00),
(319, '28/06/2017', 39, 11, 475.00),
(320, '28/06/2017', 40, 11, 475.00);

-- --------------------------------------------------------

--
-- Table structure for table `trans_type`
--

CREATE TABLE IF NOT EXISTS `trans_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(40) DEFAULT NULL,
  `acc_type` tinyint(3) unsigned DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `acc_type` (`acc_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `trans_type`
--

INSERT INTO `trans_type` (`id`, `type`, `acc_type`, `description`) VALUES
(1, 'RICS survey', 1, 'RICS survey'),
(2, 'RICS valuation', 1, 'RICS valuation'),
(3, 'Bridge valuation', 1, 'Bridge valuation'),
(4, 'Bridge setup', 1, 'Bridge costs'),
(5, 'Bridge loan', 2, 'Bridge loan'),
(6, 'Property purchase', 1, 'Property purchase'),
(7, 'Mortgage valuation', 1, 'Mortgage valuation'),
(8, 'Mortgage setup', 1, 'Mortgage costs'),
(9, 'Mortgage loan', 2, 'Mortgage loan'),
(10, 'Commission', 1, 'Commission'),
(11, 'Conveyancing and legal fees', 1, 'Conveyancing and legal fees'),
(12, 'Management fees', 1, 'Management fees'),
(13, 'Maintenance fees', 1, 'Maintenance fees'),
(14, 'Other fees', 1, 'Other fees'),
(15, 'Other income', 2, 'Other income'),
(16, 'Bridge Interest', 1, 'Bridge Interest'),
(17, 'Mortgage Interest', 1, 'Mortgage Interest');
