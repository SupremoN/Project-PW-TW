-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2022 at 10:54 AM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s661723_pwtw`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `entryfee` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '1',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `products` int(10) DEFAULT '500',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT '0',
  `prices1` int(11) NOT NULL DEFAULT '0',
  `prices2` int(11) NOT NULL DEFAULT '0',
  `prices3` int(11) NOT NULL DEFAULT '0',
  `prices4` int(11) NOT NULL DEFAULT '0',
  `prices5` int(11) NOT NULL DEFAULT '0',
  `prices6` int(11) NOT NULL DEFAULT '0',
  `prices7` int(11) NOT NULL DEFAULT '0',
  `prices8` int(11) NOT NULL DEFAULT '0',
  `prices9` int(11) NOT NULL DEFAULT '0',
  `prices10` int(11) NOT NULL DEFAULT '0',
  `prices11` int(11) NOT NULL DEFAULT '0',
  `prices12` int(11) NOT NULL DEFAULT '0',
  `prices13` int(11) NOT NULL DEFAULT '0',
  `prices14` int(11) NOT NULL DEFAULT '0',
  `prices15` int(11) NOT NULL DEFAULT '0',
  `prices16` int(11) NOT NULL DEFAULT '0',
  `prices17` int(11) NOT NULL DEFAULT '0',
  `prices18` int(11) NOT NULL DEFAULT '0',
  `prices19` int(11) NOT NULL DEFAULT '0',
  `prices20` int(11) NOT NULL DEFAULT '0',
  `prices21` int(11) NOT NULL DEFAULT '0',
  `prices22` int(11) NOT NULL DEFAULT '0',
  `prices23` int(11) NOT NULL DEFAULT '0',
  `prices24` int(11) NOT NULL DEFAULT '0',
  `Car0PosX` float NOT NULL DEFAULT '0',
  `Car0PosY` float NOT NULL DEFAULT '0',
  `Car0PosZ` float NOT NULL DEFAULT '0',
  `Car0PosAngle` float NOT NULL DEFAULT '0',
  `Car0ModelId` int(11) NOT NULL DEFAULT '0',
  `Car0Price` int(11) NOT NULL DEFAULT '0',
  `Car1PosX` float NOT NULL DEFAULT '0',
  `Car1PosY` float NOT NULL DEFAULT '0',
  `Car1PosZ` float NOT NULL DEFAULT '0',
  `Car1PosAngle` float NOT NULL DEFAULT '0',
  `Car1ModelId` int(11) NOT NULL DEFAULT '0',
  `Car1Price` int(11) NOT NULL DEFAULT '0',
  `Car2PosX` float NOT NULL DEFAULT '0',
  `Car2PosY` float NOT NULL DEFAULT '0',
  `Car2PosZ` float NOT NULL DEFAULT '0',
  `Car2PosAngle` float NOT NULL DEFAULT '0',
  `Car2ModelId` int(11) NOT NULL DEFAULT '0',
  `Car2Price` int(11) NOT NULL DEFAULT '0',
  `Car3PosX` float NOT NULL DEFAULT '0',
  `Car3PosY` float NOT NULL DEFAULT '0',
  `Car3PosZ` float NOT NULL DEFAULT '0',
  `Car3PosAngle` float NOT NULL DEFAULT '0',
  `Car3ModelId` int(11) NOT NULL DEFAULT '0',
  `Car3Price` int(11) NOT NULL DEFAULT '0',
  `Car1Stock` int(11) NOT NULL DEFAULT '0',
  `Car2Stock` int(11) NOT NULL DEFAULT '0',
  `Car3Stock` int(11) NOT NULL DEFAULT '0',
  `Car1Order` int(11) NOT NULL DEFAULT '0',
  `Car2Order` int(11) NOT NULL DEFAULT '0',
  `Car3Order` int(11) NOT NULL DEFAULT '0',
  `Car4PosX` float NOT NULL DEFAULT '0',
  `Car4PosY` float NOT NULL DEFAULT '0',
  `Car4PosZ` float NOT NULL DEFAULT '0',
  `Car4PosAngle` float NOT NULL DEFAULT '0',
  `Car4ModelId` int(11) NOT NULL DEFAULT '0',
  `Car4Price` int(11) NOT NULL DEFAULT '0',
  `Car5PosX` int(11) NOT NULL DEFAULT '0',
  `Car5PosY` float NOT NULL DEFAULT '0',
  `Car5PosZ` float NOT NULL DEFAULT '0',
  `Car5PosAngle` float NOT NULL DEFAULT '0',
  `Car5ModelId` int(11) NOT NULL DEFAULT '0',
  `Car5Price` int(11) NOT NULL DEFAULT '0',
  `Car6PosX` float NOT NULL DEFAULT '0',
  `Car6PosY` float NOT NULL DEFAULT '0',
  `Car6PosZ` float NOT NULL DEFAULT '0',
  `Car6PosAngle` float NOT NULL DEFAULT '0',
  `Car6ModelId` int(11) NOT NULL DEFAULT '0',
  `Car6Price` int(11) NOT NULL DEFAULT '0',
  `Car7PosX` float NOT NULL DEFAULT '0',
  `Car7PosY` float NOT NULL DEFAULT '0',
  `Car7PosZ` float NOT NULL DEFAULT '0',
  `Car7PosAngle` float NOT NULL DEFAULT '0',
  `Car7ModelId` int(11) NOT NULL DEFAULT '0',
  `Car7Price` int(11) NOT NULL DEFAULT '0',
  `Car8PosX` float NOT NULL DEFAULT '0',
  `Car8PosY` float NOT NULL DEFAULT '0',
  `Car8PosZ` float NOT NULL DEFAULT '0',
  `Car8PosAngle` float NOT NULL DEFAULT '0',
  `Car8ModelId` int(11) NOT NULL DEFAULT '0',
  `Car8Price` int(11) NOT NULL DEFAULT '0',
  `Car9PosX` float NOT NULL DEFAULT '0',
  `Car9PosY` float NOT NULL DEFAULT '0',
  `Car9PosZ` float NOT NULL DEFAULT '0',
  `Car9PosAngle` float NOT NULL DEFAULT '0',
  `Car9ModelId` int(11) NOT NULL DEFAULT '0',
  `Car9Price` int(11) NOT NULL DEFAULT '0',
  `PurchaseX` float NOT NULL DEFAULT '0',
  `PurchaseY` float NOT NULL DEFAULT '0',
  `PurchaseZ` float NOT NULL DEFAULT '0',
  `PurchaseAngle` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `ownerid`, `owner`, `name`, `message`, `type`, `price`, `entryfee`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `products`, `robbed`, `robbing`, `prices0`, `prices1`, `prices2`, `prices3`, `prices4`, `prices5`, `prices6`, `prices7`, `prices8`, `prices9`, `prices10`, `prices11`, `prices12`, `prices13`, `prices14`, `prices15`, `prices16`, `prices17`, `prices18`, `prices19`, `prices20`, `prices21`, `prices22`, `prices23`, `prices24`, `Car0PosX`, `Car0PosY`, `Car0PosZ`, `Car0PosAngle`, `Car0ModelId`, `Car0Price`, `Car1PosX`, `Car1PosY`, `Car1PosZ`, `Car1PosAngle`, `Car1ModelId`, `Car1Price`, `Car2PosX`, `Car2PosY`, `Car2PosZ`, `Car2PosAngle`, `Car2ModelId`, `Car2Price`, `Car3PosX`, `Car3PosY`, `Car3PosZ`, `Car3PosAngle`, `Car3ModelId`, `Car3Price`, `Car1Stock`, `Car2Stock`, `Car3Stock`, `Car1Order`, `Car2Order`, `Car3Order`, `Car4PosX`, `Car4PosY`, `Car4PosZ`, `Car4PosAngle`, `Car4ModelId`, `Car4Price`, `Car5PosX`, `Car5PosY`, `Car5PosZ`, `Car5PosAngle`, `Car5ModelId`, `Car5Price`, `Car6PosX`, `Car6PosY`, `Car6PosZ`, `Car6PosAngle`, `Car6ModelId`, `Car6Price`, `Car7PosX`, `Car7PosY`, `Car7PosZ`, `Car7PosAngle`, `Car7ModelId`, `Car7Price`, `Car8PosX`, `Car8PosY`, `Car8PosZ`, `Car8PosAngle`, `Car8ModelId`, `Car8Price`, `Car9PosX`, `Car9PosY`, `Car9PosZ`, `Car9PosAngle`, `Car9ModelId`, `Car9Price`, `PurchaseX`, `PurchaseY`, `PurchaseZ`, `PurchaseAngle`) VALUES
(1, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11. Type /buy to purchase from this business.', 0, 20000000, 0, 0, 0, 1416.02, -2321.5, 13.547, 6.954, -27.438, -57.611, 1003.55, 0, 6, 3000001, 0, 0, 0, 500, 3, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation. Type /buy to purchase from this business.', 1, 20000000, 0, 0, 0, 1422.63, -2320.95, 13.539, 96.954, 316.287, -169.647, 999.601, 0, 6, 3000002, 0, 0, 0, 500, 3, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line. Type /buy to purchase from this business.', 2, 20000000, 0, 0, 0, 1427.15, -2320.39, 13.554, 96.954, 204.386, -168.459, 1000.52, 0, 14, 3000003, 0, 0, 0, 500, 3, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT '1239',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `adminlevel` tinyint(2) DEFAULT '0',
  `factiontype` tinyint(2) DEFAULT '0',
  `vip` tinyint(2) DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1',
  `mapicon` tinyint(2) NOT NULL DEFAULT '-1',
  `color` int(10) NOT NULL DEFAULT '-256'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT '0',
  `color` int(10) DEFAULT '-1',
  `rankcount` tinyint(2) DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint(2) DEFAULT '0',
  `lockerworld` int(10) DEFAULT '0',
  `turftokens` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `points` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(2) DEFAULT '0',
  `stashworld` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `pistolammo` int(10) DEFAULT '0',
  `shotgunammo` int(10) DEFAULT '0',
  `smgammo` int(10) DEFAULT '0',
  `arammo` int(10) DEFAULT '0',
  `rifleammo` int(10) DEFAULT '0',
  `hpammo` int(10) DEFAULT '0',
  `poisonammo` int(10) DEFAULT '0',
  `fmjammo` int(10) DEFAULT '0',
  `weapon_9mm` int(10) DEFAULT '0',
  `weapon_sdpistol` int(10) DEFAULT '0',
  `weapon_deagle` int(10) DEFAULT '0',
  `weapon_shotgun` int(10) DEFAULT '0',
  `weapon_spas12` int(10) DEFAULT '0',
  `weapon_sawnoff` int(10) DEFAULT '0',
  `weapon_tec9` int(10) DEFAULT '0',
  `weapon_uzi` int(10) DEFAULT '0',
  `weapon_mp5` int(10) DEFAULT '0',
  `weapon_ak47` int(10) DEFAULT '0',
  `weapon_m4` int(10) DEFAULT '0',
  `weapon_rifle` int(10) DEFAULT '0',
  `weapon_sniper` int(10) DEFAULT '0',
  `weapon_molotov` int(10) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int(10) DEFAULT '0',
  `drugworld` int(10) DEFAULT '0',
  `drugpot` int(10) DEFAULT '0',
  `drugcrack` int(10) DEFAULT '0',
  `drugmeth` int(10) DEFAULT '0',
  `armsmaterials` int(10) DEFAULT '0',
  `armsprice_1` int(10) DEFAULT '0',
  `armsprice_2` int(10) DEFAULT '0',
  `armsprice_3` int(10) DEFAULT '0',
  `armsprice_4` int(10) DEFAULT '0',
  `armsprice_5` int(10) DEFAULT '0',
  `armsprice_6` int(10) DEFAULT '0',
  `armsprice_7` int(10) DEFAULT '0',
  `armsprice_8` int(10) DEFAULT '0',
  `armsprice_9` int(10) NOT NULL DEFAULT '0',
  `armsprice_10` int(10) NOT NULL DEFAULT '0',
  `armsprice_11` int(10) NOT NULL DEFAULT '0',
  `armsprice_12` tinyint(2) NOT NULL DEFAULT '0',
  `pot_price` int(10) DEFAULT '0',
  `crack_price` int(10) DEFAULT '0',
  `meth_price` int(10) DEFAULT '0',
  `armshpammo` int(10) DEFAULT '0',
  `armspoisonammo` int(10) DEFAULT '0',
  `armsfmjammo` int(10) DEFAULT '0',
  `alliance` int(10) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT '980',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(12) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(12) DEFAULT '0',
  `gateWorld` int(12) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(12) DEFAULT '0',
  `gateFaction` int(12) DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) DEFAULT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `rentprice` int(10) DEFAULT '0',
  `level` tinyint(2) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` int(10) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` tinyint(2) DEFAULT '0',
  `ammo_7` tinyint(2) DEFAULT '0',
  `ammo_8` tinyint(2) DEFAULT '0',
  `ammo_9` tinyint(2) DEFAULT '0',
  `ammo_10` tinyint(2) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` smallint(6) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0',
  `move_x` float DEFAULT '0',
  `move_y` float DEFAULT '0',
  `move_z` float DEFAULT '0',
  `move_rx` float DEFAULT '0',
  `move_ry` float DEFAULT '0',
  `move_rz` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT '0',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0',
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL,
  `level` tinyint(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`id`, `date`, `description`) VALUES
(1, '2022-03-01 10:39:12', 'Janzen_Official (uid: 1) set Janzen_Official\'s (uid: 1) weaponrestricted to 0'),
(2, '2022-03-01 10:39:24', 'Janzen_Official (uid: 1) set Janzen_Official\'s (uid: 1) weaponrestricted to -1'),
(3, '2022-03-01 10:39:33', 'Janzen_Official (uid: 1) set Janzen_Official\'s (uid: 1) weaponrestricted to 1'),
(4, '2022-03-01 10:39:38', 'Janzen_Official (uid: 1) set Janzen_Official\'s (uid: 1) weaponrestricted to 0');

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT '980',
  `mobjInterior` int(11) NOT NULL DEFAULT '0',
  `mobjWorld` int(11) NOT NULL DEFAULT '0',
  `mobjX` float NOT NULL DEFAULT '0',
  `mobjY` float NOT NULL DEFAULT '0',
  `mobjZ` float NOT NULL DEFAULT '0',
  `mobjRX` float NOT NULL DEFAULT '0',
  `mobjRY` float NOT NULL DEFAULT '0',
  `mobjRZ` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `profits` int(10) DEFAULT '0',
  `time` tinyint(2) DEFAULT '10',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint(2) DEFAULT '0',
  `pointworld` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `time` tinyint(2) DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint(3) DEFAULT '18',
  `skin` smallint(3) DEFAULT '299',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '50000',
  `bank` int(10) DEFAULT '50000',
  `paycheck` int(10) DEFAULT '0',
  `level` int(10) DEFAULT '5',
  `exp` int(10) DEFAULT '0',
  `minutes` smallint(3) DEFAULT '0',
  `hours` int(10) DEFAULT '0',
  `adminlevel` int(10) DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `upgradepoints` int(10) DEFAULT '0',
  `warnings` tinyint(3) DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int(10) DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint(2) DEFAULT '0',
  `reportwarns` tinyint(2) DEFAULT '0',
  `fightstyle` tinyint(2) DEFAULT '4',
  `locked` tinyint(1) DEFAULT '0',
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT '0',
  `phone` int(10) DEFAULT '0',
  `job` int(10) DEFAULT '-1',
  `secondjob` tinyint(2) DEFAULT '-1',
  `crimes` int(10) DEFAULT '0',
  `arrested` int(10) DEFAULT '0',
  `wantedlevel` tinyint(2) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `foodbaon` int(11) NOT NULL DEFAULT '0',
  `waterbaon` int(11) NOT NULL DEFAULT '0',
  `medicinebaon` int(11) NOT NULL DEFAULT '0',
  `seeds` int(10) DEFAULT '0',
  `ephedrine` int(10) DEFAULT '0',
  `muriaticacid` int(10) DEFAULT '0',
  `bakingsoda` int(10) DEFAULT '0',
  `cigars` int(10) DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int(10) DEFAULT '0',
  `rentinghouse` int(10) DEFAULT '0',
  `spraycans` int(10) DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int(10) DEFAULT '0',
  `fishweight` int(10) DEFAULT '0',
  `components` int(10) DEFAULT '0',
  `courierskill` int(10) DEFAULT '0',
  `fishingskill` int(10) DEFAULT '0',
  `guardskill` int(10) DEFAULT '0',
  `weaponskill` int(10) DEFAULT '0',
  `mechanicskill` int(10) DEFAULT '0',
  `lawyerskill` int(10) DEFAULT '0',
  `smugglerskill` int(10) DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '0',
  `togglecam` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint(2) NOT NULL DEFAULT '1',
  `viptime` int(10) DEFAULT '8640000',
  `vipcooldown` int(10) DEFAULT '0',
  `weapon_0` tinyint(2) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `weapon_11` tinyint(2) DEFAULT '0',
  `weapon_12` tinyint(2) DEFAULT '0',
  `ammo_0` smallint(5) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` smallint(5) DEFAULT '0',
  `ammo_7` smallint(5) DEFAULT '0',
  `ammo_8` smallint(5) DEFAULT '0',
  `ammo_9` smallint(5) DEFAULT '0',
  `ammo_10` smallint(5) DEFAULT '0',
  `ammo_11` smallint(5) DEFAULT '0',
  `ammo_12` smallint(5) DEFAULT '0',
  `faction` tinyint(2) DEFAULT '-1',
  `gang` tinyint(2) DEFAULT '-1',
  `factionrank` tinyint(2) DEFAULT '0',
  `gangrank` tinyint(2) DEFAULT '0',
  `division` tinyint(2) DEFAULT '-1',
  `contracted` int(10) DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT '0',
  `completedhits` int(10) DEFAULT '0',
  `failedhits` int(10) DEFAULT '0',
  `reports` int(10) DEFAULT '0',
  `helprequests` int(10) DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `teacher` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `potplanted` tinyint(1) DEFAULT '0',
  `pottime` int(10) DEFAULT '0',
  `potgrams` int(10) DEFAULT '0',
  `pot_x` float DEFAULT '0',
  `pot_y` float DEFAULT '0',
  `pot_z` float DEFAULT '0',
  `pot_a` float DEFAULT '0',
  `inventoryupgrade` int(10) DEFAULT '0',
  `addictupgrade` int(10) DEFAULT '0',
  `traderupgrade` int(10) DEFAULT '0',
  `assetupgrade` int(10) DEFAULT '0',
  `laborupgrade` int(11) NOT NULL DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `ammotype` tinyint(2) DEFAULT '0',
  `ammoweapon` tinyint(2) DEFAULT '0',
  `dmwarnings` tinyint(2) DEFAULT '0',
  `weaponrestricted` int(10) DEFAULT '0',
  `referral_uid` int(10) DEFAULT '0',
  `refercount` int(10) DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint(3) DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int(10) DEFAULT '0',
  `couriercooldown` int(10) DEFAULT '0',
  `pizzacooldown` int(10) DEFAULT '0',
  `detectivecooldown` int(10) DEFAULT '0',
  `duty` int(10) DEFAULT '0',
  `bandana` int(10) NOT NULL DEFAULT '0',
  `detectiveskill` int(11) DEFAULT '0',
  `gascan` int(11) DEFAULT '0',
  `refunded` int(11) DEFAULT '0',
  `backpack` int(11) DEFAULT '0',
  `bpcash` int(11) DEFAULT '0',
  `bpmaterials` int(11) DEFAULT '0',
  `bppot` int(11) DEFAULT '0',
  `bpcrack` int(11) DEFAULT '0',
  `bpmeth` int(11) DEFAULT '0',
  `bppainkillers` int(11) DEFAULT '0',
  `bpweapon_0` int(11) DEFAULT '0',
  `bpweapon_1` int(11) DEFAULT '0',
  `bpweapon_2` int(11) DEFAULT '0',
  `bpweapon_3` int(11) DEFAULT '0',
  `bpweapon_4` int(11) DEFAULT '0',
  `bpweapon_5` int(11) DEFAULT '0',
  `bpweapon_6` int(11) DEFAULT '0',
  `bpweapon_7` int(11) DEFAULT '0',
  `bpweapon_8` int(11) DEFAULT '0',
  `bpweapon_9` int(11) DEFAULT '0',
  `bpweapon_10` int(11) DEFAULT '0',
  `bpweapon_11` int(11) DEFAULT '0',
  `bpweapon_12` int(11) DEFAULT '0',
  `bpweapon_13` int(11) DEFAULT '0',
  `bpweapon_14` int(11) DEFAULT '0',
  `bphpammo` int(11) DEFAULT '0',
  `bppoisonammo` int(11) DEFAULT '0',
  `bpfmjammo` int(11) DEFAULT '0',
  `formeradmin` int(2) NOT NULL DEFAULT '0',
  `deathcooldown` int(10) NOT NULL DEFAULT '0',
  `hunger` int(10) NOT NULL DEFAULT '100',
  `hungertimer` int(10) NOT NULL DEFAULT '0',
  `thirst` int(11) NOT NULL DEFAULT '100',
  `thirsttimer` int(11) NOT NULL DEFAULT '0',
  `totalpatients` int(10) NOT NULL DEFAULT '0',
  `totalfires` int(10) NOT NULL DEFAULT '0',
  `rarecooldown` int(10) NOT NULL DEFAULT '0',
  `vipdlcooldown` int(11) NOT NULL DEFAULT '0',
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `mask` int(10) NOT NULL DEFAULT '0',
  `diamonds` int(11) NOT NULL DEFAULT '0',
  `ecoin` int(11) DEFAULT '0',
  `blindfold` int(10) NOT NULL DEFAULT '0',
  `rope` int(10) NOT NULL DEFAULT '0',
  `insurance` int(10) NOT NULL DEFAULT '0',
  `passport` int(10) NOT NULL DEFAULT '0',
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(10) NOT NULL DEFAULT '0',
  `passportskin` int(10) NOT NULL DEFAULT '0',
  `passportphone` int(10) NOT NULL DEFAULT '0',
  `marriedto` int(10) NOT NULL DEFAULT '-1',
  `newbies` int(10) NOT NULL DEFAULT '0',
  `chatanim` tinyint(2) NOT NULL DEFAULT '0',
  `Lottery` int(11) NOT NULL DEFAULT '0',
  `LotteryB` int(11) NOT NULL DEFAULT '0',
  `flashlight` tinyint(2) NOT NULL DEFAULT '0',
  `candy` int(11) NOT NULL DEFAULT '0',
  `gunlicense` tinyint(2) NOT NULL DEFAULT '0',
  `dirtycash` int(11) NOT NULL DEFAULT '0',
  `comserv` int(11) NOT NULL DEFAULT '0',
  `voicechat` int(11) DEFAULT NULL,
  `discordtag` text,
  `discordname` text,
  `covid` int(11) NOT NULL DEFAULT '0',
  `covidtimer` int(11) NOT NULL DEFAULT '0',
  `facemask` int(10) NOT NULL DEFAULT '0',
  `fmtime` int(10) DEFAULT '0',
  `thiefcooldown` int(10) DEFAULT '0',
  `crackcooldown` int(10) DEFAULT '0',
  `thiefskill` int(10) DEFAULT '0',
  `mhours` int(10) DEFAULT '0',
  `rollerskates` int(10) DEFAULT '0',
  `pcoupon` int(11) DEFAULT '0',
  `pcoupons` int(11) DEFAULT '0',
  `course` tinyint(4) DEFAULT '0',
  `schoolreward` int(4) DEFAULT '0',
  `bindslot1` varchar(128) DEFAULT NULL,
  `bindslot2` varchar(128) DEFAULT NULL,
  `bindslot3` varchar(128) DEFAULT NULL,
  `bindslot4` varchar(128) DEFAULT NULL,
  `bindslot5` varchar(128) DEFAULT NULL,
  `bindslot6` varchar(128) DEFAULT NULL,
  `bindslot7` varchar(128) DEFAULT NULL,
  `bindslot8` varchar(128) DEFAULT NULL,
  `lockpick` int(11) NOT NULL DEFAULT '0',
  `crowbar` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `foodbaon`, `waterbaon`, `medicinebaon`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `teacher`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `dirtycash`, `comserv`, `voicechat`, `discordtag`, `discordname`, `covid`, `covidtimer`, `facemask`, `fmtime`, `thiefcooldown`, `crackcooldown`, `thiefskill`, `mhours`, `rollerskates`, `pcoupon`, `pcoupons`, `course`, `schoolreward`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `lockpick`, `crowbar`) VALUES
(1, 'Janzen_Official', 'B0B66C0C666FA9B8C2EC6B90D20ADDA7F82C0D71324AC59825EC572A177236D0FC7FA318B9B7707ACA21C61E4CD173D5D9906EF00FBFB2AE778B9D33AA04CBCA', '2022-03-01 10:47:02', '2022-03-01 10:47:02', NULL, '103.225.137.222', 0, 1, 25, 299, 1405.19, -2261.04, 14.321, 1405.45, -2264.52, 13.547, 4.24, 0, 0, 250000, 50000, 0, 5, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1646387232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `tickets` int(10) DEFAULT '0',
  `impounded` int(11) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT '100',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint(3) DEFAULT '0',
  `color2` smallint(3) DEFAULT '0',
  `paintjob` smallint(3) DEFAULT '-1',
  `registered` int(11) DEFAULT NULL,
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `neon` smallint(5) DEFAULT '0',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `alarm` tinyint(2) NOT NULL DEFAULT '0',
  `mod_1` smallint(4) DEFAULT '0',
  `mod_2` smallint(4) DEFAULT '0',
  `mod_3` smallint(4) DEFAULT '0',
  `mod_4` smallint(4) DEFAULT '0',
  `mod_5` smallint(4) DEFAULT '0',
  `mod_6` smallint(4) DEFAULT '0',
  `mod_7` smallint(4) DEFAULT '0',
  `mod_8` smallint(4) DEFAULT '0',
  `mod_9` smallint(4) DEFAULT '0',
  `mod_10` smallint(4) DEFAULT '0',
  `mod_11` smallint(4) DEFAULT '0',
  `mod_12` smallint(4) DEFAULT '0',
  `mod_13` smallint(4) DEFAULT '0',
  `mod_14` smallint(4) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `gangid` tinyint(2) DEFAULT '-1',
  `factiontype` tinyint(2) DEFAULT '0',
  `job` tinyint(2) DEFAULT '-1',
  `vippackage` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `respawndelay` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `impounded`, `locked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `trunk`, `alarm`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `vippackage`, `rank`, `respawndelay`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`) VALUES
(1, 0, 'Nobody', 560, 0, 0, 0, 0, 'None', 100, 1000, 1388.49, -2313.39, 13.252, 180.127, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 'Nobody', 560, 0, 0, 0, 0, 'None', 100, 1000, 1394.88, -2314.07, 13.256, 179.402, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 'Nobody', 560, 0, 0, 0, 0, 'None', 100, 1000, 1401.43, -2313.61, 13.252, 179.329, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 'Nobody', 560, 0, 0, 0, 0, 'None', 100, 1000, 1407.9, -2313.23, 13.139, 185.617, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 'Nobody', 560, 0, 0, 0, 0, 'None', 100, 1000, 1415.06, -2312.94, 13.26, 179.265, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 'Nobody', 470, 0, 0, 0, 0, 'None', 100, 1000, 1426.05, -2306.42, 13.468, 9.587, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 'Nobody', 470, 0, 0, 0, 0, 'None', 100, 1000, 1433.07, -2320.64, 13.455, 38.217, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 'Nobody', 470, 0, 0, 0, 0, 'None', 100, 1000, 1424.64, -2273.18, 13.4, 350.213, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 'Nobody', 470, 0, 0, 0, 0, 'None', 100, 1000, 1432.07, -2253.32, 13.465, 320.017, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 'Nobody', 470, 0, 0, 0, 0, 'None', 100, 1000, 1448.37, -2239.45, 13.482, 295.161, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1400.68, -2260.83, 13.04, 180.221, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1394.07, -2261.04, 13.142, 180.222, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1387.35, -2261.16, 13.195, 180.222, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1407.36, -2261.11, 13.498, 180.222, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1413.85, -2260.47, 13.102, 180.515, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1414.62, -2243.15, 13.074, 359.102, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1407.96, -2243.27, 13.122, 359.102, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1401.13, -2243.79, 13.073, 359.102, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1394.63, -2243.77, 13.134, 359.102, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 'Nobody', 522, 0, 0, 0, 0, 'None', 100, 1000, 1388.18, -2243.37, 13.477, 359.102, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 'Nobody', 487, 0, 0, 0, 0, 'None', 100, 1000, 1398.65, -2324.52, 20.277, 271.054, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 'Nobody', 487, 0, 0, 0, 0, 'None', 100, 1000, 1398.77, -2332.94, 20.277, 270.804, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 'Nobody', 488, 0, 0, 0, 0, 'None', 100, 1000, 1408.68, -2324.55, 20.223, 267.744, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 'Nobody', 488, 0, 0, 0, 0, 'None', 100, 1000, 1408.87, -2332.94, 20.214, 270.052, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uid_2` (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
