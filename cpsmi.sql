-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 07:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpsmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `content`) VALUES
(1, 'directory/about/2cd589d32dbda557fe0b8103906c2ae7.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\"><span style=\"color: #333333;\"><span style=\"font-size: 18.6667px;\"><strong>Developer Says!</strong></span></span></p>\r\n<p><span style=\"color: #333333;\"><span style=\"color: #333333;\"><span style=\"font-size: 18.6667px;\"><strong>Hi,&nbsp;</strong><span style=\"font-size: 12pt;\">thanks for used my company profile website.&nbsp;</span></span></span><span style=\"font-size: 16px;\">This is the first version, and is likely to continue for new features, hopefully.</span></span></p>\r\n<p><span style=\"color: #333333;\"><span style=\"font-size: 16px;\">Get other applications right away, or you can ask me to make them for you. All applications sold are test results, it is expected that there will be no errors in the future.</span></span></p>\r\n<p><span style=\"color: #333333;\"><span style=\"font-size: 16px;\">Oh ya, please tell if anyone sells this application besides me, it is not impossible if it will be a problem for him.&nbsp;This application is strictly prohibited for sale without my permission.</span></span></p>\r\n<p><span style=\"color: #333333;\"><span style=\"font-size: 16px;\">Contact me via Whatsapp (081395179452) maybe we can work together.</span></span></p>\r\n<p><span style=\"color: #999999;\"><em><span style=\"font-size: 16px;\">*Sorry for my bad english.</span></em></span></p>\r\n<p><span style=\"color: #999999;\"><em><span style=\"font-size: 16px;\">Best regards,<br />Sani Malik Ibrahim</span></em></span></p>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(255) NOT NULL,
  `blog_category_id` int(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `snippet` text NOT NULL,
  `cover` varchar(200) NOT NULL,
  `link` varchar(150) NOT NULL,
  `visit_count` int(10) NOT NULL DEFAULT 0,
  `is_comment` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(255) NOT NULL,
  `blog_id` int(255) NOT NULL,
  `author_name` varchar(150) NOT NULL,
  `author_email` varchar(200) DEFAULT NULL,
  `author_photo` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(155) NOT NULL,
  `name` varchar(200) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` int(255) NOT NULL,
  `salary1` decimal(15,0) DEFAULT NULL,
  `salary2` decimal(15,0) DEFAULT NULL,
  `currency_unit` varchar(10) NOT NULL,
  `published` date NOT NULL,
  `closing_date` date NOT NULL,
  `age1` int(2) NOT NULL,
  `age2` int(2) NOT NULL,
  `education` varchar(255) NOT NULL,
  `type_work` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) NOT NULL,
  `jawaban` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'Halo|hallo|hai|hay|hi|woy|', 'Hai teman, apa kabarnya nih?'),
(2, 'Siapa kamu|Siapa kamu?', 'Saya hanya bot, anda bisa memanggil saya \"bot\"!'),
(3, 'Terimakasih|makasih', 'Sama-sama teman'),
(4, 'Sampai jumpa|sampai jumpa lagi|sampai ketemu lagi', 'Baiklah, sampai jumpa :)'),
(5, 'Assalamualaikum | assalam | aslm | ass', 'WaAlaikumsalam..'),
(6, 'Selamat pagi | pagi | ', 'Hai, Selamat Pagi teman..'),
(7, 'Selamat siang', 'Hai, Selamat siang teman..'),
(8, 'Baik|sehat|', 'Syurkurlah, semoga sehat selalu ya..');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `data` varchar(150) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `data`, `content`) VALUES
(1, 'email', 'sanimalikibrahim@gmail.com'),
(2, 'phone', '081395179452'),
(3, 'whatsapp', '081395179452'),
(4, 'facebook', 'x.column'),
(5, 'instagram', 'this.smi'),
(6, 'twitter', ''),
(7, 'linkedin', 'xcolumn'),
(8, 'address', 'Jl. Perintis Kemerdekaan, Aksa Jaya A 109<br/>Kota Tasikmalaya, 46181<br/>Indonesia'),
(9, 'hours1', '08:00 - 16:00'),
(10, 'hours2', '08:00 - 16:00'),
(11, 'hours3', '08:00 - 16:00'),
(12, 'hours4', '08:00 - 16:00'),
(13, 'hours5', '08:00 - 16:00'),
(14, 'hours6', 'Closed'),
(15, 'hours7', 'Closed'),
(16, 'img_map', 'directory/contact/3ba4815940844dff060831041ab98798.png');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(255) NOT NULL,
  `data` varchar(150) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `data`, `content`) VALUES
(1, 'background_image', 'directory/dashboard/1c414f4f10de4a99f93a2449277cab3c.jpg'),
(2, 'intro', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(3, 'intro_image', 'directory/dashboard/14dffb6ec323485ffdc1a40e3a65ce64.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(255) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(255) NOT NULL,
  `parent_id` int(255) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `order_pos` int(5) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `link_tobase` enum('0','1') NOT NULL DEFAULT '1',
  `is_newtab` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `order_pos`, `link`, `link_tobase`, `is_newtab`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Home', 1, 'dashboard', '1', '0', '2019-10-28 16:14:22', NULL, '2020-02-24 18:45:08', NULL),
(2, NULL, 'About Us', 2, 'about', '1', '0', '2019-10-28 16:14:22', NULL, '2019-10-29 15:57:22', NULL),
(4, NULL, 'Package', 4, 'product', '1', '0', '2019-10-28 16:14:22', NULL, '2022-11-22 03:38:14', 1),
(5, NULL, 'Services', 5, 'service', '1', '0', '2019-10-28 16:14:22', NULL, NULL, NULL),
(7, NULL, 'Contact', 7, 'contact', '1', '0', '2019-10-28 16:14:22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `path`, `description`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'About Us', 'about', 'Lets Come & Get Wet Sensation With Us', '1', '2019-10-28 16:14:22', NULL, '2022-11-24 08:13:22', 1),
(4, 'Contact', 'contact', 'Contact us if you have questions', '1', '2019-10-28 16:14:22', NULL, '2020-02-20 13:41:30', NULL),
(5, 'Home', 'dashboard', 'Solution for your business', '1', '2019-10-28 16:14:22', NULL, '2020-02-20 03:47:27', NULL),
(8, 'Paket', 'product', 'Get interesting products from us', '1', '2019-10-28 16:14:22', NULL, '2022-11-22 03:36:58', 1),
(10, 'Testimonial', 'testimonial', 'What did they say about us?', '1', '2019-10-28 16:14:22', NULL, '2020-02-20 13:44:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `cover` varchar(200) NOT NULL,
  `link` varchar(150) NOT NULL,
  `visit_count` int(10) NOT NULL DEFAULT 0,
  `is_comment` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `cover`, `link`, `visit_count`, `is_comment`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Terms And Conditions', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Welcome to CPSMI!</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">These terms and conditions outline the rules and regulations for the use of CPSMI\'s Website, located at tasik.dev.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use CPSMI if you do not agree to take all of the terms and conditions stated on this page. Our Terms and Conditions were created with the help of the&nbsp;<a style=\"color: #666666; text-decoration-line: none;\" href=\"https://www.termsandconditionsgenerator.com/\">Terms And Conditions Generator</a>&nbsp;and the&nbsp;<a style=\"color: #666666; text-decoration-line: none;\" href=\"https://www.privacypolicyonline.com/terms-conditions-generator/\">Free Terms &amp; Conditions Generator</a>.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Cookies</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We employ the use of cookies. By accessing CPSMI, you agreed to use cookies in agreement with the CPSMI\'s Privacy Policy.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">License</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Unless otherwise stated, CPSMI and/or its licensors own the intellectual property rights for all material on CPSMI. All intellectual property rights are reserved. You may access this from CPSMI for your own personal use subjected to restrictions set in these terms and conditions.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">You must not:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Republish material from CPSMI</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Sell, rent or sub-license material from CPSMI</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Reproduce, duplicate or copy material from CPSMI</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Redistribute content from CPSMI</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">This Agreement shall begin on the date hereof.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. CPSMI does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of CPSMI,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, CPSMI shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">CPSMI reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">You warrant and represent that:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">You hereby grant CPSMI a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Hyperlinking to our Content</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">The following organizations may link to our Website without prior written approval:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Government agencies;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Search engines;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">News organizations;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We may consider and approve other link requests from the following types of organizations:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">commonly-known consumer and/or business information sources;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">dot.com community sites;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">associations or other groups representing charities;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">online directory distributors;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">internet portals;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">accounting, law and consulting firms; and</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">educational institutions and trade associations.</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of CPSMI; and (d) the link is in the context of general resource information.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to CPSMI. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Approved organizations may hyperlink to our Website as follows:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">By use of our corporate name; or</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">By use of the uniform resource locator being linked to; or</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">No use of CPSMI\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">iFrames</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Content Liability</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Your Privacy</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Please read Privacy Policy</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Reservation of Rights</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Removal of links from our website</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</span></p>\r\n<h3 style=\"margin-top: 0px; margin-bottom: 18px; background-color: #ffffff; color: #666666; font-size: 14px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1;\"><span style=\"font-weight: bold; font-family: arial, helvetica, sans-serif;\">Disclaimer</span></h3>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</span></p>\r\n<ul style=\"margin-bottom: 10px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">limit or exclude our or your liability for death or personal injury;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">exclude any of our or your liabilities that may not be excluded under applicable law.</span></li>\r\n</ul>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; background-color: #ffffff; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</span></p>\r\n</body>\r\n</html>', '', 'terms-and-conditions', 1, '0', '2020-02-12 17:13:07', NULL, '2022-11-22 05:44:59', NULL),
(2, 'Disclaimer', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">If you require any more information or have any questions about our site\'s disclaimer, please feel free to contact us by email at sanimalikibrahim@gmail.com</span></p>\r\n<h2 style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #666666; margin-top: 0px; margin-bottom: 18px; font-size: 16px; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">Disclaimers for CPSMI</span></h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">All the information on this website - tasik.dev - is published in good faith and for general information purpose only. CPSMI does not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website (CPSMI), is strictly at your own risk. CPSMI will not be liable for any losses and/or damages in connection with the use of our website. Our Disclaimer was generated with the help of the&nbsp;<a style=\"color: #666666; text-decoration-line: none;\" href=\"https://www.disclaimergenerator.net/\">Disclaimer Generator</a>&nbsp;and the&nbsp;<a style=\"color: #666666; text-decoration-line: none;\" href=\"https://www.disclaimer-generator.com.com/\">Disclaimer Generator</a>.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">From our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone \'bad\'.</span></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">Please be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their \"Terms of Service\" before engaging in any business or uploading any information.</span></p>\r\n<h2 style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #666666; margin-top: 0px; margin-bottom: 18px; font-size: 16px; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">Consent</span></h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">By using our website, you hereby consent to our disclaimer and agree to its terms.</span></p>\r\n<h2 style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #666666; margin-top: 0px; margin-bottom: 18px; font-size: 16px; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">Update</span></h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px; color: #666666; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff;\"><span style=\"font-family: helvetica, arial, sans-serif;\">Should we update, amend or make any changes to this document, those changes will be prominently posted here.</span></p>\r\n</body>\r\n</html>', '', 'disclaimer', 0, '0', '2020-02-12 17:21:00', NULL, '2020-02-28 21:27:34', 1),
(3, 'Privacy Policy', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">At CPSMI, accessible from tasik.dev, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by CPSMI and how we use it.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Log Files</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">CPSMI follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Cookies and Web Beacons</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Like any other website, CPSMI uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Privacy Policies</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">You may consult this list to find the Privacy Policy for each of the advertising partners of CPSMI. Our Privacy Policy was created with the help of the&nbsp;<a style=\"color: #333333; text-decoration-line: none; transition: all 0.3s ease 0s !important;\" href=\"https://www.privacypolicygenerator.org/\">Free Privacy Policy Generator</a>&nbsp;and the&nbsp;<a style=\"color: #333333; text-decoration-line: none; transition: all 0.3s ease 0s !important;\" href=\"https://www.privacypolicyonline.com/privacy-policy-generator/\">Privacy Policy Generator Online</a>.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on CPSMI, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Note that CPSMI has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Third Party Privacy Policies</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">CPSMI\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Children\'s Information</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">CPSMI does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Online Privacy Policy Only</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in CPSMI. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n<h2 style=\"margin-top: 20px; line-height: 1.2; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #212529; background-color: #ffffff;\">Consent</h2>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; color: #212529; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; background-color: #ffffff;\">By using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.</p>\r\n</body>\r\n</html>', '', 'privacy-policy', 0, '0', '2020-02-12 17:32:37', NULL, '2020-02-28 21:27:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_comment`
--

CREATE TABLE `page_comment` (
  `id` int(255) NOT NULL,
  `page_id` int(255) NOT NULL,
  `author_name` varchar(150) NOT NULL,
  `author_email` varchar(200) DEFAULT NULL,
  `author_photo` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(255) NOT NULL,
  `portfolio_tag_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `external_link` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_tag`
--

CREATE TABLE `portfolio_tag` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `product_category_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `description` mediumtext NOT NULL,
  `merk` varchar(200) DEFAULT NULL,
  `send_from` int(255) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT 0,
  `sold_out` int(10) DEFAULT 0,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `link` varchar(150) NOT NULL,
  `visit_count` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `background_color` varchar(15) DEFAULT NULL,
  `icon_color` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(255) NOT NULL,
  `data` varchar(200) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `data`, `content`) VALUES
(1, 'app_name', 'Cianten Rafting & C Rafting'),
(2, 'app_version', '1.0'),
(3, 'template_frontend', 'enlight'),
(4, 'template_backend', 'material_admin'),
(5, 'theme_color', 'green'),
(6, 'smtp_protocol', 'smtp'),
(7, 'smtp_host', 'coming.soon'),
(8, 'smtp_port', '587'),
(9, 'smtp_user', 'coming.soon'),
(10, 'smtp_pass', 'coming.soon'),
(11, 'smtp_mailtype', 'html'),
(12, 'smtp_charset', 'iso-8859-1'),
(13, 'smtp_crypto', 'ssl'),
(14, 'app_description', 'Webasdaksdnaknasd'),
(15, 'app_slogan', 'Best solution for your business.'),
(16, 'app_keyword', 'cpsmi, company profile, company profile universal, universal, website, aplikasi'),
(17, 'app_favicon', 'directory/app/f030b95a93db4d774d0d7fccd4851d25.png');

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `id` int(255) NOT NULL,
  `controller` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `controller`, `url`, `ip`, `agent`, `os`, `region`, `created_at`) VALUES
(134, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-16 02:10:37'),
(135, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-16 02:14:12'),
(136, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-16 02:14:21'),
(137, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-21 14:27:47'),
(138, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-21 14:49:55'),
(139, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 105.0.0.0', 'Windows 10', NULL, '2022-09-21 14:56:37'),
(140, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-01 15:14:09'),
(141, 'dashboard', 'http://localhost/kwaran-senen/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-01 15:15:45'),
(142, 'dashboard', 'http://localhost/kwaran-senen/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 09:41:42'),
(143, 'dashboard', 'http://localhost/kwaran-senen/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:17:19'),
(144, 'dashboard', 'http://localhost/kwaran-senen/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:26:20'),
(145, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:38:01'),
(146, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:38:40'),
(147, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:42:15'),
(148, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:42:41'),
(149, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:43:34'),
(150, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:44:09'),
(151, 'faq', 'http://localhost/cpsmi-master/cpsmi-master/faq', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:44:29'),
(152, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:44:37'),
(153, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:52:08'),
(154, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:52:11'),
(155, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 11:55:03'),
(156, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 13:42:08'),
(157, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 14:32:31'),
(158, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-02 15:12:41'),
(159, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:20:16'),
(160, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:20:32'),
(161, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:21:58'),
(162, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:22:00'),
(163, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:22:12'),
(164, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:22:44'),
(165, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:24:42'),
(166, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:39:18'),
(167, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:39:30'),
(168, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:39:45'),
(169, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:40:51'),
(170, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:41:25'),
(171, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:41:37'),
(172, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:43:42'),
(173, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:44:52'),
(174, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:45:20'),
(175, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:46:21'),
(176, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:46:34'),
(177, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:47:30'),
(178, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-09 03:58:41'),
(179, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 18:26:11'),
(180, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:18:06'),
(181, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:21:21'),
(182, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:22:58'),
(183, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:24:39'),
(184, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:26:31'),
(185, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:28:15'),
(186, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:29:13'),
(187, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:30:43'),
(188, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:31:04'),
(189, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:31:24'),
(190, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:31:37'),
(191, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:32:25'),
(192, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:32:36'),
(193, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:32:48'),
(194, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:33:01'),
(195, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:33:12'),
(196, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:33:27'),
(197, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:33:43'),
(198, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:34:12'),
(199, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-10 19:34:23'),
(200, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-11 03:06:35'),
(201, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-10-11 03:06:49'),
(202, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-01 17:15:16'),
(203, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:52:27'),
(204, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:52:45'),
(205, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:52:51'),
(206, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:54:01'),
(207, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:54:36'),
(208, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 106.0.0.0', 'Windows 10', NULL, '2022-11-02 02:54:52'),
(209, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 10:54:06'),
(210, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:01'),
(211, 'blog', 'http://localhost/cpsmi-master/cpsmi-master/blog', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:03'),
(212, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:05'),
(213, 'service', 'http://localhost/cpsmi-master/cpsmi-master/service', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:07'),
(214, 'portfolio', 'http://localhost/cpsmi-master/cpsmi-master/portfolio', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:09'),
(215, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:11'),
(216, 'portfolio', 'http://localhost/cpsmi-master/cpsmi-master/portfolio', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:26'),
(217, 'blog', 'http://localhost/cpsmi-master/cpsmi-master/blog', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:32'),
(218, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:34'),
(219, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-07 11:32:40'),
(220, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:07:49'),
(221, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:13:13'),
(222, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:13:19'),
(223, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:13:27'),
(224, 'blog', 'http://localhost/cpsmi-master/cpsmi-master/blog', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:13:41'),
(225, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-08 13:13:44'),
(226, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-09 13:02:14'),
(227, 'service', 'http://localhost/cpsmi-master/cpsmi-master/service', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-09 13:02:25'),
(228, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-09 13:02:29'),
(229, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-09 13:02:32'),
(230, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:35:20'),
(231, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:46:29'),
(232, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:46:41'),
(233, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:46:55'),
(234, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:49:38'),
(235, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:49:43'),
(236, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:50:44'),
(237, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:51:08'),
(238, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-10 14:57:26'),
(239, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:57:45'),
(240, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 14:57:56'),
(241, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:01:30'),
(242, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:01:33'),
(243, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:01:53'),
(244, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:01:58'),
(245, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:03:03'),
(246, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-10 15:49:57'),
(247, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:22:06'),
(248, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:23:44'),
(249, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:23:51'),
(250, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:03'),
(251, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:12'),
(252, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:19'),
(253, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:29'),
(254, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:36'),
(255, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:24:44'),
(256, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:27:08'),
(257, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:27:17'),
(258, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:27:23'),
(259, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:28:07'),
(260, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:28:11'),
(261, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:28:14'),
(262, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:29:54'),
(263, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:30:16'),
(264, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:31:28'),
(265, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:31:50'),
(266, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-21 15:33:00'),
(267, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:33:13'),
(268, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:33:22'),
(269, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:33:28'),
(270, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 15:33:35'),
(271, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-21 15:35:56'),
(272, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-21 15:36:37'),
(273, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-21 15:36:50'),
(274, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:23:42'),
(275, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:23:47'),
(276, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:07'),
(277, 'service', 'http://localhost/cpsmi-master/cpsmi-master/service', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:17'),
(278, 'portfolio', 'http://localhost/cpsmi-master/cpsmi-master/portfolio', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:19'),
(279, 'service', 'http://localhost/cpsmi-master/cpsmi-master/service', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:21'),
(280, 'portfolio', 'http://localhost/cpsmi-master/cpsmi-master/portfolio', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:33'),
(281, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:35'),
(282, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:24:42'),
(283, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:48:25'),
(284, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 18:48:27'),
(285, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 19:06:43'),
(286, 'blog', 'http://localhost/cpsmi-master/cpsmi-master/blog', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 19:06:54'),
(287, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 19:07:06'),
(288, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 20:16:44'),
(289, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 20:18:28'),
(290, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-21 20:19:41'),
(291, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 02:41:45'),
(292, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:36:05'),
(293, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:36:10'),
(294, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:36:18'),
(295, 'portfolio', 'http://localhost/cpsmi-master/cpsmi-master/portfolio', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:36:22'),
(296, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:36:28'),
(297, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:37:02'),
(298, 'product', 'http://localhost/cpsmi-master/cpsmi-master/product', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:37:05'),
(299, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:37:08'),
(300, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:38:01'),
(301, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:38:17'),
(302, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 03:39:28'),
(303, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:23:12'),
(304, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:23:27'),
(305, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:25:04'),
(306, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:25:20'),
(307, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:25:33'),
(308, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:25:46'),
(309, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:26:45'),
(310, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:27:44'),
(311, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:28:04'),
(312, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:28:56'),
(313, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:29:02'),
(314, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:29:49'),
(315, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:30:02'),
(316, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:30:31'),
(317, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Android', NULL, '2022-11-22 05:31:05'),
(318, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:31:13'),
(319, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:31:21'),
(320, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:32:43'),
(321, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:33:09'),
(322, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:33:15'),
(323, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:34:28'),
(324, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:34:34'),
(325, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:34:41'),
(326, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:34:48'),
(327, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:35:03'),
(328, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:36:48'),
(329, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:37:03'),
(330, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:38:00'),
(331, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:38:25'),
(332, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:38:51'),
(333, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:39:02'),
(334, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:39:11'),
(335, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:39:26'),
(336, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:39:46'),
(337, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:39:53'),
(338, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:40:07'),
(339, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:40:24'),
(340, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:41:03'),
(341, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:41:14'),
(342, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:42:05'),
(343, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:42:23'),
(344, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:43:24'),
(345, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:43:37'),
(346, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:43:47'),
(347, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:44:02'),
(348, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:44:13'),
(349, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:44:22'),
(350, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:44:29'),
(351, 'page', 'http://localhost/cpsmi-master/cpsmi-master/page/terms-and-conditions', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:44:59'),
(352, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:45:01'),
(353, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:45:09'),
(354, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:45:16'),
(355, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:45:22'),
(356, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:45:39'),
(357, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:46:12'),
(358, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:46:23'),
(359, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:46:51'),
(360, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:47:00'),
(361, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:47:23'),
(362, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:47:47'),
(363, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:49:08'),
(364, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:49:21'),
(365, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:50:55'),
(366, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:51:06'),
(367, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:52:56'),
(368, 'contact', 'http://localhost/cpsmi-master/cpsmi-master/contact', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-22 05:59:48'),
(369, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-23 01:40:03'),
(370, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 02:00:01'),
(371, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 02:04:01'),
(372, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 02:04:26'),
(373, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 02:04:33'),
(374, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 02:05:01'),
(375, 'service', 'http://localhost/cpsmi-master/cpsmi-master/service', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:05:04'),
(376, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:05:12'),
(377, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:05:15'),
(378, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:08:28'),
(379, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:08:46'),
(380, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:13:34'),
(381, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:28:09'),
(382, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:28:15'),
(383, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:31:41'),
(384, 'about', 'http://localhost/cpsmi-master/cpsmi-master/about', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:32:12'),
(385, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/dashboard', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-24 08:32:26'),
(386, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:24:45'),
(387, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:26:46'),
(388, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:27:35'),
(389, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:33:11'),
(390, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:33:23'),
(391, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:33:47'),
(392, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:39:02'),
(393, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:39:44'),
(394, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:40:59'),
(395, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:42:16'),
(396, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:45:14'),
(397, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:45:59'),
(398, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:46:41'),
(399, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:49:04'),
(400, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:49:33'),
(401, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:50:18'),
(402, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:50:21'),
(403, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 14:50:47'),
(404, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-29 15:42:54'),
(405, 'dashboard', 'http://localhost/cpsmi-master/cpsmi-master/', '::1', 'Chrome 107.0.0.0', 'Windows 10', NULL, '2022-11-30 12:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(255) NOT NULL,
  `creator_name` varchar(200) NOT NULL,
  `job` varchar(200) DEFAULT NULL,
  `content` text NOT NULL,
  `creator_link` varchar(200) DEFAULT NULL,
  `creator_photo` varchar(200) DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `full_name`, `profile_photo`, `is_active`, `created_at`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'Tri Wahyu W.', 'directory/user/ee72534f3e93e532fb2e9c66ef84c081.jpg', '1', '2020-02-14 23:43:21');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_blog`
-- (See below for the actual view)
--
CREATE TABLE `view_blog` (
`id` int(255)
,`blog_category_id` int(255)
,`blog_category_name` varchar(100)
,`title` varchar(200)
,`content` longtext
,`snippet` text
,`cover` varchar(200)
,`link` varchar(150)
,`visit_count` int(10)
,`comment_count` bigint(21)
,`is_comment` enum('0','1')
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_career`
-- (See below for the actual view)
--
CREATE TABLE `view_career` (
`id` int(155)
,`name` varchar(200)
,`company_name` varchar(100)
,`email` varchar(150)
,`location` int(255)
,`salary1` decimal(15,0)
,`salary2` decimal(15,0)
,`currency_unit` varchar(10)
,`published` date
,`closing_date` date
,`age1` int(2)
,`age2` int(2)
,`education` varchar(255)
,`type_work` varchar(100)
,`description` longtext
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
,`province_id` char(2)
,`regencies_name` varchar(255)
,`province_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_menu`
-- (See below for the actual view)
--
CREATE TABLE `view_menu` (
`id` int(255)
,`parent_id` int(255)
,`name` varchar(150)
,`parent_name` varchar(150)
,`link` varchar(255)
,`link_tobase` enum('0','1')
,`is_newtab` enum('0','1')
,`order_pos` int(5)
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_page`
-- (See below for the actual view)
--
CREATE TABLE `view_page` (
`id` int(255)
,`title` varchar(200)
,`content` longtext
,`cover` varchar(200)
,`link` varchar(150)
,`visit_count` int(10)
,`comment_count` bigint(21)
,`is_comment` enum('0','1')
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_portfolio`
-- (See below for the actual view)
--
CREATE TABLE `view_portfolio` (
`id` int(255)
,`portfolio_tag_id` int(255)
,`portfolio_tag_name` varchar(100)
,`name` varchar(255)
,`image` varchar(200)
,`external_link` varchar(150)
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product`
-- (See below for the actual view)
--
CREATE TABLE `view_product` (
`id` int(255)
,`product_category_id` int(255)
,`name` varchar(255)
,`price` decimal(15,0)
,`description` mediumtext
,`merk` varchar(200)
,`send_from` int(255)
,`stock` int(10)
,`sold_out` int(10)
,`image1` varchar(200)
,`image2` varchar(200)
,`image3` varchar(200)
,`image4` varchar(200)
,`link` varchar(150)
,`visit_count` int(10)
,`created_at` timestamp
,`created_by` int(255)
,`updated_at` timestamp
,`updated_by` int(255)
,`province_id` char(2)
,`regencies_name` varchar(255)
,`province_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_provinces_regencies`
-- (See below for the actual view)
--
CREATE TABLE `view_provinces_regencies` (
`id` char(4)
,`province_id` char(2)
,`name` varchar(255)
,`province_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_statistic`
-- (See below for the actual view)
--
CREATE TABLE `view_statistic` (
`website_traffic` bigint(21)
,`website_impression` bigint(21)
,`traffic_today` bigint(21)
,`traffic_yesterday` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_statistic_detail`
-- (See below for the actual view)
--
CREATE TABLE `view_statistic_detail` (
`id` int(255)
,`controller` varchar(100)
,`url` varchar(255)
,`ip` varchar(100)
,`agent` varchar(200)
,`os` varchar(100)
,`region` varchar(255)
,`created_at` timestamp
,`tahun` int(4)
,`bulan` int(2)
,`hari` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_statistic_traffic`
-- (See below for the actual view)
--
CREATE TABLE `view_statistic_traffic` (
`id` int(255)
,`url` varchar(255)
,`ip` varchar(100)
,`agent` varchar(200)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` int(255) NOT NULL,
  `visi` longtext NOT NULL,
  `misi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visi`, `misi`) VALUES
(1, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #333333; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #333333; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify; background-color: #ffffff;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Structure for view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS SELECT `b`.`id` AS `id`, `b`.`blog_category_id` AS `blog_category_id`, `c`.`name` AS `blog_category_name`, `b`.`title` AS `title`, `b`.`content` AS `content`, `b`.`snippet` AS `snippet`, `b`.`cover` AS `cover`, `b`.`link` AS `link`, `b`.`visit_count` AS `visit_count`, (select count(`blog_comment`.`id`) from `blog_comment` where `blog_comment`.`blog_id` = `b`.`id`) AS `comment_count`, `b`.`is_comment` AS `is_comment`, `b`.`created_at` AS `created_at`, `b`.`created_by` AS `created_by`, `b`.`updated_at` AS `updated_at`, `b`.`updated_by` AS `updated_by` FROM (`blog` `b` left join `blog_category` `c` on(`c`.`id` = `b`.`blog_category_id`)) ORDER BY `b`.`id` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_career`
--
DROP TABLE IF EXISTS `view_career`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_career`  AS SELECT `c`.`id` AS `id`, `c`.`name` AS `name`, `c`.`company_name` AS `company_name`, `c`.`email` AS `email`, `c`.`location` AS `location`, `c`.`salary1` AS `salary1`, `c`.`salary2` AS `salary2`, `c`.`currency_unit` AS `currency_unit`, `c`.`published` AS `published`, `c`.`closing_date` AS `closing_date`, `c`.`age1` AS `age1`, `c`.`age2` AS `age2`, `c`.`education` AS `education`, `c`.`type_work` AS `type_work`, `c`.`description` AS `description`, `c`.`created_at` AS `created_at`, `c`.`created_by` AS `created_by`, `c`.`updated_at` AS `updated_at`, `c`.`updated_by` AS `updated_by`, `l`.`province_id` AS `province_id`, `l`.`name` AS `regencies_name`, `l`.`province_name` AS `province_name` FROM (`career` `c` left join `view_provinces_regencies` `l` on(`l`.`id` = `c`.`location`)) ORDER BY `c`.`id` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_menu`
--
DROP TABLE IF EXISTS `view_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_menu`  AS SELECT DISTINCT `m1`.`id` AS `id`, `m1`.`parent_id` AS `parent_id`, `m1`.`name` AS `name`, `m2`.`name` AS `parent_name`, `m1`.`link` AS `link`, `m1`.`link_tobase` AS `link_tobase`, `m1`.`is_newtab` AS `is_newtab`, `m1`.`order_pos` AS `order_pos`, `m1`.`created_at` AS `created_at`, `m1`.`created_by` AS `created_by`, `m1`.`updated_at` AS `updated_at`, `m1`.`updated_by` AS `updated_by` FROM (`menu` `m1` left join `menu` `m2` on(`m1`.`parent_id` = `m2`.`id`)) ORDER BY `m1`.`parent_id` ASC, `m1`.`order_pos` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_page`
--
DROP TABLE IF EXISTS `view_page`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_page`  AS SELECT `t`.`id` AS `id`, `t`.`title` AS `title`, `t`.`content` AS `content`, `t`.`cover` AS `cover`, `t`.`link` AS `link`, `t`.`visit_count` AS `visit_count`, (select count(`page_comment`.`id`) from `page_comment` where `page_comment`.`page_id` = `t`.`id`) AS `comment_count`, `t`.`is_comment` AS `is_comment`, `t`.`created_at` AS `created_at`, `t`.`created_by` AS `created_by`, `t`.`updated_at` AS `updated_at`, `t`.`updated_by` AS `updated_by` FROM `page` AS `t``t`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_portfolio`
--
DROP TABLE IF EXISTS `view_portfolio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_portfolio`  AS SELECT `p`.`id` AS `id`, `p`.`portfolio_tag_id` AS `portfolio_tag_id`, `t`.`name` AS `portfolio_tag_name`, `p`.`name` AS `name`, `p`.`image` AS `image`, `p`.`external_link` AS `external_link`, `p`.`created_at` AS `created_at`, `p`.`created_by` AS `created_by`, `p`.`updated_at` AS `updated_at`, `p`.`updated_by` AS `updated_by` FROM (`portfolio` `p` left join `portfolio_tag` `t` on(`t`.`id` = `p`.`portfolio_tag_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_product`
--
DROP TABLE IF EXISTS `view_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product`  AS SELECT `p`.`id` AS `id`, `p`.`product_category_id` AS `product_category_id`, `p`.`name` AS `name`, `p`.`price` AS `price`, `p`.`description` AS `description`, `p`.`merk` AS `merk`, `p`.`send_from` AS `send_from`, `p`.`stock` AS `stock`, `p`.`sold_out` AS `sold_out`, `p`.`image1` AS `image1`, `p`.`image2` AS `image2`, `p`.`image3` AS `image3`, `p`.`image4` AS `image4`, `p`.`link` AS `link`, `p`.`visit_count` AS `visit_count`, `p`.`created_at` AS `created_at`, `p`.`created_by` AS `created_by`, `p`.`updated_at` AS `updated_at`, `p`.`updated_by` AS `updated_by`, `r`.`province_id` AS `province_id`, `r`.`name` AS `regencies_name`, `r`.`province_name` AS `province_name` FROM (`product` `p` left join `view_provinces_regencies` `r` on(`r`.`id` = `p`.`send_from`)) ORDER BY `p`.`id` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_provinces_regencies`
--
DROP TABLE IF EXISTS `view_provinces_regencies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_provinces_regencies`  AS SELECT `r`.`id` AS `id`, `r`.`province_id` AS `province_id`, `r`.`name` AS `name`, `p`.`name` AS `province_name` FROM (`regencies` `r` left join `provinces` `p` on(`p`.`id` = `r`.`province_id`)) ORDER BY `r`.`name` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_statistic`
--
DROP TABLE IF EXISTS `view_statistic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_statistic`  AS SELECT count(`t1`.`id`) AS `website_traffic`, (select count(`statistic`.`id`) from `statistic`) AS `website_impression`, (select count(`statistic`.`id`) from `statistic` where cast(`statistic`.`created_at` as date) = curdate()) AS `traffic_today`, (select count(`statistic`.`id`) from `statistic` where cast(`statistic`.`created_at` as date) = curdate() - interval 1 day) AS `traffic_yesterday` FROM `view_statistic_traffic` AS `t1``t1`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_statistic_detail`
--
DROP TABLE IF EXISTS `view_statistic_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_statistic_detail`  AS SELECT `statistic`.`id` AS `id`, `statistic`.`controller` AS `controller`, `statistic`.`url` AS `url`, `statistic`.`ip` AS `ip`, `statistic`.`agent` AS `agent`, `statistic`.`os` AS `os`, `statistic`.`region` AS `region`, `statistic`.`created_at` AS `created_at`, year(`statistic`.`created_at`) AS `tahun`, month(`statistic`.`created_at`) AS `bulan`, dayofmonth(`statistic`.`created_at`) AS `hari` FROM `statistic``statistic`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_statistic_traffic`
--
DROP TABLE IF EXISTS `view_statistic_traffic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_statistic_traffic`  AS SELECT `statistic`.`id` AS `id`, `statistic`.`url` AS `url`, `statistic`.`ip` AS `ip`, `statistic`.`agent` AS `agent`, `statistic`.`created_at` AS `created_at` FROM `statistic` GROUP BY `statistic`.`ip`, cast(`statistic`.`created_at` as date)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controller` (`controller`),
  ADD KEY `region` (`region`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_photo` (`profile_photo`),
  ADD KEY `username` (`username`),
  ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
