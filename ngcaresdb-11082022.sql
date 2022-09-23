-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 10:20 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngcaresdb`
--
CREATE DATABASE IF NOT EXISTS `ngcaresdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ngcaresdb`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `agric_inputs_progress_report`
--
CREATE TABLE IF NOT EXISTS `agric_inputs_progress_report` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`qty_per_bf` int(11)
,`unit` varchar(10)
,`no_of_bfs` bigint(21)
,`qty_aprvd` bigint(31)
,`qty_dstr` decimal(32,0)
,`attrition` decimal(33,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `application_user`
--

CREATE TABLE IF NOT EXISTS `application_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(65) NOT NULL,
  `username` varchar(35) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(65) NOT NULL,
  `role` varchar(35) NOT NULL,
  `lga` varchar(35) NOT NULL,
  `status` varchar(9) NOT NULL,
  `gender` varchar(9) NOT NULL,
  `lga_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `application_user`
--

INSERT INTO `application_user` (`id`, `full_name`, `username`, `email`, `password`, `role`, `lga`, `status`, `gender`, `lga_id`) VALUES
(1, 'Longji Panse', 'ljpanse', 'longjipanse@gmail.com', '3dc0a99809ba02fce22f618e3cce94f8', 'ict', 'headoffice', 'active', 'on', 0),
(2, 'GG Dandam', 'ggdandam', 'ggdandam550@yahoo.com', '3dc0a99809ba02fce22f618e3cce94f8', 'spc', 'headoffice', 'active', 'on', 0),
(3, 'Yildima Sokche', 'ysokche', 'ysokche@gmail.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'kanke', 'active', 'on', 8),
(4, 'James Livingstone', 'jlivingstone', 'jlivingstone@fadamacares.org', '3dc0a99809ba02fce22f618e3cce94f8', 'mis', 'headoffice', 'active', 'on', 0),
(5, 'Hulda Sukumkya', 'huldas', 'huldas@gmail.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Kanam', 'active', '', 7),
(6, 'Barkin Ladi', 'bladi', 'bladi@sfcco.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Barkin Ladi', 'active', 'on', 1),
(7, 'Bassa', 'bassa', 'bassa@sfcco.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Bassa', 'active', '', 2),
(8, 'Bokkos', 'bokkos', 'bokkos@sfcco.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Bokkos', 'active', 'on', 3),
(9, 'Jos East', 'joseast', 'joseast@gmail.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Jos East', 'active', 'on', 4),
(10, 'Jos North', 'josnorth', 'josnorth@sfcco.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Jos North', 'active', '', 5),
(11, 'Jos South', 'jossouth', 'jossouth@sfcco.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Jos South', 'active', '', 6),
(12, 'Innocent M', 'mangu', 'm2e@you.com', '3dc0a99809ba02fce22f618e3cce94f8', 'deskoffice', 'Mangu', 'active', 'on', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `approved_group_assets_summary`
--
CREATE TABLE IF NOT EXISTS `approved_group_assets_summary` (
`dli_id` int(11)
,`dli_code` varchar(7)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`qty_per_bf` int(11)
,`unit` varchar(10)
,`no_of_bfs` bigint(21)
,`no_of_groups` decimal(16,0)
,`qty_aprvd` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE IF NOT EXISTS `beneficiary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `beneficiary_name` varchar(100) NOT NULL,
  `moi_id` int(11) NOT NULL,
  `id_no` varchar(45) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `vul_status` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `contact_address` text NOT NULL,
  `farm_location` text NOT NULL,
  `longitude` double(12,9) NOT NULL,
  `latitude` double(12,9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2330 ;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(1, 1, 'Joseph Audu Makop', 2, '90F5215039285458574', 42, 'M', 'Displaced', '7067560867', 'Nghar Village', 'Nghar', 9.430519000, 8.835922000),
(2, 1, 'Victoria Daniel Matur', 2, '90F5B15039295275321', 38, 'F', 'Widow/displaced', '707893156', 'Nghar Village', 'Nghar', 9.430898000, 8.835664000),
(3, 1, 'Audu Martha Mabas', 1, '40090500510', 43, 'F', 'Displaced', '7085499545', 'Nghar Village', 'Nghar', 9.432409000, 8.824360000),
(4, 1, 'Elisha Gyang Magit ', 2, '90F5B15039295449020', 52, 'M', 'Displaced', '7011599023', 'Nghar Village', 'Nghar', 9.429097000, 8.835466000),
(5, 1, 'Anna Magit Ishaya', 2, 'INC21000000001996556', 38, 'F', 'Widow/displaced', '9075425231', 'Nghar Village', 'Nghar', 9.428193000, 8.835365000),
(6, 1, 'Wash Samuel Rwang', 2, '90F5AFD17C521553394', 45, 'M', 'Displaced', '8035443489', 'Nghar Village', 'Nghar', 9.428013000, 8.835268000),
(7, 1, 'Ezekiel Samuel Dung', 2, '90F5B15039295458979', 30, 'M', 'Displaced', '8160885656', 'Nghar Village ', 'Nghar', 9.428387000, 8.836208000),
(8, 1, 'Christopher Sunday ', 2, '90F5AE492B295361805', 34, 'M', 'Displaced', '8122653863', 'Yelwa Gindi Nghar', 'Nghar', 9.428582000, 8.835785000),
(9, 1, 'Joshua Esther Mapis', 2, '90F5B15039295432552', 38, 'F', 'Displaced', '9014981219', 'Nghar Village ', 'Nghar', 9.429129000, 8.835936000),
(10, 1, 'Sunday Martha Audu', 2, '90F5B15039295449579', 42, 'F', 'Widow/displaced', '8144725091', 'Nghar Village ', 'Nghar', 9.439116000, 8.825202000),
(11, 2, 'Tok Gyang Chung', 1, '36900584091', 54, 'M', 'Displaced', '7039990259', 'Turu Vwang Village', 'Rantis', 9.480595000, 8.876865000),
(12, 2, 'Pam Samuel Jugu', 2, '90F5AEFB68295136992', 59, 'M', 'Displaced', '8030571398', 'Turu Vwang Village', 'Rantis', 9.480788000, 8.877313000),
(13, 2, 'Pam Rejoice Samuel', 1, '96539801944', 30, 'F', 'Displaced', '9131681572', 'Danye, Vom ', 'Rantis', 9.481622000, 8.876657000),
(14, 2, 'Gyang Jah Pam ', 1, '56898677795', 49, 'M', 'Displaced', '7014535889', 'Turu Vwang Village ', 'Rantis', 9.481823000, 8.876418000),
(15, 2, 'Nvou Haruna Pam Gyang', 1, '80566755464', 49, 'F', 'Widow/displaced', '7087601601', 'Turu Vwang Village ', 'Rantis', 9.481409000, 8.875507000),
(16, 2, 'Bature Kangyang Danbwarang', 1, '43156759945', 47, 'F', 'Displaced', '8162283385', 'Rantya Gwol ', 'Rantis', 9.479798000, 8.877287000),
(17, 2, 'Dongo Tabitha', 1, '30501401469', 39, 'F', 'Aged/displaced', '9127706891', 'Rahoss Village, Riyom', 'Rantis', 9.479219000, 8.877544000),
(18, 2, 'Mwanta Asabe Ezekiel', 1, '19376484411', 26, 'F', 'Displaced', '9043750532', 'To-Hei, Dahwol Pya, Vom', 'Rantis', 9.479499000, 8.876888000),
(19, 2, 'Saje Ezekiel Nuhu', 1, '22178292163', 49, 'M', 'Displaced', '8036738544', 'Kyarang Village, Barkin Ladi', 'Rantis', 9.479347000, 8.876603000),
(20, 2, 'Jugu Yohanna Sunday', 1, '46431545884', 35, 'M', 'Displaced', '9065144277', 'Turu VwangVillage ', 'Rantis', 9.478170000, 8.875538000),
(21, 3, 'Mangwai Peter', 2, '90F5AE9015295277717', 58, 'M', 'Displaced', '8065341945', 'Ruku Village ', 'Ruku', 9.398339000, 8.857509000),
(22, 3, 'Luka Solomon', 2, '90F5AE9015295608812', 38, 'M', 'Displaced', '8146631550', 'Ruku Village ', 'Ruku', 9.398617000, 8.857097000),
(23, 3, 'Malan Nandi Hossana', 2, '90F5AE9015295522265', 37, 'F', 'Displaced', '8145175915', 'Ruku Village ', 'Ruku', 9.399935000, 8.857459000),
(24, 3, 'Monday Magaji', 2, '90F5AE9015295626395', 33, 'M', 'Displaced', '7040219844', 'Ruku Village ', 'Ruku', 9.401340000, 8.857459000),
(25, 3, 'Jonathan Gyang Yakubu', 2, '90F5AE9015295627844', 31, 'M', 'Displaced', '9047293266', 'Ruku Village ', 'Ruku', 9.400943000, 8.856687000),
(26, 3, 'Maren Grace John', 2, '90F5AE9015295445922', 60, 'F', 'Displaced', '9068449012', 'Ruku Village ', 'Ruku', 9.401164000, 8.854949000),
(27, 3, 'Dung Choji Rwang ', 2, '90F5AF8071295687158', 49, 'M', 'Displaced', '9128073637', 'Ruku Village ', 'Ruku', 9.398458000, 8.854491000),
(28, 3, 'Yakubu Maryom', 2, '90F5AE9015295622967', 40, 'M', 'Displaced', '9016169084', 'Ruku Village ', 'Ruku', 9.399155000, 8.855833000),
(29, 3, 'Sati Lydia', 2, '90F5AE9015295601220', 38, 'F', 'Widow/displaced', '9068449012', 'Ruku Village ', 'Ruku', 9.397306000, 8.858474000),
(30, 3, 'Titi Yakubu', 2, '90F5AE9015295367585', 44, 'F', 'Displaced', '8031608578', 'Ruku Village ', 'Ruku', 9.396655000, 8.858079000),
(31, 4, 'Esther Bitrus', 1, '72129593577', 53, 'F', 'Displaced', '7015742447', 'Soi Village', 'Soi', 9.429657000, 8.822679000),
(32, 4, 'Alamba Rhoda Pam ', 2, '90F5B22B98519988646', 37, 'F', 'Displaced', '9032228794', 'Bet-Zat Village ', 'Soi', 9.429646000, 8.822680000),
(33, 4, 'Ahmed Abigail Daniel', 2, '90F5B15039295440914', 62, 'F', 'Displaced', '9044508205', 'Soi Village ', 'Soi', 9.429647000, 8.822686000),
(34, 4, 'Samuel Rose Afuwwak', 2, '90F5B15039295350848', 32, 'F', 'Displaced', '9029831028', 'Soi Village', 'Soi', 9.429651000, 8.822680000),
(35, 4, 'Mallan Yakubu Dung', 1, '62360318879', 45, 'M', 'Displaced', '8060175788', 'Kworos, Gangare, Barkin Ladi Village ', 'Soi', 9.428853000, 8.823540000),
(36, 4, 'Lyop Joshua', 5, 'nil', 43, 'F', 'Displaced', '9029770355', 'Soi Village ', 'Soi', 9.428902000, 8.823601000),
(37, 4, 'Sunday Jummai Magit', 2, '90F5B15039295350553', 58, 'F', 'Displaced', '9124223667', 'Soi Village ', 'Soi', 9.427863000, 8.822373000),
(38, 4, 'Yohanna Felix Tengwong', 2, '90F5B15039295442534', 31, 'M', 'Displaced', '9029770355', 'Soi Village ', 'Soi', 9.427891000, 8.822288000),
(39, 4, 'Samuel Emmanuel Pam', 1, '19627188584', 44, 'M', 'Lame/displaced', '915937978', 'Soi Village ', 'Soi', 9.428382000, 8.821887000),
(40, 4, 'Mangwe Danladi Gyang', 2, '90F5AE492B295365951', 45, 'M', 'Displaced', '8022714317', 'Soi Village ', 'Soi', 9.428985000, 8.821680000),
(41, 5, 'Jock Dauda Alamba ', 2, '34078816413', 48, 'M', 'Displaced', '9066475540', 'Tissan Village ', 'Tissan', 9.432874000, 8.747996000),
(42, 5, 'Tanko Sarah Malo', 2, '90F5B08702533114957', 45, 'F', 'Displaced', '8140674868', 'Tissan Village ', 'Tissan', 9.433029000, 8.747770000),
(43, 5, 'Jang Ladi Elisha ', 1, '357847808', 44, 'F', 'Displaced', '7085196090', 'Tissan Village ', 'Tissan', 9.433111000, 8.747419000),
(44, 5, 'James Asing Musa', 2, '90F5B1A0E5295864363', 68, 'F', 'Displaced', '7087118490', 'Tissan Village ', 'Tissan', 9.433197000, 8.746967000),
(45, 5, 'Pam Yop Dung', 1, '22586891287', 31, 'F', 'Displaced', '7062728524', 'Tissan Village ', 'Tissan', 9.433188000, 8.746984000),
(46, 5, 'Bature Kachollom Joseph', 1, '57680245769', 42, 'F', 'Displaced', '7033485051', 'Tissan Village ', 'Tissan', 9.433199000, 8.746757000),
(47, 5, 'Bitrus Emmanuel', 1, '70323227409', 27, 'M', 'Displaced ', '9075647645', 'Tissan Village ', 'Tissan', 9.433334000, 8.746743000),
(48, 5, 'Dayak Lyop Abigail', 2, '90F5B08702533117553', 31, 'F', 'Displaced', '8084148149', 'Tissan Village ', 'Tissan', 9.433495000, 7.746744000),
(49, 5, 'Elisha Eli Gwong', 2, '90F5B08702533118913', 23, 'M', 'Displaced', '7085196090', 'Tissan Village ', 'Tissan', 9.433566000, 8.746808000),
(50, 5, 'Kauna Abel', 2, 'FA5B2E2385533123497', 39, 'F', 'Displaced', '9013257864', 'Tissan Village ', 'Tissan', 9.433000000, 8.746393000),
(51, 6, 'Musa Ayuba Majiu', 2, '90F5B1BCE2295453591', 37, 'M', 'Displaced', '9061721550', 'Kurra Berom', 'Kurra Berom', 9.435800000, 8.757392000),
(52, 6, 'Dauda Esther Bature', 1, '34764194154', 44, 'F', 'Displaced', '8129576397', 'Kurra Berom', 'Kurra Berom', 9.436004000, 8.757787000),
(53, 6, 'Daniel Mary Gimba', 2, '90F5B1BCE2296296145', 46, 'F', 'Displaced', '8024561451', 'Kurra Berom', 'Kurra Berom', 9.434919000, 8.759427000),
(54, 6, 'Danjuma Christiana Ali', 2, '90F5B1BCE2295349952', 46, 'F', 'Displaced', '9025604804', 'Kurra Berom', 'Kurra Berom', 9.434460000, 8.759590000),
(55, 6, 'Hwei Lyop Samuel', 2, '90F5B1BCE2295973889', 44, 'F', 'Displaced ', '9072981678', 'Kurra Berom', 'Kurra Berom', 9.434919000, 8.759421000),
(56, 6, 'Bulus Magdalene Samson', 1, '73415706917', 45, 'F', 'Displaced', '7069496353', 'Kurra Berom', 'Kurra Berom', 9.434449000, 8.757603000),
(57, 6, 'Elisha Juliet Doro', 2, '90F5B08236533124942', 22, 'F', 'Displaced', '7063918295', 'Kurra Berom', 'Kurra Berom', 9.436995000, 8.757351000),
(58, 6, 'John Magdalene Makut', 2, '90F5B1BCE2295370279', 40, 'F', 'Displaced', '7031633582', 'Kurra Berom', 'Kurra Berom', 9.438038000, 8.757092000),
(59, 6, 'Doro Christopher Hwei', 2, '90F5B1BCE2295281655', 37, 'M', 'Displaced ', '7080012153', 'Kurra Berom', 'Kurra Berom', 9.438284000, 8.756315000),
(60, 6, 'Maren Iliya', 2, '90F5B0B236533192671', 32, 'M', 'Displaced', '9012321371', 'Kurra Berom', 'Kurra Berom', 9.437831000, 8.755172000),
(61, 7, 'Bago Christiana Ishaya', 2, '90F5AF3F3E295438729', 48, 'F', 'Displaced', '8085564512', 'Kakuruk ', 'Kakuruk ', 9.444036000, 8.765768000),
(62, 7, 'Gwong Bitrus Audu', 2, '90F5AF3F3E295607034', 40, 'M', 'Displaced', '7085156542', 'Kakuruk', 'Kakuruk ', 9.444542000, 8.765563000),
(63, 7, ' Magit Victoria Pam', 2, '90F5AF3F3E295603666', 50, 'F', 'Displaced', '9071746868', 'Kakuruk ', 'Kakuruk ', 9.444587000, 8.764976000),
(64, 7, 'Gavou Sarah David', 5, 'CHECK BEHIND FOR NIN', 50, 'F', 'Widow/displaced', '7014477309', 'Kakuruk ', 'Kakuruk ', 9.444693000, 8.764357000),
(65, 7, 'Jama Nvou Sunday', 2, '90F5AF3F3E296556127', 69, 'F', 'widow/displaced', '8026686865', 'Kakuruk ', 'Kakuruk ', 9.447441000, 8.765871000),
(66, 7, 'Pam Nvou Alexander ', 2, '90F5AF3F3E295537476', 41, 'F', 'Displaced', '8124775917', 'Kakuruk', 'Kakuruk ', 9.447144000, 8.768694000),
(67, 7, 'Mavul Rose Gyok', 2, '90F5AF3F3E295541547', 89, 'F', 'Aged/widow/displaced', '8081620068', 'Kakuruk ', 'Kakuruk ', 9.447930000, 8.770416000),
(68, 7, 'Mwagong Polycap John', 1, '98968901283', 38, 'M', 'Displaced', '7018471154', 'Kakuruk ', 'Kakuruk ', 9.451405000, 8.773200000),
(69, 7, 'Dazang Timothy Dongs', 2, '90F5AF3F3E296567420', 37, 'M', 'Displaced', '8087312432', 'Kakuruk ', 'Kakuruk ', 9.451485000, 8.773807000),
(70, 7, 'Makau Iliya Basok ', 2, '90F5AF3F3E295613213', 58, 'M', 'Blind/displaced', '7019201835', 'Kakuruk ', 'Kakuruk ', 9.452512000, 8.877382000),
(71, 8, 'Vou Nyam Bulus', 1, '97226249484', 40, 'M', 'Displaced', '8063248567', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(72, 8, 'Nanpan Laitu Sale', 2, '90F5B154BC519723101', 29, 'F', 'Widow/displaced', '8167990234', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(73, 8, 'Samuel Janet Davou', 2, '90F5B154BC519729050', 44, 'F', 'Widow/displaced', '7037559786', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(74, 8, 'Vou Martha Ayuba', 2, '90F5AEDC2D295431916', 33, 'F', 'Displaced', '7037469387', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(75, 8, 'Lydia Markus Jack', 2, '90F5AEDC2D295866905', 64, 'F', 'Aged/widow/displaced', '8162217437', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(76, 8, 'Victoria Ibrahim', 1, '24117054955', 48, 'F', 'Displaced', '8134010903', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(77, 8, 'Mary Musa Pam', 2, 'INC21000000001733081', 60, 'F', 'Widow/displaced', '8068269862', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(78, 8, 'Comfort Samuel Mabur', 2, '90F5AEDC2D295959133', 35, 'F', 'Displaced', '8189510352', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(79, 8, 'Bulus Pam Deme ', 2, '90F5B08702533540585', 82, 'M', 'Aged/displaced', '8105658505', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(80, 8, 'Ntak Panpe Jatau', 2, '90F5AEDC2D295870564', 69, 'M', 'Deaf/displaced', '8030520073', 'Rapwomol Village ', 'Rapwomol', 9.505511000, 8.994437000),
(81, 9, 'Deme Kaneng Chollom', 2, '90F5AFD205295453957', 38, 'F', 'Widow/displaced', '8026901060', 'Kworos, Gangare, Barkin Ladi', 'Jong ', 9.544791000, 8.950310000),
(82, 9, 'Yohanna Victoria Lamba', 2, 'INC21000000001703943', 52, 'F', 'Widow/displaced', '9036532938', 'Jong Village ', 'Jong ', 9.544387000, 8.950466000),
(83, 9, 'Ayuba Lami Tok', 2, '90F5AFD205295361516', 43, 'F', 'Displaced ', '8032876741', 'Jong Village ', 'Jong ', 9.544075000, 8.950829000),
(84, 9, 'Dung Lyop Saratu Lamba', 2, '90F5AFD205295971737', 50, 'F', 'Displaced ', '9064853141', 'Jong Village ', 'Jong ', 9.543774000, 8.950263000),
(85, 9, 'Chollom Evelyn Christopher', 2, '90F5AFD205295521687', 30, 'F', 'Displaced ', '9028295950', 'Jong Village ', 'Jong ', 9.543816000, 8.949205000),
(86, 9, 'Yohanna Sarah Dung', 2, '90F5B154BC519985161', 36, 'F', 'Displaced ', '8100465434', 'Lobiring Village ', 'Jong ', 9.543373000, 8.949369000),
(87, 9, 'Garose Gyang Rondong', 1, '48951239521', 60, 'F', 'Widow/displaced', '7061809966', 'Gwol, Barkin Ladi', 'Jong ', 9.543515000, 8.948310000),
(88, 9, 'Dung Lami Sunday', 1, '98011792297', 40, 'F', 'Widow/displaced', '8039750187', 'Gassa Village ', 'Jong ', 9.543133000, 8.949774000),
(89, 9, 'Dung Victoria Pam', 2, '90F5AEAFC9507638248', 49, 'F', 'Widow/displaced', '9070028089', 'Rantya Gyel', 'Jong ', 9.544356000, 8.948896000),
(90, 9, 'Dung Chuwang  Celina Yohanna', 2, '90F5B1E735499761559', 24, 'F', 'Displaced ', '8100465434', 'Lobiring Village ', 'Jong ', 9.544219000, 8.948098000),
(91, 10, 'Yohanna Godfrey Chollom', 1, '77604863345', 48, 'M', 'Displaced', '8105561228', 'Lobiring Village ', 'Lobiring ', 9.547514000, 8.948484000),
(92, 10, 'Bulus Ruth Pam', 1, '98882879204', 47, 'F', 'Displaced', '9037659518', 'Lobiring Village ', 'Lobiring ', 9.547123000, 8.948420000),
(93, 10, 'Simon Helen Chollom', 1, '78788433275', 33, 'F', 'Displaced ', '7081755584', 'Lobiring Village ', 'Lobiring ', 9.545545000, 8.950354000),
(94, 10, 'Gyang Ruth Pam', 2, '90F5B1E735500035565', 26, 'F', 'Displaced', '8106039877', 'Lobiring Village ', 'Lobiring ', 9.545181000, 8.949819000),
(95, 10, 'Linda Chollom', 2, '90F5AFD205295712223', 34, 'F', 'Widow', '9073798987', 'Lobiring Village ', 'Lobiring ', 9.545402000, 8.950748000),
(96, 10, 'Benjamin Yop  Maina', 1, '25945333529', 37, 'F', 'Displaced ', '8137959142', 'Lobiring Village ', 'Lobiring ', 9.546524000, 8.948513000),
(97, 10, 'Pam Davou Dung', 2, '90F58154BC519894402', 42, 'M', 'Deaf', '8101188624', 'Lobiring Village ', 'Lobiring ', 8.546981000, 8.949083000),
(98, 10, 'Elisha Lami Chollom', 1, '90f5afd205296040175', 41, 'F', 'Displaced', '8149549216', 'Kworos, Gangare, Barkin Ladi', 'Lobiring ', 9.545645000, 8.949755000),
(99, 10, 'Victoria Bitrus Rose Gyang', 3, 'PL652237430', 43, 'F', 'Displaced ', '9062640297', 'Lobiring Village ', 'Lobiring ', 9.544812000, 8.949662000),
(100, 10, 'Deborah Solomon Dung', 1, '58026804733', 35, 'F', 'Displaced', '7026376014', 'Lobiring Village ', 'Lobiring ', 9.546552000, 8.949549000),
(101, 11, 'Fom Martha Ezekiel ', 2, '90F5B1E735500019086', 46, 'F', 'Displaced', '9046608497', 'Lohala Village ', 'Lohala', 9.556896000, 8.954681000),
(102, 11, 'Gavou Pam ', 2, '90F5B1C252295359685', 35, 'F', 'nil', '9046740964', 'Lohala Village ', 'Lohala ', 9.557258000, 8.954197000),
(103, 11, 'Choji Mary Lyop Dalyop', 2, '90F5B1E735500546554', 31, 'F', 'nil', '7082112775', 'Lohala Village ', 'Lohala', 9.557653000, 8.954440000),
(104, 11, 'Lamba Eunice', 2, '90F5AF8BDF502103399', 29, 'F', 'nil', '9032276400', 'Lohala Village ', 'Lohala', 9.559427000, 8.940818000),
(105, 11, 'Danjuma Justina Davou', 2, '90F5AE4C3F295440906', 40, 'F', 'Displaced', '7068490325', 'Lohala Village ', 'Lohala', 9.555200000, 8.954927000),
(106, 11, 'James Mary', 2, '90F5AEFF65295624303', 31, 'F', 'nil', '7082112775', 'Lohala Village ', 'Lohala', 9.558683000, 8.953718000),
(107, 11, 'Dorcas Pam Yohanna ', 2, '90F5AFFE21498048462', 31, 'F', 'nil', '8141625720', 'Lohala Village ', 'Lohala', 9.556406000, 8.953357000),
(108, 11, 'Rahila Barnabas Dalyop', 2, '90F5B1C25229627180', 45, 'F', 'nil', '8088440083', 'Lohala Village ', 'Lohala', 9.557425000, 8.951959000),
(109, 11, 'Gyem Chollom', 2, '90F5AFD05295612524', 35, 'F', 'nil', '7014072894', 'Lohala Village ', 'Lohala', 9.558599000, 8.953265000),
(110, 11, 'Lyop Hosea ', 2, 'INC21000000001692880', 25, 'F', 'nil', '7082790074', 'Lohala Village ', 'Lohala', 9.558599000, 8.953499000),
(111, 12, 'Esther Pam Chollom', 2, '90F5B136BC295714018', 40, 'F', 'Widow/displaced', '7044285661', 'Jok Village', 'Jok', 9.566041000, 8.949935000),
(112, 12, 'Silas Rose Bot', 2, '90F5B12809295866540', 37, 'F', 'Widow/displaced', '9013363398', 'Jok Village ', 'Jok', 9.565855000, 8.951240000),
(113, 12, 'Gyang Mary Sunday', 1, '52154120580', 62, 'F', 'Aged/displaced', '8149450707', 'Jok Village ', 'Jok', 9.566611000, 8.949548000),
(114, 12, 'Chollom Lydia Bature', 1, '94388352913', 55, 'F', 'nil', '8151941417', 'Jok Village ', 'Jok', 9.565747000, 8.948996000),
(115, 12, 'Jack Lydia Jacob', 2, 'INC21000000004154203', 55, 'F', 'Widow/displaced', '8032473016', 'Jok Village ', 'Jok', 9.656472000, 8.948469000),
(116, 12, 'Kachollom Sambo Fom', 2, 'INC21000000005037386', 56, 'F', 'Widow/displaced', '8136351672', 'Jok Village ', 'Jok', 9.564897000, 8.949067000),
(117, 12, 'Chundung Jack Pam', 1, '68524231012', 60, 'F', 'Widow/displaced', '8143889130', 'Jok Village ', 'Jok', 9.565573000, 8.950311000),
(118, 12, 'Bot Gavou Gwom', 2, '90F5B032A9295605936', 57, 'F', 'nil', '9074528192', 'Worong Loh-Fan', 'Jok', 9.562512000, 8.951187000),
(119, 12, 'Joro Rose John', 2, '530DD35885295946804', 37, 'F', 'Widow/displaced', '9030612104', 'Jok Village ', 'Jok', 9.565654000, 8.950809000),
(120, 12, 'Pam Rahila Friday', 2, '90F5AF176B416426288', 37, 'F', 'Widow/displaced', '8131634205', 'Gwol, Barkin Ladi ', 'Jok', 9.559006000, 8.958070000),
(121, 13, 'Chollom Tabitha Joseph', 1, '50323116638', 62, 'F', 'Widow', '8169604914', 'Wereh Village ', 'Wereh', 9.515165000, 8.974370000),
(122, 13, 'Deborah Bulus Choji', 2, 'FA5B3EC1FA526905029', 49, 'F', 'nil', '8119158389', 'Wereh Village ', 'Wereh', 9.515057000, 8.973335000),
(123, 13, 'Bot Lami Yohanna', 2, '90F5AF845C295616781', 54, 'F', 'Widow', '8064314561', 'Wereh Village ', 'Wereh', 9.513984000, 8.974000000),
(124, 13, 'Dung Tabitha Markus', 2, '90F5AF845C295969044', 50, 'F', 'nil', '8169604914', 'Wereh Village ', 'Wereh', 9.516866000, 8.976437000),
(125, 13, 'Toma Martina Joseph', 2, '90F5AF845C295526350', 39, 'F', 'nil', '8148504826', 'Wereh Village ', 'Wereh', 9.520455000, 8.966336000),
(126, 13, 'Dung Sarah Jonah', 2, '90F5AF845C295950586', 50, 'F', 'Widow/Partial Paraly', '8067061457', 'Wereh Village ', 'Wereh', 9.519831000, 8.967911000),
(127, 13, 'Bot Rose Yunana', 2, '90F5AF845C299735003', 32, 'F', 'nil', '8065173628', 'Wereh Village ', 'Wereh', 9.514274000, 8.973148000),
(128, 13, 'Tabitha Toma Gyang', 2, '90F5AF845C295618956', 46, 'F', 'Lame/displaced', '9042961436', 'Wereh Village ', 'Wereh', 9.514346000, 8.974486000),
(129, 13, 'Pam Kachollom Chollom', 2, '90F5AF845C295425866', 74, 'F', 'nil', '8101280660', 'Wereh Village ', 'Wereh', 9.514215000, 8.976283000),
(130, 13, 'Choji Lyop Ibrahim ', 2, '90F5AF845C295617503', 37, 'F', 'nil', '7013398263', 'Wereh Village', 'Wereh', 9.516248000, 8.979735000),
(131, 14, 'Dachomo Kachollom Markus', 2, '90F5AF3C8B295436869', 47, 'F', 'Widow', '7048753331', 'Gassa Village', 'Gassa', 9.601744000, 8.918080000),
(132, 14, 'Gyang Dayal Davou', 2, '90F5AF8BF0493809334', 31, 'M', 'nil', '7033091579', 'Gassa Village', 'Gassa', 9.597014000, 8.914703000),
(133, 14, 'Fom Philibus Samuel', 2, '90F5AF3C83295264874', 55, 'M', 'nil', '8037727280', 'Gassa Village', 'Gassa', 9.600499000, 8.915174000),
(134, 14, 'Bot Sarah Christopher', 2, '71BC060C0E296125084', 49, 'F', 'nil', '9061910114', 'Gassa Village', 'Gassa', 9.594183000, 8.911853000),
(135, 14, 'Musa Laraba Gyang', 2, '71BC060C0E296468185', 71, 'F', 'Aged', '9160578152', 'Gassa Village', 'Gassa', 9.596147000, 8.913376000),
(136, 14, 'Fom Esther Josiah', 1, '48156527182', 55, 'F', 'nil', '8160609126', 'Gassa Village ', 'Gassa', 9.591288000, 8.893635000),
(137, 14, 'Rwang Sunday Gyang', 2, '90F5AF3C8B295281059', 55, 'M', 'nil', '8036916523', 'Gassa Village ', 'Gassa', 9.598567000, 8.919066000),
(138, 14, 'Gyang Chollom Rwang', 2, '90F5AF3C8B295960582', 62, 'M', 'nil', '7064650358', 'Gassa Village ', 'Gassa', 9.599744000, 8.914487000),
(139, 14, 'Kim''s Markus Gyang', 2, '34101252621', 55, 'M', 'nil', '7037727280', 'Gassa Village ', 'Gassa', 9.591883000, 8.893377000),
(140, 14, 'Fom Dung Gyang', 2, 'S7Y0O0ZIK000COQ', 55, 'M', 'nil', '8062164784', 'Gassa Village ', 'Gassa', 9.601744000, 8.918080000),
(141, 15, 'Tok Joseph Dung', 1, '74738643114', 35, 'M', 'nil', '7067084595', 'Gassa Village ', 'Gassa', 8.895195000, 8.895195000),
(142, 15, 'Jack Shedrach Gyang', 2, '71BC060C0E296036871', 30, 'M', 'nil', '7036085092', 'Gassa Village ', 'Gassa', 8.895195000, 8.895195000),
(143, 15, 'Gyang Musa Gyang', 2, '71BC060C0E295957599', 35, 'M', 'nil', '8134264958', 'Gassa Village ', 'Gassa', 8.895195000, 8.895195000),
(144, 15, 'Madugu Joel Chollom', 2, '90F5B03B51416156612', 26, 'M', 'nil', '9138880458', 'Gassa Village ', 'Gassa', 8.895195000, 8.895195000),
(145, 15, 'Dung Ayuba Pam', 1, '95355115537', 35, 'M', 'nil', '7067747096', 'Gassa Village ', 'Gassa', 8.895195000, 8.895195000),
(146, 15, 'Pam Gyang Dalyop', 2, '90F5AFF27E519915553', 36, 'M', 'nil', '8060372031', 'Lohala Village ', 'Gassa', 8.895195000, 8.895195000),
(147, 15, 'Chung Solomon Dung', 1, '62812266563', 44, 'M', 'Displaced', '9062043159', 'Lohala Village ', 'Gassa', 8.895195000, 8.895195000),
(148, 15, 'Gyang Enoch Thomas', 1, '60658801833', 23, 'M', 'nil', '7037047885', 'Lohala Village ', 'Gassa', 8.895195000, 8.895195000),
(149, 15, 'Sam Gyang', 2, '90F5B07B1C524217227', 39, 'M', 'Displaced', '8037618657', 'Lohala Village ', 'Gassa', 8.895195000, 8.895195000),
(150, 15, 'James Dalyop Pam', 2, '90F5B1C252295442282', 34, 'M', 'Displaced ', '7037486803', 'Lohala Village ', 'Gassa', 8.895195000, 8.895195000),
(151, 16, 'Solomon Ayuba', 2, '90F5AF5757494235285', 34, 'M', 'Unemployed graduate', '7030746247', 'Igbak Ako', 'IgbakAkoh', 8.721840000, 9.961210000),
(152, 16, 'Victoria Akusuk', 5, 'nil', 33, 'F', 'Unemployed youth', '9069958858', 'Igbak Ako', '', 8.721840000, 9.961210000),
(153, 16, 'Emmanuel Adik', 2, '90F5B06DE2295863381', 45, 'M', 'Poor & vulnarable', '8104176672', 'Igbak Ako', '', 8.721840000, 9.961210000),
(154, 16, 'Ayhu Kiku', 2, '90F5B1806C529487787', 32, 'M', 'Unemployed youth', '8101353447', 'Igbak Ako', '', 8.721840000, 9.961210000),
(155, 16, 'Ayiki Ayuba', 2, '90F5B06DE2296485756', 38, 'M', 'Unemployed & vulnara', '7084820718', 'Igbak Ako', 'IgbakAkoh', 8.721840000, 9.961210000),
(156, 16, 'Adankala Dennis', 2, '90F5B06EBD526992829', 39, 'M', 'Unemployed graduate', '8034401137', 'Igbak Ako', 'IgbakAkoh', 8.721840000, 9.961210000),
(157, 16, 'Emmanuel Talatu', 2, '90F5B06DE2295611177', 34, 'F', 'Unemployed youth', 'NIL', 'Igbak ', 'Igbok Akoh', 8.721840000, 9.961210000),
(158, 16, 'Oku Angut', 2, '90F5AF814B529497775', 54, 'F', 'Poor & vulnarable', '8022925277', 'Igbak ', 'IgbakAkoh', 8.721840000, 9.961210000),
(159, 16, 'Talatu Jacob', 5, 'nil', 52, 'F', 'Poor & vulnarable', '8068927918', 'Igbak ', '', 8.721840000, 9.961210000),
(160, 16, 'Oburusu Igbul', 2, '90F5B06DE2295802388', 54, 'F', 'Poor & vulnarable', '7035682651', 'Igbak ', 'IgbakAkoh', 8.721840000, 9.961210000),
(161, 17, 'Nehemiah C. Adankala', 2, '90F5AF5757497882128', 32, 'M', 'Unemployed graduate', '7066315480', 'Igbak ', '', 8.716120000, 9.971860000),
(162, 17, 'Gideon Imil', 2, '90F5B06DE2296300837', 32, 'M', 'Unemployed & vulnara', '9027017116', 'Igbak ', 'IgbakAkoh', 8.716080000, 9.972510000),
(163, 17, 'Asama Ibisi', 1, '51268666896', 31, 'M', 'Unemployed & vulnara', '9129794489', 'Igbak ', 'IgbakAkoh', 8.721760000, 9.975260000),
(164, 17, 'Aku Alap', 2, '90F5B06DE2296570274', 47, 'M', 'Poor & vulnarable', '9045305307', 'Igbak ', 'IgbakAkoh', 8.719510000, 9.971690000),
(165, 17, 'Lami Ayiki', 2, '90F5B07C8B410072644', 32, 'F', 'Unemployed & vulnara', '9018117846', 'Igbak ', '', 8.719070000, 9.976400000),
(166, 17, 'Ijah Ladi Otihu', 2, '90F5B06DE2296318360', 35, 'F', 'Unemployed & vulnara', 'NIL', 'Igbak ', 'IgbakAkoh', 8.716110000, 9.971880000),
(167, 17, 'Ojijah Akaso', 2, '90F5B06DE2296036507', 37, 'F', 'Unemployed & vulnara', '7064772815', 'Kihang', '', 8.722060000, 9.968060000),
(168, 17, 'Sarah Solomon Atinbi', 2, '90F5B1806C529500118', 41, 'F', 'Unemployed graduate', '8029422949', 'Kihang', 'IgbakAkoh', 8.717690000, 9.975380000),
(169, 17, 'Ohile Monday', 2, '90F5B06DE2296662727', 51, 'F', 'Poor & vulnarable', '7038516462', 'Kihang', '', 8.721520000, 9.964168000),
(170, 17, 'Hauwa Akubaka', 2, '90F5B06DE2296038730', 54, 'F', 'Poor & vulnarable', '9048681607', 'Kihang', 'IgbakAkoh', 8.718080000, 9.975050000),
(171, 18, 'Anah Adi Bitrus', 2, '90F5B07FF0499080681', 37, 'F', 'Unemployed graduate', '8121766290', 'Kihang', 'Kihang', 8.739720000, 9.940630000),
(172, 18, 'John Victor Ayiku', 2, '90F5B17F77D505207644', 25, 'M', 'Unemployed graduate', '9060071596', 'Kihang', 'Kihang', 8.716830000, 9.968660000),
(173, 18, 'Oringyi Sunday', 1, '84655719276', 35, 'F', 'Poor & vulnarable', '8104805166', 'Kihang', 'Kihang', 8.740370000, 9.948380000),
(174, 18, 'Innocent Adingbu', 1, '16066839655', 37, 'M', 'Unemployed graduate', '8160646299', 'Kihang', 'Kihang', 8.745910000, 9.929020000),
(175, 18, 'Adigye Agbat John', 2, '90F5B0385E527419789', 38, 'M', 'Poor & vulnarable', '7084239015', 'Kihang', 'Kihang', 8.745770000, 9.949190000),
(176, 18, 'Imil Ayuba Ashen ', 2, '90F5AE6DD4216259649', 42, 'M', 'Poor & vulnarable', '8135595493', 'Kihang', 'Kihang', 8.752170000, 9.943770000),
(177, 18, 'Samuel Iliya', 1, '18303111455', 45, 'M', 'Poor & vulnarable', '7082946445', '', 'Kihang', 8.739750000, 9.940430000),
(178, 18, 'Christiana James', 2, '90F5B07FF0499432456', 32, 'F', 'Unemployed & vulnara', '7064204214', '', 'Kihang', 8.748690000, 9.948760000),
(179, 18, 'Garba Moses Akai', 1, '70213360835', 29, 'M', 'Unemployed & vulnara', '7032660577', '', 'Igbak', 8.739650000, 9.943420000),
(180, 18, 'JummaiAnyaku Amos', 2, 'A08815806', 40, 'F', 'Poor & vulnarable', 'NIL', 'Igbak Akoh', 'Igbak Akoh', 8.723120000, 9.968250000),
(181, 19, 'Ughili Amunkai Agbanda', 2, '90F5AF5757497261495', 26, 'M', 'Unemployed & vulnara', '9043532073', 'Kasaru', 'Kasaru', 8.729140000, 9.949340000),
(182, 19, 'Annex  Christiana', 2, '90F5B03E64296574439', 36, 'F', 'Unemployed & vulnara', '8033768789', 'Kasaru', 'Kasaru', 8.727870000, 9.946830000),
(183, 19, 'Atukum Lami', 2, '90F5B06EBD530286044', 24, 'F', 'Unemployed & vulnara', '7066427985', 'Kasaru', 'Kasaru', 8.729210000, 9.947280000),
(184, 19, 'Adudu Isaac Ayhok', 2, '90F5B17C27533725620', 24, 'M', 'Unemployed graduate', '9129740722', 'Kasaru', 'Igbak', 8.727590000, 9.949730000),
(185, 19, 'GamboLadi', 2, '90F5B06DE2296749061', 35, 'F', 'Unemployed & vulnara', '8127955058', 'Kasaru', 'Igbak', 8.726520000, 9.950790000),
(186, 19, 'Gambo Mary', 2, '90F5B06DE2296645918', 41, 'F', 'Poor & vulnarable', '9046895370', 'Kasaru', 'Nyakala', 8.726260000, 9.950720000),
(187, 19, 'Akankaru Ladi', 2, '90F5B06DE2296749975', 40, 'F', 'Unemployed & vulnara', '9123385071', 'Kasaru', 'Kasaru', 8.726820000, 9.951140000),
(188, 19, 'Achampuk Otaka', 2, '90F5B06DE2296826624', 67, 'F', 'Poor & Aged', '8137886587', 'Kasaru', 'Igbak Akoh', 8.729110000, 9.947840000),
(189, 19, 'Abak Ayiba', 2, '90F5B06DE2296652293', 29, 'M', 'Poor & vulnarable', '8038667813', 'Kasaru', 'Igbak', 8.726490000, 9.951800000),
(190, 19, 'Kudu Ahyu', 2, '90F5B06DE2296660579', 30, 'M', 'Unemployed & vulnara', '', 'Kasaru', 'Kasaru', 8.728460000, 9.948340000),
(191, 20, 'TalitaYahannaTermen', 5, 'NIL', 28, 'F', 'Unemployed & vulnara', '8145665422', 'Dusten Kura', '', 8.800770000, 9.907450000),
(192, 20, 'YohannaMaina Jonathan', 1, '20000717142', 25, 'M', 'Unemployed youth', '9078069996', 'Dusten Kura', 'Rafiki ', 8.800770000, 9.907450000),
(193, 20, 'Danlami Solomon', 5, 'nil', 27, 'M', 'Unemployed youth', '9156288538', 'Dusten Kura', '', 8.800770000, 9.907450000),
(194, 20, 'Justina Amishe', 1, '59600808332', 34, 'F', 'Unemployed & vulnara', '8062834500', 'Kihang', 'Kihang', 8.744520000, 9.942080000),
(195, 20, 'Timothy Isa', 1, '99455530658', 22, 'M', 'Unemployed youth', '9121586881', 'Dusten Kura', 'Dutse Kura', 8.800700000, 9.907450000),
(196, 20, 'Lawani Meka John', 1, '61071496415', 28, 'M', 'Unemployed graduate', '8133525951', 'Jebbu', 'Jebbu', 8.756650000, 9.952300000),
(197, 20, 'Talatu Adinimil', 1, '341709907', 49, 'F', 'Unemployed & vulnara', 'NIL', 'Jebbu', 'Jebbu', 8.756650000, 9.952300000),
(198, 20, 'Comfort  Adalak', 1, '80583301426', 27, 'F', 'Unemployed youth', 'NIL', 'Jebbu', 'Jebbu', 8.766500000, 9.952300000),
(199, 20, 'Moses Elijah Ayiki', 1, '52559902739', 31, 'M', 'Unemployed graduate', '8060530773', 'Jebbu', 'Jebbu', 8.754650000, 9.951300000),
(200, 20, 'Adungus Rebecca', 2, '90F5B07C8B416412096', 30, 'F', 'Unemployed & vulnara', '8039453195', 'Jebbu', 'Jebbu', 8.748340000, 9.953030000),
(201, 21, 'Laraba Christopher Iliya', 2, '90F5AFB727295688372', 41, 'F', 'Widow', '9033030278', 'Kihang', 'Kihang', 8.751260000, 9.943530000),
(202, 21, 'Joy Agassa Oyok', 2, '90F5B12C7A529405915', 31, 'F', 'Widow', '9035777492', 'Kihang', 'Igbak', 8.751260000, 9.943530000),
(203, 21, 'Rose AyubaAchinadi', 5, 'NIL', 0, 'F', 'Widow', '8139175973', 'Kihang', 'Dutse Kura', 8.751260000, 9.943530000),
(204, 21, 'Laraba Aghu', 1, '32823017362', 0, 'F', 'Widow', '9066070573', 'Kihang', 'Kihang', 8.751260000, 9.943530000),
(205, 21, 'Asangya Osantu', 2, '90F5B06DE2296659997', 0, 'F', 'Widow', '7035682651', 'Kihang', 'Igbak', 8.751260000, 9.943530000),
(206, 21, 'AchikoAkaso', 5, 'NIL', 0, 'F', 'Widow', '8075647491', '', '', 8.751260000, 9.943530000),
(207, 21, 'Litini Adabu', 1, '91936462172', 0, 'F', 'Widow', '7068743439', '', 'Kihang', 8.751260000, 9.943530000),
(208, 21, 'AngyaAbutuk', 5, 'NIL', 0, 'F', 'Widow', '8039453195', '', '', 8.751260000, 9.943530000),
(209, 21, 'Abanza Julius Rebecca', 1, '47894608616', 0, 'F', 'Widow', '8080464426', '', 'Kihang', 8.751260000, 9.943530000),
(210, 21, 'Litini Asukuna Oki', 1, '39198133889', 0, 'F', 'Widow', '8100766376', '', 'Kihang', 8.751260000, 9.943530000),
(211, 22, 'Imil Geoffray Akaso', 1, '20738345472', 33, 'M', 'Unemployed graduate', '81311131975', 'Igbak Kuchalla ', 'Kihang', 8.742950000, 9.944960000),
(212, 22, 'Anah Daniel A.', 1, '40651475052', 35, 'M', 'Unemployed graduate', '8032851079', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(213, 22, 'Adankala Frank Amanya', 1, '51879149798', 28, 'M', 'Unemployed graduate', '7036609363', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(214, 22, 'Adi Litini Martha', 1, '80837973321', 27, 'F', 'Unemployed graduate', '7030061545', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(215, 22, 'Atabat Joice Otutuk', 1, '89513879107', 27, 'F', 'Unemployed youth', '8102870582', 'Nyakala', 'Kihang', 8.742950000, 9.944960000),
(216, 22, 'Imjumo Sarah Peter', 1, '88322401184', 30, 'F', 'Unemployed graduate', '817909121', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(217, 22, 'Paul Iliya', 5, 'NIL', 35, 'M', 'Poor & vulnarable', '', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(218, 22, 'Ibandi Steven Ikpiwu', 1, '20943834754', 33, 'M', 'Unemployed graduate', '8065555479', 'Kihang', 'Kihang', 8.742950000, 9.944960000),
(219, 22, 'Emmanuel Imil Akubaka', 1, '98426869467', 35, 'M', 'Unemployed graduate', '9123287616', 'Jebbu', 'Kihang', 8.742950000, 9.944960000),
(220, 22, 'Amos Mary', 5, '', 20, 'F', 'Unemployed & vulnara', '', 'Dusten Kura', 'Kihang', 8.742950000, 9.944960000),
(221, 23, 'Alexander Abraham', 3, 'BUU00661AA41', 31, 'M', 'Unemployed youth', '8062875176', 'Igbak Akoh', 'Igbak', 8.722980000, 9.969010000),
(222, 23, 'Oshiku Ruth Samuel', 1, '78882371414', 30, 'F', 'Unemployed & vulnara', '7062561782', 'Kihang', 'Igbak', 8.721950000, 9.964070000),
(223, 23, 'Ayibine Joshua D.', 1, '62475105071', 32, 'M', 'Unemployed graduate', '8023374376', 'Dusten Kura', 'Dutse Kura', 8.793620000, 9.913830000),
(224, 23, 'Atagan Timothy', 1, '79837010399', 32, 'M', 'Unemployed youth', '', 'Dusten Kura', 'Dutse Kura', 8.789890000, 9.911930000),
(225, 23, 'KefasYakubu Solomon', 1, '23832979484', 30, 'M', 'Unemployed graduate', '8167593526', 'Dusten Kura', 'Dutse Kura', 8.790740000, 9.910260000),
(226, 23, 'Daniel James Achato', 2, '90F5AF814B529586511', 35, 'M', 'Unemployed graduate', '7031274769', 'Dusten Kura', 'Igbak', 8.726030000, 9.962020000),
(227, 23, 'Odik Akusuba', 2, '90F5B0401A295623247', 49, 'F', 'Widow', '9039175973', 'Jebbu', 'Kihang', 8.749560000, 9.957520000),
(228, 23, 'Halima Bello Ibrahim', 1, '67503042595', 34, 'F', 'Unemployed youth', '8033050017', 'Dusten Kura', 'Dutse Kura', 8.800720000, 9.907470000),
(229, 23, 'Anna Adikaba', 1, '61787027694', 31, 'F', 'Poor & Unemployed', '8102573219', 'Dusten Kura', 'Dutse Kura', 8.790880000, 9.913700000),
(230, 23, 'Lidiya Andu', 2, '90F5AF814B529499506', 34, 'F', 'Poor & Unemployed', '8022186847', 'Kasaru', 'Igbak', 8.727630000, 9.951990000),
(231, 24, 'Hanania Francis', 1, '27066399312', 39, 'M', 'Poor & vulnarable', '8098272330', 'Zukku', 'Zukku', 8.892240000, 10.056860000),
(232, 24, 'Lois Sunday', 2, '71BC3D696E295863984', 31, 'F', 'Unemployed youth', '9038638568', 'Tumu', 'Tumu', 8.920320000, 10.077190000),
(233, 24, 'Enock Ezra Ishaku', 1, '29717768894', 41, 'M', 'Poor & vulnarable', '8098150273', 'Tumu', 'Saya', 8.884740000, 10.105940000),
(234, 24, 'Ibrahim Ahmed', 2, '71BC3D696E295976480', 45, 'M', 'Poor & vulnarable', '9019439407', 'Tumu', 'Tumu', 8.919710000, 10.077330000),
(235, 24, 'Maryam Isa', 2, '71BC3D696E296127229', 37, 'F', 'Unemployed youth', '9093357193', 'Tumu', 'Tumu', 8.919280000, 10.077250000),
(236, 24, 'Yardinga Augustin', 2, '71BC3D696E295966662', 32, 'F', 'Unemployed youth', '8121219803', 'Tumu', 'Tumu', 8.920190000, 10.077430000),
(237, 24, 'Fulani Stephen Maigadi', 1, '96242471104', 38, 'M', 'Poor & vulnarable', '8022235081', 'Tumu', 'Tumu', 8.919550000, 10.076780000),
(238, 24, 'Adams Fatima M.', 1, '24075324289', 41, 'F', 'Poor & vulnarable', '9066639566', 'Tumu', 'Tumu', 8.919840000, 10.077670000),
(239, 24, 'Barje Audu', 1, '75099589460', 44, 'M', 'Poor & vulnarable', '8055556680', 'Runfa', 'Runfa', 8.887060000, 10.078300000),
(240, 24, 'Ade loveth', 1, '35173113118', 29, 'F', 'Unemployed youth', '8140647510', 'Tumu', 'Tumu', 8.419970000, 10.773600000),
(241, 25, 'David Jackson', 2, '90F5B05B14295950837', 30, 'M', 'Unemployed youth', '8117733116', 'Runfa', 'Runfa', 8.883880000, 10.778600000),
(242, 25, 'Musa Sunday Mondom', 2, '90F5AF3F3E520256308', 40, 'M', 'Poor & vulnarable', 'NIL', 'Runfa', 'Runfa', 8.885820000, 10.075980000),
(243, 25, 'Justina Stephen', 1, '11425008820', 28, 'F', 'Unemployed & vulnara', '9153702024', 'Runfa', 'Runfa', 8.886030000, 10.077970000),
(244, 25, 'Annah Magaaji', 1, '94104835186', 40, 'F', 'Poor & vulnarable', '9153755875', 'Fuskan Mata', 'Fuskan Mata', 8.885300000, 10.077820000),
(245, 25, 'Halima maisamari', 1, '43056672131', 45, 'F', 'Poor & vulnarable', '8187308663', 'Runfa', 'Runfa', 8.887450000, 10.076990000),
(246, 25, 'Asabe Luka', 1, '45839975497', 30, 'F', 'Unemployed youth', '9086100499', 'Bintiri', 'Bintiri', 8.883330000, 10.079140000),
(247, 25, 'Hansatu James', 2, '90F5B05B14295366792', 40, 'F', 'Poor & vulnarable', '9087628687', 'Runfa', 'Runfa', 8.887550000, 10.076830000),
(248, 25, 'Victor Dandoka', 1, '20095333242', 40, 'M', 'Poor & vulnarable', 'NIL', 'Runfa', 'Runfa', 8.887920000, 10.076040000),
(249, 25, 'Demaris Victor', 1, '33668828343', 32, 'F', 'Poor & vulnarable', '9094176788', 'Runfa', 'Runfa Gwamna', 8.888510000, 10.075860000),
(250, 25, 'Wasiu Yakubu Ezekiel', 1, '38437822019', 40, 'M', 'Poor & vulnarable', '9158244736', 'Runfa', 'Runfa', 8.887020000, 10.078990000),
(251, 26, 'Sarah Yakubu', 1, '11252081316', 40, 'F', 'Poor & vulnarable', '817335001', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(252, 26, 'Felicia Danlami', 1, '36969709909', 26, 'F', 'Unemployed & vulnara', '8157775477', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(253, 26, 'Rose Nathaniel', 1, '31288392150', 25, 'F', 'Unemployed youth', '8073331151', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(254, 26, 'Maryam Sani', 1, '38542967697', 40, 'F', 'Poor & vulnarable', '8098011600', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(255, 26, 'Judith Bernard', 1, '28548960298', 22, 'F', 'Unemployed youth', '8119182691', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(256, 26, 'Joycelyn Sani', 1, '26063876544', 32, 'F', 'Unemployed youth', '8055950828', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(257, 26, 'Safiya Danjuma D.', 1, '50193263297', 35, 'F', 'Unemployed youth', '8050500360', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(258, 26, 'Jessica Ibi', 2, '90F5B05B14296909302', 26, 'F', 'Unemployed youth', 'NIL', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(259, 26, 'Margaret Jackson', 1, '44529643270', 28, 'F', 'Unemployed youth', '9158244835', 'Runfa', 'Runfa', 8.882110000, 10.749600000),
(260, 26, 'Juliet Gibson', 1, '57797416292', 30, 'F', 'Unemployed youth', '9097877319', 'Zukku', 'Zukku', 8.882110000, 10.749600000),
(261, 27, 'Solomon S. Tafinta', 1, '10961837238', 45, 'M', 'Poor & vulnarable', '7033937415', 'Mista Ali', 'Mista Ali', 8.843220000, 10.033920000),
(262, 27, 'Timothy Debora', 2, '71BC3D6E3D296038896', 35, 'F', 'Unemployed & vulnara', '8108039382', 'Mista Ali', 'Mista Ali', 8.836950000, 10.021940000),
(263, 27, 'James Christopher A.', 2, '90F5B14011216253461', 41, 'M', 'Poor & vulnarable', '7035056022', 'Mista Ali', 'Bikan', 8.811010000, 9.995650000),
(264, 27, 'Bature P. Solomon', 1, '5.30E+15', 40, 'M', 'Poor & vulnarable', '8061602733', 'Mista Ali', 'Bikan', 8.811660000, 9.996020000),
(265, 27, 'Denis Debora', 2, '90F5AF5757415881034', 34, 'F', 'Unemployed youth', '7013424276', 'Farin lamba', 'Mista Ali', 8.884870000, 10.014530000),
(266, 27, 'Binta  Philimon Dauda', 1, '40988728201', 31, 'F', 'Unemployed youth', '8164147728', 'Mista Ali', 'Mista Ali', 8.844310000, 10.015120000),
(267, 27, 'James Albert Gandu', 1, '31119394568', 21, 'M', 'Unemployed youth', '8085972882', 'Mista Ali', 'Mista Ali', 8.843680000, 10.153700000),
(268, 27, 'Tina  Agun Ayuba ', 1, '5.30E+15', 34, 'F', 'Unemployed youth', '8064090544', 'Farin lamba', 'Farin Lamba', 8.811010000, 9.995650000),
(269, 27, 'Seth Asukudu', 2, 'A08779165', 27, 'M', 'Unemployed youth', '', 'Farin lamba', 'Bikan', 8.845420000, 10.045730000),
(270, 27, 'Akaso Odiwu Naomi', 2, '90F5AF5757498737396', 28, 'F', 'Unemployed youth', '8137582254', 'Mista Ali', 'Bikan', 8.812640000, 9.994390000),
(271, 28, 'Isa Abdulahi', 2, '90F5B210BE513163176', 40, 'M', 'Poor & vulnarable', '7063304964', 'Tilla', 'Tilla', 8.924120000, 10.077030000),
(272, 28, 'Iliya Mathew Kabitu', 2, '90F5B1566E525432795', 22, 'M', 'Unemployed youth', '9013531623', 'Gwandan', 'Gwandan', 8.924120000, 10.077030000),
(273, 28, 'Mohammed Zulai', 2, '71BC3D696E295957976', 43, 'F', 'Poor & vulnarable', '8184951133', 'Tumu', 'Tumu', 8.924120000, 10.077030000),
(274, 28, 'Ayuba Felicia', 2, '71BC3D696E295888456', 35, 'F', 'Unemployed youth', '7052604692', 'Tumu', 'Tumu', 8.924120000, 10.077030000),
(275, 28, 'Dogo Ruth', 2, '71BC3D696E295965390', 42, 'F', 'Unemployed & vulnara', '7026185070', 'Tumu', 'Tumu', 8.924120000, 10.077030000),
(276, 28, 'Mamman Deborah', 2, '71BC3D696E295862406', 50, 'F', 'Unemployed & vulnara', 'NIL', 'Tumu', 'Tumu', 8.924120000, 10.077030000),
(277, 28, 'Isuwaidi Mary', 2, '71BC3D696E295888186', 35, 'F', 'Unemployed & vulnara', 'NIL', 'Tumu', 'Tumu', 8.924120000, 10.077030000),
(278, 28, 'Turawa Bakana', 2, '90F5AF5DF0296554347', 50, 'M', 'NIL', 'NIL', 'Zukku', 'Zukku', 8.924120000, 10.077030000),
(279, 28, 'Lare Gawan', 5, 'NIL', 42, 'F', 'Poor & vulnarable', '9019556825', 'Saya', 'Saya', 8.924120000, 10.077030000),
(280, 28, 'Atang Joshua', 1, '87060221312', 30, 'M', 'Unemployed youth', '9019131390', 'Mista Ali', 'Mista Ali', 8.924120000, 10.077030000),
(281, 29, 'Umar Aisha', 2, '71BC3D696E296051422', 47, 'F', 'Poor & vulnarable', '9074592209', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(282, 29, 'Ibrahim Halima', 2, '71BC3D696E295954334', 62, 'F', 'Poor & vulnarable', '8064970980', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(283, 29, 'Yazama Sunday', 2, '71BC3D696E295953740', 78, 'M', 'Poor & Aged', '9045794671', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(284, 29, 'Sani Talatu', 2, '90F5B12002416397018', 43, 'F', 'Poor & vulnarable', 'NIL', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(285, 29, 'Adamu Yusuf', 2, '71BC3D696E296206344', 48, 'M', 'Poor & vulnarable', '8089558532', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(286, 29, 'Muhammed Sani', 2, '90F5AF3F3E520343999', 29, 'M', 'Unemployed youth', '9095191500', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(287, 29, 'Maitala Kande', 2, '90F5B113B7416151983', 58, 'F', 'Poor & Aged', '7066179903', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(288, 29, 'Jerry Rhoda', 2, '71BC3D696E296127421', 47, 'F', 'Poor & vulnarable', '7012165550', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(289, 29, 'Umar Rabi', 2, '71BC3D696E296559885', 32, 'F', 'Unemployed youth', '7018239879', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(290, 29, 'Pius Victoria', 1, '10522857357', 33, 'F', 'Unemployed & vulnara', '9022247897', 'Tumu', 'Tumu', 8.925050000, 10.075860000),
(291, 30, 'Hassan Gideon ', 2, '90F5AF5DF0295689582', 30, 'M', 'Unemployed graduate', '8029764046', 'Zukku', 'Zukku', 8.886450000, 10.036040000),
(292, 30, 'Chagumi James Adamu', 1, '25715196053', 36, 'M', 'Unemployed & vulnara', '8095338211', 'Zukku', 'Zukku', 8.886850000, 10.036400000),
(293, 30, 'Innocent Nahuta', 5, 'NIL', 43, 'M', 'Poor & vulnarable', '7030101212', '', '', 8.875980000, 10.046530000),
(294, 30, 'Sankivi Vincent Sanda', 2, '90F5AF5757497865194', 34, 'M', 'Unemployed youth', '806495103', 'Zukku', 'Zukku', 8.887090000, 10.036260000),
(295, 30, 'Moses Hassan  Maba', 2, '90F5AF5DF0295736430', 40, 'M', 'Poor & vulnarable', '9078829212', 'Zukku', 'Zukku', 8.887830000, 10.373500000),
(296, 30, 'Irmiya wakili Bokara', 2, '90F5AFB8F8296395686', 28, 'M', 'Unemployed youth', '8136923901', 'Zallaki', 'Zallaki', 8.872640000, 10.883500000),
(297, 30, 'Binta John', 2, '90F5AF5DF0295625844', 37, 'F', 'Unemployed youth', '7062291335', 'Zukku', 'Zukku', 8.883830000, 10.032900000),
(298, 30, 'Lydia Simon Maigari', 2, '90F5AF5DF0296140311', 37, 'F', 'Unemployed youth', '7032718978', 'Zukku', 'Zukku', 8.879250000, 10.040220000),
(299, 30, 'Keke Deborah Amos', 2, '71BC3D83A4295962241', 28, 'F', 'Unemployed youth', '8105775357', 'Farin lamba', 'Farin Lamba', 8.881920000, 10.042510000),
(300, 30, 'Faith Hannaniya', 1, '31060874037', 29, 'F', 'Unemployed & vulnara', '9065657179', 'Farin lamba', 'Farin Lamba', 8.845940000, 10.021670000),
(301, 99, 'JODAN DADING', 3, 'PL166046244', 56, 'M', 'Displaced', 'nil', 'C.A.C KANGER', 'CHINGOK', 9.135850000, 9.105630000),
(302, 99, 'SATI SWARYE', 2, '90F5AF8CF7296218490  ', 30, 'F', 'Widow/displaced', 'nil', 'C.A.C KANGER', 'CHINGOK', 9.460820000, 9.113220000),
(303, 99, 'HARUNA JULIANA', 2, '9F5AF8CF7296827420', 88, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.140390000, 9.115140000),
(304, 99, 'DENNIS SALINA', 2, '90F5AF8CF7295866098', 42, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.135760000, 9.106450000),
(305, 99, 'JOEL SHUWARKE', 2, '90F5AF8CF7295684737', 52, 'M', 'Widow/displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.139050000, 9.115030000),
(306, 99, 'STEPHEN DIYOSHAK', 2, 'INC22000000016710186', 65, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.140010000, 9.118210000),
(307, 99, ' ANTHONY JICOLIA', 2, '90F5AF8CF7295623116', 54, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.135930000, 9.106670000),
(308, 99, 'MAWKWOH MWANTU MANFOM', 3, 'PL58617900', 62, 'M', 'Displaced', 'nil', 'C.A.C KANGER', 'CHINGOK', 9.145650000, 9.113960000),
(309, 99, ' PETER YOSSY', 2, '90F5AF8CF7296464033', 72, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.147180000, 9.115230000),
(310, 99, 'TIMOTHY SUNDAY', 2, '90F5AF8CF7295780480', 33, 'M', 'Widow/displaced', 'nil', 'MUSHERE CENTRAL', 'CHINGOK', 9.145070000, 9.112670000),
(311, 100, 'SHEN STEPHEN ABEDNEGO', 2, '90F5AF8CF7295206636', 43, 'M', 'Displaced', '8068428733', 'MUSHERE CENTRAL', 'DUWAR', 9.139550000, 9.114020000),
(312, 100, ' JWAKSON JERRY ', 2, '90F5AF8CF7295781783', 52, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.143570000, 9.119560000),
(313, 100, 'JAPHNIEL TARFATU', 2, '9OF5AF8CF7296297430', 42, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.137830000, 9.125180000),
(314, 100, 'WANGDE HABAKUK', 2, '90F5AF8CF7296208595', 82, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.145430000, 9.116430000),
(315, 100, 'MAXWEL LIDIA', 2, '90F5AF8CF7296205962', 44, 'F', 'Widow/displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.143310000, 9.119810000),
(316, 100, 'APEKAM FLORENCE SUNDAY', 2, '90F5AF8BF9416142485', 29, 'F', 'Displaced', '7068624081', 'MUSHERE CENTRAL', 'DUWAR', 9.138780000, 9.118980000),
(317, 100, 'JERRY  MERCY', 2, '90F5AF8CF7296903246', 62, 'F', 'Aged/displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.142940000, 9.120160000),
(318, 100, 'LIVITIKUS MONDAY', 2, '90F5AF8CF7296408326', 35, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DUWAR', 9.136660000, 9.124130000),
(319, 100, 'GIDELIAH NANMAH JWACKSON', 1, '88241815800', 35, 'M', 'Displaced', 'nil', '', 'DUWAR', 9.137230000, 9.117480000),
(320, 100, 'BSP REGINA', 2, '90F5AF8CF7296304027', 52, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.146720000, 9.113320000),
(321, 101, 'KWARSHIT THADDEUS FWATYI', 2, '90F5AF8CF7296477003', 62, 'M', 'Displaced', '', 'MUSHERE CENTRAL', 'SAI', 9.148120000, 9.101520000),
(322, 101, 'DANIEL PLACIDA AZONA', 2, '90F5B19A52296323009', 35, 'F', 'Displaced', '7038308238', 'MUSHERE CENTRAL', 'SAI', 9.148060000, 9.101920000),
(323, 101, ' MATHEW SARFATU', 2, '90F5AF8CF7296398080', 37, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.149150000, 9.102520000),
(324, 101, ' GOGOLSHAK A', 2, '90F5AF8CF7295685119', 44, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.137360000, 9.113770000),
(325, 101, 'KWARSHIT MAI ANGWA DANIEL ', 2, '90F5AF8CF7295620215', 67, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', '', 9.147550000, 9.102040000),
(326, 101, ' KWARSHIP DANLADI ', 2, '90F5AF8CF7295597536', 52, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.147670000, 9.102980000),
(327, 101, 'NGULUWA CONELIUS', 5, 'NIL', 55, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.135730000, 9.105930000),
(328, 101, 'MADU MATHEW', 2, '90F5AF8CF7296320121', 52, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.148590000, 9.102850000),
(329, 101, 'ALPHA GAMANIEL', 2, '90F5AF8CF7296753042', 36, 'M', 'Widow/displaced', 'nil', 'MUSHERE CENTRAL', 'SAI', 9.139270000, 9.114250000),
(330, 101, 'A', 3, 'PL655941224', 51, 'F', 'Displaced', 'nil', 'C.A.C KANGER', 'SAI', 9.136920000, 9.113180000),
(331, 102, 'DUWANSHUM KEFAS FILIBUS ', 2, '90F5AF856E2958888954', 50, 'M', 'Displaced', '818392660', 'MUSHERE CENTRAL', 'DASOKOT', 9.139940000, 9.122930000),
(332, 102, ' ISHAKU RAUTHA', 2, '90F5AF8CF7295709049', 45, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.141130000, 9.122690000),
(333, 102, 'THOMAS MARIAMU', 2, '90F5AF8CF7296752678', 87, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.144570000, 9.113720000),
(334, 102, 'APPOLOS ANGELINA', 2, '90F5AF8CF7295688696', 42, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.144560000, 9.113720000),
(335, 102, 'GEOFERY TIMOTHY FOMBAK', 2, 'INC22000000014718588', 38, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.144480000, 9.112710000),
(336, 102, 'THOMAS JOSIAH', 2, '90F5AF8CF7296210590', 57, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.144900000, 9.113460000),
(337, 102, 'BWARZED MAITHIAS IRMIYA ', 1, '17851858502', 40, 'M', 'Displaced', 'nil', 'C.A.C KANGER', 'DASOKOT', 9.139150000, 9.114430000),
(338, 102, 'DAIEL NAPHTALI', 2, '90F5AF8CF7295695103', 31, 'M', 'Displaced', 'nil', 'C.A.C KANGER', 'DASOKOT', 9.148980000, 999.999999999),
(339, 102, 'DUKANSHUM AFODIYA MAKBUKAR', 3, 'PL655956374', 69, 'F', 'Lame/displaced', 'nil', 'C.A.C KANGER', 'DASOKOT', 9.140050000, 9.123580000),
(340, 102, 'YOILA KROMDE', 2, 'INC22000000016714650', 70, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'DASOKOT', 9.140010000, 9.125760000),
(341, 103, 'FRANCIS APOLOS', 1, '92005255930', 56, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'ANYAM', 9.138960000, 9.119410000),
(342, 103, 'MICHAEL KAYIT HENRY', 1, '59140462297', 25, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'NANYAM', 9.139020000, 9.119200000),
(343, 103, 'TITUS CHARITY', 2, '90F5AF8CF7295885468', 45, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'NANYAM', 9.136040000, 9.105380000),
(344, 103, ' PHILIBUS MARKUS', 2, '90F5AF8CF7296399679', 42, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'NANYAM', 9.140120000, 9.122480000),
(345, 103, 'ELIZABETH MARKUS TSE', 2, '90F5AF8BF9416143931', 30, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'NANYAM', 9.143440000, 9.114640000),
(346, 103, 'HEZEKIAH NYAKAS IBRAMHIM', 2, '90F5B19678503472648', 34, 'M', 'Displaced', '8034947356', 'MUSHERE CENTRAL', 'NANYAM', 9.141390000, 9.113280000),
(347, 103, 'MUSA JAMES MUTNUKUS', 1, '65312609004', 48, 'M', 'Displaced ', '8067744308', 'RASHIK DADIN KOWA', 'NANYAM', 9.142180000, 9.114060000),
(348, 103, 'MOLSHAKAT CHISTRISTOPHER BARNABAS', 2, 'BA45A9C8F7531475232', 29, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'NANYAM', 9.138990000, 9.119620000),
(349, 103, 'BITRUS JOEL REMKYES', 2, '90F5AFAE649296135563', 30, 'M', 'Displaced', '7062763876', 'MUSHERE CENTRAL', 'NANYAM', 9.138640000, 9.119320000),
(350, 103, 'LILIAN LUKA', 2, '90F5AF8CF7295197981', 42, 'F', 'Displaced', '8163438748', 'MUSHERE CENTRAL', 'NANYAM', 9.138520000, 9.119140000),
(351, 104, 'RINGHUM NAOMI KUTSHAK', 2, '90F5AF9F19296145444', 39, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.135730000, 9.105930000),
(352, 104, ' JAPINIEL ROSE', 2, '90F5AF8CF7295689700', 47, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.135730000, 9.105930000),
(353, 104, ' ANDRAWUS BITRUS', 2, '90F5AF8CF7296401964', 44, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.135730000, 9.105930000),
(354, 104, 'PUPDIK SATI  JUSTINE', 2, '90F5AF8CF7295201482', 33, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.135730000, 9.105930000),
(355, 104, ' HABILA ESTHER LARABA', 2, '90F5AF8CF7295259805', 48, 'F', 'Displaced ', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.147180000, 9.115230000);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(356, 104, ' YUSUF KEZIAH', 2, '90F5AF8CF7296471693', 37, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.147180000, 9.115230000),
(357, 104, ' IBRAMHIM KEZIAH', 2, '90F5AF8CF7296315107', 72, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.138520000, 9.119140000),
(358, 104, 'SEREPMUT REMSHAH BIJIKIR', 3, 'PL158643854', 59, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.138520000, 9.119140000),
(359, 104, ' SULEMAN SINTIKI ARAPSHA', 2, '90F5AF8CF7296576451', 72, 'F', 'Displaced ', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.138520000, 9.119140000),
(360, 104, ' LEVI SIYONA ', 2, '90F5AF8CF7295706319', 67, 'F', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'FUNTINGS', 9.138520000, 9.119140000),
(361, 105, ' ILIYA DAAN', 1, '77039992681', 38, 'M', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.137830000, 9.125180000),
(362, 105, 'JULIANA EZEKIEL', 2, '90F5AF8CF7295285015', 45, ' ', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.137830000, 9.125180000),
(363, 105, 'RAHAB NGUFOM', 2, '90F5AF8B81295534803', 35, ' ', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.137830000, 9.125180000),
(364, 105, 'DICTU POLYCAP', 2, '90F5B113D2295543355', 47, ' ', 'Widow/displaced', 'nil', 'MUSHERE CENTRAL', '', 9.137830000, 9.125180000),
(365, 105, 'KYENMWAN MOLDOM', 1, '80481377733', 36, ' ', 'widow/displaced', '7065294491', 'MUSHERE CENTRAL', 'TANG', 9.137830000, 9.125180000),
(366, 105, 'EZRA SPENCER ASAWAN', 1, '36889415332', 22, ' ', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.137830000, 9.125180000),
(367, 105, 'AYUBA RAHILA', 2, '90F5AF8CF7296310435', 82, ' ', 'Aged/widow/displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.138640000, 9.119320000),
(368, 105, 'LUKA PATRICK SHELONG', 5, 'INCOMPLETE NIN', 30, ' ', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.138640000, 9.119320000),
(369, 105, ' NGUKOP EZRA NGUKOK', 2, '90F5B113O2295972777', 45, ' ', 'Displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.140050000, 9.123580000),
(370, 105, 'ZAPHANIAH KELEP OBADIAH', 2, '90F5AE6221295950809', 40, 'M', 'Blind/displaced', 'nil', 'MUSHERE CENTRAL', 'TANG', 9.140050000, 9.123580000),
(371, 106, 'MADUGU AYUBA', 1, '20478521165', 45, 'M', 'Displaced', '7080089001', 'LCC SER', 'SER', 9.391210000, 9.002670000),
(372, 106, 'JUSTINA MAKWAL', 2, ' 90f5af8533295875106', 34, 'F', 'Widow/displaced', '7085047778', 'LCC SER', 'SER', 9.389570000, 9.002410000),
(373, 106, 'DAVID MADOR', 2, ' 90F5AF8533295798821', 82, 'M', 'Widow/displaced', '7085149281', 'LCC SER', 'SER', 9.391750000, 9.006760000),
(374, 106, 'RUEBEN GAMBO', 2, ' 90F5AF8533296053620', 37, 'M', 'Displaced', '8087649792', 'CC RAFUT', 'SER', 9.369580000, 9.978980000),
(375, 106, 'DINATU BARNABAS NDER', 3, 'PL649119752', 54, 'F', 'Aged/widow/displaced', '9030499413', 'CC WUMAT', 'SER', 9.391060000, 9.000300000),
(376, 106, 'HANATU PETER', 2, '90f5af8533295809503', 40, 'F', 'Displaced', '7011602055', 'LCC SER', 'SER', 9.388510000, 9.003900000),
(377, 106, 'JOSEPH MALLO', 2, ' 90f5af8533295343734', 61, 'M', 'Widow/displaced', '8022855874', 'LCC SER', 'SER', 9.391690000, 9.005270000),
(378, 106, 'MANDENG EZEKIEL', 2, ' 90f5af8723296919440', 40, 'M', 'Displaced', '7018226929', 'LCC SER', 'SER', 9.391880000, 9.004970000),
(379, 106, 'RIFKATU AYUBA', 2, '90f5af8533296128142', 62, 'F', 'Aged/displaced', '9028838890', 'LCC SER', 'SER', 9.391370000, 9.006340000),
(380, 106, 'YOHANA WALLANGKO', 2, ' 90F5AF8533295973225', 72, 'M', 'Deaf/displaced', '8082782125', 'LCC SER', 'SER', 9.388859000, 9.005240000),
(381, 107, 'CHRISTOPHER AMOS MARIT', 1, '81819496211', 40, 'M', 'Widow/displaced', '7032101969', 'CAC FAKKOS', 'MABANG', 9.348130000, 8.980100000),
(382, 107, 'DAVID JOSEPH MUCHEN', 2, ' 90F5AE67E3296656559', 37, 'M', 'Widow/displaced', '7036424186', 'CAC FAKKOS', 'YAPOK', 9.342720000, 8.987760000),
(383, 107, 'ELIZABETH ISTIFANUS', 2, ' 90F5AE67E3295955269', 77, 'F', 'Displaced ', '8175995904', 'CAC FAKKOS', 'YAPOK', 9.338220000, 8.994810000),
(384, 107, 'PHILEMON SAMUEL MWARAP', 1, '46432901203', 32, 'M', 'Displaced ', '8130863619', 'CAC FAGING 1', 'YAPOK', 9.328250000, 8.991180000),
(385, 107, 'DANLADI DAUDA', 1, '24590220830', 42, 'M', 'Displaced ', '8032860528', 'CAC KORONG', 'KORONG', 9.322520000, 8.999810000),
(386, 107, 'MANGUT ISHAYA M', 2, ' 90F5AE67E3295884949', 31, 'M', 'Displaced ', '8180543428', 'CAC  TARANGOL', 'KORONG', 9.322500000, 9.001750000),
(387, 107, 'HOSEA S TUKWA', 2, ' 90F5B129A6416403041', 46, 'M', 'Widow/displaced', '7015547442', 'CAC KORONG', 'KORONG', 9.321970000, 8.990350000),
(388, 107, 'PATRICT BENJAMIN', 2, ' 90F5AE67E3296303537', 37, 'M', 'Widow/displaced', '8166280253', 'CAC TARANGOL', 'MABANG', 9.331430000, 8.981830000),
(389, 107, 'SARAH AMOS MAJU', 2, ' 90F5AE67e3295875308', 52, 'F', 'Widow/displaced', '7038647648', 'CAC MABANG', 'MABANG', 9.345518000, 8.982160000),
(390, 107, 'YAKUBU MAJU ILIYA', 5, 'NOT CLEAR', 42, 'M', 'Displaced ', '7038647648', 'CAC MABANG', 'MABANG', 9.328030000, 8.982140000),
(391, 108, 'MANGAI DAVID GIDEON', 2, ' 90F5AE67E3295795845', 35, 'M', 'Displaced', '7033026549', 'CAC FAGING 1', 'MANWO', 9.337610000, 8.995670000),
(392, 108, 'JULIA CALEB DANJUMA', 3, 'PL647488648', 49, 'F', 'Displaced', '8062967951', 'CAC FAGING 1', 'MANWO', 9.358260000, 9.003050000),
(393, 108, 'HANATU JAMES ', 2, ' 90F5AE67E3296393073', 53, 'F', 'Displaced ', '901287544', 'CAC FAGING 1', 'MANWO', 9.343160000, 9.000530000),
(394, 108, 'AMINA SALEH ', 2, '90F5AFED26510578468', 23, 'F', 'Displaced', '9068757558', 'C/O CAC FAGING 1', 'MANWO', 9.322552000, 9.001650000),
(395, 108, 'AARON HASSANA A', 1, '96708836758', 33, 'F', 'Widow', '7038165557', 'CAC FAGING 1', 'YAPOK', 9.347600000, 8.991040000),
(396, 108, 'FLORENCE PHILIP', 2, '90F5AE67E3296571516', 53, 'F', 'Displaced ', '9021766465', 'CAC FAGING 1', 'MANWO', 9.343300000, 9.000830000),
(397, 108, 'OBADIA DANIEL', 5, 'LAST 3 DIGITS NOT CLEAR', 49, 'M', 'Deaf', '9099602822', 'CAC FAGING 1', 'YAPOK', 9.334320000, 8.994360000),
(398, 108, 'FLORENCE DANIEL', 2, ' 90F5AE67E3295883195', 35, 'F', 'Displaced', '9083089371', 'CAC FAGING 1', 'MANWO', 9.334530000, 8.994280000),
(399, 108, 'PHOEBE LAKUR', 1, '40118237791', 35, 'F', 'Displaced ', '8060865410', 'CAC FAGING 1', 'MANWO', 9.346860000, 8.996930000),
(400, 108, 'SAMUEL YAKUDA MADOR', 1, '52622712012', 65, 'M', 'Displaced', '7046712669', 'CAC FAGING 1', 'YAPOK', 9.334430000, 8.994180000),
(401, 109, 'MESHAK ZACHARIA MAFULUL', 1, '25876654034', 35, 'M', 'Displaced', '8168630235', 'CAC FAKKOS', 'FAKKOS', 9.315740000, 8.990700000),
(402, 109, 'YOHANA SAMUEL POLONG', 1, '14475616391', 45, 'M', 'nil', '7062316213', 'CAC TARANGOL', 'MABANG', 9.325360000, 8.981460000),
(403, 109, 'CELINA BITRUS MATAWAL', 2, ' FA5B3EC27C533673806', 34, 'F', 'nil', 'NIL', 'CAC MABANG', 'MABANG', 9.334880000, 8.983240000),
(404, 109, 'KAZUL JULIANA KWATMEN', 1, '17396510719', 39, 'F', 'nil', '7061025512', 'CAC FAGING 1', 'YAPOK', 9.333830000, 8.993640000),
(405, 109, 'JUMAI SAMSON', 2, ' 90F5AE67E3295699138', 41, 'F', 'Displaced', '8104006001', 'CAC KORONG', 'KORONG', 9.322130000, 8.997350000),
(406, 109, 'BRISKILA IRMIYA AGANDU', 1, '90500700569', 42, 'F', 'nil', '7062539155', 'CAC FAKKOS', 'YAPOK', 9.333660000, 8.992600000),
(407, 109, 'JULIA ILIYA', 2, ' 90F5AE67E3296559896', 67, 'F', 'nil', '7034779371', 'CAC MABANG', 'MABANG', 9.332680000, 8.982320000),
(408, 109, 'MOMI FRANCIS', 2, ' FA5B3EC27C533588337', 25, 'F', 'nil', '8121133442', 'CAC TARANGOL', 'KORONG', 9.337820000, 8.995760000),
(409, 109, 'SARATU GIDEON', 1, '99646524367', 35, 'F', 'nil', '7048977541', 'CAC FAGING 1', 'MANWO', 9.337820000, 8.995760000),
(410, 109, 'FELICIA ZACHARIA', 1, '14409817836', 38, 'M', 'nil', '8027491488', 'CAC FAGING 1', 'YAPOK', 9.333320000, 899.000000000),
(411, 110, 'JAMES HARUNA', 2, ' 90F5AF8533295781698', 40, 'M', 'Widow/displaced', '8088149134', 'CC WUMAT', 'WUMAT', 9.388690000, 8.995140000),
(412, 110, 'REJOICE MARWA', 2, ' 90F5AF8B81295877085', 38, 'F', 'Widow/displaced', '7045153150', 'CAC WUMAT WEST', 'WUMAT WEST', 9.369350000, 8.980040000),
(413, 110, 'CELINA JOSHUA', 1, '53853900844', 54, 'F', 'Aged/displaced', '8022290067', 'CC WUMAT', 'WUMAT', 9.368700000, 8.995220000),
(414, 110, 'CECILIA SAMUEL MABUR', 1, '51725196783', 47, 'F', 'nil', '8036156770', 'CAC CHIKAM', 'WUMAT WEST', 9.369230000, 8.978650000),
(415, 110, 'JONAH MAHUEL', 1, '42237272837', 61, 'M', 'Widow/displaced', '8029988115', 'CC WUMAT', 'WUMAT', 9.391390000, 9.000290000),
(416, 110, 'GAD BARNABAS N', 1, '27205615424', 35, 'M', 'Widow/displaced', '8133308993', 'CC WUMAT', 'WUMAT', 9.388700000, 8.995170000),
(417, 110, 'BULUS BALBU', 2, ' 90F5AE651D494413436', 44, 'M', 'Widow/displaced', '8031153739', 'CAC WUMAT WEST', 'WUMAT WEST', 9.368960000, 8.978870000),
(418, 110, 'MASHAT SAMSON', 2, '90F5AF8533295882100', 30, 'M', 'nil', '7085999438', 'LCC SER', 'SER', 9.388760000, 8.995420000),
(419, 110, 'MARTINS NGUFER', 1, '54871738749', 42, 'M', 'Widow/displaced', '7036942991', 'CAC WUMAT WEST', 'WUMAT WEST', 9.365100000, 8.980300000),
(420, 110, 'SAMUEL FOM', 2, ' 90F5AF8533295631825', 77, 'M', 'Widow/displaced', '7016523700', 'CAC WUMAT WEST', 'WUMAT WEST', 9.369960000, 8.983400000),
(421, 111, 'JOSEPH DAVID', 2, ' 90F5AE67E3295965011', 49, 'M', 'Widow', '8083440713', 'CAC FAGING 1', 'MANWO', 9.358220000, 9.002940000),
(422, 111, 'GRACE JONAH', 1, '52195059128', 32, 'F', 'nil', '8021049624', 'CAC FAGING 1', 'MANWO', 9.340080000, 8.999100000),
(423, 111, 'MARY JESSE', 2, ' 90F5AE87E3295880744', 35, 'F', 'Widow', '7038416343', 'CAC FAGING 1', 'YAPOK', 9.339280000, 8.995240000),
(424, 111, 'ISHAKU MAREN ISA''AC', 2, ' 90F5AE67E3296469620', 56, 'M', 'nil', 'nil', 'CAC FAGING 1', 'MANWO', 9.340110000, 8.999220000),
(425, 111, 'JONAH MAMOT', 2, ' 90F3AE69E3295287847', 78, 'M', 'nil', '8066166826', 'CAC FAGING 1', 'YAPOK', 9.334490000, 8.993640000),
(426, 111, 'LAITU SAMUEL', 2, ' 90F5AE67E3295626055', 62, 'F', 'Widow/Partial Paraly', '7066571706', 'CAC FAGING 1', 'YAPOK', 9.337660000, 8.994460000),
(427, 111, 'MANGAL DORCAS BENJAMIN', 1, '45811054814', 42, 'F', 'nil', '7038917635', 'CAC FAGING 1', 'YAPOK', 9.334460000, 8.994610000),
(428, 111, 'MATIRDA GEOFREY ILIYA', 2, ' INC22000000016678848', 38, 'F', 'Lame/displaced', '7031228735', 'CAC FAGING1', '', 9.329570000, 8.999030000),
(429, 111, 'AFINIKI YOHANA LUKA', 2, ' 90F5AF2237296640988', 37, 'F', 'nil', '7033691015', 'CAC FOROF II', 'YAPOK', 9.333190000, 8.993370000),
(430, 111, 'YAKUBU MASOK', 2, ' 90F5AE67E3296560797', 52, 'M', 'nil', '7034484784', 'CAC FAGING 2', 'FAGING 11', 9.324200000, 8.993240000),
(431, 112, 'BENJAMIN WANG JONAH MAMOT', 1, '16797070202', 32, 'M', 'Widow', '9039172877', 'CAC FAGING 1', 'YAPOK', 9.313110000, 8.986590000),
(432, 112, 'BITRUS MABUR', 5, 'NIL', 35, 'M', 'nil', '8133248410', 'CAC WUMAT WEST', 'FAKKOS', 9.312060000, 8.986870000),
(433, 112, 'DANIEL JOSEPH MANGUT', 1, '22115168423', 33, 'M', 'nil', '8155781193', 'CAC KORONG', 'KORONG', 9.312060000, 8.986870000),
(434, 112, 'PHILEMON KAMO ILIYA', 2, '90F5AE67E3296570925', 34, 'M', 'nil', '9131631486', 'CAC MABEL', 'MABANG', 9.312640000, 8.986250000),
(435, 112, 'ZAPHANIAH MUSA SHINGIL', 2, ' 90F5AE67E3295882398', 34, 'M', 'Aged', '7019589908', 'CAC FAGING 1', 'MANWO', 9.312640000, 8.986250000),
(436, 112, 'MALLO MONDAY', 2, ' 90F580918B506588717', 23, 'M', 'nil', '9023937028', 'LCC SER', 'WUMAT', 9.312640000, 8.986250000),
(437, 112, 'AYUBA YAKUBU', 1, '18537542434', 27, 'M', 'nil', '7017643117', 'LCC SER', 'SER', 9.312640000, 8.986250000),
(438, 112, 'EMMANUEL ISHAKU BISHLA', 2, 'FA5B3EC27C532458245', 25, 'M', 'nil', 'NIL', 'CAC FAGING 1', 'YAPOK', 9.312640000, 8.986250000),
(439, 112, 'YOHANA AMALLAM KABUM', 1, '93929879422', 29, 'M', 'nil', '8173572982', 'CAC WUMAT WEST', 'WUMAT WEST', 9.312640000, 8.986250000),
(440, 112, 'ABEDNAGO EMMANUEL  LUYASH', 1, '70731112872', 27, 'M', 'nil', '7039347534', 'CAC WUMAT WEST', 'WUMAT WEST', 9.312640000, 8.986250000),
(441, 31, 'Emmanuel Yakubu Izang', 1, '74355691792', 28, 'M', 'Youth', '7067760919', 'LEA primary school Zangam', 'Fadan Dabo', 9.969560000, 9.110390000),
(442, 31, 'Ajiji Danjuma Maman', 2, 'E6BA34BEB0416303900', 32, 'M', 'Youth', '8024953671', 'Lamingel kabo', 'Fadan Dabo', 9.978770000, 9.114950000),
(443, 31, 'Talatu Ibrahim', 2, '90F5AF67B2265871256', 40, 'F', 'COVID 19', '7055005996', 'Fadan Dabo', 'Fadan Dabo', 9.978900000, 9.115740000),
(444, 31, 'Victoria Itse Mamman', 2, '90F5AE6E37296058668', 48, 'F', 'COVID 19', '7032587876', 'Fadan Dabo', 'Fadan Dabo', 9.985010000, 9.114260000),
(445, 31, 'Lam iAdoh Tela', 2, '90F5AEDB83295873417', 52, 'F', 'COVID 19', '9037365011', 'Saradang', 'Fadan Dabo', 9.981880000, 9.107630000),
(446, 31, 'Mary Daud Azi', 1, '39875051392', 45, 'F', 'COVID 19', '8135467844', 'Close to Secreteriat Angware', 'Fadan Dabo', 9.982800000, 9.107160000),
(447, 31, 'Ladi Itse Dauda', 2, '2354FFAA0C295942503', 45, 'F', 'COVID 19', '7041711277', 'Angware, Jos East', 'Fadan Dabo', 9.972970000, 9.114280000),
(448, 31, 'Monicah Sambo Atako', 1, '77433342525', 38, 'F', 'Youth', '7018318352', 'Behind LGA angware', 'Fadan Dabo', 9.969200000, 9.110740000),
(449, 31, 'Mary Ibrahim', 2, '2354FFAA0C295948908', 36, 'F', 'Youth', '8168158532', 'Angware, Jos East', 'Fadan Dabo', 9.978810000, 9.114910000),
(450, 31, 'Mary Azi Akuben', 1, '78206793928', 40, 'F', 'Youth', '9123887462', 'Close to COCIN Church Angware', 'Fadan Dabo', 9.972970000, 9.107310000),
(451, 32, 'Abubakar Agada Sambo', 2, '90F5AF67B2295256844', 54, 'M', 'COVID 19', '8033942670', 'Zangam', 'Zangam', 9.970460000, 9.107970000),
(452, 32, 'Rueben Nehemiah Kamata', 2, '90F5AF67B2295871258', 45, 'M', 'Youth', '8030854932', 'Zangam', 'Zangam', 9.992240000, 9.986800000),
(453, 32, 'Azi Abubakar Yakubu', 1, '16778207377', 48, 'M', 'COVID 19', '8068933600', 'Behind GLO Maxt Angware', 'Zangam', 9.988340000, 9.109740000),
(454, 32, 'Asabe Azi  Izang', 1, '22754665992', 33, 'F', 'COVID 19', '9067366574', 'zangam', 'Zangam', 9.983010000, 9.110890000),
(455, 32, 'Mercy Danjuma Benedict', 1, '38544305430', 35, 'F', 'Youth', '8106405635', 'Close to Angware Market', 'Zangam', 9.984140000, 9.109960000),
(456, 32, 'Helen Itse Afe', 2, '90F5AE85C4295605639', 36, 'F', 'Youth', '9038394970', 'Lange Lange', 'Lange Lange', 9.983700000, 9.109220000),
(457, 32, 'Happy Izang Luke', 1, '22238555787', 28, 'F', 'Youth', '7042742302', 'Near UFTC School Angware', 'Zangam', 9.984200000, 9.109210000),
(458, 32, 'Victoria Dauda Ado', 2, '90F5AE4A4D507115600', 46, 'F', 'Youth', '8140396178', 'Saradang', 'Saradang', 9.987700000, 9.109370000),
(459, 32, 'Lydia Itse', 2, '2354FFAA0D295948904', 35, 'F', 'Youth', '', 'Angware, Jos East', 'Zangam', 9.981060000, 9.110100000),
(460, 32, 'Makeri Yakubu Izang', 1, '29048407273', 28, 'M', 'Youth', '8140299594', 'Opp. Pri. Sch. Angware', 'Angware', 9.982600000, 9.109310000),
(461, 33, 'Patricia yohanna Nyam', 2, '90F5B2123E295346310', 48, 'F', 'COVID 19', '8032694267', 'Gada village', 'Gada village', 10.032740000, 9.114750000),
(462, 33, 'Rahamatu Umaru Adamu', 2, '90F5B2123E295603193', 74, 'F', 'Aged', '9037667881', 'Gada village', 'Gada village', 10.041130000, 9.113660000),
(463, 33, 'Deborah Jeol Bako', 2, '90F5B200D3416306498', 34, 'F', 'COVID 19', '9066284008', 'Duguza', 'Angware', 9.991280000, 9.107550000),
(464, 33, 'Lami Musa', 1, '14791054072', 39, 'F', 'Youth', '7069271207', 'Close to LEA Primary School', 'Angware', 10.040240000, 9.111220000),
(465, 33, 'Tabitha Adamu', 2, '90F5AEB0D8295533097', 38, 'F', 'COVID 19', '8134603106', 'Firse, Gada village', 'Gada village', 10.045590000, 9.124630000),
(466, 33, 'Maryamu Joshua Dabo', 2, '90F5AF67B2295279359', 33, 'F', 'Youth', '9036177954', 'Zangam', 'Zangam', 10.031970000, 9.114880000),
(467, 33, 'Gabriel Azi', 1, '98509808975', 27, 'M', 'Youth', '9063871168', 'Close to COCIN Church Angware', 'Angware', 10.031790000, 9.122190000),
(468, 33, 'Azi Noma Musa', 2, '90F5B0662296135518', 47, 'M', 'Youth', '9037614806', 'Gada village', 'Gada village', 10.051142000, 9.126220000),
(469, 33, 'Izang Ezekiel ', 1, '79471445275', 26, 'M', 'Youth', '8023484505', 'Behind COCIN Church Gada', 'Gada village', 9.996830000, 9.117470000),
(470, 33, 'Abigail Usman Itse', 2, '90F5AF5DE6295619954', 50, 'F', 'COVID 19', '8064947324', 'Jali village', 'Angware', 10.038570000, 9.104760000),
(471, 34, 'Ezekiel Azi Sambo', 1, '18231708007', 37, 'M', 'Youth', '8032694267', 'Close to LEA Primary School', 'Angware', 10.009000000, 9.108550000),
(472, 34, 'Esther Richard', 1, 'Not readable', 23, 'F', 'Youth', '9037667881', 'Angware, Jos East', 'Angware', 9.991990000, 9.105570000),
(473, 34, 'Musa Daniel', 1, '5.30E+15', 30, 'M', 'Youth', '9066284008', 'Angware, Jos East', 'Angware', 9.987320000, 9.111070000),
(474, 34, 'HannatuA ppollos', 1, '54206343373', 28, 'F', 'Youth', '7069271207', 'Angware, Jos East', 'Angware', 9.997980000, 9.112280000),
(475, 34, 'Victoria Agwom Manman', 1, '13306807888', 56, 'F', 'COVID 19', '8134603106', 'Close to police station angware', 'Angware', 9.988400000, 9.107240000),
(476, 34, 'Pate Agwom Sambo', 2, '90F5AE4A4D507626849', 23, 'M', 'Youth', '9036177954', 'Zangam, Angware', 'Zangam', 9.991990000, 9.105570000),
(477, 34, 'NoamiJohn Atang', 1, '77773518545', 27, 'F', 'Youth', '9063871168', 'Angware, Jos East', 'Angware', 9.997980000, 9.112280000),
(478, 34, 'Ezekiel Peter Nyam', 2, '90F5AF7A37295788579', 32, 'M', 'Youth', '9037614806', 'Shere kashidung', 'Kashidung', 9.995610000, 9.080700000),
(479, 34, 'LadiIzang', 5, 'nil', 26, 'F', 'Youth', '8023484505', 'Angware, Jos East', 'Angware', 9.999540000, 9.124180000),
(480, 34, 'Samuel Sambo Itse', 1, '40619969011', 41, 'M', 'COVID 19', '8064947324', 'Close to COCIN Church Angware', 'Angware', 9.990840000, 9.111730000),
(481, 35, 'Moses Nyam', 2, '90F5B080E4295617702', 53, 'M', 'COVID 19', '8027912120', 'Boda', 'Boda', 9.988000000, 9.107950000),
(482, 35, 'Yakubu Jonathan', 1, '5.30E+16', 21, 'M', 'Youth', '8167909199', 'Angware, Jos East', 'Angware', 9.990690000, 9.109860000),
(483, 35, 'Mary Azi Maji', 1, '75029981102', 27, 'F', 'Youth', '8164542791', 'Beside ECWA Church Angware', 'Angware', 9.988000000, 9.107950000),
(484, 35, 'Mary  Adar Maisamari', 2, '90F5AEFABF416128513', 46, 'F', 'Youth', '8067822887', 'Fezumung', 'Angware', 10.000920000, 9.108570000),
(485, 35, 'Victoria Ezekiel Sambo', 2, '90F5AE85C4295356046', 33, 'F', 'Youth', '8064941553', 'Angware, Jos East', 'Angware', 10.000920000, 9.108570000),
(486, 35, 'Izang Danladi Yakubu', 2, '2354FFAA0C296037932', 33, 'M', 'Youth', '9036196989', 'Angware, Jos East', 'Angware', 9.992300000, 9.108520000),
(487, 35, 'Janet Yakubu', 1, '80558629802', 25, 'F', 'Youth', '7041060023', 'Opp. Police station Angware', 'Angware', 9.985850000, 9.106110000),
(488, 35, 'Mary Victor Adamu', 2, '90F5AEB0D8295864097', 52, 'F', 'COVID 19', '9034626358', 'Firse, Gada village', 'Gada village', 9.988510000, 9.108010000),
(489, 35, 'Martha Agwom', 2, '90F5AF7A37296221371', 31, 'F', 'Youth', '7061109927', 'Shere kashidung', 'Kashidung', 9.985870000, 9.106190000),
(490, 35, 'IliyaYakubu', 2, '90F5B2123E295436112', 30, 'M', 'Youth', '8167155559', 'Gada village', 'Gada village', 10.039030000, 9.109190000),
(491, 36, 'Asten Atu', 1, '10495986017', 30, 'M', 'Youth', '8032694267', 'Opp. PHC clinic, Angware', 'Angware', 9.990040000, 9.109900000),
(492, 36, 'Asabe Azi Arum', 2, '90F5AF67B2295614888', 38, 'F', 'Youth', '9037667881', 'Zangam village', 'Zangam', 9.988840000, 9.112540000),
(493, 36, 'Ruth Bulus Izang', 2, '90F5AFA160295190072', 33, 'F', 'Youth', '9066284008', 'Afozi', 'Angware', 9.988000000, 9.107950000),
(494, 36, 'Bitrus Adamu', 2, '90F5AE6E37296820680', 30, 'M', 'Youth', '7069271207', 'Angware, Jos East', 'Angware', 9.988010000, 9.102050000),
(495, 36, 'Abdon Magaji', 1, '13253523692', 48, 'M', 'COVID 19', '8134603106', 'Close to Secreteriat Angware', 'Angware', 9.992360000, 9.105390000),
(496, 36, 'Luka Azi', 1, '24711923310', 42, 'M', 'COVID 19', '9036177954', 'Opp  Senior staff quarters, Angware', 'Angware', 9.876800000, 9.107490000),
(497, 36, 'Sarah S. Izang', 2, 'E6BA035676293596987', 35, 'F', 'COVID 19', '9063871168', 'Angware, Jos East', 'Angware', 9.991500000, 9.107040000),
(498, 36, 'Rifkatu Azi Samuel', 2, '90f5af67b2295539352', 34, 'F', 'Youth', '9037614806', 'Zangam village', 'Zangam', 9.988160000, 9.102260000),
(499, 36, 'Ruth Yakubu', 2, '90F5AE6755295432453', 37, 'F', 'COVID 19', '8023484505', 'Angware, Jos East', 'Angware', 9.991400000, 9.105390000),
(500, 36, 'Lydia Agwom Izang', 2, '90F5AF67B2295525950', 39, 'F', 'COVID 19', '8064947324', 'Zangam village', 'Zangam', 9.988980000, 9.106540000),
(501, 37, 'Sambo Toma Dabo', 2, '90F5B1FC6A415964763', 32, 'M', 'Youth', '8069718503', 'Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(502, 37, 'HannatuYakubu', 2, '90F5AF67B2296652357', 27, 'F', 'Youth', '8127896298', 'Angware, Jos East', 'Angware', 9.978270000, 9.108050000),
(503, 37, 'Damaris Markus', 1, '71031447503', 36, 'F', 'COVID 19', '7039479273', 'Near LEA pri. Sch. Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(504, 37, 'Mary Danjuma', 2, '90F5AE6E37295349808', 34, 'F', 'Youth', '7031175879', 'Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(505, 37, 'Jummai Dabo', 2, '90F5AE6E37295535418', 32, 'F', 'Youth', '8108713235', 'Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(506, 37, 'Hannatu Dauda Hamidu', 2, '90F5B10E65295547452', 30, 'F', 'Youth', '7014387057', 'Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(507, 37, 'Esther Izang', 2, '90F5B032DA295441977', 40, 'F', 'COVID 19', '8127222896', 'Fadan Dabo', 'Angware', 9.978270000, 9.108050000),
(508, 37, 'Talatu Itse Daniel', 2, '90F5AE6E37296143909', 30, 'F', 'Youth', '8105907030', 'Firse, Gada village', 'Gada village', 9.978270000, 9.108050000),
(509, 37, 'Esther Itse', 2, '90F5AE6E37295801763', 42, 'F', 'Youth', '8038917344', 'Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(510, 37, 'Esther Azi', 1, '35472918284', 22, 'F', 'Youth', '7046822026', 'Beside ECWA Church Fadan Dabo', 'Fadan Dabo', 9.978270000, 9.108050000),
(511, 38, 'Lois Joshua Agwom', 1, '88127676671', 40, 'F', 'COVID 19', '9039161002', 'Opposite ECWA Church Angware', 'Angware', 9.993040000, 9.109550000),
(512, 38, 'Samuel G Izam', 1, '48619969071', 21, 'F', 'Youth', '7032596609', 'Angware, Jos East', 'Angware', 9.993040000, 9.109550000),
(513, 38, 'Lydia Azi Arum', 1, '37462891271', 34, 'F', 'Youth', '7036545745', 'Opp. Model Pri. Sch. Angware', 'Angware', 9.993040000, 9.109550000),
(514, 38, 'Christiana Ezekiel', 2, '90F5AF667E295364409', 39, 'F', 'COVID 19', '8133729037', 'Doss', 'Angware', 9.993040000, 9.109550000),
(515, 38, 'Ladi Atang', 1, '49815613604', 29, 'F', 'Youth', '8139508956', 'Opposite policie station Angware', 'Angware', 9.993040000, 9.109550000),
(516, 38, 'Rose Dauda Azi', 1, '58901068531', 22, 'F', 'Youth', '8084519001', 'Opposite policie station Angware', 'Angware', 9.993040000, 9.109550000),
(517, 38, 'Rita Augustine', 1, '49812498608', 37, 'F', 'Youth', '9034110702', 'Opposite policie station Angware', 'Angware', 9.993040000, 9.109550000),
(518, 38, 'Jessica J  Atong', 1, '98217301894', 25, 'F', 'Youth', '8108293301', 'Angware, Jos East', 'Angware', 9.993040000, 9.109550000),
(519, 38, 'Joseph Daniel Kaze', 1, '63262361264', 32, 'M', 'Youth', '8168068753', 'C/O ECWA Church Shere', 'Angware', 9.993040000, 9.109550000),
(520, 38, 'Daniel Sambo', 1, '48332400201', 38, 'M', 'Youth', '8148062352', 'Opposite ECWA Church Angware', 'Angware', 9.993040000, 9.109550000),
(521, 39, 'Solomon Azi', 2, '90F5AEFB7D3295278110', 78, 'M', 'Aged', '8120882088', 'New Fobur', 'Fobur ekan', 9.858611200, 9.017554900),
(522, 39, 'Acclaim Rangdat', 2, '90F5AEFB73295701408', 34, 'F', 'Youth', '8067701528', 'New Fobur', 'Fobur ekan', 9.858610300, 9.019281700),
(523, 39, 'Awari Madaki', 2, '90F5AEF7D3296569028', 48, 'M', 'COVID 19', '8083976865', 'New Fobur', 'Fobur ekan', 9.858611200, 9.017554900),
(524, 39, 'Hannatu Bitrus', 1, '48837610301', 68, 'M', 'Aged', '9023256935', 'Close toLEA Primary School Fobur', 'Fobur ekan', 9.858611200, 9.017554900),
(525, 39, 'Hauwa Azi Usman', 2, '90F5AEF7D3295036540', 41, 'M', 'COVID 19', '8121357581', 'New Fobur', 'new fobur', 9.621870300, 8.891597900),
(526, 39, 'Akare Ajang', 2, '90F5AEF7D3295441196', 44, 'F', 'COVID 19', '7017918311', 'New Fobur', 'new fobur', 9.637266600, 8.889500200),
(527, 39, 'Afiniki Dauda', 2, '90211301034', 40, 'F', 'COVID 19', '7082739729', 'New Fobur', 'new fobur', 9.804036300, 8.927466500),
(528, 39, 'Abigail Vincent Azi', 2, '90F5AEF7D3295455169', 34, 'F', 'Youth', '7036150657', 'New Fobur', 'new fobur', 9.621870300, 8.891597900),
(529, 39, 'Ajiji Ajang', 1, '57708643763', 0, 'M', 'COVID 19', '7012489619', 'Fobur Ekan', 'Fobur ekan', 9.621872800, 8.891595900),
(530, 39, 'Nuhu John Adang', 1, '19575377403', 54, 'M', 'COVID 19', '8078651934', 'Behind Police Station, New Fobur', 'Nukyes', 9.856566900, 9.016518800),
(531, 40, 'Hamidu Agwom', 1, '31198975026', 49, 'M', 'COVID 19', '7058239201', 'Rafin sanyi naton', 'Rafin sanyi', 9.623883700, 8.893666800),
(532, 40, 'Izam Lois', 1, '35470837454', 20, 'F', 'Youth', '7010077847', 'Rafin sanyi naton', 'Rafin sanyi', 9.862092400, 9.016518800),
(533, 40, 'Hannatu Adusu', 2, '90F5AFA01E295466861', 35, 'F', 'COVID 19', '8153480683', 'Naton Afeza', 'Rafin sanyi', 9.862092400, 9.016518800),
(534, 40, 'Rukaya Ayong', 1, '16073045588', 33, 'F', 'Youth', '8021076342', 'Rafin sanyi naton', 'Rafin sanyi', 9.634325200, 8.889529100),
(535, 40, 'Izam Adusuk ', 1, '44185989439', 39, 'M', 'COVID 19', '8053463526', 'Rafin sanyi naton', 'Rafin sanyi', 9.621870300, 8.891597900),
(536, 40, 'Khadija Agwom', 5, 'none', 18, 'F', 'Youth', '9055289876', 'Rafin sanyi naton', 'Rafin sanyi', 9.637266600, 8.889500200),
(537, 40, 'Hajara John', 2, '90F5B12D54416265608', 44, 'F', 'Youth', '8138897797', 'Rafin sanyi naton', 'Rafin sanyi', 9.804036300, 8.927466500),
(538, 40, 'Amos Adusuk Izam', 1, '10374479569', 19, 'M', 'Youth', '7039001346', 'Rafin sanyi naton', 'Rafin sanyi', 9.621870300, 8.891597900),
(539, 40, 'Ruth Rukaya Ezikiel', 2, '90F5AE8A92295433496', 30, 'F', 'Youth', '80382469119', 'Rafin sanyi naton', 'Rafin sanyi', 9.862093400, 9.016517500),
(540, 40, 'John Izam', 1, '29112670830', 34, 'M', 'Youth', '7039615764', 'Rafin sanyi naton', 'Rafin sanyi', 9.862091400, 9.016518200),
(541, 41, 'Samuel Aware  Izang', 2, '90F5AF4806416035617', 69, 'M', 'Aged', '8036274383', 'COCIN Church Zarazon village', 'Laminga', 9.839279900, 8.926431600),
(542, 41, 'Yakubu Bulus Nyam', 2, '90F5AD375E295362648', 45, 'M', 'COVID 19', '7066574935', 'Laminga', 'Laminga', 9.839279900, 8.926431600),
(543, 41, 'Benjamin Itse Kaze', 2, '90F5B13C75295266548', 66, 'M', 'COVID 19', '7036477597', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(544, 41, 'Adar Atsi Ajik', 1, '46123553882', 41, 'F', 'COVID 19', '8164450231', 'Near COCIN Church Zarazon', 'Laminga', 9.839279900, 8.926431600),
(545, 41, 'Gideon Yakubu Izang', 2, '90F5B032DA295451390', 27, 'M', 'Youth', '9084777469', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(546, 41, 'Francis Samuel Izang', 2, '90F5B032DA295437518', 27, 'M', 'Youth', '9138287532', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(547, 41, 'Blessing Izang Retek', 2, '90F5B032DA295632096', 31, 'F', 'Youth', '8131094747', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(548, 41, 'Daniel Christiana Ayong', 2, '90F5B032DA295441011', 26, 'F', 'Youth', '8100879745', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(549, 41, 'Grace Ajik Samuel', 2, '90F5B032DA295362518', 27, 'F', 'Youth', '9038558635', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(550, 41, 'Mary Yakubu', 2, '90300301038', 26, 'F', 'Youth', '9098236247', 'Zarazon', 'Laminga', 9.839279900, 8.926431600),
(551, 42, 'Ajik Linda Iliya', 1, '40382658667', 34, 'F', 'Youth', '9030240540', 'Opp. Nat.Centre for remote cencing', 'kerker', 9.856819800, 9.019972400),
(552, 42, 'Iliya Ajang Azi', 2, '90F5AE8AC7295878316', 50, 'M', 'COVID 19', '8061218721', 'Kerker', 'kerker', 9.872610900, 9.010647900),
(553, 42, 'Aware Izang', 2, '90F5AE48123AB035617', 61, 'M', 'Aged', '703798254', 'Kerker', 'kerker', 9.858611200, 9.017554900),
(554, 42, 'Christiana Sunday Ajik', 2, '90F5B097A7521039273', 38, 'F', 'COVID 19', '7049294295', 'Kerker', 'kerker', 9.858611200, 9.017554900),
(555, 42, 'Musa Adang', 1, '21513996141', 30, 'M', 'Youth', '7031944429', 'Kerker', 'kerker', 9.858546500, 9.019972400),
(556, 42, 'Ruth Yohanna Igbara', 1, '70985622584', 62, 'F', 'Aged', '8060916822', 'Kerker', 'kerker', 9.858546500, 9.019972400),
(557, 42, 'Mary Kaze', 2, '90f5ae4808416179142', 61, 'F', 'Aged', '', 'Kerker', 'kerker', 9.856819800, 9.019972400),
(558, 42, 'Abok Ishaya', 2, '90F5AF1E18296219426', 40, 'M', 'COVID 19', '8083958158', 'RIZEK', 'kerker', 9.856819800, 9.019972400),
(559, 42, 'Emmanuel Kaze', 2, '90F5AE8AC7296S17297', 30, 'M', 'Youth', '9128262423', 'Kerker', 'kerker', 9.858910300, 9.019281700),
(560, 42, 'Emmanuel Izang Azi', 2, '90F5AE48D6416176480', 33, 'M', 'Youth', '9030240540', 'Kerker', 'kerker', 9.858546500, 9.019972400),
(561, 43, 'Rueben Atsen', 1, '59388968008', 36, 'M', '', '8035217447', 'By RCC Quarry company fobur', 'FURAKA VILLAGE', 9.856819800, 9.019972400),
(562, 43, 'yohana Victoria Akutse', 1, '44421593727', 32, 'F', '', '8062340378', 'By RCC Quarry company fobur', 'FURAKA VILLAGE', 9.872610900, 9.010647900),
(563, 43, 'Yohanna Markus', 1, '42203854862', 42, 'M', '', '8111660023', 'ECWA Church Fobur', 'FURAKA VILLAGE', 9.858611200, 9.017554900),
(564, 43, 'Jacob Ashom', 2, '90F5AEB0F0295918297', 32, 'M', '', '8060583749', 'New Fobur', 'FURAKA VILLAGE', 9.858611200, 9.017554900),
(565, 43, 'Mary Samuel', 2, '90F5AEF7D3295880232', 60, 'F', '', '8032820437', 'New Fobur', 'FURAKA VILLAGE', 9.858546500, 9.019972400),
(566, 43, 'Agwom Dennis', 1, '66067771428', 41, 'M', '', '7055364037', 'Adjacent ECWA Church fobur', 'FURAKA VILLAGE', 9.858546500, 9.019972400),
(567, 43, 'Atong Kaze', 2, '90F538C6295866808', 27, 'F', 'Youth', '9023616672', 'New Fobur', 'FURAKA VILLAGE', 9.856819800, 9.019972400),
(568, 43, 'Yohanna Kaze', 1, 'does not tally with name on CARP', 32, 'M', 'Youth', '8067626739', 'New Fobur', 'FURAKA VILLAGE', 9.856819800, 9.019972400),
(569, 43, 'Ado Tabitha Samuel Ishaya', 1, '45096417289', 41, 'F', '', '8084708347', 'Near Krosha furaka', 'FURAKA VILLAGE', 9.858910300, 9.019281700),
(570, 43, 'Mary Azi', 1, '5.30E+15', 36, 'F', '', '8134807493', 'Afozi', 'FURAKA VILLAGE', 9.858546500, 9.019972400),
(571, 44, 'Dauda Ashom', 2, '90F5AFA160295260426', 45, 'M', '', '7085138832', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(572, 44, 'Samuel Igyem', 1, '61365912939', 32, 'M', '', '8124337146', 'Close to LEA Primary School border', 'Afozi', 9.858546500, 9.019972400),
(573, 44, 'Bulus Ajang Nyam', 2, '90F5AFA160295603598', 43, 'M', '', '8085173134', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(574, 44, 'Moses Ajang', 2, '90F5AFA160295603598', 40, 'M', 'COVID 19', '8084711181', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(575, 44, 'Musa Ajiji', 2, '90F5AFA160295631288', 30, 'M', '', '', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(576, 44, 'Idoh Itse', 2, '90F5AE651D416047830', 40, 'M', '', '7084874832', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(577, 44, 'Arin Adar Jummai Atang', 2, '90F5AFA160295608677', 53, 'F', '', '823494936', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(578, 44, 'Janet Markus', 2, 'Not readable', 21, 'F', 'Youth', '', 'Afozi', 'Afozi', 9.858546500, 9.019972400),
(579, 44, 'Atang Azi', 2, '90F5AFA160295434272', 57, 'M', '', '8084098959', 'AFOZI', 'Afozi', 9.858546500, 9.019972400),
(580, 44, 'Musa Abus Esther  Nyam', 2, '90F5AF7A37295623954', 30, 'F', '', '812793869', 'Shere kashidung', 'Afozi', 9.858546500, 9.019972400),
(581, 45, 'Izang Atsi', 2, '90F5AFFAD4416230218', 40, 'M', '', '9022442328', 'NEW FOBUR', 'Fobur ekan', 9.858546500, 9.019972400),
(582, 45, 'Mohammed Fobur', 1, '52492539136', 66, 'M', '', '8055855338', 'Close to PHC Clinic Fadan Fobur', 'Fobur ekan', 9.858546500, 9.019972400),
(583, 45, 'Deborah Kaze Inah', 1, '54030008452', 31, 'F', '', '7084690630', 'FURAKA VILLAGE', 'Fobur ekan', 9.858546500, 9.019972400),
(584, 45, 'Azi Abok', 2, '90P5AE651D415684416', 45, 'M', 'COVID 19', '', 'NEW FOBUR', 'Fobur ekan', 9.858546500, 9.019972400),
(585, 45, 'Atako Izang', 2, '90F5AEFCB3295607838', 52, 'F', 'COVID 19', '7089700384', 'FOBUR EKAN', 'Fobur ekan', 9.858546500, 9.019972400),
(586, 45, 'Mary Ibrahim', 2, '90F5AEFCB3295793979', 34, 'F', '', '9013340950', 'FOBUR EKAN', 'Fobur ekan', 9.858546500, 9.019972400),
(587, 45, 'Anya Agwom', 1, '42645093420', 30, 'F', 'Youth', '', 'C/O COCIN CHURCH FOBUR', 'Fobur ekan', 9.858546500, 9.019972400),
(588, 45, 'Adar Abok', 2, '90F5AD63BF295276865', 62, 'F', '', '', 'FADAN FOBUR', 'Fobur ekan', 9.858546500, 9.019972400),
(589, 45, 'JummaiSambo', 5, 'NOT VISIBLE', 85, 'F', 'Aged', '8048008074', 'FOBUR EKAN', 'Fobur ekan', 9.858546500, 9.019972400),
(590, 45, 'NyamIgyem', 1, '40002202289', 30, 'M', 'Youth', '9039049644', 'NEW FOBUR', 'Fobur ekan', 9.858546500, 9.019972400),
(591, 61, 'Agwom Lucky Luka ', 2, '90F5 B10F 2E41 5909 475', 32, 'M', 'Unemployed ', '8063385862', 'ECWA Church Nabor ', 'Nabor', 8.923360000, 9.935760000),
(592, 61, 'Nuhu EmmanuelDagur', 2, '90F5 B09F F841 6271 339', 28, 'M', 'Unemployed ', '8068051530', 'ECWA Church Nabor ', 'Nabor', 8.923360000, 9.936320000),
(593, 61, 'Helen Shedrack', 2, '90F5 B09F F841 5981 162', 35, 'F', 'Unemployed ', '7067240034', 'ECWA Church Nabor ', 'Nabor', 8.392340000, 9.935630000),
(594, 61, 'Agada Sophia Laraba', 2, '90F5 B1A7 B829 5366 126', 35, 'F', 'Unemployed ', '7035536029', 'ECWA Church Nabor ', 'Nabor', 8.918410000, 9.937510000),
(595, 61, 'Umaru Dauda', 2, '90F5 B1A7 B829 6311 370', 37, 'M', 'Unemployed ', '8060869662', 'ECWA Church Nabor ', 'Nabor', 8.920100000, 9.936214000),
(596, 61, 'Deborah Amos ', 2, '90F5 B10F 2E41 6241 584', 29, 'F', 'Unemployed ', '8036724322', 'ECWA Church Nabor ', 'Nabor', 8.921840000, 9.934460000),
(597, 61, 'Blessing Gimba', 2, '90F5 B10F 2E41 6023 138', 36, 'F', 'Unemployed ', '9072964625', 'ECWA Church Nabor ', 'Nabor', 8.921840000, 9.934460000),
(598, 61, 'Ruth Jumba', 2, 'FA5B 3EC1 4D53 4252 663', 25, 'F', 'Unemployed ', '7030087984', 'ECWA Church Nabor ', 'Nabor', 8.922780000, 9.933530000),
(599, 61, 'Emmanuel Mathew ', 2, '90F5 B09F F841 6371 249', 32, 'M', 'Unemployed ', '7036057628', 'ECWA Church Nabor ', 'Nabor', 8.921550000, 9.936320000),
(600, 61, 'Plangnan Sunday ', 2, '90F5 B09F F841 5944 890', 42, 'F', 'Unemployed ', '8160005656', 'ECWA Church Nabor ', 'Nabor', 8.906100000, 9.928190000),
(601, 62, 'Samuel Monday', 2, '90F5 B10F 2E41 6125 967', 28, 'M', 'Unemployed ', '7036341952', 'ECWA Church Nabor ', 'Nabor', 8.922850000, 9.931960000),
(602, 62, 'Hannatu S. Tafiya', 2, '90F5 B10F 2E41 6037 501', 39, 'F', 'Unemployed ', '7068527133', 'ECWA Church Nabor ', 'Nabor', 8.921240000, 9.934270000),
(603, 62, 'HadizaBala', 2, '90F5 B10F 2E41 5817 132', 41, 'F', 'Unemployed ', '7061905656', 'ECWA Church Nabor ', 'Nabor', 8.922850000, 9.931960000),
(604, 62, 'Deborah Luka ', 2, '90F5 B09D C241 6151 690', 32, 'F', 'Unemployed ', '8037582136', 'ECWA Church Nabor ', 'Nabor', 8.924090000, 9.933370000),
(605, 62, 'Rahab James', 2, '71BC 3D8B 2453 1905 594', 22, 'F', 'Unemployed ', '9038225852', 'ECWA Church Nabor ', 'Nabor', 8.916190000, 9.935260000),
(606, 62, 'Sa''adatu Timothy', 2, '90F5 B185 C652 3959 575', 37, 'F', 'Unemployed ', '7038508505', 'ECWA Church Nabor ', 'Nabor', 8.921770000, 9.934380000),
(607, 62, 'Rose Emmanuel', 2, '90F5 B10F 2E41 5964 186', 40, 'F', 'Unemployed ', '9015625335', 'ECWA Church Nabor ', 'Nabor', 8.924090000, 9.933370000),
(608, 62, 'Sarah Danjuma', 2, '90F5 B09F F841 5848 621', 34, 'F', 'Unemployed ', '8069327464', 'ECWA Church Nabor ', 'Nabor', 8.922790000, 9.932070000),
(609, 62, 'Elizabeth Yarima Gwanle', 2, '90F5 B162 9929 6052 076', 38, 'F', 'Unemployed ', '8039708915', 'ECWA Church Nabor ', 'Nabor', 8.920690000, 9.936140000),
(610, 62, 'Amina Akuki Ematu', 2, 'E6BA 5232 5E51 6969 495', 36, 'F', 'Unemployed ', '8037241589', 'ECWA Church Nabor ', 'Nabor', 8.921550000, 9.936320000),
(611, 63, 'Mary Peter ', 1, '15454842623', 31, 'F', 'Unemployed ', '7031820797', 'ECWA Church Nabor ', 'Nabor', 8.914040000, 9.936280000),
(612, 63, 'Ameh Amina Adamu', 1, '74746093767', 29, 'F', 'Unemployed ', '7035639666', 'ECWA Church Nabor ', 'Nabor', 8.917740000, 9.933250000),
(613, 63, 'Helen Manka', 2, '90F5 B162 9929 6211 505', 45, 'F', 'Unemployed ', '8061286546', 'ECWA Church Nabor ', 'Nabor', 8.916060000, 9.938740000),
(614, 63, 'Happiness Aniedi', 2, '90F5 B1A7  B829 5367 122', 30, 'F', 'Unemployed ', '8160550766', 'ECWA Church Nabor ', 'Nabor', 8.914040000, 9.936280000),
(615, 63, 'Mary Yaubamson', 1, '51418464238', 64, 'F', 'Aged', '7035964804', 'ECWA Church Nabor ', 'Nabor', 8.927600000, 9.932930000),
(616, 63, 'Deborah Micah', 1, '55334802739', 45, 'F', 'Unemployed ', '7068521836', 'ECWA Church Nabor ', 'Nabor', 8.916120000, 9.936290000),
(617, 63, 'Peret Dasen Jordan', 2, '90F5 B208 B641 6319 725', 32, 'F', 'Unemployed ', '7067697918', 'ECWA Church Nabor ', 'Nabor', 8.911780000, 9.935880000),
(618, 63, 'ZeNret Silas ', 2, '90F5 AFD8 A353 0273 637', 36, 'F', 'Unemployed ', '7036015543', 'ECWA Church Nabor ', 'Nabor', 8.912640000, 9.935540000),
(619, 63, 'Rose Oliver ', 1, '70354801664', 47, 'F', 'Unemployed ', '7063672409', 'ECWA Church Nabor ', 'Nabor', 8.909020000, 9.934190000),
(620, 63, 'Banmu Friday ', 2, 'FA5B 3EC1 4D53 4169 060', 30, 'F', 'Unemployed ', '8024765843', 'ECWA Church Nabor ', 'Nabor', 8.923770000, 9.932500000),
(621, 64, 'Philip  Markus ', 2, '90F5 B10F 2E41 5965 939', 38, 'M', 'Unemployed ', '8083419113', 'ECWA Church Nabor ', 'Nabor', 8.918380000, 9.932010000),
(622, 64, 'Magdalene Danladi', 2, 'FA5B 3EC1 4D53 4169 486', 22, 'F', 'Unemployed ', '7013845770', 'ECWA Church Nabor ', 'Nabor', 8.921380000, 9.931500000),
(623, 64, 'Rhoda Zachariah ', 2, '90F5 B162 9929 5437 292', 53, 'F', 'Aged', '9033703240', 'ECWA Church Nabor ', 'Nabor', 8.918670000, 9.936830000),
(624, 64, 'Martha Nandi', 2, '90F5 B19D 3241 6146 188', 43, 'F', 'Unemployed ', '9072682074', 'ECWA Church Nabor ', 'Nabor', 8.924580000, 9.932370000),
(625, 64, 'AsabeDanladi', 2, '90F5 AE8B 5929 5867 556', 40, 'F', 'Unemployed ', '8106581669', 'ECWA Church Nabor ', 'Nabor', 8.917755000, 9.933200000),
(626, 64, 'Simi Bayo', 2, '90F5 B162 9929 5359 521', 42, 'F', 'Unemployed ', '7068241225', 'ECWA Church Nabor ', 'Nabor', 8.916750000, 9.935590000),
(627, 64, 'Grace Daniel ', 2, 'FA5B 3EC1 4D53 4260 607', 37, 'F', 'Unemployed ', '8100368324', 'ECWA Church Nabor ', 'Nabor', 8.917830000, 9.938660000),
(628, 64, 'Bridget Washep', 2, '90F5B210AF295959622', 37, 'F', 'Unemployed ', '8134753223', 'ECWA Church Nabor ', 'Nabor', 8.923310000, 9.930380000),
(629, 64, 'Mathew Gambo', 2, '90F5 B1A7 B829 5360 951', 38, 'M', 'Unemployed ', '8105700487', 'ECWA Church Nabor ', 'Nabor', 8.919730000, 9.937200000),
(630, 64, 'Samuel  Hannatu', 2, '90F5 B10F 2E41 5820 051', 42, 'F', 'Unemployed ', '8039324996', 'ECWA Church Nabor ', 'Nabor', 8.921160000, 9.936300000),
(631, 65, 'Naomi Fenban', 1, '374222404', 52, 'F', 'Widow', '8061307982', 'ECWA Church Nabor ', 'Nabor', 8.913520000, 93.940340000),
(632, 65, 'Mary Daniel ', 1, '85223520023', 42, 'F', 'Unemployed ', '8162278848', 'ECWA Church Nabor ', 'Nabor', 8.916130000, 9.936180000),
(633, 65, 'Esther Azachi', 1, '21134364523', 45, 'F', 'Unemployed ', '8037379945', 'ECWA Church Nabor ', 'Nabor', 8.921270000, 9.934270000),
(634, 65, 'Christiana Bulus', 2, '90F5 B10F 2B41 5951 755', 34, 'F', 'Unemployed ', '7032378013', 'ECWA Church Nabor ', 'Nabor', 8.923600000, 9.936580000),
(635, 65, 'Jummai Luka ', 2, '90F5 AF00 4329 6213 656', 67, 'F', 'Widow ', '7060980621', 'ECWA Church Nabor ', 'Nabor', 8.924640000, 9.932460000),
(636, 65, 'Blessing Mancha ', 2, '90F5 AF00 A451 6199 916', 44, 'F', 'Widow', '7085521625', 'ECWA Church Nabor ', 'Nabor', 8.918050000, 9.931170000),
(637, 65, 'Talatu Afon', 1, '74092254949', 54, 'F', 'Aged', '8030979532', 'ECWA Church Nabor ', 'Nabor', 8.926010000, 9.931740000),
(638, 65, 'Asabe John Daniel', 2, '90F5 B10F 2E41 5867 210', 49, 'F', 'Unemployed ', '8149908696', 'ECWA Church Nabor ', 'Nabor', 8.921270000, 9.934270000),
(639, 65, 'Titi Asabe Sani', 2, '90F5 B09F F841 5858 640', 59, 'F', 'Widow', '8030979532', 'ECWA Church Nabor ', 'Nabor', 8.926010000, 9.931740000),
(640, 65, 'Selre Nantim', 1, '240694847', 55, 'F', 'Aged', '8036219305', 'ECWA Church Nabor ', 'Nabor', 8.917500000, 9.938110000),
(641, 66, 'Vivian Alfred ', 5, 'nil', 25, 'F', 'nil', '8064464243', 'ECWA Church Nabor ', 'Nabor', 8.921100000, 9.935600000),
(642, 66, 'Sadiq Ibrahim', 5, 'nil', 36, 'F', 'nil', '7067622422', 'ECWA Church Nabor ', 'Nabor', 8.918360000, 9.937740000),
(643, 66, 'Micheal James ', 5, 'nil', 24, 'F', 'nil', '7035144418', 'ECWA Church Nabor ', 'Nabor', 8.915310000, 9.937670000),
(644, 66, 'Destiny Andrew ', 5, 'nil', 20, 'F', 'nil', '8065374683', 'ECWA Church Nabor ', 'Nabor', 8.921870000, 9.935690000),
(645, 66, 'Henry James ', 5, 'nil', 26, 'F', 'nil', '8034983959', 'ECWA Church Nabor ', 'Nabor', 8.921230000, 9.936250000),
(646, 66, 'Vivian Dung', 5, 'nil', 24, 'F', 'nil', '8038469136', 'ECWA Church Nabor ', 'Nabor', 8.927600000, 9.932860000),
(647, 66, 'Favour Mathew ', 5, 'nil', 20, 'F', 'nil', '9037705504', 'ECWA Church Nabor ', 'Nabor', 8.915770000, 9.935550000),
(648, 66, 'Albert Ndacks', 5, 'nil', 25, 'F', 'nil', '8034983959', 'ECWA Church Nabor ', 'Nabor', 8.923190000, 9.934340000),
(649, 66, 'Felicity Ajang', 5, 'nil', 20, 'F', 'nil', '8069084998', 'ECWA Church Nabor ', 'Nabor', 8.923980000, 9.932450000),
(650, 66, 'Deborah Hamza', 5, 'nil', 45, 'F', 'nil', '8136160219', 'ECWA Church Nabor ', 'Nabor', 8.921560000, 9.934590000),
(651, 67, 'Victoria Awari', 2, '90F5B210AF296236417', 46, 'F', 'nil', '7069711056', 'ECWA Church Nabor ', 'Nabor', 8.921790000, 9.934300000),
(652, 67, 'Kachollom Monday', 2, '90F5AF00A4519657747', 40, 'F', 'nil', '9016557819', 'ECWA Church Nabor ', 'Nabor', 8.921790000, 9.934300000),
(653, 67, 'Hannatu Sani', 2, '90F5B1F88E295964642', 40, 'F', 'nil', '7061307694', 'ECWA Church Nabor ', 'Nabor', 8.921790000, 9.934300000),
(654, 67, 'Rita Awari', 2, '90F5B10F2E415309913', 29, 'F', 'nil', '8149290087', 'ECWA Church Nabor ', 'Nabor', 8.921790000, 9.934300000),
(655, 67, 'Anna Ezra ', 2, '90F5B19DB2415956874', 37, 'F', 'nil', '7065669516', 'ECWA Church Nabor ', 'Nabor', 8.921790000, 9.934300000),
(656, 67, 'Patience Timothy', 2, '90F5B19DB2415969444', 31, 'F', 'nil', '8034830917', 'ECWA Church Nabor ', 'Nabor', 8.921570000, 9.935250000),
(657, 67, 'Elizabeth Sani', 2, '90F5B1D2FB512571055', 30, 'F', 'nil', '8165983086', 'ECWA Church Nabor ', 'Nabor', 8.921570000, 9.935250000),
(658, 67, 'Lydia Dagean', 2, '90F5B10F2E416157153', 45, 'F', 'nil', '8065983086', 'ECWA Church Nabor ', 'Nabor', 8.921570000, 9.935250000),
(659, 67, 'Hakuri Patience ', 2, '90F5B12946520330699', 31, 'F', 'nil', '8173437469', 'ECWA Church Nabor ', 'Nabor', 8.921570000, 9.935250000),
(660, 67, 'Hannatu Emmanuel ', 2, '90F5B09FF8415913632', 31, 'F', 'nil', '7036404918', 'ECWA Church Nabor ', 'Nabor', 8.922320000, 9.933900000),
(661, 68, 'Mary Danladi', 1, '28575928897', 42, 'F', 'Unemployed ', '8163312307', 'ECWA Church Nabor ', 'Nabor', 8.921100000, 9.935600000),
(662, 68, 'Anna Panshak Yohanna', 2, '90F5 B150 FC29 5706 349', 45, 'F', 'Unemployed ', '8030933736', 'ECWA Church Nabor ', 'Nabor', 8.918360000, 9.937740000),
(663, 68, 'Remikat Mwaibong', 2, '90F5 AFE1 2341 6208 170', 63, 'F', 'Aged', '8168913590', 'ECWA Church Nabor ', 'Nabor', 8.915310000, 9.937670000),
(664, 68, 'Mera Mani Christopher', 1, '211048341', 60, 'F', 'Widow', '7037473423', 'ECWA Church Nabor ', 'Nabor', 8.921870000, 9.935690000),
(665, 68, 'Esther Bature', 1, '41537085607', 58, 'F', 'Aged', '8141947474', 'ECWA Church Nabor ', 'Nabor', 8.921230000, 9.936250000),
(666, 68, 'Milcah Landet Guning', 2, '90F5 B09F F841 6030 314', 32, 'F', 'Unemployed ', '8062745049', 'ECWA Church Nabor ', 'Nabor', 8.927600000, 9.932860000),
(667, 68, 'Stella  Davou John', 1, '50374487832', 34, 'F', 'Unemployed ', '8060324092', 'ECWA Church Nabor ', 'Nabor', 8.915770000, 9.935550000),
(668, 68, 'Rhoda Ajayi Johnson', 2, '030D D2D8 CB29 6307 497', 58, 'F', 'Widow', '8030866361', 'ECWA Church Nabor ', 'Nabor', 8.923190000, 9.934340000),
(669, 68, 'Theresa Luka ', 2, '90F5 B19D B241 5952 524', 47, 'F', 'Aged', '8103490722', 'ECWA Church Nabor ', 'Nabor', 8.923980000, 9.932450000),
(670, 68, 'Tabitha Luka Mafeng ', 2, '90F6 B1A- B826 5872 873', 50, 'F', 'Aged', '8033554186', 'ECWA Church Nabor ', 'Nabor', 8.921560000, 9.934590000),
(671, 69, 'Lydia James Amodar', 2, '90F5 B147 B829 5363 932', 51, 'F', 'Aged', '8141679079', 'ECWA Church Nabor ', 'Nabor', 8.941740000, 9.937170000),
(672, 69, 'Nankling Alex ', 2, '90F5 B219 3851 9975 009', 45, 'F', 'Unemployed ', '9096879222', 'ECWA Church Nabor ', 'Nabor', 8.922340000, 9.930720000),
(673, 69, 'Mary Dama', 2, '90F5 B10F 2E41 6322 686', 47, 'F', 'Unemployed ', '8032981385', 'ECWA Church Nabor ', 'Nabor', 8.921390000, 9.931430000),
(674, 69, 'Rose Yakubu', 2, '90F5 B19D B241 5965 188', 40, 'F', 'Unemployed ', '7064662083', 'ECWA Church Nabor ', 'Nabor', 8.921620000, 9.936720000),
(675, 69, 'Anna Blessed', 2, '90F5 B1A7 B829 6055 314', 33, 'F', 'Unemployed ', '7032032762', 'ECWA Church Nabor ', 'Nabor', 8.920120000, 9.936570000),
(676, 69, 'Amina Nimfa', 2, '90F5 B162 9929 6136 042', 45, 'F', 'Widow', '8059189159', 'ECWA Church Nabor ', 'Nabor', 8.912850000, 9.938820000),
(677, 69, 'Patricia Lipgan', 2, '90F5 B162 9929 6574 445', 61, 'F', 'Widow', '7039159700', 'ECWA Church Nabor ', 'Nabor', 8.917100000, 9.937290000),
(678, 69, 'Alice Samson', 2, '90F5 B1A7 B829 5783 161', 38, 'F', 'Unemployed ', '8022901125', 'ECWA Church Nabor ', 'Nabor', 8.909760000, 9.935870000),
(679, 69, 'Yop Emmanuel Bala', 2, '90F5 B1A7 B829 5361 265', 57, 'F', 'Aged', '8032417833', 'ECWA Church Nabor ', 'Nabor', 8.922400000, 9.936140000),
(680, 69, 'Jummai Yohanna', 1, '63155253347', 46, 'F', 'Unemployed ', '8033490431', 'ECWA Church Nabor ', 'Nabor', 8.921620000, 9.936720000),
(681, 46, 'Vongtau Felicia Sargwat', 2, '90F5B1DZ51415974053', 51, 'F', 'nil', '8062069982', 'nil', 'nil', 9.870899000, 8.832692100),
(682, 46, 'Timbyen Peace Ishaya', 5, 'nil', 44, 'F', 'nil', '7038577291', 'nil', 'nil', 9.870899000, 8.832692100),
(683, 46, 'Veronica Nanyi Parlong', 5, 'nil', 43, 'F', 'nil', '7031072305', 'nil', 'nil', 9.870899000, 8.832692100),
(684, 46, 'Ochai Maria', 1, '39766008372', 46, 'F', 'nil', '7037975500', 'nil', 'nil', 9.870899000, 8.832692100),
(685, 46, 'Dorcas John Akunme', 2, '90F5B115D953509313', 57, 'F', 'nil', '8039172332', 'nil', 'nil', 9.870899000, 8.832692100),
(686, 46, 'Nanji Mary Vontau', 5, 'nil', 31, 'F', 'nil', '8037288222', 'nil', 'nil', 9.870899000, 8.832692100),
(687, 46, 'Byencit Gideon', 1, '45289459841', 35, 'F', 'nil', '8065750433', 'nil', 'nil', 9.870899000, 8.832692100),
(688, 46, 'Titi Titus', 5, 'nil', 36, 'F', 'nil', '8037288222', 'nil', 'nil', 9.870899000, 8.832692100),
(689, 46, 'Chalnan Dadi', 5, 'nil', 24, 'F', 'nil', '8136283080', 'nil', 'nil', 9.870899000, 8.832692100),
(690, 46, 'Sargwat Durfa Lamsing', 1, '66013729686', 43, 'M', 'nil', '8113383866', 'nil', 'nil', 9.870898900, 8.832692100),
(691, 47, 'Sinat Jacob Amos', 1, '85514159907', 30, 'M', 'nil', '9039617818', 'nil', 'nil', 9.869140000, 8.849357200),
(692, 47, 'Morgan Gotom Golep', 5, 'nil', 32, 'M', 'nil', '7033303334', 'nil', 'nil', 9.869140000, 8.849357200),
(693, 47, 'Alheri Kamven', 1, '36002452991', 34, 'F', 'nil', '7067721601', 'nil', 'nil', 9.869140000, 8.849357200),
(694, 47, 'Maryamu Ishaku', 1, '91618306858', 37, 'F', 'nil', '8140130823', 'nil', 'nil', 9.869140000, 8.849357200),
(695, 47, 'Justina Auta', 1, '22947615013', 40, 'F', 'nil', '7064744797', 'nil', 'nil', 9.869140000, 8.849357200),
(696, 47, 'Monica Patrick', 5, 'nil', 42, 'F', 'nil', '8100270345', 'nil', 'nil', 9.869140000, 8.849357200),
(697, 47, 'Monica Patrick', 2, '90F5B0809A295696465', 48, 'F', 'nil', '8065262741', 'nil', 'nil', 9.854920000, 8.835710000),
(698, 47, 'Florence Abatan', 1, '80821641712', 55, 'F', 'nil', '8059149767', 'nil', 'nil', 9.854920000, 8.835710000),
(699, 47, 'Grace Simon', 2, 'INC22000000012259217', 45, 'F', 'nil', '9069342355', 'nil', 'nil', 9.854920000, 8.835710000),
(700, 47, 'Mani Gladys Peter', 2, '90F5B12D5450595765', 23, 'F', 'nil', '8169056851', 'nil', 'nil', 9.869190000, 8.860680000),
(701, 48, 'James samme', 1, '38223339350', 44, 'M', 'nil', '8065444270', 'nil', 'nil', 9.874582000, 8.874582000),
(702, 48, 'Gurumyen N. Liviticus', 1, '20246740255', 46, 'M', 'nil', '7038789286', 'nil', 'nil', 9.874583000, 8.874561000),
(703, 48, 'Bibiana Menyit', 1, '5.30E+15', 42, 'F', 'nil', '8064570270', 'nil', 'nil', 9.874582000, 8.874582000),
(704, 48, 'Longbaam E. Yakubu', 5, 'nil', 45, 'M', 'nil', '8065770128', 'nil', 'nil', 9.874582000, 8.874582000),
(705, 48, 'Placida Ahmadu', 1, '33710839365', 44, 'F', 'nil', '8036897918', 'nil', 'nil', 9.874582000, 8.874582000),
(706, 48, 'Peter Alkali Shindai', 1, '19241890513', 45, 'M', 'nil', '7035346457', 'nil', 'nil', 9.874582000, 8.874582000),
(707, 48, 'Angela Fuanter', 1, '66227442489', 48, 'F', 'nil', '803623742', 'nil', 'nil', 9.874582000, 8.845089700),
(708, 48, 'Lankwap D. Ubangari', 1, 'S7Y0ORZRT00054S', 50, 'M', 'nil', '8060436453', 'nil', 'nil', 9.874582000, 8.845089700),
(709, 48, 'Nancy P. Goeshalong', 5, 'nil', 41, 'F', 'nil', '8036280002', 'nil', 'nil', 9.874582000, 8.845089700),
(710, 48, 'Maureen P. Daniel', 1, '89763431138', 36, 'F', 'nil', '8164078434', 'nil', 'nil', 9.874582000, 8.845089700),
(711, 49, 'Macham Micheal Dass', 2, '90F5AF0115416226081', 40, 'M', 'nil', '8083776114', 'nil', 'nil', 9.878351000, 8.846944400),
(712, 49, 'Rehab Pingwen', 5, 'nil', 38, 'F', 'nil', '8083939875', 'nil', 'nil', 9.913800000, 8.818600000),
(713, 49, 'Lengkat Simput', 2, 'FA5B3EC140534772633', 40, 'F', 'nil', '8034638148', 'nil', 'nil', 9.878351000, 8.846944400),
(714, 49, 'Dorcas Bartholomew N.', 1, '51138891737', 30, 'F', 'nil', '7067835467', 'nil', 'nil', 9.913800000, 8.818600000),
(715, 49, 'Jana Zingak', 1, '43905178027', 40, ' ', 'nil', '7036420798', 'nil', 'nil', 9.873510000, 8.846944400);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(716, 49, 'Esther Stehen', 2, '90F5AF9A56416039002', 44, 'F', 'nil', '8032888981', 'nil', 'nil', 9.873510000, 8.846944400),
(717, 49, 'Samuel Chun Dusu', 1, '73579504605', 38, 'M', 'nil', '7017131619', 'nil', 'nil', 9.873510000, 8.846944400),
(718, 49, 'Manji Pirfa', 5, 'nil', 30, 'M', 'nil', '7032264919', 'nil', 'nil', 9.873510000, 8.846944400),
(719, 49, 'Danlami Ayuba', 5, 'nil', 35, 'M', 'nil', '9067036461', 'nil', 'nil', 9.873510000, 8.846944400),
(720, 49, 'Happy Solomon', 1, '75059325366', 25, 'F', 'nil', '8143626730', 'nil', 'nil', 9.873510000, 8.846944400),
(721, 50, 'Ruth Magaji', 5, 'NIL', 52, 'F', 'nil', '8068769295', 'nil', 'nil', 9.878425000, 8.849357200),
(722, 50, 'Emmanuel James', 5, 'nil', 42, 'M', 'nil', '8035236694', 'nil', 'nil', 9.878425000, 8.849357200),
(723, 50, 'Lungfa Richard', 1, '42771478521', 40, 'M', 'nil', '8140573674', 'nil', 'nil', 9.878425000, 8.849357200),
(724, 50, 'Nanbup Felix Vongrim', 2, '90F5B1F9A6296733265', 35, 'F', 'nil', '8108356118', 'nil', 'nil', 9.878425000, 8.849357200),
(725, 50, 'Nangor Dandam', 5, 'nil', 34, 'M', 'nil', '7064326271', 'nil', 'nil', 9.878425000, 8.849357200),
(726, 50, 'Nanwor Selven', 5, 'nil', 32, 'M', 'nil', '7034261576', 'nil', 'nil', 9.878425000, 8.849357200),
(727, 50, 'Elvina Elisha', 5, 'nil', 35, 'F', 'nil', '7041815918', 'nil', 'nil', 9.878425000, 8.849357200),
(728, 50, 'Kisel Alexander Maisani', 2, '90F5B06113416126154', 40, 'F', 'nil', '8135165500', 'nil', 'nil', 9.878425000, 8.849357200),
(729, 50, 'Kaneng Zango', 1, '5.30E+15', 41, 'F', 'nil', '7039402400', 'nil', 'nil', 9.878425000, 8.849357200),
(730, 50, 'Florence Dakwal', 2, '90FB13F66296147514', 69, 'F', 'nil', '8036073763', 'nil', 'nil', 9.878425000, 8.849357200),
(731, 51, 'Yakcit Emmanuel N.', 1, '29791026003', 55, 'F', 'nil', '8067468631', 'nil', 'nil', 9.870898900, 8.838089100),
(732, 51, 'Naomi G. Dandam', 2, '90F5B1B251415145627', 59, 'F', 'nil', '7037962319', 'nil', 'nil', 9.870898900, 8.838089100),
(733, 51, 'Dorcy Miner', 2, '90F5B13F66295320352', 64, 'F', 'nil', '8036120227', 'nil', 'nil', 9.870898900, 8.838089100),
(734, 51, 'Ruth Chibueze', 5, 'nil', 34, 'F', 'nil', '9033062083', 'nil', 'nil', 9.870898900, 8.838089100),
(735, 51, 'Faith Jangkam L.', 5, 'nil', 49, 'F', 'nil', '8064499751', 'nil', 'nil', 9.870898900, 8.838089100),
(736, 51, 'Jummai Sale', 2, '90F5B1D251416299542', 50, 'F', 'nil', '8032452716', 'nil', 'nil', 9.870898900, 8.838089100),
(737, 51, 'Umejiuba Chineye', 1, '96492530494', 55, 'F', 'nil', '8065726946', 'nil', 'nil', 9.878098300, 8.839950000),
(738, 51, 'Murna Stanley', 2, '90F5B1BF63535375139', 64, 'F', 'nil', '9029620055', 'nil', 'nil', 9.878098300, 8.839950000),
(739, 51, 'Ndam Sohbyen Doris', 1, '80993359053', 55, 'f', 'nil', '8065662881', 'nil', 'nil', 9.878098300, 8.839950000),
(740, 51, 'Elizabeth Dole', 1, '58803869991', 53, 'F', 'nil', '803585696', 'nil', 'nil', 9.878098300, 8.839950000),
(741, 52, 'Rita Maurise', 5, 'nil', 40, 'F', 'nil', '7036003438', 'nil', 'nil', 9.878423700, 8.839900000),
(742, 52, 'Nandir Gosele', 1, '70044484501', 42, 'F', 'nil', '7039638523', 'nil', 'nil', 9.878423700, 8.839900000),
(743, 52, 'Umbule Maren Musa', 1, '10597018011', 38, 'F', 'nil', '7039396411', 'nil', 'nil', 9.878423700, 8.839900000),
(744, 52, 'Bitrus Yusuf', 5, 'nil', 45, 'M', 'nil', '8141231547', 'nil', 'nil', 9.878423700, 8.839900000),
(745, 52, 'Mezakde Ayuba', 5, 'nil', 30, 'M', 'nil', '8160295479', 'nil', 'nil', 9.878423700, 8.839900000),
(746, 52, 'Desmond Dadung', 5, 'nil', 38, 'M', 'nil', '7040771220', 'nil', 'nil', 9.878423700, 8.839900000),
(747, 52, 'Gumap Dangriang', 1, '28530090914', 35, 'M', 'nil', '8143216219', 'nil', 'nil', 9.878423700, 8.839900000),
(748, 52, 'Patience Dashe', 5, 'nil', 34, 'F', 'nil', '8162339162', 'nil', 'nil', 9.878423700, 8.839900000),
(749, 52, 'Blessing Christopher', 5, 'nil', 36, 'F', 'nil', '8037431606', 'nil', 'nil', 9.878423700, 8.839900000),
(750, 52, 'Ruth Amos Dajak', 1, '29513502294', 39, 'F', 'nil', '9060494765', 'nil', 'nil', 9.878423700, 8.839900000),
(751, 53, 'Christopher Nash', 1, '5.30E+15', 69, 'M', 'nil', '8036177818', 'nil', 'nil', 9.743020000, 8.877950000),
(752, 53, 'Vincent Dung Davou', 2, '90F5B067F1295534276', 69, 'M', 'nil', '8032852933', 'nil', 'nil', 9.752950000, 8.874250000),
(753, 53, 'Christy Dung', 2, '90F5B10707295321020', 56, 'F', 'nil', '8160648154', 'nil', 'nil', 9.776801000, 8.870213500),
(754, 53, 'Mary Nash', 2, '030DEF5820295488101', 59, 'F', 'nil', '8174777196', 'nil', 'nil', 9.743010000, 8.877951000),
(755, 53, 'Michael Dakim', 2, '90F5B067F1295776973', 68, 'M', 'nil', '8035093228', 'nil', 'nil', 9.745830000, 8.879500000),
(756, 53, 'Boniface Pwajok', 2, '5.30E+15', 64, 'M', 'nil', '8174777196', 'nil', 'nil', 9.776818000, 8.870213600),
(757, 53, 'Caroline Dung Pam', 2, '90F5B057F1298055089', 68, 'F', 'nil', '8069739599', 'nil', 'nil', 9.743020000, 8.877950000),
(758, 53, 'Christopher Billy Dung', 1, '13395533793', 47, 'M', 'nil', '7033635912', 'nil', 'nil', 9.745830000, 8.879500000),
(759, 53, 'Anthony Davou', 1, '23384306770', 64, 'M', 'nil', '8036651417', 'nil', 'nil', 9.745830000, 8.879500000),
(760, 53, 'Roseline Chung', 2, '90F5AFCE38295864152', 54, 'F', 'nil', '7033635912', 'nil', 'nil', 9.743020000, 8.877950000),
(761, 54, 'Anthony Dung', 2, '90F5B243A3296234520', 42, 'M', 'nil', '7030905705', 'nil', 'nil', 9.782795000, 8.880192400),
(762, 54, 'Henry D. Pam', 5, 'nil', 60, 'F', 'nil', '8036211765', 'nil', 'nil', 9.743020000, 8.877950000),
(763, 54, 'Peter D. Dadieng', 1, '5.30E+15', 58, 'M', 'nil', '8163786343', 'nil', 'nil', 9.782795000, 8.880192400),
(764, 54, 'Helen Davou', 2, '90F5B2103B295788136', 66, 'F', 'nil', '9061529425', 'nil', 'nil', 9.782796000, 8.880192400),
(765, 54, 'Lyop J. Joseph', 1, '39653712996', 63, 'F', 'nil', '8164330068', 'nil', 'nil', 9.782795000, 8.880192400),
(766, 54, 'Josephine K gyang', 1, '90185932521', 45, 'F', 'nil', '8033456974', 'nil', 'nil', 9.782795000, 8.880192400),
(767, 54, 'Dung Naomi Nyazi', 2, '90F5B045AB533892380', 40, 'F', 'nil', '8064026078', 'nil', 'nil', 9.782795000, 8.880192400),
(768, 54, 'James D. Pam', 2, '90F5B10707295883431', 65, 'M', 'nil', '7066267299', 'nil', 'nil', 9.782795000, 8.880192400),
(769, 54, 'Emmanuel Nyam', 2, '90F5B10090415801370', 34, 'M', 'nil', '8169919910', 'nil', 'nil', 9.782795000, 8.880192400),
(770, 54, 'Ibrahim Nyam', 1, '99220342759', 38, ' ', 'nil', '7037963202', 'nil', 'nil', 9.782795000, 8.880192400),
(771, 55, ' Paul D. Dung', 2, '90F5AF1754295739932', 67, ' ', 'nil', '7039788323', 'nil', 'nil', 9.770500000, 8.845230000),
(772, 55, ' Vincent R. Davou', 2, '90F5AF1754295791565', 75, ' ', 'nil', '8035093194', 'nil', 'nil', 9.754970000, 8.845980000),
(773, 55, 'Stephen Gyang', 2, '90F5B22FA7416229280', 62, ' ', 'nil', '8036498713', 'nil', 'nil', 9.754970000, 8.845980000),
(774, 55, 'Yakubu Mwangai', 2, '90F5B19210295384791', 68, ' ', 'nil', '8069739599', 'nil', 'nil', 9.770560000, 8.839210000),
(775, 55, 'Christopher Billy', 5, 'nil', 74, ' ', 'nil', '8032493063', 'nil', 'nil', 9.770560000, 8.839210000),
(776, 55, 'Francis Choji', 2, '90F5AF0D12296478093', 74, ' ', 'nil', '8067694296', 'nil', 'nil', 9.754970000, 8.845980000),
(777, 55, 'Christopher Dung', 5, 'nil', 64, ' ', 'nil', '8033655694', 'nil', 'nil', 9.754970000, 8.845980000),
(778, 55, 'Julius D. Choji', 1, '5.30E+15', 64, ' ', 'nil', '7036445390', 'nil', 'nil', 9.754970000, 8.845980000),
(779, 55, 'Joseph D. Pam', 5, 'nil', 71, ' ', 'nil', '7035704677', 'nil', 'nil', 9.754970000, 8.845980000),
(780, 55, 'John M. Davou', 2, '90F5AF17B4296120954', 71, 'M', 'nil', '7035704677', 'nil', 'nil', 9.754970000, 8.845980000),
(781, 56, 'Paulina Titi Yakubu', 5, 'nil', 60, 'F', 'nil', '7025381112', 'nil', 'nil', 9.769530000, 8.847660000),
(782, 56, 'Esther M. Clement', 5, 'nil', 46, 'F', 'nil', '8033628414', 'nil', 'nil', 9.769530000, 8.847660000),
(783, 56, 'Mary J. Davou', 2, '90F5B243A3296136909', 44, 'F', 'nil', '7032199892', 'nil', 'nil', 9.769530000, 8.847660000),
(784, 56, 'Laraba David', 1, '17151068103', 63, 'F', 'nil', '7033119645', 'nil', 'nil', 9.769530000, 8.847660000),
(785, 56, 'Rose Pam', 1, '75937872473', 45, 'F', 'nil', '8104171992', 'nil', 'nil', 9.769530000, 8.847660000),
(786, 56, 'Esther Bulus', 1, '39202417313', 48, 'F', 'nil', '8135595891', 'nil', 'nil', 9.769530000, 8.847660000),
(787, 56, 'Celina Bitrus', 2, '90F5AF1784295521089', 38, 'F', 'nil', '9058343994', 'nil', 'nil', 9.769530000, 8.847660000),
(788, 56, 'Rose Vou Yakubu', 2, '90F5AF17B4296907184', 38, 'F', 'nil', '8162124235', 'nil', 'nil', 9.769530000, 8.847660000),
(789, 56, 'Rose Fidelis', 5, 'nil', 38, 'F', 'nil', '7030214815', 'nil', 'nil', 9.769530000, 8.847660000),
(790, 56, 'Catherine Paul', 5, 'nil', 33, 'F', 'nil', '7030214815', 'nil', 'nil', 9.769530000, 8.847660000),
(791, 57, 'Sarah Gyang', 2, '90F5B243A3298343528', 65, 'F', 'nil', '8037697502', 'nil', 'nil', 9.776801900, 8.870213500),
(792, 57, 'Ladi D. Philip', 2, '90F5AFA5BF295964599', 84, 'F', 'nil', '9130543940', 'nil', 'nil', 9.742640000, 8.876770000),
(793, 57, 'Charity Gyang', 2, '90F5B22FA7416058542', 26, 'F', 'nil', '9036190350', 'nil', 'nil', 9.776801900, 8.870213500),
(794, 57, 'Mary A. Gyang', 2, '90F5B243A3295874857', 33, 'F', 'nil', '8133328145', 'nil', 'nil', 9.776801900, 8.870213500),
(795, 57, 'Caroline Dalyop', 5, 'nil', 31, 'F', 'nil', '8024650878', 'nil', 'nil', 9.742640000, 8.876770000),
(796, 57, 'Mary D. Joseph', 5, 'nil', 44, 'F', 'nil', '8024650878', 'nil', 'nil', 9.742640000, 8.876770000),
(797, 57, 'Victoria Pam Gyang', 5, 'nil', 52, 'F', 'nil', '8067869701', 'nil', 'nil', 9.742640000, 8.876770000),
(798, 57, 'Felicia Kaneng. Pam', 2, '90F5B22FA7416302661', 62, 'F', 'nil', '8060261183', 'nil', 'nil', 9.742640000, 8.876770000),
(799, 57, 'Mary Chundung. Pam', 2, '90F5B129A6519830468', 55, 'F', 'nil', '7012596898', 'nil', 'nil', 9.742640000, 8.876770000),
(800, 57, 'Theresa K. Dalyop', 2, '90F5B243A3295875807', 67, 'F', 'nil', '9124475177', 'nil', 'nil', 9.776801900, 8.870213500),
(801, 58, 'Cornelius Petlong', 1, '50805273237', 45, 'M', 'nil', '8065383884', 'nil', 'nil', 9.877160000, 8.870150000),
(802, 58, 'Hoomsuk Supen', 1, '99719067591', 40, 'M', 'nil', '8069084984', 'nil', 'nil', 9.877160000, 8.870150000),
(803, 58, 'Ruth Bawa', 5, '90F5B115D9418867636', 40, 'F', 'nil', '8069084984', 'nil', 'nil', 9.877160000, 8.870150000),
(804, 58, 'Sarah Micah', 5, 'nil', 42, 'F', 'nil', '8065313856', 'nil', 'nil', 9.877160000, 8.870150000),
(805, 58, 'Martin Nyelong', 5, 'nil', 48, 'M', 'nil', '8034640345', 'nil', 'nil', 9.877160000, 8.870150000),
(806, 58, 'Maigari Chrisantus', 5, 'nil', 45, 'M', 'nil', '8035021030', 'nil', 'nil', 9.877160000, 8.870150000),
(807, 58, 'Lami Shanding', 5, 'nil', 40, 'F', 'nil', '8069084984', 'nil', 'nil', 9.877160000, 8.870150000),
(808, 58, 'Magdalene Joel L.', 1, '73779234251', 45, 'F', 'nil', '8036327249', 'nil', 'nil', 9.877160000, 8.870150000),
(809, 58, 'Daniel Agai', 1, '28842595855', 43, 'M', 'nil', '703770.72', 'nil', 'nil', 9.877160000, 8.870150000),
(810, 58, 'Roselyn Mathias', 5, 'nil', 42, 'F', 'nil', '8060920617', 'nil', 'nil', 9.877160000, 8.870150000),
(811, 59, 'Maimako B. Youmwayak', 2, '90F5B08018416305009', 55, 'M', 'nil', '8069108281', 'nil', 'nil', 9.841630000, 8.879510000),
(812, 59, 'Bala Mitok', 2, '90F5B1D45D416386632', 68, 'M', 'nil', '8088303096', 'nil', 'nil', 9.841630000, 8.879510000),
(813, 59, 'Nandi Joseph', 1, '45617052091', 48, 'F', 'nil', '8034706927', 'nil', 'nil', 9.841630000, 8.879510000),
(814, 59, 'Mary Emaikwu', 2, '90F5B153D1296056140', 52, 'F', 'nil', '7081303323', 'nil', 'nil', 9.841630000, 8.879510000),
(815, 59, 'Moses Kungyep', 1, '19613637116', 55, 'M', 'nil', '806925362', 'nil', 'nil', 9.841630000, 8.879510000),
(816, 59, 'Grace M. Rotkang', 1, '90790560555', 46, 'F', 'nil', '7036230371', 'nil', 'nil', 9.841630000, 8.879510000),
(817, 59, 'Kankemwa Bitrus', 1, '69090358720', 33, 'F', 'nil', '8031866042', 'nil', 'nil', 9.841630000, 8.879510000),
(818, 59, 'Rose Peter', 2, '90F5B10707416155565', 52, 'F', 'nil', '9067885950', 'nil', 'nil', 9.841630000, 8.879510000),
(819, 59, 'Zipporah P.Chwang', 1, '47944190019', 20, 'F', 'nil', '8084511438', 'nil', 'nil', 9.841630000, 8.879510000),
(820, 59, 'Paulina Oguche', 2, '90F5AF55E8416329772', 63, 'F', 'nil', '9030785180', 'nil', 'nil', 9.841630000, 8.879510000),
(821, 60, 'Christopher Dung ', 2, '90F5AF0D12295518932', 68, 'M', 'nil', '8069739599', 'nil', 'nil', 9.753310000, 8.875590000),
(822, 60, '  Norah Mwannti', 1, '32544306584', 42, 'F', 'nil', '8039098856', 'nil', 'nil', 9.753310000, 8.875590000),
(823, 60, '  Salome Inusa', 2, '90F5B08201519809515', 53, 'F', 'nil', '8066412877', 'nil', 'nil', 9.752940000, 8.875280000),
(824, 60, '  Monica Dabup ', 1, '70814889827', 50, 'F', 'nil', '802125393', 'nil', 'nil', 9.752940000, 8.875280000),
(825, 60, '  Theodoora Gatwan ', 5, 'nil', 37, 'F', 'nil', '9033631266', 'nil', 'nil', 9.752940000, 8.875280000),
(826, 60, 'Magwen supen Hoommi', 2, '90F5AF2502295059908', 32, 'M', 'nil', '8036501192', 'nil', 'nil', 9.752940000, 8.875280000),
(827, 60, ' Sarah Bulus', 5, 'nil', 42, 'F', 'nil', '8069692601', 'nil', 'nil', 9.756730000, 8.878320000),
(828, 60, ' Rifkatu Polpe', 1, '43646291210', 30, 'F', 'nil', '9033631266', 'nil', 'nil', 9.756730000, 8.878320000),
(829, 60, 'Naomi shehu', 1, '2GVZ0ZZUYT002PK', 48, 'F', 'nil', '8036501192', 'nil', 'nil', 9.756730000, 8.878320000),
(830, 60, 'Francis Dung', 2, '90F5B057F1295802155', 34, 'M', 'nil', '9033631266', 'nil', 'nil', 9.756730000, 8.878320000),
(831, 113, 'Muhammadu Haruna', 2, '90F5B1F7D2296897951', 22, 'M', 'nil', '9032978006', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(832, 113, 'Umar Muhammed Ibrahim', 1, '35699422134', 22, 'M', 'nil', '9134455778', 'Takwar/Kantana Ward', 'na', 9.503510000, 10.115090000),
(833, 113, 'Samarau Haruna Waziri', 3, 'PL6496511088', 30, 'F', 'nil', '7045458775', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(834, 113, 'Haruna Ibrahim', 2, '90F5B032DD416340', 25, 'M', 'nil', 'n/a', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(835, 113, 'Nabiatu Mohammed ', 1, '93961255770', 27, 'F', 'nil', '7053557743', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(836, 113, 'Saadu Hassan Kicima', 2, '2354FFB9A5296237201', 26, 'F', 'nil', '9016390863', 'Takwar/Kantana Ward', 'na', 9.503510000, 10.115090000),
(837, 113, 'Sale Jikanshi', 1, '18276340978', 32, 'M', 'nil', '9132961102', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(838, 113, 'Abdulrashid Hashimu Salihu', 1, '72415287599', 19, 'M', 'nil', '9129198676', 'Takwar/Kantana Ward', 'na', 9.503510000, 10.114560000),
(839, 113, 'Mamuda Aisha', 2, '90F5B1F7D2295705636', 20, 'F', 'nil', '9064712953', 'Takwar/Kantana Ward', 'na', 9.499900000, 10.114560000),
(840, 113, 'Halima Sani', 2, '90F5B032DD416262279', 19, 'F', 'nil', '8149943460', 'Takwar/Kantana Ward', 'na', 9.503510000, 10.114560000),
(841, 114, 'Bello Bako', 1, '30501401077', 60, 'M', 'Aged', '7066864326', 'Garga Dadin Kowa', 'na', 9.498810000, 10.314900000),
(842, 114, 'Rufai Nuhu', 2, '90F5B23B7E205790600', 36, 'M', 'nil', '80131086661', 'Garga Dadin Kowa', 'na', 9.499540000, 10.314710000),
(843, 114, 'Uzairu Mdaki Barde', 2, '90F5B1C544295856765', 54, 'M', 'nil', '8047165778', 'Garga Dadin Kowa', 'na', 9.498810000, 10.314900000),
(844, 114, 'Ayuba Maitama', 2, '90F5B259EA296560697', 60, 'M', 'Aged', '7089515005', 'Garga Dadin Kowa', 'na', 9.498290000, 10.316140000),
(845, 114, 'Dahiru Haruna', 2, '90F5B25BEA295875438', 62, 'M', 'Aged', '9030947116', 'Garga Dadin Kowa', 'na', 9.498790000, 10.313930000),
(846, 114, 'Ramatu Musa', 2, '90F5B23B7E295144176', 62, 'F', 'Aged', '7032825242', 'Garga Dadin Kowa', 'na', 9.496410000, 10.312610000),
(847, 114, 'Saadatu Abdullahi', 1, '21079442525', 62, 'F', 'Aged', '8121190440', 'Garga Dadin Kowa', 'na', 9.497750000, 10.314190000),
(848, 114, 'Hurera Abdullahi', 2, '90F5B259EA296307059', 72, 'F', 'Aged', '8133123161', 'Garga Dadin Kowa', 'na', 9.498790000, 10.313930000),
(849, 114, 'Iliyasu Umar', 2, '90F5B1CC8E295862053', 63, 'M', 'Aged', '9069432943', 'Garga Dadin Kowa', 'na', 9.497210000, 10.312010000),
(850, 114, 'Halima Umar', 1, '52125225134', 50, 'F', 'nil', 'n/a', 'Garga Dadin Kowa', 'na', 9.496830000, 10.311950000),
(851, 115, 'Dauda Umaru', 2, '90F5AF173E296721658', 57, 'M', 'nil', '8168682146', 'Garga Dadin Kowa', 'na', 9.499050000, 10.319210000),
(852, 115, 'Sani Ibrahim', 2, '90F5AED751295870891', 61, 'M', 'Aged', '7089416099', 'Garga Dadin Kowa', 'na', 9.501600000, 10.318700000),
(853, 115, 'Basiru Idris', 2, '90F5B2087E295870279', 50, 'M', 'nil', '8141106050', 'Garga Dadin Kowa', 'na', 9.500070000, 10.308570000),
(854, 115, 'Yakubu Aliyu Mhd', 2, '90F5B23B7E295770943', 60, 'M', 'Aged', '7045887375', 'Garga Dadin Kowa', 'na', 9.489590000, 10.313940000),
(855, 115, 'Halilu Jibrin', 2, '90F5B1C544295873088', 60, 'M', 'Aged', '7069057432', 'Garga Dadin Kowa', 'na', 9.498320000, 10.318400000),
(856, 115, 'Hurera Muhammed', 2, '90F5823B7E295951609', 57, 'F', 'nil', '7017259809', 'Garga Dadin Kowa', 'na', 9.497900000, 10.309360000),
(857, 115, 'Ramatu Sel Bawa', 2, '90F5AF173E296057830', 47, 'F', 'nil', '8064595134', 'Garga Dadin Kowa', 'na', 9.490440000, 10.313890000),
(858, 115, 'Barde Hassan Hamisu', 1, '52553335459', 66, 'M', 'Aged', '7019298578', 'Garga Dadin Kowa', 'na', 9.500660000, 10.319640000),
(859, 115, 'Hadiza Yasir', 2, '90F5AED751298302143', 72, 'F', 'Aged', '9037897118', 'Garga Dadin Kowa', 'na', 9.501880000, 10.321860000),
(860, 115, 'Salamatu Shuaibu', 2, '90F5B23B7E295451973', 62, 'F', 'Aged', '7044617515', 'Garga Dadin Kowa', 'na', 9.499790000, 10.307230000),
(861, 116, 'Florence Bapina', 2, '71BC130626926217566', 34, 'F', 'nil', '7067059947', 'Gamuga Dengi', 'na', 9.575730000, 9.827070000),
(862, 116, 'Hafsatu Musa', 2, '71BC307775298304046', 35, 'F', 'nil', 'n/a', 'Sohon-Pada Gyangyang', 'na', 9.588100000, 9.827490000),
(863, 116, 'Dahiru Ahmadu', 2, '71BC130526296373276', 41, 'M', 'nil', '8135507274', 'Sohon-Pada Gyangyang', 'na', 9.593210000, 9.831270000),
(864, 116, 'Micheal Mantau', 2, '905FB03B95416327367', 40, 'M', 'nil', 'n/a', 'Sohon-Pada Gyangyang', 'na', 9.559890000, 9.820860000),
(865, 116, 'Abigail Hamidu', 2, '71BC3D777F296547782', 35, 'F', 'nil', 'n/a', 'Gyangyang', 'na', 9.537310000, 9.833380000),
(866, 116, 'Shatima Piku', 2, '90F5B07764520454150', 40, 'M', 'nil', 'n/a', 'Gyangyang', 'na', 9.582100000, 9.831020000),
(867, 116, 'Abdulrahim Babale', 2, '71DC3D777F295958134', 38, 'M', 'nil', 'n/a', 'Gyangyang', 'na', 9.565140000, 9.832920000),
(868, 116, 'Caleb Guga', 1, '36937033886', 45, 'M', 'nil', 'n/a', 'Ngidir Gyangyang', 'na', 9.537220000, 9.833030000),
(869, 116, 'Kumbo Haruna', 2, '71BC3D777F296207', 37, 'F', 'nil', 'n/a', 'Gyangyang', 'na', 9.554220000, 9.820740000),
(870, 116, 'Haruna Kafi', 1, '77679453085', 40, 'M', 'nil', 'n/a', 'Ngidir Gyangyang', 'na', 9.531160000, 9.830910000),
(871, 117, 'Mumsu Maikano', 1, '93945814319', 38, 'M', 'nil', '8137575604', 'Gyangyang', 'na', 9.592140000, 9.839330000),
(872, 117, 'Mankwat Nisa', 1, '96846522622', 36, 'M', 'nil', '8065634700', 'Gyangyang', 'na', 9.591990000, 9.839330000),
(873, 117, 'Lazigidma Pilaku', 1, '51325554229', 35, 'M', 'nil', 'n/a', 'Gyangyang', 'na', 9.368090000, 9.838840000),
(874, 117, 'Sunday Ishaku', 1, '5.30E+15', 33, 'M', 'nil', 'n/a', 'Lowcost Dengi', 'na', 9.367920000, 9.981240000),
(875, 117, 'Mohammadu Idi', 2, '71BC130626296378', 35, 'M', 'nil', '8064893684', 'Sohon-Pada Gyangyang', 'na', 9.585180000, 9.982180000),
(876, 117, 'Aisha Hassan', 2, '90F5B07764520968224', 32, 'F', 'nil', 'n/a', 'Sohon-Pada Gyangyang', 'na', 9.831210000, 9.826940000),
(877, 117, 'Victoria Benjamin', 2, '90F5B19DB2415962148', 34, 'M', 'nil', '8065755412', 'By COCIN, Dengi', 'na', 9.416540000, 9.590770000),
(878, 117, 'Cyrus Bilbudam', 1, '74830289033', 34, 'F', 'nil', '8104994252', 'Gyangyang', 'na', 9.565690000, 10.048890000),
(879, 117, 'AlhamduMaikano', 2, '90F5B15BDF611946', 37, 'M', 'nil', '8131269995', 'Gyangyang', 'na', 9.564670000, 9.827330000),
(880, 117, 'Goodness Yipam', 2, '71BC3D8B24500524234', 35, 'F', 'nil', 'n/a', 'Gyangyang', 'na', 9.553220000, 9.812730000),
(881, 118, 'Halima Abdulmajid', 2, '90F58B20F06286291773', 44, 'F', 'nil', '8067287596', 'Gamuga Dengi', 'na', 9.358600000, 9.957320000),
(882, 118, 'Alty Butyum', 1, '22126834513', 34, 'F', 'nil', '7083747555', 'Gidgid', 'na', 9.471400000, 9.780600000),
(883, 118, 'Mary John', 2, 'FA5B3EC0B5545715348', 42, 'F', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.358600000, 9.957320000),
(884, 118, 'Murjanatu Hudu', 1, '34573280823', 40, 'F', 'nil', 'n/a', 'Sohon-Pada Gyangyang', 'na', 9.591390000, 9.831180000),
(885, 118, 'Shamsiya Muhammed', 2, '90F5B06EF4415883651', 26, 'M', 'nil', 'n/a', 'Bayan-katanga', 'na', 9.368640000, 9.969950000),
(886, 118, 'Lizima Daniel', 2, '90F5AE8FE1516627211', 23, 'F', 'nil', 'n/a', 'Gamuga Dengi', 'na', 9.358600000, 9.957320000),
(887, 118, 'Jonathan Titus', 2, '90F5B050C2415808910', 45, 'F', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.358600000, 9.957320000),
(888, 118, 'Aisha Anas', 2, '90F5B1990D296818684', 25, 'F', 'nil', 'n/a', 'Nursery Dengi', 'na', 9.366150000, 9.963680000),
(889, 118, 'Rahila Ayuba', 1, '5.30E+15', 70, 'F', 'Aged', 'n/a', 'Gyangyang', 'na', 9.368860000, 9.978440000),
(890, 118, 'Ruth Silas', 2, '00FB301445863074357', 52, 'F', 'nil', 'n/a', 'Gyangyang', 'na', 9.573510000, 9.821990000),
(891, 119, 'Lapa''am Mai''anguwa', 2, '90F5B13CDC216260', 30, 'M', 'nil', '7039616779', 'Gyangyang', 'na', 9.520200000, 9.830210000),
(892, 119, 'Raymond Dashe', 2, '90F5B17C27493249613', 36, 'M', 'nil', '8065493001', 'Behind Dengi Motor Park', 'na', 9.350790000, 9.955080000),
(893, 119, 'Gabriel Titus', 2, '90F5BC2415802757', 37, 'M', 'nil', '9159300129', 'By COCIN, Dengi', 'na', 9.386410000, 10.034730000),
(894, 119, 'Salome Oscar', 2, '90F5AFD25E507116600', 40, 'F', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.417130000, 10.048060000),
(895, 119, 'Balpulam Amos', 1, '49819657431', 38, 'F', 'nil', 'n/a', 'Lowcost Dengi', 'na', 9.378940000, 9.981580000),
(896, 119, 'Karfe B. John', 1, '17833554145', 40, 'M', 'nil', 'n/a', 'Lowcost Dengi', 'na', 9.367610000, 9.977350000),
(897, 119, 'Kauna Mohammadu', 1, '43267848220', 56, 'F', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.408290000, 9.953440000),
(898, 119, 'Bamaiyi Skumkya', 2, '90F5B243C4507549462', 32, 'M', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.418620000, 9.946320000),
(899, 119, 'Cardiffa Godwin', 3, 'BUU15116AA10', 36, 'F', 'nil', 'n/a', 'By COCIN, Dengi', 'na', 9.416440000, 10.049090000),
(900, 119, 'Abdulazeez Galadima', 1, '68006786103', 41, 'M', 'nil', 'n/a', 'Kyansangi', 'na', 9.386410000, 10.034730000),
(901, 120, 'Abdulrahaman Shehu', 5, 'nil', 20, 'M', 'nil', '7038059616', 'Anguwan Yipmong', 'na', 9.242350000, 9.994620000),
(902, 120, 'Musa Zakariya M.', 1, '12815951365', 28, 'M', 'nil', '8039104962', 'Anguwan Yipmong', 'na', 9.241850000, 9.995260000),
(903, 120, 'Usman Magaji', 2, '90F591D0A8295714930', 45, 'M', 'nil', '9132750664', 'Anguwan Yipmong', 'na', 9.242450000, 9.994920000),
(904, 120, 'Ismaila Usman', 2, '90F5AE6510216253110', 46, 'M', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.241850000, 9.995260000),
(905, 120, 'Abdulrahaman Aliyu', 1, '1045885381', 35, 'M', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.242080000, 9.995220000),
(906, 120, 'Umaima Akilu', 2, '90F5AD8C9296207283', 40, 'F', 'nil', 'n/a', 'Uguwan Goje, Dengi', 'na', 9.242280000, 9.995230000),
(907, 120, 'Rashida Kasimu', 2, '90F5B119AD296033895', 35, 'F', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.242330000, 9.995080000),
(908, 120, 'Yusuf Abubakar', 1, '31126341957', 37, 'M', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.242450000, 9.994920000),
(909, 120, 'Ali Jaoji', 1, '76952330303', 45, 'M', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.242550000, 9.994950000),
(910, 120, 'Umar Yusuf', 2, '90F5AF0CC8295959201', 40, 'M', 'nil', 'n/a', 'Anguwan Yipmong', 'na', 9.242130000, 9.994410000),
(911, 121, 'Adamu Yunusa D.', 2, '90F5AF4516295625619', 60, 'M', 'Aged', '8037675325', 'Umaru Street Dengi', 'na', 9.402780000, 10.048240000),
(912, 121, 'Halladu Abdullahi', 2, '90F5AF4516295700934', 58, 'M', 'nil', '8060868120', 'Umaru Street Dengi', 'na', 9.393560000, 10.044010000),
(913, 121, 'Sawuddeen Mohammed', 2, '90F5B1D78295537755', 39, 'M', 'nil', '8032923246', 'Ibrahim Street, Dengi', 'na', 9.374560000, 10.049880000),
(914, 121, 'Yahaya Haladu', 1, '80692078203', 40, 'M', 'nil', '7037705905', 'Ibrahim Street, Dengi', 'na', 9.396880000, 10.044850000),
(915, 121, 'Umar Zailani', 2, '90F5B07934295340519', 43, 'M', 'nil', '7067742423', 'Umaru Street Dengi', 'na', 9.390520000, 10.041620000),
(916, 121, 'Jibrin Moh''d Lumana', 2, '90F5B07934295610145', 55, 'M', 'nil', '7045133445', 'No. 10 Jos Rd. Dengi', 'na', 9.360520000, 9.941620000),
(917, 121, 'Maryam Busari', 2, '90F5AD18C9295780035', 44, 'F', 'nil', '8101376964', 'No. 10 Jos Rd. Dengi', 'na', 9.229750000, 10.009590000),
(918, 121, 'Azimz Salisu', 2, '90F5B2F06296750314', 25, 'F', 'nil', '8065770171', 'Umaru Street Dengi', 'na', 9.397190000, 10.030690000),
(919, 121, 'Farida Kasimu', 2, '90F5B07934296563862', 29, 'F', 'nil', '7062157991', 'Ibrahim Street, Dengi', 'na', 9.393700000, 10.054660000),
(920, 121, 'KuluIsi Yakha', 1, '30501505086', 36, 'F', 'nil', '9043543412', 'No. 10 Jos Rd. Dengi', 'na', 9.403020000, 10.061750000),
(921, 70, 'Yusufu. G.  Gonten', 2, '90F5AEFC13295280193', 49, 'M', 'NIL', '8066538998', 'Lur', 'Lebwit', 9.595640000, 9.389130000),
(922, 70, 'Catherine Nenkus', 1, '36422280587', 40, 'F', 'NIL', '8103324293', 'COCIN CC Tunwut Lur', 'Lur', 9.581270000, 9.382420000),
(923, 70, 'Elisha Kasuwa', 2, '030DEF5B5F415869817', 68, 'M', 'NIL', '7066660521', 'Tuwan', 'Lur', 9.582870000, 9.386040000),
(924, 70, 'Lapshak Nyansu', 2, '90F5AEFC13295859360', 37, 'M', 'NIL', '8137170271', 'Lur', 'Lur', 9.588870000, 9.378900000),
(925, 70, 'Kamji Miri', 1, '19923425716', 40, 'M', 'NIL', '7030229506', 'Roman Catholic Dangkom', 'Kwal', 9.600210000, 9.356790000),
(926, 70, 'Williams Miri', 1, '11403174736', 48, 'M', 'NIL', '8138236095', 'COCIN CC Lur', 'Lur', 9.620290000, 9.361500000),
(927, 70, 'Dashe Bewarang', 1, '82951234144', 38, 'M', 'NIL', '9038512212', 'Oppt GSS Gyangyang', 'Gyangyang', 9.658200000, 9.474420000),
(928, 70, 'Esther Golda', 2, '90F5AEFC13295801482', 65, 'F', 'NIL', '8104199816', 'Lur', 'Lur', 9.583130000, 9.382850000),
(929, 70, 'Fidelia Golis', 2, '90F5AEFC13295430970', 65, 'F', 'NIL', 'NIL', 'Lur', 'Lur', 9.584740000, 9.376880000),
(930, 70, 'Pomina Nentawe', 1, '87015752626', 47, 'F', 'NIL', '7036577096', 'Pri Sch Lur', 'Lur', 9.586500000, 9.377200000),
(931, 71, 'Pikat David Goson', 1, '5.30E+15', 68, 'M', 'NIL', '8146108721', 'Tuwan', 'Kwal', 9.613430000, 9.364120000),
(932, 71, 'Jina Yilben', 2, '90F5B01C77295977196', 69, 'M', 'NIL', '9067900236', 'Somji A', 'Kwal', 9.613870000, 9.364070000),
(933, 71, 'Pangji Shikritda Muwang ', 1, '21701627276', 52, 'M', 'NIL', '8032776340', 'Catholic Chur Kabwir', 'Chikan ', 9.612600000, 9.418490000),
(934, 71, 'Gochedang Gogwim', 2, 'AAAAAAAAAA296041121', 44, 'M', 'NIL', '8104563202', 'Leptar', 'Longa', 9.647380000, 9.509910000),
(935, 71, 'Zumji Gombat', 5, 'nil', 46, 'M', 'NIL', '8068070556', '', '', 9.622480000, 9.431740000),
(936, 71, 'Jidima Gogwim', 1, '63172480950', 48, 'M', 'NIL', '7032956375', 'RCM CHUR Dungung', 'Tuwan', 9.604620000, 9.370460000),
(937, 71, 'Seket Kopritda', 2, '90F5AD4C51295958935', 41, 'F', 'NIL', '7030745722', 'Dungung B', 'Tuwan', 9.606680000, 9.370750000),
(938, 71, 'Wusitda Wukatda', 2, '90F5B04709295706520', 43, 'M', 'NIL', '7067742444', 'Dangkem', 'Kwal', 9.608310000, 9.374610000),
(939, 71, 'Nendirmwa Jerry', 2, '90F5AF5956513582308', 39, 'F', 'NIL', '8061686555', 'Lur', 'Tabulung', 9.595000000, 9.451350000),
(940, 71, 'Ruth Danny', 5, 'nil', 53, 'F', 'NIL', '7025541086', '', '', 9.633780000, 9.501630000),
(941, 72, 'Sylvester Gokum', 2, '030DEF5B5F416209358', 48, 'M', 'NIL', '8037770944', 'Chikan', 'Kabwir', 9.565300000, 9.389400000),
(942, 72, 'Nanring Nden', 2, '030DEF5B5F416401984', 32, 'F', 'NIL', '7035480361', 'Kabwir RCM', 'lUR', 9.563680000, 9.386280000),
(943, 72, 'Izang Arin John', 2, '90F5AF295624230', 50, 'M', 'NIL', '8065060058', 'Fazumung', 'Kabwir', 9.564090000, 9.390710000),
(944, 72, 'Agatha Manji', 2, '90F5B118A2296124712', 30, 'F', 'NIL', '9076900657', 'RCM ', 'Kabwir', 9.580360000, 9.383920000),
(945, 72, 'Kaswe Lilian Nendenwe', 1, '75837377738', 32, 'F', 'NIL', '7035303908', 'kabwir ', ' Kabwir pada ', 9.562350000, 9.391250000),
(946, 72, 'Chalnan Bongko', 2, '90F5B118A2295446583', 38, 'F', 'NIL', '7062715010', 'RCM ', 'kabwir pada ', 9.565100000, 9.388850000),
(947, 72, 'Khasweh Nendenwe', 1, '5.30E+15', 48, 'M', 'NIL', '7032141298', 'PHC Clinic kabwir ', 'Kabwir', 9.562600000, 9.390080000),
(948, 72, 'Rotdirmwa James', 2, '90F5B118A2295702363', 27, 'F', 'NIL', '8144753490', 'RCM ', 'Kabwir', 9.567660000, 9.392240000),
(949, 72, 'Charbemwa Linus', 2, '90F5AF1DFC296570784', 40, 'F', 'NIL', '8139725699', 'Leptar', 'Leptar', 9.559890000, 9.385980000),
(950, 72, 'Kamshak Sylvester', 1, '24712389382', 25, 'M', 'NIL', '814395147', 'Catholic Church Kabwir ', 'Kabwir', 9.565230000, 9.389590000),
(951, 73, 'Mary Peter', 2, '030DEF5B5F416405334', 51, 'F', 'NIL', '7034826972', 'Tuwan Kabwir', 'Tuwan', 9.578800000, 9.396890000),
(952, 73, 'Tabitha Caleb', 1, '33781131096', 49, 'F', 'NIL', '8160052574', 'oppt GSS Dawaki', 'Nemel ', 9.567800000, 9.431600000),
(953, 73, 'Mary Nengak', 1, '17062082075', 45, 'F', 'NIL', '7060984879', 'G Gomwalk ', 'Tuwan ', 9.578770000, 9.396850000),
(954, 73, 'Nandir Ayuba', 1, '98309148170', 50, 'F', 'NIL', '8069332770', 'Ecwa Church Kabwir', 'Tuwan', 9.569780000, 9.393460000),
(955, 73, 'Jemimmah Emmanuel', 1, '81609615854', 50, 'F', 'NIL', '8035023383', 'COCIN CC Tuwan ', 'Tuwan ', 9.577240000, 9.382520000),
(956, 73, 'Laraba Titus', 1, '41787412014', 51, 'F', 'NIL', '7038114226', 'COCIN CC Lebwit', 'Kabwir', 9.589680000, 9.385490000),
(957, 73, 'Bonmwa Timothy', 1, '34160788077', 48, 'F', 'NIL', '8064793050', 'Tuwan', 'Chim', 9.569220000, 9.389930000),
(958, 73, 'Mildred Gokum', 1, '64726092080', 57, 'F', 'NIL', '8069740178', ' New LAYOUT ', 'Kabwir', 9.572400000, 9.435510000),
(959, 73, 'Ritkatmwa Simon', 1, '44821223692', 38, 'F', 'NIL', '8065028631', 'Opp Police Station ', 'Kabwir', 9.567550000, 9.388890000),
(960, 73, 'Pandirmwa Tanko', 1, '85099098934', 48, 'F', 'NIL', '8064622164', 'Chim', 'Kabwir', 9.572250000, 9.389680000),
(961, 74, 'Nendirmwa Silas', 2, '90F5B15735247831021', 29, 'F', 'NIL', '903387856', 'Kabwir RCM ', 'Kabwir', 9.559680000, 9.392400000),
(962, 74, 'Mulengnen Alheri', 1, '90018812189', 25, 'F', 'NIL', '8109519339', 'Kanke', 'Kabwir', 9.559190000, 9.389660000),
(963, 74, 'Wukatwe Pelji', 1, '11668661820', 28, 'M', 'NIL', '8134660435', 'kanke Resort', 'Sharram', 9.552950000, 9.380740000),
(964, 74, 'Nendirmwa Mwaliwe', 1, '42138064497', 24, 'F', 'NIL', '708082288', 'Chigwong ML8', 'Kabwir', 9.559240000, 9.388510000),
(965, 74, 'Zumdalmwa Ezekiel', 2, '90F5AE909B295518538', 30, 'F', 'NIL', '7060775544', 'Lebwit', 'Kabwir', 9.567270000, 9.388560000),
(966, 74, 'Rahap Katshika', 2, '90F5B125C2535442411', 25, 'F', 'NIL', '9136985885', 'RCM', 'Kabwir RCM', 9.558550000, 9.390090000),
(967, 74, 'Chidi Melody', 1, '82651876290', 26, 'M', 'NIL', '7038346275', 'Catholic Chur Kabwir', 'Kabwir', 9.570080000, 9.391940000),
(968, 74, 'Semshak Paul', 1, '55814563383', 26, 'M', 'NIL', '8168850000', 'Pankshin Road', 'Kabwir', 9.567690000, 9.388860000),
(969, 74, 'Darbe Hamin', 1, '57447482009', 42, 'M', 'NIL', '8133901332', 'RCM Church Rangkhim', 'Kabwir', 9.566260000, 9.388710000),
(970, 74, 'Mark Emmanuel', 1, '10080948824', 26, 'M', 'NIL', '8146364823', 'Pri Sch Dadur', 'Kabwir', 9.562840000, 9.389060000),
(971, 75, 'Gwanji Kantem', 1, '63952286099', 50, 'M', 'NIL', '7063168002', 'Catholic Chur Kabwir', 'kabwir pada ', 9.561640000, 9.393420000),
(972, 75, 'Lapji Suwa', 1, '13189804132', 47, 'M', 'NIL', '8187404557', 'Catholic Chur Kabwir', 'kabwir pada ', 9.561310000, 9.402800000),
(973, 75, 'James Nko', 1, 'S7Y0ORZRD0002LI', 48, 'M', 'NIL', '-', 'Catholic Chur Kabwir', 'kabwir pada ', 9.561900000, 9.403290000),
(974, 75, 'Godwin Deshi', 1, '37368883478', 59, 'M', 'NIL', '7032674644', 'Catholic Chur Kabwir', 'kabwir pada ', 9.567610000, 9.388880000),
(975, 75, 'Bauchi Gowong', 1, '63855782235', 43, 'M', 'NIL', '9034925767', 'Kabir Pada', 'Kabwir', 9.560980000, 9.402750000),
(976, 75, 'Emmanuel Gowok', 2, '90F5AEDC29295512921', 40, 'M', 'NIL', '9024180400', 'Kabwir pada', 'kabwir pada ', 9.560040000, 9.400490000),
(977, 75, 'Phustina Neshak', 1, '73196309657', 42, 'F', 'NIL', '8135418596', 'Kabwir pada', 'kabwir pada ', 9.561010000, 9.402700000),
(978, 75, 'Daratu Wufwinna', 5, 'NIL', 40, 'F', 'NIL', '8137845880', '', '', 9.562200000, 9.403240000),
(979, 75, 'Jerusa labji', 1, '83883430572', 43, 'F', 'NIL', '8145897996', 'Kabwir pada', 'Kabwir', 9.563450000, 9.399940000),
(980, 75, 'Paulina Wumorra', 1, '10320340254', 41, 'F', 'NIL', '8038807497', 'Kabwir pada', 'Kabwir ', 9.562120000, 9.402570000),
(981, 76, 'Victoria Fitoka', 1, '82600475170', 53, 'F', 'NIL', '7035517915', 'NIL', 'NIL', 9.577660000, 9.378490000),
(982, 76, 'Filmwakat Danjuma ', 1, '71426148387', 43, 'F', 'NIL', '8134795469', 'COCIN CC Lur', 'Lur', 9.577660000, 9.378490000),
(983, 76, 'Veronica Gotau', 1, '5.30E+15', 42, 'F', 'NIL', '708186896', 'COCIN CC Lur', 'Lur', 9.577660000, 9.378490000),
(984, 76, 'Nyodelmwa Nendir', 1, '45116474130', 33, 'F', 'NIL', '9137233349', 'Catholic Church Lur', 'Lur', 9.577660000, 9.378490000),
(985, 76, 'Naposin Ponap', 1, '99116572405', 57, 'F', 'NIL', '7047144842', 'RCM Church Lur', 'Lur', 9.577660000, 9.378490000),
(986, 76, 'Angela Chindaba', 1, '93573514993', 57, 'F', 'NIL', 'NIL', 'COCIN CC Lur', 'Lur', 9.577660000, 9.378490000),
(987, 76, 'Yosi  Shugaba ', 1, '57330780594', 49, 'F', 'NIL', '8135813887', 'COCIN CC Lur', 'Lur', 9.577660000, 9.378490000),
(988, 76, 'Happy Juryit', 1, '42527199574', 27, 'F', 'NIL', '7066287264', 'Lowcost Pankshin', 'Lur', 9.577660000, 9.378490000),
(989, 76, 'Laraba Somji', 1, '54032088832', 40, 'F', 'NIL', '-', 'RCM Church Lur', 'Lur', 9.577660000, 0.000000000),
(990, 76, 'Kitshimwa Shedrach', 1, '24491272524', 48, 'F', 'NIL', 'NIL', 'COCIN CC Lur', 'Lur', 9.577660000, 9.378490000),
(991, 77, 'Biihatu Samuel', 2, '9076354', 49, 'F', 'NIL', '9019465415', 'COCIN CC Dangchor', 'Tuwer', 9.534750000, 9.357420000),
(992, 77, 'Kasmwakat Ayuba Golji', 1, '17215130481', 25, 'F', 'NIL', '9063378264', 'COCIN CC Dangchor', 'Angwan Gorchar', 9.530910000, 9.364480000),
(993, 77, 'Piritmwa Yohanna', 2, '9174503', 25, 'F', 'NIL', '8188452128', 'COCIN CC Dangchor', 'SOR', 9.331400000, 9.357090000),
(994, 77, 'Shangtokmwa Sati', 2, '9090325', 40, 'F', 'NIL', '9133286153', 'COCIN CC Dangchor', 'SOR', 9.531670000, 9.356800000),
(995, 77, 'Gloria Luka', 1, '54040974664', 27, 'F', 'NIL', '8169971819', 'COCIN CC Dangchor', 'SOR', 9.532520000, 9.359740000),
(996, 77, 'Nengak Mutol', 5, 'NIL', 45, 'M', 'NIL', '8132095978', '', '', 9.334010000, 9.357150000),
(997, 77, 'Saratu Amos', 1, '59071520807', 65, 'F', 'NIL', '9064522675', 'COCIN CC Dangchor', 'Pofor', 9.530540000, 9.364700000),
(998, 77, 'Danjuma Joshua', 2, '941672', 44, 'M', 'NIL', '8188364870', 'COCIN CC Dangchor', 'Pangkop', 9.529200000, 9.361990000),
(999, 77, 'Nasa', 2, '35723729', 80, 'F', 'NIL', '8028976812', 'Cathoilc Chur Dangchor', 'Pangkop', 9.530870000, 9.360870000),
(1000, 77, 'Kisitmwa Toma', 1, '12200895029', 41, 'F', 'NIL', '8122667959', 'Catholic Chur Dangchor', 'SOR', 9.530370000, 9.365300000),
(1001, 78, 'Jurtin Dogo', 1, '89006202013', 40, 'M', 'NIL', '8086266885', 'COCIN CC Shangkom', 'Luwarang', 9.546710000, 9.328880000),
(1002, 78, 'Martha Silas', 2, '9074316', 45, 'F', 'NIL', '8066304614', ' Dangchor', 'Dangchor', 9.559700000, 9.338440000),
(1003, 78, 'Godiya Joel', 5, 'NIL', 45, 'F', 'NIL', '7034815781', '', '', 9.547600000, 9.329820000),
(1004, 78, 'Nenritmwa Wuchirwe', 2, '9416046769', 29, 'F', 'NIL', '9130704166', 'COCIN Shangkom', 'Luwarang', 9.546620000, 9.328700000),
(1005, 78, 'Nakur Emmanuel', 2, '27604134', 45, 'F', 'NIL', '814750358', 'COCIN CC Kagar', 'Tir', 9.548780000, 9.331720000),
(1006, 78, 'Kassem Joseph', 5, 'NIL', 30, 'F', 'NIL', '9073743237', 'NIL', 'NIL', 9.549620000, 9.330870000),
(1007, 78, 'Rose Peter', 2, '9743315', 45, 'F', 'NIL', '8090937228', 'COCIN CC Kagar', 'negit', 9.547760000, 9.330630000),
(1008, 78, 'Dechi Wukpi', 2, '9076229', 50, 'M', 'NIL', '7059826026', 'COCIN CC Kagar', 'Luwarang Kagar', 9.550100000, 9.332350000),
(1009, 78, 'Wokgam Tampi', 2, '9895203', 23, 'M', 'NIL', '8078786298', 'COCIN CC Shangkom', 'Shangkom', 9.547330000, 9.329740000),
(1010, 78, 'Lepan Yilji', 2, '9461758', 50, 'M', 'NIL', '81566570265', 'COCIN CC Kagar', 'Kagar', 9.550420000, 9.332210000),
(1011, 79, 'Manasseh Dache', 2, '9618214', 40, 'M', 'NIL', '8149342011', 'COCIN CC Kagar', 'Kagar', 9.548390000, 9.330520000),
(1012, 79, 'Christmas Gowal', 2, '9195744', 50, 'M', 'NIL', '9154797427', 'COCIN CC Kagar', 'Kagar', 9.548390000, 9.330520000),
(1013, 79, 'Gowong Rotshak', 2, '9197010', 50, 'M', 'NIL', '9014441944', 'COCIN CC Kagar', 'Kagar', 9.548390000, 9.330520000),
(1014, 79, 'Bala Ledang', 5, 'NIL', 65, 'M', 'NIL', '7051735155', 'NIL', 'NIL', 9.548390000, 9.330520000),
(1015, 79, 'Betpinmwa Ayuba', 5, 'NIL', 35, 'F', 'NIL', '915646604', 'NIL', 'NIL', 9.548390000, 9.330520000),
(1016, 79, 'Dungtur Nbuk', 2, '9652571', 70, 'M', 'aged', '7069774479', 'COCIN CC Kagar ', 'Kagar', 9.548390000, 9.330520000),
(1017, 79, 'Shuka Miri', 5, 'NIL', 50, 'M', 'NIL', '9024098755', '', 'NIL', 9.548390000, 9.330520000),
(1018, 79, 'Nezum Goladi', 1, '78562079974', 30, 'F', 'NIL', '9079828373', 'COCIN CC Kagar', 'Kagar', 9.548390000, 9.330520000),
(1019, 79, 'Neshi Kefas', 2, '9416869', 50, 'F', 'NIL', '8134920361', 'COCIN CC Kagar', 'Kagar', 9.548390000, 9.330520000),
(1020, 79, 'Jikuk Dakup', 2, '9368180', 50, 'M', 'NIL', '9122022769', 'Catholic Church Kagar', 'Kagar', 9.548390000, 9.330520000),
(1021, 80, 'Wokdok Piwus', 2, '97760017', 32, 'M', 'NIL', '9063647004', 'COCIN CC Kuwang', 'Tompang ', 9.553430000, 9.346440000),
(1022, 80, 'Wokgam Wunkake', 2, '9980276', 38, 'M', 'NIL', '9061587946', 'Catholic church ', 'Rem', 9.556280000, 9.341650000),
(1023, 80, 'Wukada Gotom', 2, '27628991', 27, 'M', 'NIL', '7033548872', 'COCIN CC Shangkom', 'Kuben', 9.540960000, 9.326980000),
(1024, 80, 'Yilbuna Luka', 1, '90208547225', 30, 'M', 'NIL', '8185065118', 'COCIN CC Kagar', 'Lechak', 9.547510000, 9.330490000),
(1025, 80, 'Christmas Philip', 2, '16257437', 29, 'F', 'NIL', '8066179096', 'COCIN CC Kagar', 'Tingfan', 9.549070000, 9.330820000),
(1026, 80, 'Helen Dauda', 2, '9051427', 33, 'F', 'NIL', '8067116887', 'COCIN CC Kagar', 'Kagar', 9.547920000, 9.330970000),
(1027, 80, 'Alheri Ritdirnen', 2, '96918544', 32, 'F', 'NIL', '9063647004', 'COCIN CC Shangkom', 'kUBEN', 9.542990000, 9.327330000),
(1028, 80, 'Nating Lar', 2, '9651862', 40, 'F', 'NIL', '9133539930', 'Catholic Church Kuwang', 'Tamtar', 9.548060000, 9.342080000),
(1029, 80, 'James Shwarbe', 1, '73607423326', 38, 'M', 'NIL', '9061587946', 'COCIN CC Wuye', 'Tamtar', 9.548610000, 9.341430000),
(1030, 80, 'Dakom Dakup', 5, 'NIL', 30, 'M', 'NIL', '7037798659', '', '', 9.556080000, 9.344510000),
(1031, 81, 'Jacob Adamu', 2, '9191731', 45, 'M', 'NIL', '8078797061', 'Catholic Church Lechep', 'Kagar', 9.548870000, 9.331600000),
(1032, 81, 'Tapdang Isaac ', 2, '9317538', 30, 'M', 'NIL', '8162983943', 'COCIN CC Kagar', 'kAGAR', 9.548870000, 9.331600000),
(1033, 81, 'Ishaya Betlebe ', 2, '9743318', 36, 'M', 'NIL', '9060436980', 'Catholic Church Lechep', 'Kagar', 9.548870000, 9.331600000),
(1034, 81, 'Azuba Gogwim', 2, '9372088', 40, 'F', 'NIL', '7036981486', 'COCIN Church Shangkom', 'Kagar', 9.548870000, 9.331600000),
(1035, 81, 'Martha Panchen ', 2, '9729498', 40, 'F', 'NIL', '7081431175', 'Catholic Church Lechep', 'Kagaer', 9.548870000, 9.331600000),
(1036, 81, 'Christopher Gondam', 2, '9187728', 38, 'M', 'NIL', '9039126654', 'Catholic Church Lechep', 'Kagar', 9.548870000, 9.331600000),
(1037, 81, 'Naripmwa Daniel', 5, 'NIL', 30, 'F', 'NIL', '8120479134', 'NIL', 'NIL', 9.548870000, 9.331600000),
(1038, 81, 'Clement Go', 2, '9173250', 35, 'M', 'NIL', '8103782243', 'Catholic Church Lechep', 'Kagar', 9.548870000, 9.331600000),
(1039, 81, 'Nabum Miri', 2, '9546821', 50, 'F', 'NIL', '7034289669', 'COCIN CC Wuye', 'Kagar', 9.548870000, 9.331600000),
(1040, 81, 'Kezia Ambiring', 1, '46871811773', 28, 'F', 'NIL', '9090235235', 'COCIN CC Shangkom', 'kAGAR', 9.548870000, 9.331600000),
(1041, 82, 'Goldungha Golnang', 2, '9189132', 36, 'M', 'NIL', '8035382232', 'COCIN  Church Lepgor', 'Lepgor', 9.537340000, 9.369930000),
(1042, 82, 'Soknung Joseph', 1, '61797371747', 39, 'M', 'NIL', '9138335948', 'Catholic Church Lepgor', 'Lepgor', 9.537140000, 9.369390000),
(1043, 82, 'Nendirmwa Godwin', 1, '73725789458', 41, 'F', 'NIL', '', 'COCIN CC Kagar', 'Kagar', 9.537500000, 9.368140000),
(1044, 82, 'Rose John', 2, '9383072', 38, 'F', 'NIL', '7039784300', 'COCIN CC Lepgor', 'Lepgor', 9.537740000, 9.369100000),
(1045, 82, 'Christiana Yilmuwa', 2, '93592144', 40, 'F', 'NIL', '7032134503', 'COCIN CC Lepgor ', 'Leogor', 9.537010000, 9.369870000),
(1046, 82, 'Fedelia Gonlur', 2, '34625732', 43, 'F', 'NIL', '8181551530', 'COCION CC Lepgor', 'Lepgor', 9.537280000, 9.369920000),
(1047, 82, 'Fibi Gobong', 1, '86215015651', 44, 'F', 'NIL', '8031184956', 'Cathoilic Church Lepgor', 'Lepgor', 9.536920000, 9.368640000),
(1048, 82, 'Sudangi Pangkop', 1, '36671003012', 40, 'M', 'NIL', '7067064931', 'Catholic Church Lepgor', 'Lepgor', 9.538390000, 9.370570000),
(1049, 82, 'Mairafi Deshi', 2, '9045477', 37, 'M', 'NIL', '8146031601', 'Catholic church lepgor', 'LEPGOR', 9.537160000, 9.369600000),
(1050, 82, 'Nenpinmwa Niman', 1, '27839564660', 35, 'F', 'NIL', '8036265374', 'COCIN Church Lepgor', 'lEPGOR', 9.537520000, 9.368140000),
(1051, 83, 'Mark Rankukah', 5, 'NIL', 35, 'M', 'NIL', '8185083028', 'NIL', 'NIL', 9.548020000, 9.345310000),
(1052, 83, 'Dakom Gofwan', 1, '99182414411', 30, 'M', 'NIL', '8097485198', 'Catholic church Wuye', 'Wuye', 9.548020000, 9.345310000),
(1053, 83, 'Dimka Mutol', 1, '27998905799', 35, 'M', 'NIL', '8112666382', 'Catholic Church Wuye', 'Wuye', 9.548020000, 9.345310000),
(1054, 83, 'Joshua Watyil', 2, '28350729', 27, 'M', 'NIL', '7069686834', 'COCIN Church Shangkom', 'Wuye', 9.548020000, 9.345310000),
(1055, 83, 'Yedokah Gakgyi', 2, '9202263', 35, 'M', 'NIL', '8102866106', 'Catholic Church Wuye', 'wUYE', 9.548020000, 9.345310000),
(1056, 83, 'Kasgak Nuhu', 2, '9415526', 33, 'M', 'NIL', '81517445990', 'COCIN Church Shangkom', 'Wuye', 9.548020000, 9.345310000),
(1057, 83, 'Wushwarwe Tungdang', 5, 'NIL', 30, 'M', 'NIL', '7034755390', 'NIL', 'NIL', 9.548020000, 9.345310000),
(1058, 83, 'Yasa Bulus', 1, '89501754665', 35, 'M', 'NIL', '8169339219', 'COCION Chu ShanKOM', 'Wuye', 9.548020000, 9.345310000),
(1059, 83, 'Wokishangeh Bitrus', 5, 'NIL', 35, 'M', 'NIL', '8106652718', 'COCIN Church Shangkom', 'Wuye', 9.548020000, 9.345310000),
(1060, 83, 'Wulengkiwe Deshi', 1, '89906414921', 30, 'M', 'NIL', '7066817092', 'COCIN Church Shangkom', 'Wuye', 9.548020000, 9.345310000),
(1061, 84, 'JOSEPH RIMFAT', 2, '12142701116', 46, 'M', 'NIL', '8062347757', 'NIL', 'N/A', 9.795230000, 9.265170000),
(1062, 84, 'DOMNAN DASHE', 2, '90F5B075DB517491774', 29, 'M', 'NIL', '9032219927', 'NIL', 'N/A', 9.795010000, 9.272010000),
(1063, 84, 'NANBAT JANGKAM', 2, '90F5ADDD9E295802133', 30, 'M', 'NIL', '8101707444', 'Kensong', 'N/A', 9.785550000, 9.264200000),
(1064, 84, 'GABRIEL MAXWELL', 1, 'PL162386982', 52, 'M', 'NIL', '8145096214', 'Kensong', 'N/A', 9.794310000, 9.265510000),
(1065, 84, 'BONGFA CIRPYEN', 2, '90F5ADDD9E295273155', 60, 'M', 'NIL', '9059381815', 'NIL', 'N/A', 9.795070000, 9.265640000),
(1066, 84, 'AMOS DASHE', 2, '90F5ADDD9E296122928', 71, 'M', 'NIL', '7057036512', 'Kensong', 'N/A', 9.795830000, 9.271200000),
(1067, 84, 'CIRKAT JANGKAM', 2, '90F5ADDD9E296209554', 92, 'M', 'aged', 'NIL', 'Kensong', 'N/A', 9.795670000, 9.264260000),
(1068, 84, 'DORKONG FADIP SABIA', 2, '90F5ADDD9E296036849', 70, 'F', 'NIL', '8148559096', 'NIL', 'N/A', 9.795570000, 9.271070000),
(1069, 84, 'WATA SAMSON', 5, 'NIL', 35, 'F', 'NIL', '8056813326', 'NIL', 'N/A', 9.795520000, 9.264170000),
(1070, 84, 'FADI HAWA MADAKI ', 2, '90F5ADDD9E296051532', 67, 'F', 'NIL', '8156288326', 'NIL', 'N/A', 9.794670000, 9.265640000),
(1071, 85, 'LEVINUS HOOLONG', 5, 'NIL', 37, 'M', 'NIL', '9121776931', 'NIL', 'N/A', 9.793250000, 9.264850000),
(1072, 85, 'YAKUBU SELBYEN', 2, '90F5AF4D14296135435', 46, 'F', 'NIL', '7088348866', 'NIL', 'N/A', 9.793740000, 9.283840000),
(1073, 85, 'TYEM SWAMIKAT JASHUA', 1, 'PL649442792', 69, 'F', 'NIL', 'NIL', 'COCIN LOHMAK', 'JANGTION GAZUM', 9.775550000, 9.272690000),
(1074, 85, 'BIMMICHIT SOLOMON', 5, 'NIL', 53, 'F', 'NIL', '9055823506', 'NIL', 'N/A', 9.775220000, 9.282670000),
(1075, 85, 'ROSE ISHAKU', 5, 'NIL', 47, 'F', 'NIL', '8151625714', 'NIL', 'N/A', 9.794650000, 9.273480000),
(1076, 85, 'JUMMAI TALI', 5, 'NIL', 50, 'F', 'NIL', '7088348866', 'NIL', 'N/A', 9.775850000, 9.272910000),
(1077, 85, 'ALICE NANZING', 5, 'NIL', 45, 'F', 'NIL', '8050437872', 'NIL', 'N/A', 9.775850000, 9.275070000),
(1078, 85, 'LUKA MAKCHIT SHITTU', 2, '90F5AF15C3295532759', 62, 'F', 'NIL', '7088348866', 'NIL', 'N/A', 9.791630000, 9.283250000),
(1079, 85, 'BECHAK DASHE', 5, 'NIL', 38, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 9.792740000, 9.273640000),
(1080, 85, 'TELYA NANCHANG', 5, 'NIL', 37, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.794270000, 9.273510000),
(1081, 86, 'PONFA ADAMU', 5, 'NIL', 39, 'M', 'NIL', '8063766573', 'NIL', 'N/A', 9.771710000, 9.264960000),
(1082, 86, 'GUNTULE MWANBONG', 1, '13195705570', 63, 'M', 'NIL', '8102474881', 'NIL', 'N/A', 9.772150000, 9.274470000),
(1083, 86, 'DADOK DOPSAL', 1, '89196547832', 43, 'M', 'NIL', '8030864243', 'Behind Cocin CC, Nag', 'N/A', 9.772010000, 9.262110000),
(1084, 86, 'SEBINA CALEB', 1, '33466223604', 40, 'F', 'NIL', 'NIL', 'Beside Cocin Lcc, Reak', 'N/A', 9.772190000, 9.272270000),
(1085, 86, 'RAMYA NIMFAK', 5, 'NIL', 52, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.771670000, 9.274380000),
(1086, 86, 'TALATU MICHAEL', 5, 'NIL', 47, 'F', 'NIL', '8030864243', 'NIL', 'N/A', 9.773190000, 9.272050000),
(1087, 86, 'LOHYA NANDUL', 2, 'INC22000000010932464', 31, 'F', 'NIL', '8030864243', 'Reak', 'N/A', 9.771600000, 9.259710000),
(1088, 86, 'HANNATU PETER', 2, '90F5AF4D14296126530', 48, 'F', 'NIL', '8161769936', 'Reak', 'N/A', 9.771950000, 9.234950000),
(1089, 86, 'MARKAT JAMES', 5, 'NIL', 44, 'F', 'NIL', '8063766573', 'NIL', 'N/A', 9.771580000, 9.225630000),
(1090, 86, 'CHANGCHIT LOHNAN', 2, 'INC22000000010788284', 35, 'F', 'NIL', '8063766573', 'Reak', 'N/A', 9.772580000, 9.225880000),
(1091, 87, 'SELBOL ZWALFA', 1, '55350544371', 39, 'M', 'NIL', '8106093384', 'BEHIND COCIN LCC NACHANG, BWARAT', 'N/A', 9.772140000, 9.231240000),
(1092, 87, 'RIMFA NAPBUT', 1, '10504511013', 40, 'M', 'NIL', '8106093384', 'NIL', 'N/A', 9.672480000, 9.235610000),
(1093, 87, 'NANMWA DANIEL', 1, '51630627467', 37, 'M', 'NIL', '8036692839', 'Behind Cocin CC Nachang, Reak', 'N/A', 9.672120000, 9.231240000),
(1094, 87, 'HASSANA LACHAK', 5, 'NIL', 36, 'F', 'NIL', '9025889446', 'NIL', 'N/A', 9.652850000, 9.231500000),
(1095, 87, 'JUMMAI LAR', 2, '90F5AF4D14295851794', 52, 'F', 'NIL', '8036692839', 'Reak', 'N/A', 9.672680000, 9.238480000),
(1096, 87, 'YENKAT YAKUBU', 5, 'NIL', 31, 'F', 'NIL', '8036692839', 'NIL', 'N/A', 9.671880000, 9.231040000),
(1097, 87, 'EDWARD MADUGU', 1, '63547337590', 34, 'M', 'NIL', '8133565420', 'NIL', 'N/A', 9.671880000, 9.231260000),
(1098, 87, 'JULYA LOHNAN', 2, '90F5AF4D14296746415', 37, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.672290000, 9.231210000),
(1099, 87, 'MARY POYI', 2, '90F5AF4D14296470439', 52, 'F', 'NIL', '8036692839', 'NIL', 'N/A', 9.672870000, 9.231770000),
(1100, 87, 'HABIBA THOMAS', 2, '90F5AF4D14296058620', 92, 'F', 'AGED', '8036692839', 'NIL', 'N/A', 9.672580000, 9.238150000),
(1101, 88, 'JULIUS NIMKPAR', 1, '17331321015', 32, 'F', 'NIL', '9131235900', 'NIL', 'N/A', 9.673820000, 9.234070000),
(1102, 88, 'ESTHER RIMMAN', 2, '90F5AED782295517580', 41, 'F', 'NIL', '9034315886', 'NIL', 'N/A', 9.673980000, 9.234950000),
(1103, 88, 'LOHDE DOMBIN', 1, '17928816044', 43, 'F', 'NIL', '8074359449', 'Opposite LGEA pri. School, Reak', 'N/A', 9.677230000, 9.236450000),
(1104, 88, 'LOHDIR MIRI', 2, '71BC12CCCC296137000', 59, 'F', 'NIL', '9034315886', 'Lohmak', 'N/A', 9.672880000, 9.233490000),
(1105, 88, 'NIMMAK WABUT', 1, '23501319375', 36, 'M', 'NIL', '8138194078', 'Opposite Ponzhi Palace Reak', 'N/A', 9.674330000, 9.234470000),
(1106, 88, 'AGBOR CHRISTIANA CHRISTOPHER', 1, '15779496425', 33, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.674220000, 9.235410000),
(1107, 88, 'NIMNAN DASHE', 1, '54365542803', 27, 'M', 'NIL', '8110465253', 'Opposite area court, Reak-Bwarat', 'N/A', 9.674150000, 9.234750000),
(1108, 88, 'MARY ISHAYA', 1, '92565360614', 37, 'F', 'NIL', '9052444181', 'Opposite Yabo Baprtist Church, Dadur', 'N/A', 9.693260000, 9.235180000),
(1109, 88, 'BALI VENTUR', 1, '24391990797', 32, 'M', 'NIL', '8159907685', 'Close to COCIN LCC,Reak', 'N/A', 9.672860000, 9.233940000),
(1110, 88, 'SELMAN BUTKO', 1, '54861952487', 45, 'M', 'NIL', '8137913010', 'Adjacent LEA pri. School, Reak', 'N/A', 9.672380000, 9.233760000),
(1111, 89, 'JONAH NANDAT BINLIR', 1, '880358742', 38, 'F', 'NIL', '7039376040', 'NIL', 'N/A', 9.693470000, 9.236490000),
(1112, 89, 'BLESSING NANPON', 1, '48779920795', 35, 'F', 'NIL', '8138237520', 'Beside P.H.C Clinic, Dadur', 'N/A', 9.692610000, 9.232020000),
(1113, 89, ' DASHE TIMBYEN TIMKUR', 1, '66577487603', 30, 'F', 'NIL', '7068676748', 'NIL', 'N/A', 9.692980000, 9.234110000),
(1114, 89, 'MONICA MALLAM', 2, '90F5AD4C4E296140703', 46, 'F', 'NIL', '9068910396', 'Laka', 'N/A', 9.693950000, 9.232970000),
(1115, 89, 'TANBYEN TAHBONG N', 2, '90F5B1CB83505133224', 24, 'F', 'NIL', '8110465253', 'NIL', 'N/A', 9.691220000, 9.235050000),
(1116, 89, 'ALICE STEPHEN', 2, '90F5AF5757296203477', 62, 'F', 'NIL', '9059430106', 'NIL', 'N/A', 9.693080000, 9.232610000),
(1117, 89, 'REBECCA SELCHAK', 5, 'NIL', 39, 'F', 'NIL', '8066052445', 'NIL', 'N/A', 9.692650000, 9.231620000),
(1118, 89, 'FAKMICHIT PYANG', 5, 'NIL', 45, 'F', 'NIL', '9054337615', 'NIL', 'N/A', 9.692610000, 9.231580000);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(1119, 89, 'ESTHER LAVEN', 5, 'NIL', 33, 'F', 'NIL', '8145096214', 'nn', 'N/A', 9.692990000, 9.231750000),
(1120, 89, 'JULBYEN SELDIP', 5, 'NIL', 28, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.693940000, 9.232580000),
(1121, 90, 'NANJI NANLIR SAMUEL', 1, '37103691032', 46, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.692810000, 9.231260000),
(1122, 90, 'GAMDE DAMCIT VONGRIM', 1, '21450608594', 42, 'F', 'NIL', '8073470439', 'Dadur', 'N/A', 9.692890000, 9.232230000),
(1123, 90, 'NANYA DALANG', 1, '94346109024', 43, 'F', 'NIL', '8066842612', 'opposite P.H.C clinic, Dadur', 'N/A', 9.692620000, 9.231440000),
(1124, 90, 'DINCI VENMAK', 5, 'NIL', 37, 'F', 'NIL', '8121928046', 'NIL', 'N/A', 9.692560000, 9.231750000),
(1125, 90, 'MARGRET DANJUMA', 2, '90F5AF5757296463749', 42, 'F', 'NIL', '8053170401', 'NIL', 'N/A', 9.692910000, 9.231800000),
(1126, 90, 'SELINA PETER', 2, '90F5AF5757296480249', 46, 'F', 'NIL', '8067392212', 'Dadur primary school', 'N/A', 9.695820000, 9.231430000),
(1127, 90, 'NANDIR SHALGANG', 2, '90F5B15F16296055048', 55, 'F', 'NIL', '7052814127', 'Dadur Naki', 'N/A', 9.693260000, 9.234760000),
(1128, 90, 'FEKAT BINBOL', 2, '90F5AF5757296064216', 42, 'F', 'NIL', '7066678903', 'NIL', 'N/A', 9.692580000, 9.232060000),
(1129, 90, 'RWAMICIT NIMMYEL', 5, 'NIL', 44, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 9.693610000, 9.233240000),
(1130, 90, 'NANBYEN PONDUL NANMWA', 2, '90F5AFE2BD519398986', 34, 'F', 'NIL', '9152575555', 'NIL', 'N/A', 9.692510000, 9.231330000),
(1131, 91, 'LOHFA GANJWAM', 5, 'NIL', 46, 'F', 'NIL', '8034320773', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1132, 91, 'POLYCARP VENTIM SELBAR', 5, 'NIL', 44, 'M', 'NIL', '7067898170', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1133, 91, 'NANKUR KAMDIP', 5, 'NIL', 32, 'M', 'NIL', '7047479679', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1134, 91, 'MASKY WUYEP', 5, 'NIL', 38, 'M', 'NIL', '8133266414', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1135, 91, 'VONGBUT LOHYA', 2, '90F5AF9A57295950980', 47, 'F', 'NIL', '803327217', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1136, 91, 'NANJUL HOSEA', 5, 'NIL', 36, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1137, 91, 'BABA MUTUM', 5, 'NIL', 40, 'M', 'NIL', '8103533896', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1138, 91, 'NANMAR ZHANTUR', 5, 'NIL', 31, 'F', 'NIL', '7039404233', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1139, 91, 'MAKCIT KUMNAN', 5, 'NIL', 38, 'F', 'NIL', '9137777669', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1140, 91, 'ZITTA EMMANUEL VENTIM', 2, '90F5AED613298312656', 31, 'M', 'NIL', '7068009272', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1141, 92, 'NANZING MAINA ', 5, 'NIL', 38, 'M', 'NIL', '8137601267', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1142, 92, 'NANSOH RINGPON', 5, 'NIL', 46, 'F', 'NIL', '8162509609', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1143, 92, 'DEBORAH MAINA', 5, 'NIL', 36, 'F', 'NIL', '8149415633', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1144, 92, 'FALANG NANCWAT', 5, 'NIL', 41, 'F', 'NIL', '8160979279', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1145, 92, 'NIMFA N. SHAGAYA', 1, '95280924932', 45, 'M', 'NIL', '7030601081', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1146, 92, 'REMICIT ALEX REJOICE', 2, '90F5B075DB518779699', 33, 'F', 'NIL', '7011223985', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1147, 92, 'NANBYEN DANLADI', 2, '90F5AED6E3296305246', 39, 'F', 'NIL', '9066386452', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1148, 92, 'ALEX NDAM TYEM', 1, '15340360363', 47, 'M', 'NIL', '7036153209', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1149, 92, 'MARFE KAMFA', 5, 'NIL', 39, 'M', 'NIL', '8027883992', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1150, 92, 'DOMMKA ALEX', 2, '90F5AF1DC8296047295', 30, 'M', 'NIL', '7062565625', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1151, 93, 'PETER KUMZWAN YOHANA', 2, '90F5ADD6E3295533767', 51, 'M', 'NIL', '701122395', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1152, 93, 'MANYA BALI', 2, '90F5AED6E3295861070', 42, 'F', 'NIL', '8068756835', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1153, 93, 'DALEN MAILOSHI', 5, 'NIL', 46, 'F', 'NIL', '8034576201', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1154, 93, 'PONZING BINZHI', 2, '90F5AF1DC8296552754', 40, 'M', 'NIL', '7062343231', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1155, 93, 'NANNA LOHNAP', 1, '89735885753', 41, 'F', 'NIL', '7066379447', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1156, 93, 'CHARITY JOSEPH', 5, 'NIL', 39, 'M', 'NIL', '8126836723', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1157, 93, 'STEPHEN BUROMVYAT', 5, 'NIL', 49, 'F', 'NIL', '7084686302', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1158, 93, 'NANFE DOMTUR', 2, '90F5B154BC511517252', 35, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1159, 93, 'NANCHAL G JATAU', 5, 'NIL', 35, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1160, 93, 'DANLADI NYER', 5, 'NIL', 41, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1161, 94, 'VONGJUL ADAMU', 2, '90F5B1908055538720', 41, 'M', 'NIL', '8065591670', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1162, 94, 'GABRIEL PYENZHI', 2, '90F5AEBD71266860423', 62, 'M', 'NIL', '8134013631', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1163, 94, 'DANJUMA DANGIWA', 5, 'NIL', 42, 'F', 'NIL', '7046344117', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1164, 94, 'LUCKY NANTIP', 5, 'NIL', 37, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1165, 94, 'NANKUR WAPZHI', 5, 'NIL', 30, 'M', 'NIL', '7063275948', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1166, 94, 'SOLOMON SAUL', 5, 'NIL', 46, 'M', 'NIL', '7062712795', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1167, 94, 'PONMAK VONGBUT', 2, '90F5AF9A57295259813', 34, 'M', 'NIL', '8144241023', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1168, 94, 'MOYA SUNDAY', 2, '90F5B06C97296143249', 46, 'F', 'NIL', '9058595626', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1169, 94, 'MUMMY NANVEN', 2, '90F5AFE3BD516098067', 34, 'F', 'NIL', '8102609555', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1170, 94, 'BOLBIN NTEM', 2, '90F5AF9A57295339936', 50, 'M', 'NIL', '8038108629', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1171, 95, 'DINCHI SAMBO', 5, 'NIL', 39, 'M', 'NIL', '8149544539', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1172, 95, 'MONDAY NANVEN', 2, 'NIL', 37, 'M', 'NIL', '9037816345', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1173, 95, 'NANBOL N. SHAGAYA', 2, '90F5AFE2BD518786744', 32, 'F', 'NIL', '8032579156', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1174, 95, 'NANMWA SIMAN', 2, '90F5AFD5E508419846', 38, 'M', 'NIL', '9022901955', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1175, 95, 'HELEN SELJUL LINUS', 2, '90F5B1803F296654083', 31, 'F', 'NIL', '8107270506', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1176, 95, 'BINZHI DASSAH', 5, 'NIL', 47, 'M', 'NIL', '8064002390', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1177, 95, 'NANBYEN MONDAY', 2, '90F5B075DB518780266', 55, 'F', 'NIL', '9038367384', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1178, 95, 'LOHNAN NANDOK', 2, '90F5B075DB519296592', 23, 'M', 'NIL', '8028694181', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1179, 95, 'BLESSING DANJUMA', 2, '90F5B1603F298559476', 52, 'F', 'NIL', '7068865314', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1180, 95, 'PONNAN KWAMKUR', 5, 'NIL', 33, 'F', 'NIL', '9027387645', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1181, 96, 'NANLA SOUL MIRI', 5, 'NIL', 45, 'F', 'NIL', '7034953953', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1182, 96, 'JULCHIT ISHAYA', 5, 'NIL', 31, 'F', 'NIL', '9025871435', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1183, 96, 'GUNNAP DANGNAK', 5, 'NIL', 34, 'F', 'NIL', '7030784277', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1184, 96, 'CHARITY JOSEPH', 5, 'NIL', 48, 'F', 'NIL', '9138064995', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1185, 96, 'JUMMAI JONATHAN', 5, 'NIL', 41, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1186, 96, 'MANYA NANYAK', 5, 'NIL', 30, 'M', 'NIL', '7060745286', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1187, 96, 'LOHJUL HAMIDU', 5, 'NIL', 37, 'M', 'NIL', '8102950590', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1188, 96, 'MANKO NANBOL SHAGAYA', 2, '90F5AFE516288307', 51, 'M', 'NIL', '9139080131', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1189, 96, 'RAMNAP MALLAM', 5, 'NIL', 38, 'F', 'NIL', '8162967006', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1190, 96, 'SARAH TIMLOH', 5, 'NIL', 31, 'F', 'NIL', '8052738570', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1191, 97, 'NANKAP JOHN WAPZHI', 5, 'NIL', 41, 'M', 'NIL', '9015266193', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1192, 97, 'NANYA MOSCO', 2, '90F5B1603F296320299', 42, 'F', 'NIL', '8028680787', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1193, 97, 'BWAICHAK WAPZHI', 5, 'NIL', 52, 'F', 'NIL', '7062712795', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1194, 97, 'SAMSON LOHDAM', 5, 'NIL', 48, 'F', 'NIL', '7062712795', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1195, 97, 'RAMBOL VONGDUNG', 5, 'NIL', 36, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1196, 97, 'NANKPAK PONTIM', 5, 'NIL', 43, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1197, 97, 'NAPTIM BINBOL', 5, 'NIL', 36, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1198, 97, 'KAPVEN MAMTUR', 5, 'NIL', 34, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1199, 97, 'NACIT LAVEN', 5, 'NIL', 29, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1200, 97, 'SOHDIP LAKONG', 5, 'NIL', 47, 'F', 'NIL', '8068801321', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1201, 98, 'JEREMIAH RIMKAT', 1, '97800427766', 55, 'M', 'NIL', '8033995012', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1202, 98, 'TALI UMARU', 5, 'NIL', 38, 'M', 'NIL', '8183720321', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1203, 98, 'SELMICIT AYUBA', 5, 'NIL', 50, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1204, 98, 'NANBOL DANDAM', 1, '14070546936', 45, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1205, 98, 'VYAPMICIT JAMDA', 5, 'NIL', 58, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1206, 98, 'LADI LAKDE', 1, 'PL578060226', 52, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1207, 98, 'NANRUP KURRAM', 5, 'NIL', 55, 'M', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1208, 98, 'NANBYEN NAPDO', 1, '14508608500', 35, 'F', 'NIL', 'NIL', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1209, 98, ' NANNAL LAZARUS', 5, 'NIL', 40, ' ', 'NIL', '7036551700', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1210, 98, 'PONTIP RAMKAT', 5, 'NIL', 39, 'M', 'NIL', '7047479679', 'NIL', 'N/A', 0.000000000, 0.000000000),
(1211, 122, 'Thomas Ibrahim', 2, '90F5B0342A295797012', 52, 'M', 'nil', '8082760096', 'sabongida', 'Sabongida', 9.740130000, 8.760110000),
(1212, 122, 'Blessing Daman', 2, '90F5B23C5A416060092', 32, 'F', 'nil', 'nil', 'sabongida', 'Sabongida', 9.740130000, 8.760120000),
(1213, 122, 'Nanjul Sauri Dashe', 1, '43642449518', 43, 'M', 'nil', '9067589316', 'sabongida', 'Sabongida', 9.740150000, 8.761110000),
(1214, 122, 'Nanna Ponzing', 1, '74997025643', 36, 'F', 'nil', '7031232409', 'sabongida', 'Sabongida', 9.741120000, 8.762310000),
(1215, 122, 'Yenkat Daniel', 2, '90F5B1C7F7416295325', 34, 'F', 'nil', '8063825980', 'sabongida', 'Sabongida', 9.712960000, 8.719570000),
(1216, 122, 'Ponkat Dennies', 1, '94510782092', 0, 'M', 'nil', 'nil', 'sabongida', 'Sabongida', 9.712870000, 8.719370000),
(1217, 122, 'Timman Joel', 2, '90F5B23809534728475', 42, 'F', 'nil', '8069621027', 'sabongida', 'Sabongida', 9.713950000, 8.718570000),
(1218, 122, 'Laraba Lohnan', 1, '59302737448', 45, 'F', 'nil', '8109309869', 'sabongida', 'Sabongida', 9.740120000, 8.760110000),
(1219, 122, 'Sunday Wabut', 1, '46202128909', 56, 'M', 'nil', 'nil', 'sabongida', 'Sabongida', 9.741120000, 8.761010000),
(1220, 122, 'Hoommi Maigida', 1, '53430533531', 49, 'M', 'nil', '8137161678', 'sabongida', 'Sabongida', 9.740520000, 8.751020000),
(1221, 123, 'Selchang N. Nimchak', 2, '90F5B21043497446742', 40, 'M', 'nil', '8069544947', 'sabongida', 'Sabongida', 9.740120000, 8.760110000),
(1222, 123, 'Domkur Simon Danjuma', 1, '27243067171', 43, 'M', 'nil', '7064190439', 'sabongida', 'Sabongida', 9.741120000, 8.762110000),
(1223, 123, 'Tina Nimnan', 1, '31722322237', 38, 'F', 'nil', '8160978697', 'sabongida', 'Sabongida', 9.740010000, 8.750110000),
(1224, 123, 'Changcit Danborno Rindap', 2, '90F5AFE589216255838', 45, 'F', 'nil', '7067721783', 'sabongida', 'Sabongida', 9.712960000, 8.719570000),
(1225, 123, 'Gideon Nanchak', 2, '30501503211', 33, 'M', 'nil', '7031710847', 'sabongida', 'Sabongida', 9.713810000, 8.733670000),
(1226, 123, 'Julna Wabut', 2, '90F5B23C5A416238700', 31, 'F', 'nil', '8136688516', 'sabongida', 'Sabongida', 9.712960000, 8.719570000),
(1227, 123, 'Nanfir Auta', 1, '98948874815', 30, 'F', 'nil', '9060069892', 'sabongida', 'Sabongida', 9.740010000, 8.750110000),
(1228, 123, 'Kargwak Napgang', 1, '14153413677', 31, 'M', 'nil', '7035040841', 'sabongida', 'Sabongida', 9.741220000, 8.762120000),
(1229, 123, 'Namicit Ibrahim', 2, '90F5B12E81416136056', 44, 'F', 'nil', '7069247612', 'sabongida', 'Sabongida', 9.742120000, 8.762110000),
(1230, 123, 'Zwalnan D. Jatau', 2, '90F5AEDB8C415805884', 51, 'M', 'nil', '8144287413', 'sabongida', 'Sabongida', 9.730120000, 8.730110000),
(1231, 124, 'Vasty Obeb', 2, '90F5AE62DE416302670', 51, 'F', 'WIDOW', '7036609489', 'sabongida', 'Sabongida', 9.710120000, 8.710110000),
(1232, 124, 'Ritta Hassan', 1, '91639341288', 50, 'F', 'WIDOW', '8148788435', 'sabongida', 'Sabongida', 9.710140000, 8.710120000),
(1233, 124, 'Nanfa .T. Pyennap', 1, '84427438508', 38, 'M', 'nil', '9060442238', 'sabongida', 'Sabongida', 9.710110000, 8.710010000),
(1234, 124, 'Nanyak Nimfak', 2, '90F5B1C7F7415892387', 42, 'M', 'nil', '7068154656', 'sabongida', 'Sabongida', 9.713810000, 8.733670000),
(1235, 124, 'Paulina Vonga', 1, '55385115700', 55, 'F', 'WIDOW', '8142917444', 'sabongida', 'Sabongida', 9.740160000, 8.760140000),
(1236, 124, 'Bolcit Gosselle', 1, '79821957917', 57, 'F', 'WIDOW', 'nil', 'sabongida', 'Sabongida', 9.740160000, 8.760140000),
(1237, 124, 'Ruth Zitta', 1, '1847098068', 48, 'F', 'WIDOW', 'nil', 'sabongida', 'Sabongida', 9.760110000, 8.750110000),
(1238, 124, 'Selven Yarnap', 1, '49155363419', 49, 'M', 'nil', '8169134424', 'sabongida', 'Sabongida', 9.740110000, 8.710130000),
(1239, 124, 'Yohana Nanmwa', 1, '71162671515', 39, 'M', 'nil', '7034998757', 'sabongida', 'Sabongida', 9.740120000, 8.710230000),
(1240, 124, 'Nandip Sohkur', 1, '30069656746', 49, 'M', 'nil', '8166007003', 'sabongida', 'Sabongida', 9.741020000, 8.740140000),
(1241, 125, 'Laraba chirbong Yaro', 1, '11187947922', 55, 'F', 'WIDOW', '7038495227', 'sabongida', 'Sabongida', 9.741020000, 8.740140000),
(1242, 125, 'Fadip Gampyal', 2, '349463023', 55, 'M', 'nil', '8035787271', 'sabongida', 'Sabongida', 9.740250000, 8.740220000),
(1243, 125, 'Nanpyal .K. David', 1, '26994091813', 45, 'M', 'nil', '9138700512', 'sabongida', 'Sabongida', 9.740140000, 8.760120000),
(1244, 125, 'Nandak Zakariah', 1, '89470111424', 35, 'F', 'nil', '9039768160', 'sabongida', 'Sabongida', 9.740230000, 8.760320000),
(1245, 125, 'Rachael Zwalnan', 1, '99611671131', 53, 'F', 'nil', '8147742777', 'sabongida', 'Sabongida', 9.740170000, 8.760140000),
(1246, 125, 'Isaac Nanloh Rindap', 1, '15725687798', 58, 'M', 'nil', '8139712790', 'sabongida', 'Sabongida', 9.760010000, 8.730210000),
(1247, 125, 'John Binnim', 1, '24592394920', 55, 'M', 'nil', '7061173671', 'sabongida', 'Sabongida', 9.760440000, 8.760130000),
(1248, 125, 'Helen Isaac', 1, '90042048760', 49, 'F', 'nil', '8020648165', 'sabongida', 'Sabongida', 9.740120000, 8.760220000),
(1249, 125, 'Miri Nansik. I.', 2, '90F5B1D0B7416133639', 58, 'F', 'nil', '8087574814', 'sabongida', 'Sabongida', 9.741120000, 8.760130000),
(1250, 125, 'Nandom Bala', 1, '62581041359', 45, 'M', 'nil', '8144412570', 'sabongida', 'Sabongida', 9.741320000, 8.740120000),
(1251, 126, 'Evelyen Kikyem', 1, '69284275753', 52, 'F', 'WIDOW', '7031655207', 'sabongida', 'Sabongida', 9.740140000, 8.760160000),
(1252, 126, 'Nanchen Lohtim', 2, '90F5B1C7F7415961472', 28, 'M', 'nil', '8100640734', 'sabongida', 'Sabongida', 9.760120000, 8.730140000),
(1253, 126, 'Jeremiah I. Vongrim', 1, '38460012737', 60, 'M', 'nil', '8103581038', 'sabongida', 'Sabongida', 9.760110000, 8.730150000),
(1254, 126, 'Dorothy  Philibus', 1, '84793514714', 38, 'F', 'nil', '7048145589', 'sabongida', 'Sabongida', 9.760120000, 8.740170000),
(1255, 126, 'Wuyep Nanmwa Samuel', 1, '60957364177', 34, 'M', 'nil', '8062964642', 'sabongida', 'Sabongida', 9.761120000, 8.740130000),
(1256, 126, 'Ruth Lar', 1, '31214945544', 49, 'F', 'WIDOW', '9031188844', 'sabongida', 'Sabongida', 9.760110000, 8.741210000),
(1257, 126, 'Binta Abel', 2, '90F5B23C5A416066190', 46, 'F', 'WIDOW', '7026777225', 'sabongida', 'Sabongida', 9.762110000, 8.740220000),
(1258, 126, 'Nantim Dauda', 1, '76045552237', 41, 'M', 'nil', '8060247145', 'sabongida', 'Sabongida', 9.760410000, 8.760110000),
(1259, 126, 'Danladi Jatau', 1, '24473274204', 48, 'M', 'nil', '8140977738', 'sabongida', 'Sabongida', 9.762110000, 8.761230000),
(1260, 126, 'Yiken Nbapbut', 1, '14128765196', 59, 'F', 'WIDOW', 'nil', 'sabongida', 'Sabongida', 9.760120000, 8.760110000),
(1261, 127, 'Gashik Kumbin Bitrus', 1, '60055750323', 55, 'M', 'nil', '9035043368', 'sabongida', 'Sabongida', 9.740110000, 8.730110000),
(1262, 127, 'Domjul Stephen zhebin', 2, '90F5B21938493812524', 40, 'M', 'nil', '8165390612', 'sabongida', 'Sabongida', 9.558760000, 9.465790000),
(1263, 127, 'Madugu Nandak Ponjul', 2, '90F5B06738533812612', 35, 'F', 'nil', '7030023576', 'sabongida', 'Sabongida', 9.713930000, 8.714790000),
(1264, 127, 'Nanbyen Nalfa', 2, '90F5B18659416065937', 30, 'F', 'nil', '9037428143', 'sabongida', 'Sabongida', 9.740120000, 8.760120000),
(1265, 127, 'Venya Fantin', 5, 'nil', 47, 'F', 'nil', '9038706617', 'sabongida', 'Sabongida', 9.760120000, 8.740120000),
(1266, 127, 'Vongjen Byencit', 5, 'nil', 42, 'F', 'nil', '8133115996', 'sabongida', 'Sabongida', 9.760330000, 8.730120000),
(1267, 127, 'Jumai Lakur', 5, 'nil', 50, 'F', 'nil', '8163831430', 'sabongida', 'Sabongida', 9.760330000, 8.730120000),
(1268, 127, 'Amos Ponzhi', 1, '53600513505', 47, 'M', 'nil', '7067535809', 'sabongida', 'Sabongida', 9.742230000, 8.704320000),
(1269, 127, 'Nimde Ponzing', 5, 'nil', 53, 'M', 'nil', '7060601114', 'sabongida', 'Sabongida', 9.742120000, 8.741130000),
(1270, 127, 'Kenube Godfrey Donald', 1, '29924828495', 45, 'M', 'nil', '8167234878', 'sabongida', 'Sabongida', 9.760130000, 8.740320000),
(1271, 128, 'Kunkong Lar', 5, 'nil', 48, 'F', 'nil', '8032493017', 'sabongida', 'Sabongida', 9.741130000, 8.761120000),
(1272, 128, 'Nansok Kikyem', 1, '71487030904', 55, 'M', 'nil', '8160832142', 'sabongida', 'Sabongida', 9.740130000, 8.761020000),
(1273, 128, 'Manwor Rufai', 1, '92153938112', 40, 'F', 'nil', '9031211896', 'sabongida', 'Sabongida', 9.741220000, 8.761130000),
(1274, 128, 'Paulina James', 1, '33258272419', 70, 'F', 'WIDOW', '7037889158', 'sabongida', 'Sabongida', 9.741030000, 8.760220000),
(1275, 128, 'Nanko Chakven', 1, '22789880261', 60, 'F', 'WIDOW', '9066437480', 'sabongida', 'Sabongida', 9.742100000, 8.761110000),
(1276, 128, 'Bitrus Audu', 1, '20417329094', 75, 'M', 'nil', 'nil', 'sabongida', 'Sabongida', 9.731000000, 8.741210000),
(1277, 128, 'Pondam .K. Nanzing', 1, '61586486685', 25, 'M', 'nil', '7034453428', 'sabongida', 'Sabongida', 9.731220000, 8.743210000),
(1278, 128, 'Audu Mariam Martins', 1, '14265106075', 40, 'F', 'WIDOW', '70350663', 'sabongida', 'Sabongida', 9.743010000, 8.763010000),
(1279, 128, 'Stephen Ezekeil Gomiyar', 1, '72772552970', 40, 'M', 'nil', '8063901285', 'sabongida', 'Sabongida', 9.740310000, 8.760120000),
(1280, 128, 'Yohana Friday', 2, '90F5B1C7F7415979910', 30, 'M', 'nil', '9061901512', 'sabongida', 'Sabongida', 9.740130000, 8.760210000),
(1281, 129, 'Magaji Bamaiya Fakdul', 1, '63501155840', 59, 'M', 'nil', '7036610155', 'sabongida', 'Sabongida', 9.743110000, 8.761230000),
(1282, 129, 'Rongjul Durfa', 1, '43379966728', 59, 'M', 'nil', '8167593215', 'sabongida', 'Sabongida', 9.740410000, 8.761230000),
(1283, 129, 'Lohya Stephen', 2, '90F5B52F88517227225', 45, 'F', 'WIDOW', '8133893547', 'sabongida', 'Sabongida', 9.713930000, 8.714870000),
(1284, 129, 'Ponsak Lohli Gosselle', 1, '16469572351', 31, 'M', 'nil', '8060566847', 'sabongida', 'Sabongida', 9.713910000, 8.714800000),
(1285, 129, 'Lungfa Rimpyen', 1, '21874821509', 46, 'M', 'nil', '9067847114', 'sabongida', 'Sabongida', 9.732310000, 8.743110000),
(1286, 129, 'Apollos Damdong Rimshal', 1, '55310188499', 50, 'M', 'nil', '8063124964', 'sabongida', 'Sabongida', 9.742210000, 8.762140000),
(1287, 129, 'Marcy Fakdul Magaji', 1, '42819076291', 54, 'F', 'nil', '8060199529', 'sabongida', 'Sabongida', 9.741230000, 8.763210000),
(1288, 129, 'Namicit Wuyep', 1, '26846082057', 50, 'F', 'WIDOW', '8140728547', 'sabongida', 'Sabongida', 9.732010000, 8.741120000),
(1289, 129, 'Mary Rongjin Durfa', 1, '32325319796', 54, 'F', 'nil', '8142427656', 'sabongida', 'Sabongida', 9.732100000, 8.741240000),
(1290, 129, 'Sadul Victoria', 2, '90F5B52F88516628627', 46, 'F', 'nil', '9037976272', 'sabongida', 'Sabongida', 9.710280000, 8.731480000),
(1291, 130, 'Nanya Katkur', 2, '71BC3D8B1F296918757', 35, 'F', 'nil', '9034421187', 'sabongida', 'Sabongida', 9.720010000, 8.734100000),
(1292, 130, 'Joel Ponsel', 5, 'nil', 36, 'M', 'nil', '8035751506', 'sabongida', 'Sabongida', 9.740120000, 8.760120000),
(1293, 130, 'Jessica Nanzing', 5, 'nil', 30, 'F', 'nil', '9061658261', 'sabongida', 'Sabongida', 9.740120000, 8.760310000),
(1294, 130, 'John .D. jatau', 1, '27237819855', 57, 'M', 'nil', '7037103004', 'sabongida', 'Sabongida', 9.742220000, 8.760110000),
(1295, 130, 'Edmond Victor .T.', 1, '47361409177', 35, 'M', 'nil', '8168007773', 'sabongida', 'Sabongida', 9.713930000, 8.714870000),
(1296, 130, 'Timsur Nimven Ndam', 1, '20089238789', 33, 'M', 'nil', '8147480487', 'sabongida', 'Sabongida', 9.713040000, 8.714850000),
(1297, 130, 'Precious Titus', 1, '93993249648', 45, 'F', 'nil', '8039190294', 'sabongida', 'Sabongida', 9.745610000, 8.764120000),
(1298, 130, 'Philip Katurah', 5, 'nil', 43, 'F', 'nil', '8147480487', 'sabongida', 'Sabongida', 9.741100000, 8.762110000),
(1299, 130, 'Hassan Manasseh', 1, '58039294688', 44, 'M', 'nil', '7064776526', 'sabongida', 'Sabongida', 9.742200000, 8.762020000),
(1300, 130, 'Selcit Gosselle', 1, '23643267050', 51, 'F', 'WIDOW', '9037087719', 'sabongida', 'Sabongida', 9.740120000, 8.760120000),
(1301, 131, 'Rifkatu I. Mangse', 1, '64584610910', 40, 'F', 'NIL', '7068735767', '', 'nil', 9.211130000, 9.344620000),
(1302, 131, 'Blessing Apollos Yaceh', 1, '69744987375', 40, 'F', 'NIL', '7069468994', 'NEAR COCIN CIKIN GARI, KERANG', 'KERANG', 9.207940000, 9.343360000),
(1303, 131, 'Anthony Auta', 1, '73363915078', 50, 'M', 'NIL', '8067276290', 'TIM JAGHAS', 'KERANG', 9.213450000, 9.333690000),
(1304, 131, 'Salamatu Johnson', 5, 'ID NOT CLEAR', 42, 'F', 'NIL', '8105885950', 'NIL', 'nil', 9.208620000, 9.347160000),
(1305, 131, 'Lucy Daok', 5, 'ID NOT CLEAR', 45, 'F', 'NIL', '7060971286', 'NIL', 'nil', 9.207390000, 9.336800000),
(1306, 131, 'Simon Hosea', 5, 'ID NOT CLEAR', 35, 'M', 'NIL', '8102644551', 'NIL', 'nil', 9.212390000, 9.343570000),
(1307, 131, 'Daor Cecelia', 1, '49149233227', 37, 'F', 'NIL', '8143746919', 'CLOSE TO COCIN ALHERI', 'KERANG', 9.207490000, 9.338490000),
(1308, 131, 'Julia Damchi', 5, 'ID NOT CLEAR', 32, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.210850000, 9.334650000),
(1309, 131, 'Dutle Tubwot Shikse', 2, '90F5B1360E295789285', 42, 'M', 'NIL', '8078650919', 'NIL', 'nil', 9.209040000, 9.345470000),
(1310, 131, 'Laitu shittu', 2, '90F5AED795296314795', 50, 'F', 'NIL', '8117502207', 'KWAHAS', 'nil', 9.204980000, 9.349360000),
(1311, 132, 'Felicia Simon', 1, '53946282846', 27, 'F', 'NIL', '8169259615', 'NIL', 'nil', 9.201080000, 9.326730000),
(1312, 132, 'Catherine Jonathan', 1, '68597102143', 28, 'F', 'NIL', '9130880384', 'NIL', 'nil', 9.201910000, 9.341620000),
(1313, 132, 'Janet Raymond', 2, '90F5B1360E296059043', 47, 'F', 'NIL', '8137683625', 'NIL', 'nil', 9.202010000, 9.341360000),
(1314, 132, 'Chanson Bitrus', 5, 'NO ID PROVIDED', 26, 'F', 'NIL', '8060838611', 'NIL', 'nil', 9.201980000, 9.341550000),
(1315, 132, 'Suzana Challa', 2, '90F5AED795296055106', 40, 'F', 'NIL', '8108178928', 'NIL', 'nil', 9.202150000, 9.341410000),
(1316, 132, 'Nankwat Fwangmun John', 2, '90F5B1CD78295797427', 30, 'F', 'NIL', '8143439375', 'NIL', 'nil', 9.200750000, 9.341250000),
(1317, 132, 'Mwanret Davuruk Tmothy', 2, '90F5B19B5F295600109', 33, 'F', 'NIL', '9038234901', 'NIL', 'nil', 9.196700000, 9.337210000),
(1318, 132, 'Namun Shammang', 2, '90F5B1985F296055123', 27, 'F', 'NIL', '9030493151', 'NIL', 'nil', 9.201430000, 9.341370000),
(1319, 132, 'Timothy Tanko', 2, '90F5B19B5F296642476', 49, 'M', 'NIL', '8064600867', 'NIL', 'nil', 9.196810000, 9.337110000),
(1320, 132, 'Amina Bamaiyi', 1, '90801303731', 35, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.202000000, 9.341190000),
(1321, 133, 'Suan Dakyen Danladi', 2, '90F5B1360E290302301', 46, 'M', 'NIL', '8034706984', 'NIL', 'nil', 9.212930000, 9.336490000),
(1322, 133, 'Sabina Barnabas Misak', 1, '63276047653', 47, 'F', 'NIL', '8106331714', 'NIL', 'nil', 9.213440000, 9.331120000),
(1323, 133, 'Bamaiyi Mankam', 2, '90F5AF8BF9507606670', 38, 'M', 'NIL', '8060893337', 'NIL', 'nil', 9.211950000, 9.335040000),
(1324, 133, 'Bakar Dakyen', 2, '90F5B19B5F296836685', 33, 'M', 'NIL', '8033713469', 'NIL', 'nil', 9.207350000, 9.339770000),
(1325, 133, 'Rose Asaph', 2, '90F5B2085F296135825', 61, 'F', 'NIL', '7066203492', 'NIL', 'nil', 9.213110000, 9.336650000),
(1326, 133, 'Bamshak Kasuwa', 1, '55561950952', 34, 'M', 'NIL', '7067760748', 'NIL', 'nil', 9.213060000, 9.336640000),
(1327, 133, 'Justina Ephraim Mwanle', 1, '21918714758', 48, 'F', 'NIL', '7062695406', 'NIL', 'nil', 9.213100000, 9.336540000),
(1328, 133, 'Nankilng Friday', 5, 'NO ID PROVIDED', 38, 'F', 'NIL', '9030221244', 'NIL', 'nil', 9.213090000, 9.331470000),
(1329, 133, 'Nanfwang Misak', 5, 'NO ID PROVIDED', 36, 'M', 'NIL', 'NIL', 'NIL', 'nil', 9.213160000, 9.331530000),
(1330, 133, 'Rose Silas', 2, '90F5B2085F295703604', 43, 'F', 'NIL', '9161594784', 'NIL', 'nil', 9.201690000, 9.322760000),
(1331, 134, 'Lekyes Bitrus', 5, 'NO ID PROVIDED', 30, 'M', 'NIL', '8144952791', 'NIL', 'nil', 9.207790000, 9.347850000),
(1332, 134, 'Dominic Amos', 2, '90F5B090D4416235768', 33, 'M', 'NIL', '8169038280', 'NIL', 'nil', 9.215280000, 9.346510000),
(1333, 134, 'Sylvanus Dadiben', 1, '30301600237', 83, 'M', 'NIL', '8035468898', 'NIL', 'nil', 9.207380000, 9.339740000),
(1334, 134, 'Lesan Kyetwa Chishak', 2, '90F5AE8BCB295458812', 38, 'M', 'NIL', '9057203038', 'NIL', 'nil', 9.203500000, 9.335350000),
(1335, 134, 'Aisha Francis Inusa', 1, '82704987549', 36, 'F', 'NIL', '8036874421', 'NIL', 'nil', 9.214430000, 9.330600000),
(1336, 134, 'Sarah Abraham', 2, '90F5B21701295714316', 42, 'F', 'NIL', '7066864205', 'NIL', 'nil', 9.205150000, 9.340400000),
(1337, 134, 'Tabitha Sylvanus Dadiben', 2, '90F5B1360E295707655', 38, 'F', 'NIL', '8149124730', 'NIL', 'nil', 9.207410000, 9.339530000),
(1338, 134, 'Salome Sekrong', 5, 'ID NOT CLEAR', 49, 'F', 'NIL', '8105060517', 'NIL', 'nil', 9.197530000, 9.383160000),
(1339, 134, 'Luret Emmanuel', 5, 'NO ID PROVIDED', 24, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.207750000, 9.346120000),
(1340, 134, 'Tongdyen Rengkat', 5, 'NO ID PROVIDED', 25, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.207160000, 9.345840000),
(1341, 135, 'Bitrus Cishak', 2, '90F5AED795296033856', 77, 'M', 'NIL', '8032110184', 'NIL', 'nil', 9.188480000, 9.361080000),
(1342, 135, 'Thomas Adamu', 2, '90F5AED796295654549', 51, 'M', 'NIL', '8157866402', 'NIL', 'nil', 9.189200000, 9.360460000),
(1343, 135, 'Rinret Andi', 2, '90F5B1354C519305251', 35, 'F', 'NIL', '9136098730', 'NIL', 'nil', 9.191140000, 9.357410000),
(1344, 135, 'Bitrus Yilkahan Mangse', 2, '90F5B19B5F295693797', 57, 'M', 'NIL', '7064858676', 'NIL', 'nil', 9.207820000, 9.348550000),
(1345, 135, 'Asama', 5, 'NO ID PROVIDED', 55, 'F', 'NIL', '7088541351', 'NIL', 'nil', 9.189690000, 9.361770000),
(1346, 135, 'Tiyus Shikmak', 2, '030DDO199F296301124', 45, 'M', 'NIL', '875444007', 'NIL', 'nil', 9.198580000, 9.363210000),
(1347, 135, 'Nandi Joseph', 1, '26458148053', 25, 'F', 'NIL', '9061717019', 'NIL', 'nil', 9.195090000, 9.363670000),
(1348, 135, 'Makvrem Fredrick', 5, 'NO ID PROVIDED', 37, 'M', 'NIL', '7063349244', 'NIL', 'nil', 9.197960000, 9.362400000),
(1349, 135, 'Jennifer Inusa', 1, '17946760423', 53, 'F', 'NIL', '7068836051', 'NIL', 'nil', 9.190580000, 9.361410000),
(1350, 135, 'Lucy Isaiah', 1, '62430245895', 39, 'F', 'NIL', '8164098182', 'NIL', 'nil', 9.189040000, 9.362900000),
(1351, 136, 'Panmun Daniel', 5, 'PROVIDE CLEAR ID', 32, 'M', 'NIL', '9036784589', 'NIL', 'nil', 9.221690000, 9.348050000),
(1352, 136, 'Nantap Kefas Hassan', 2, '90F5B21A26296658883', 30, 'F', 'NIL', '8112575779', 'NIL', 'nil', 9.227290000, 9.345640000),
(1353, 136, 'Dawum Daniel Lot', 1, '14853766289', 50, 'M', 'NIL', '9033593050', 'NIL', 'nil', 9.221920000, 9.345820000),
(1354, 136, 'Briskila Hosea', 5, 'PROVIDE CLEAR ID', 38, 'F', 'NIL', '8066730264', 'NIL', 'nil', 9.223440000, 9.345630000),
(1355, 136, 'Plangret Alfred Damang', 2, '90F5B1615D295954046', 30, 'F', 'NIL', '9030665715', 'NIL', 'nil', 9.227270000, 9.345140000),
(1356, 136, 'Samaria Ibrahim', 1, '22608036452', 40, 'F', 'NIL', '8014384783', 'NIL', 'nil', 9.223830000, 9.345470000),
(1357, 136, 'Pochi Maxwel', 1, '35573238072', 32, 'M', 'NIL', '8151883124', 'NIL', 'nil', 9.220180000, 9.348760000),
(1358, 136, 'Roseline Sani Danung', 2, '2264FFAAC3296644292', 57, 'F', 'NIL', '8146144309', 'NIL', 'nil', 9.221380000, 9.348110000),
(1359, 136, 'Mathew Dafuk', 1, '40450766343', 45, 'M', 'NIL', '8132714153', 'NIL', 'nil', 9.226630000, 9.345310000),
(1360, 136, 'Lami Samuel', 2, '90F5AFD260416229611', 43, 'F', 'NIL', '8141812108', 'NIL', 'nil', 9.226990000, 9.345190000),
(1361, 137, 'Joseph Dikyet', 1, '72457498302', 65, 'M', 'NIL', '8108539878', 'NIL', 'nil', 9.196390000, 9.343080000),
(1362, 137, 'Johnson Dashat', 5, 'CHECK BEHIND FOR NO.', 62, 'M', 'NIL', '8139771511', 'NIL', 'nil', 9.187620000, 9.364780000),
(1363, 137, 'Hilda Hosea Powar', 1, '41510102246', 55, 'F', 'NIL', '8160272505', 'NIL', 'nil', 9.195290000, 9.344650000),
(1364, 137, 'Amos Yakubu Nanjwan', 2, '90F5AED795296031042', 53, 'M', 'NIL', '8067266412', 'NIL', 'nil', 9.197590000, 9.343680000),
(1365, 137, 'Nanman Tongbe', 1, '45067646964', 37, 'F', 'NIL', '8141515741', 'NIL', 'nil', 9.190550000, 9.364410000),
(1366, 137, 'Nansat Furtunatus', 1, '74168348348', 34, 'F', 'NIL', '8101856345', 'NIL', 'nil', 9.191520000, 9.361710000),
(1367, 137, 'Bamaiyi Hosea Powar', 2, '90F5B21751295815432', 38, 'M', 'NIL', '9066109165', 'NIL', 'nil', 9.187760000, 9.360510000),
(1368, 137, 'Cecilia Emmanuel Sanduhun', 1, '29427622513', 45, 'F', 'NIL', '8064592290', 'NIL', 'nil', 9.207780000, 9.346170000),
(1369, 137, 'Regina Ibrahim Zakka', 2, '030DDD108E296039884', 55, 'F', 'NIL', '8133470415', 'NIL', 'nil', 9.192600000, 9.345860000),
(1370, 137, 'Edit Kephas', 2, '90F5B1360E295520765', 30, 'F', 'NIL', '8061509629', 'NIL', 'nil', 9.187600000, 9.360610000),
(1371, 138, 'Samuel Ishaku', 2, '90F5AED795296562712', 34, 'M', 'NIL', '7033104194', 'NIL', 'nil', 9.207370000, 9.344300000),
(1372, 138, 'Dapel Danladi', 5, 'PROVIDE CLEAR ID', 29, 'M', 'NIL', '7035692674', 'NIL', 'nil', 9.208700000, 9.347970000),
(1373, 138, 'Evaline Vulret Dashap', 2, '90F5AE7420416213302', 26, 'F', 'NIL', '7065659637', 'NIL', 'nil', 9.207420000, 9.347380000),
(1374, 138, 'Jessica Hakuri Pewam', 1, '60467706903', 30, 'F', 'NIL', '7066953519', 'NIL', 'nil', 9.210770000, 9.341720000),
(1375, 138, 'Felicia Solomon', 1, '53946282846', 28, 'F', 'NIL', '9068182436', 'NIL', 'nil', 9.206680000, 9.345900000),
(1376, 138, 'Kyenlek Godwin Kutse', 5, 'PROVIDE CLEAR ID', 32, 'M', 'NIL', '9034914102', 'NIL', 'nil', 9.206520000, 9.356670000),
(1377, 138, 'Lami Ishaku', 1, '85557835435', 38, 'F', 'NIL', '8038644286', 'NIL', 'nil', 9.207300000, 9.344120000),
(1378, 138, 'Victor Cishak', 1, '30301600264', 46, 'M', 'NIL', '9133472452', 'NIL', 'nil', 9.207450000, 9.347290000),
(1379, 138, 'Rosline Yohanna', 5, 'NO ID PROVIDED', 29, 'F', 'NIL', '8141740911', 'NIL', 'nil', 9.207040000, 9.345760000),
(1380, 138, 'Anna Obed Joshua', 1, '94575430224', 26, 'F', 'NIL', '8069425562', 'PANYAM', 'PANYAM', 9.235880000, 9.355950000),
(1381, 139, 'Charity Daspan', 1, '87299495857', 49, 'F', 'NIL', '9056280146', 'NIL', 'nil', 9.197420000, 9.383160000),
(1382, 139, 'Longji Simon', 1, '83570206869', 34, 'M', 'NIL', '7033839187', 'LIVING FAITH CHURCH, NIYES', 'NIYES', 9.193210000, 9.382510000),
(1383, 139, 'Christopher Satkat', 2, '2354FFAAC3296639122', 49, 'M', 'NIL', '9030133618', 'NIL', 'nil', 9.206780000, 9.364310000),
(1384, 139, 'Dankat Danjuma', 1, '63361151010', 52, 'M', 'NIL', '7080778510', 'NIL', 'nil', 9.217370000, 9.404530000),
(1385, 139, 'Denis Grumdeing', 5, 'NO ID PROVIDED', 33, 'M', 'NIL', '8102698898', 'NIL', 'nil', 9.206820000, 9.364310000),
(1386, 139, 'Justina Mugbak', 1, '97662764979', 49, 'F', 'NIL', '8164450214', 'NIL', 'nil', 9.224420000, 9.332100000),
(1387, 139, 'Damak Bulus', 5, 'NO ID PROVIDED', 55, 'M', 'NIL', '8161733963', 'NIL', 'nil', 9.196670000, 9.382250000),
(1388, 139, 'Markus Dingan Medi', 1, '74750187567', 29, 'M', 'NIL', '8151841993', 'NIL', 'nil', 9.217380000, 9.403610000),
(1389, 139, 'Nanqwat A, Wetmang', 5, 'NO ID PROVIDED', 25, 'F', 'NIL', '8080167158', 'NIL', 'nil', 9.194010000, 9.382950000),
(1390, 139, 'Retmun Bokyes', 5, 'NO ID PROVIDED', 40, 'F', 'NIL', '8062690759', 'NIL', 'nil', 9.206770000, 9.364330000),
(1391, 140, 'Katlibet Stephen Le''an', 2, '71BC060AFC296050559', 41, 'M', 'NIL', '8067218279', 'NIL', 'nil', 9.188270000, 9.445900000),
(1392, 140, 'Le', 2, '71BC060AFC295962809', 41, 'M', 'NIL', '8113177868', 'NIL', 'nil', 9.195870000, 9.445680000),
(1393, 140, 'Dogara Barde Chin', 2, '71BC060AFC296035307', 42, 'M', 'NIL', '7034833596', 'NIL', 'nil', 9.194110000, 9.441560000),
(1394, 140, 'Danjuma D. Chin', 2, 'E6BA035B89296650320', 61, 'M', 'NIL', '8078605239', 'WASHNA', 'PANYAM', 9.194180000, 9.441300000),
(1395, 140, 'Halima Bernard Lean', 1, '42375709023', 50, 'F', 'NIL', '9139124101', 'NIL', 'nil', 9.194270000, 9.443200000),
(1396, 140, 'Laraba David Dapel', 2, '71BC060AFC296140788', 52, 'F', 'NIL', '8134351087', 'NIL', 'nil', 9.193570000, 9.437640000),
(1397, 140, 'Nankyer Apris', 2, '71BC060AFC296048123', 46, 'F', 'NIL', '8162543265', 'NIL', 'nil', 9.188280000, 9.447270000),
(1398, 140, 'Longwurang Nyang ', 2, '71BC060AFC296214195', 68, 'M', 'NIL', '8106389500', 'AHOL', 'PANYAM', 9.192410000, 9.447490000),
(1399, 140, 'Lehtu Mangkul P', 2, '71BC060AFC296209476', 51, 'F', 'NIL', '8152589823', 'NIL', 'nil', 9.188610000, 9.445980000),
(1400, 140, 'Monicah Ignatius Filibus', 2, '71BC060AFC296144416', 0, 'F', 'NIL', '8071665269', 'NIL', 'nil', 9.194490000, 9.443570000),
(1401, 141, 'Nanle Ishaku Dabo', 5, 'PROVIDE CLEAR ID', 34, 'M', 'NIL', '8136417418', 'NIL', 'nil', 9.235800000, 9.350960000),
(1402, 141, 'Racheal Jephther', 5, 'NO ID PROVIDED', 38, 'F', 'NIL', '7062622569', 'NIL', 'nil', 9.220820000, 9.348740000),
(1403, 141, 'Ishaku Eli', 2, '2354FFAAC3296903715', 32, 'M', 'NIL', '813381966', 'NIL', 'nil', 9.235990000, 9.357090000),
(1404, 141, 'Chinplang Paul', 5, 'NO ID PROVIDED', 25, 'F', 'NIL', '9070799184', 'NIL', 'nil', 9.236430000, 9.354970000),
(1405, 141, 'Dami Chishak Markus', 2, '90F5AF0057508415962', 32, 'M', 'NIL', '9131138144', 'NIL', 'nil', 9.235410000, 9.355110000),
(1406, 141, 'Micheal Bamshak Mamma', 1, '90170899506', 22, 'M', 'NIL', '8124192718', 'NIL', 'nil', 9.198730000, 9.447150000),
(1407, 141, 'Precious Michael', 5, 'PROVIDE CLEAR ID', 21, 'F', 'NIL', '9155771275', 'NIL', 'nil', 9.198840000, 9.446790000),
(1408, 141, 'Asabar Chetsan', 5, 'NO ID PROVIDED', 33, 'F', 'NIL', '8108266512', 'NIL', 'nil', 9.237970000, 9.356080000),
(1409, 141, 'Diana Inuwa', 2, '90F5AF8508296738965', 30, 'F', 'NIL', '8135501870', 'NIL', 'nil', 9.203780000, 9.419820000),
(1410, 141, 'Manji John', 2, '90F5AFD260415800507', 31, 'M', 'NIL', '816575346', 'NIL', 'nil', 9.231700000, 9.365000000),
(1411, 142, 'Dogara Watse', 5, 'PROVIDE CLEAR ID', 45, 'M', 'NIL', '7035607393', 'NIL', 'nil', 9.226060000, 9.405380000),
(1412, 142, 'Armak David Jwanle', 1, '94907690739', 40, 'M', 'NIL', '8132308724', 'NIL', 'nil', 9.226390000, 9.405900000),
(1413, 142, 'Augustine Puyl', 5, 'NO ID PROVIDED', 35, 'M', 'NIL', '8055851383', 'NIL', 'nil', 9.228150000, 9.405980000),
(1414, 142, 'Bamshak Dogara', 5, 'PROVIDE CLEAR ID', 37, 'M', 'NIL', '7067758175', 'NIL', 'nil', 9.225640000, 9.405590000),
(1415, 142, 'David Datireng', 5, 'CHECK BEHIND FOR NO.', 40, 'M', 'NIL', '7038986184', 'NIL', 'nil', 9.228190000, 9.405940000),
(1416, 142, 'Mary Bamayi', 5, 'PROVIDE CLEAR ID', 45, 'F', 'NIL', '8162634986', 'NIL', 'nil', 9.227680000, 9.405500000),
(1417, 142, 'Plangnan Danjuma', 1, '73435961413', 35, 'F', 'NIL', '8146332181', 'NIL', 'nil', 9.225930000, 9.405790000),
(1418, 142, 'Briskila Yusuf', 1, '93171148892', 40, 'F', 'NIL', '9037724331', 'NIL', 'nil', 9.226430000, 9.405890000),
(1419, 142, 'Justina Dogara', 2, '71BC061014295957581', 55, 'F', 'NIL', '9075903390', 'NIL', 'nil', 9.228500000, 9.403320000),
(1420, 142, 'Martha jwanle', 1, '35355583516', 58, 'F', 'NIL', '9034005980', 'NIL', 'nil', 9.226570000, 9.405860000),
(1421, 142, 'Nankyer Danladi', 5, 'NO ID PROVIDED', 59, 'F', 'NIL', '906519023', 'NIL', 'nil', 9.195420000, 9.436960000),
(1422, 142, 'Gabriel Dapel', 5, 'NO ID PROVIDED', 70, 'M', 'NIL', '7037088968', 'NIL', 'nil', 9.194810000, 9.438690000),
(1423, 142, 'Habiba James', 5, 'PROVIDE CLEAR ID', 48, 'F', 'NIL', '9036276498', 'NIL', 'nil', 9.188790000, 9.445350000),
(1424, 142, 'Habila Danjuma', 2, '90F5B137F9508323611', 35, 'M', 'NIL', '8064853401', 'NIL', 'nil', 9.187420000, 9.447640000),
(1425, 142, 'Ephraim Musa', 1, '36824256232', 47, 'M', 'NIL', '7062861730', 'NIL', 'nil', 9.194170000, 9.440030000),
(1426, 142, 'Salome Andrew Zakaria', 2, '71BC060AFC296043597', 50, 'F', 'NIL', '8108991601', 'NIL', 'nil', 9.193900000, 9.443200000),
(1427, 142, 'Yuwana Eccord Taple', 2, '71BC060AFC296044092', 52, 'F', 'NIL', '8086548805', 'NIL', 'nil', 9.192440000, 9.447810000),
(1428, 142, 'Nanpos Jatau', 5, 'NO ID PROVIDED', 29, 'M', 'NIL', '9065684091', 'NIL', 'nil', 9.195870000, 9.445730000),
(1429, 142, 'Leyit Datas', 5, 'NO ID PROVIDED', 32, 'F', 'NIL', '7032863261', 'NIL', 'nil', 9.193890000, 9.440950000),
(1430, 142, 'Mwanret David Dapel', 1, '72675461596', 39, 'F', 'NIL', '8147896189', 'NIL', 'nil', 9.194300000, 9.436530000),
(1431, 144, 'Ladi Stephen Guyit', 2, '90F5AE6E57296048191', 62, 'F', 'NIL', '8137578238', 'PANYAM', 'PANYAM', 9.207380000, 9.408160000),
(1432, 144, 'Briska Titus Dajam', 5, 'PROVIDE CLEAR ID', 47, 'F', 'NIL', '8107165447', 'NIL', 'nil', 9.204540000, 9.407550000),
(1433, 144, 'Ladi Sylvanus', 5, ' ', 46, 'F', 'NIL', '7066099443', 'NIL', 'nil', 9.207260000, 9.408200000),
(1434, 144, 'Dyelshak Steven', 5, 'NO ID PROVIDED', 32, 'M', 'NIL', '7032181497', 'NIL', 'nil', 9.207010000, 9.408430000),
(1435, 144, 'Larba Rengkyes', 5, 'NO ID PROVIDED', 39, 'F', 'NIL', '8163297821', 'NIL', 'nil', 9.204530000, 9.405940000),
(1436, 144, 'Dominic Darughun', 2, '71BC3D8B5C295957813', 50, 'M', 'NIL', '7066478295', 'NIL', 'nil', 9.206900000, 9.408830000),
(1437, 144, 'Abel Kefas', 2, '90F5AE8E57296556213', 30, 'M', 'NIL', '8143219570', 'NIL', 'nil', 9.203640000, 9.419580000),
(1438, 144, 'Monica Gorde', 5, 'NO ID PROVIDED', 29, 'F', 'NIL', '9154782924', 'NIL', 'nil', 9.207130000, 9.408360000),
(1439, 144, 'Chamun Gambo Audu', 2, '90F5AF3E19296745003', 31, 'F', 'NIL', '8020693137', 'NIL', 'nil', 9.185840000, 9.442350000),
(1440, 144, 'Dorcas Klaktu', 1, '50911224743', 28, 'F', 'NIL', '8078140999', 'NIL', 'nil', 9.185730000, 9.442430000),
(1441, 145, 'Esther Mathias', 5, 'CHECK BEHIND FOR NO.', 40, 'F', 'NIL', '8185701423', 'NIL', 'nil', 9.187380000, 9.463560000),
(1442, 145, 'Mundi Tumun', 2, '90F5AFEBA2296775020', 39, 'M', 'NIL', '8173423867', 'NIL', 'nil', 9.187410000, 9.463500000),
(1443, 145, 'Tani Elijah ', 5, 'NO ID PROVIDED', 38, 'F', 'NIL', '7046804994', 'NIL', 'nil', 9.187180000, 9.462610000),
(1444, 145, 'Pulina Markus', 2, '90F5AFEBA2295976166', 42, 'F', 'NIL', '8147362679', 'NIL', 'nil', 9.185870000, 9.465060000),
(1445, 145, 'Barsheba Kefas', 2, '90F5AF5757528190888', 39, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.189270000, 9.464230000),
(1446, 145, 'Mary Joshua', 5, 'PROVIDE CLEAR ID', 41, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.186270000, 9.466470000),
(1447, 145, 'Martina Danlami', 2, '90F5AFEBA2296213864', 44, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.187390000, 9.463500000),
(1448, 145, 'Saratu Alpha Dakwak', 2, '90F5AFEBA2295820323', 37, 'F', 'NIL', 'NIL', 'NIL', 'nil', 9.189950000, 9.465220000),
(1449, 145, 'Lucy Ishaya', 2, '90F5AED69E296297624', 40, 'F', 'NIL', '8074762643', 'UNG KWANU', 'nil', 9.181830000, 9.462570000),
(1450, 145, 'Mulkat Joshua', 2, '90F5B18CFC298739692', 39, 'M', 'NIL', '7058922155', 'NIL', 'nil', 9.187410000, 9.463500000),
(1451, 177, 'Edward Zuel', 1, '62260982716', 51, 'M', 'nil', '7039093378', 'Angwan Wai Garkawa', 'Wai', 9.846730000, 8.965400000),
(1452, 177, 'Musa Tissing', 2, '90F5B27A19296576705', 47, 'M', 'nil', '7039855230', 'Angwan Killa Garkawa', 'Angwan Killa', 9.855570000, 8.947280000),
(1453, 177, 'Rebecca Alison', 2, '90F5B24425296642068', 44, 'F', 'nil', '8102840353', 'Bal Nla Garkawa', 'Bal Nla', 9.804190000, 8.943390000),
(1454, 177, 'Anthony Pakbong', 1, '53083983530', 49, 'M', 'nil', '8065344487', 'First Baptist Church', 'Garkawa', 9.801730000, 8.943380000),
(1455, 177, 'Barry Kwaplat Tiss', 2, '90F5B20215295697320', 58, 'M', 'nil', '7039855230', 'Wai Garkawa', 'Wai Garkawa', 9.850080000, 8.943660000),
(1456, 177, 'Christiana Danladi', 2, '90F5B1F709296299127', 44, 'F', 'nil', '8065612776', 'St.Mary''s Catholic Church ', 'Garkawa', 9.855290000, 8.930840000),
(1457, 177, 'Nanmi Maimako', 1, '43987832449', 47, 'F', 'nil', '8128130780', 'Angwan Killa', 'Angwan Killa', 9.847710000, 8.946500000),
(1458, 177, 'Bala Fanto', 3, 'SHD00953AA07', 62, 'M', 'nil', '8039656391', 'Talim Garkawa', 'Talim Garkawa', 9.801420000, 8.938340000),
(1459, 177, 'PhilomIna Yohana', 2, '90F5B24425296466856', 61, 'F', 'nil', '813809121', 'Bal Nla Garkawa', 'Bal Nla Garkawa', 9.801610000, 8.938120000),
(1460, 177, 'Magdalene Mangai', 2, '90F5B1F709295607931', 57, 'F', 'nil', '7031965045', 'St.Mary''s Catholic Church ', 'Garkawa', 9.805480000, 8.946730000),
(1461, 178, 'Dutse John', 2, '90F5B15D4F507621721', 36, 'M', 'nil', '8066253148', 'Janruwa Garkawa', 'Janruwa Garkawa', 9.804590000, 8.941210000),
(1462, 178, 'Peace Peter', 2, '90F5B1BB7C295880698', 40, 'F', 'nil', '7067607514', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.801380000, 8.946630000),
(1463, 178, 'Bali Rebecah', 2, '90F5B1BB7C295953750', 42, 'F', 'nil', '8063967709', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.840870000, 8.946790000),
(1464, 178, 'Happy Noknan Yohanna', 1, '23863427432', 24, 'F', 'nil', '9025214120', 'Behind Building Material', 'Behind Building Material', 9.809090000, 8.960870000),
(1465, 178, 'Celina Peter Singtip', 2, '90F5B1F709298215226', 72, 'F', 'nil', '9065395549', 'Near Baptist Church', 'Wai', 9.807110000, 8.946920000),
(1466, 178, 'Dutse Victoria', 2, '90F5B1BB7C296816566', 62, 'F', 'nil', '8106057398', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.848120000, 8.940700000),
(1467, 178, 'Tohan Josephine ', 2, '90F5B1BB7C296208991', 67, 'F', 'nil', '7063696754', 'Talim Garkawa', 'Talim Garkawa', 9.808790000, 8.948790000),
(1468, 178, 'Joseph Lohfa Julfa', 1, '84391545197', 28, 'M', 'nil', '8149071856', 'Oppo.St Mary''s Church', 'Wai', 9.848710000, 8.966310000),
(1469, 178, 'Saliya Luka       ', 2, '90F5B1BB7C295975136', 65, 'F', 'nil', '8169437096', 'Lanil Rokta Garkawa', 'Wai', 9.802940000, 8.972320000),
(1470, 178, 'Friday Samuel', 2, '90F5B06738513176459', 32, 'M', 'nil', '8100382732', 'Wai Garkawa', 'Angwan Jukun', 9.806330000, 8.945980000),
(1471, 179, 'Laraba Fan Peter', 2, '90F5B2064D296384133', 58, 'F', 'nil', '8036894477', 'Angwan Jukun', 'Angwan Jukun', 9.804450000, 8.948680000),
(1472, 179, 'Ruth Longyen Umaru', 1, '79021370346', 38, 'F', 'nil', '7064338197', 'Beside High School GK', 'Garkawa', 9.804610000, 8.947510000),
(1473, 179, 'Zingkur Dombyen', 2, '90F5B2088A520859853', 29, 'F', 'nil', '7063194883', 'Garkawa', 'Janruwa Garkawa', 9.829410000, 8.953840000),
(1474, 179, 'Hanatu Nayi', 1, '4282422514', 62, 'F', 'nil', '7062338897', 'Behind New Market', 'New Market', 9.835920000, 8.907640000),
(1475, 179, 'Ruth Emmanuel Dashe', 1, '92177362948', 41, 'F', 'nil', '7084337851', 'Baptist Church', 'Wai', 9.806380000, 8.978260000),
(1476, 179, 'Luka Wakeji Sambo', 1, '89852904422', 39, 'F', 'nil', '9024367042', 'Near COCIN Church', 'Tasha', 9.801440000, 8.945260000),
(1477, 179, 'Zuel Youmkwot Edward', 1, '97156981852', 38, 'F', 'nil', '7046435619', 'Near St. Mary''s Church', 'Wai', 9.804220000, 8.941180000),
(1478, 179, 'Danja Tonga', 1, '88415393373', 56, 'M', 'nil', '8061505788', 'Near St. Mary''s Church', 'Wai', 9.823890000, 8.942010000),
(1479, 179, 'Cletus Haruna James', 1, '19108129892', 37, 'M', 'nil', '7036447973', 'Cocin Lcc Garkawa', 'Cocin Church', 9.831990000, 8.940700000),
(1480, 179, 'Friday Danladi', 5, 'NIL', 59, 'M', 'nil', '913265753', '', 'nil', 9.803200000, 8.961980000),
(1481, 180, 'Emmanuel Shaptet', 1, '5.30E+15', 54, 'M', 'nil', '8036360884', 'Garkawa Central', 'Killa', 9.807860000, 8.945860000),
(1482, 180, 'Pakbong Angelina ', 2, '90F5B1F709296066488', 58, 'F', 'nil', '8101901646', 'Wai Garkawa', 'Wai Garkawa', 9.855580000, 8.944650000),
(1483, 180, 'Josephine Wuyep', 2, '90FA922A19296208756', 48, 'F', 'nil', '7064744768', 'COCIN I Garkawa', 'Wai Garkawa', 9.807670000, 8.948760000),
(1484, 180, 'Monica Alfred', 1, '90F5B20215295711248', 59, 'F', 'nil', '7068207405', 'First Baptist Church', 'Wai Garkawa', 9.805660000, 8.965770000),
(1485, 180, 'Motklang Margaret Zuel', 2, '90f5b1f709295362585', 53, 'F', 'nil', '7032427851', 'Longkrom', 'Longkrom', 9.805280000, 8.947280000),
(1486, 180, 'Mishap Anthony', 1, '12018963068', 42, 'F', 'nil', '8036233970', 'Jakatai', 'Garkawa', 9.805860000, 8.943410000),
(1487, 180, 'Tanko Youmman', 1, '50276514126', 52, 'M', 'nil', '7068154510', 'Before St. Mary''s Church', 'Wai Garkawa', 9.807680000, 8.948030000),
(1488, 180, 'Mary Audu', 1, '68009498345', 63, 'F', 'nil', '7036579954', 'Baptist Church', 'Talim Garkawa', 9.820860000, 8.968460000),
(1489, 180, 'Peter Nayi', 1, '95930697975', 61, 'M', 'nil', '8035919870', 'Baptist Church', 'Killa', 9.805670000, 8.945790000),
(1490, 180, 'Thomas Wawu', 1, '14038346607', 52, 'M', 'nil', '8069834385', 'Garkawa North East', 'Wai', 9.802750000, 8.977280000),
(1491, 181, 'Parlong Nansel', 1, '54642764952', 30, 'M', 'nil', '7031911342', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.803830000, 8.942410000),
(1492, 181, 'Amos Mary', 2, '90F5B2181B520862804', 54, 'F', 'nil', '9034796605', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.805510000, 8.936340000),
(1493, 181, 'Solomon Minji', 2, '90F5B1BB7C295696988', 40, 'F', 'nil', '7069092363', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.808440000, 8.906930000),
(1494, 181, 'Dutse Suzana', 2, '90F5B1BB7C295971855', 71, 'F', 'Aged', '8105061023', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.808120000, 8.940810000),
(1495, 181, 'Lipdo Deborah', 2, '90F5B1BB7C295707321', 39, 'F', 'nil', '9034545722', 'Lanil Rokta Garkawa', 'Wai', 9.842160000, 8.945860000),
(1496, 181, 'Luka Sakhil', 2, '90f5b1bb7c295954363', 42, 'F', 'nil', '7063194883', 'Lanil Rokta Garkawa', 'Ndaya Garkawa', 9.808380000, 8.940690000),
(1497, 181, 'Nansel Zammeh Vongywn', 2, '90F5B1F709295816228', 31, 'M', 'nil', '9060707070', 'Baptist Church', 'Behind Baptist', 9.846190000, 8.967280000),
(1498, 181, 'Nimyel Kongya', 2, '90F5B1BB7C295794770', 49, 'F', 'nil', '8163801259', 'Lanil Rokta Garkawa', 'Ndaya Garkawa', 9.841120000, 8.945460000),
(1499, 181, 'Nander Luka', 2, '90F5B1BB7C295974739', 77, 'F', 'Aged', '7063194883', 'Rokta Garkawa', 'Janruwa Garkawa', 9.847410000, 8.940450000),
(1500, 181, 'Esther JaNgaba', 2, '90F5B1F709296035868', 62, 'F', 'nil', '7064769716', 'COCIN Church Garkawa', 'Behind COCIN', 9.808540000, 8.948710000),
(1501, 182, 'Lar John Pakbam', 2, '90F5B17F99295374059', 42, 'M', 'nil', '704529508', 'Chapkwai', 'St. Mary''s Church', 9.890840000, 8.968970000),
(1502, 182, 'David Fanto Yusuf', 2, '90F5B20215296058010', 37, 'M', 'nil', '7036112024', 'Wai Garkawa', 'Wai Garkawa', 9.890840000, 8.968970000),
(1503, 182, 'Timchat Precious', 2, '030DDE5AFD416216290', 31, 'F', 'nil', '8134016137', 'Garkawa North', 'Janruwa Garkawa', 9.890840000, 8.968970000),
(1504, 182, 'Tana''an Taudir', 2, '90F5AEA301296151749', 24, 'F', 'nil', '7064744674', 'Wai Garkawa', 'Wai Garkawa', 9.890840000, 8.968970000),
(1505, 182, 'Luka Zingur ', 2, '90F5B1BB7C295688927', 31, 'M', 'nil', '7063194883', 'Janruwa Garkawa', 'Janruwa Garkawa', 9.890840000, 8.968970000),
(1506, 182, 'Sarah Gabriel ', 2, '90F5AE490D216256474', 30, 'F', 'nil', '8149375092', 'Garkawa Central', 'Angwan Jukun', 9.890840000, 8.968970000),
(1507, 182, 'Cecilia J. Abani', 5, 'NIL', 27, 'F', 'nil', '9044279615', 'Angwan Jukun', 'Angwan Jukun', 9.890840000, 8.968970000),
(1508, 182, 'Andrew Daniel', 1, '66504430586', 30, 'M', 'nil', '8105563309', 'Garkawa Central', 'Wai Garkawa', 9.890840000, 8.968970000),
(1509, 182, 'Shedrack Peter', 2, '90F5B09345520855817', 23, 'M', 'nil', '8106202247', 'Garkawa North East', 'Janruwa Garkawa', 9.890840000, 8.968970000),
(1510, 182, 'Bimbol Luka', 1, '61470419959', 34, 'M', 'nil', '8169137096', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.890840000, 8.968970000),
(1511, 183, 'Monday Ayuba', 1, '22054522427', 48, 'M', 'nil', '7032864015', 'Behind Baptist Church', 'Zamte', 9.803280000, 8.944610000),
(1512, 183, 'Dabup Saidu Hilpel', 1, '75877002647', 64, 'M', 'nil', '8039658860', 'Makama Street Garkawa', 'Pitop', 9.806730000, 8.948120000),
(1513, 183, 'Nancy Amos', 2, '90F5B03BEC296650501', 43, 'F', 'nil', '8085822367', 'Beside Peace Baptist', 'nil', 9.837640000, 8.945680000),
(1514, 183, 'Victor Dongven', 5, 'NIL', 34, 'M', 'nil', '8169137096', 'Lanil Rokta Garkawa', 'Janruwa Garkawa', 9.890840000, 8.968970000),
(1515, 183, 'Keker Shiden', 2, '90F5AFCD24296119118', 50, 'M', 'nil', '8060185731', 'Panglang ', 'Longkrom', 9.804160000, 8.941830000);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(1516, 183, 'Agnes Bernard', 2, '90F5AEA801206058926', 50, 'F', 'nil', '9045920624', 'Longkrom', 'Wai Garkawa', 9.808320000, 8.942750000),
(1517, 183, 'Runnan Kromsing', 2, '90F5B03EEF531926235', 32, 'F', 'nil', '7035965805', 'Wai Garkawa', 'Zamte', 9.808620000, 8.948320000),
(1518, 183, 'Yohana Pakbong', 2, '90F5B1F709298289823', 50, 'M', 'nil', '8039421613', 'Baptist Church', 'Wai Garkawa', 9.806830000, 8.948660000),
(1519, 183, 'Lydia Fan', 1, '38801798642', 41, 'F', 'nil', '7066368580', 'Garkawa Central', 'nil', 9.838410000, 8.946870000),
(1520, 183, 'Nancy Daniel', 5, 'NIL', 42, 'F', 'nil', '8061505788', 'Wai Garkawa', 'nil', 9.807620000, 8.938390000),
(1521, 184, 'KUNGRAP S. RUWONSHEL', 1, '58388696206', 61, 'M', 'nil', '7019299809', 'Cocin Piapung', 'Piapung', 9.485150000, 9.022860000),
(1522, 184, 'KUNGDAT DEMNAAN D.', 2, '90F5AF2221296215799', 33, 'F', 'nil', '7083145842', 'Piapung', 'Piapung', 9.484730000, 9.019620000),
(1523, 184, 'BLESSING JONATHAN', 1, '27450791055', 29, 'F', 'nil', '9136835720', 'Pangpit Piapung', 'Piapung', 9.483620000, 9.022750000),
(1524, 184, 'FLORA LONGPAT', 1, '27739659458', 45, 'F', 'nil', '7019299809', 'Ecwa Piapung', 'Piapung', 9.484220000, 9.021650000),
(1525, 184, 'NANPOEN MERCY KUMPES', 1, '74324773723', 27, 'F', 'nil', '8055615253', 'RCN Piapung', 'Piapung', 9.486940000, 9.019580000),
(1526, 184, 'POULINA POLYCARP', 1, '96104994391', 40, 'F', 'nil', '7089143765', 'Piapung', 'Piapung', 9.484040000, 9.021750000),
(1527, 184, 'KWOTKAT GOLNAAN', 1, '45449951382', 41, 'F', 'nil', '7087027745', 'Piapung', 'Piapung', 9.487200000, 9.018080000),
(1528, 184, 'EPHRAIM LAILON KADUET', 1, '73676776061', 36, 'M', 'nil', '9077319265', 'Piapung', 'Piapung', 9.488310000, 9.019680000),
(1529, 184, 'LOIS ALI MANBA', 1, '26044535458', 29, 'F', 'nil', '7012332582', 'Piapung', 'Piapung', 9.507950000, 9.014510000),
(1530, 184, 'SHEDRACK GOTMUAN', 1, '36883956285', 27, 'M', 'nil', '8059182442', 'Piapung', 'Piapung', 9.488160000, 9.015410000),
(1531, 185, 'DITLONG ABEL', 2, '90F5B11F68296465829', 38, 'M', 'nil', '7014706004', 'Piapung', 'Matbuen', 9.514580000, 9.054040000),
(1532, 185, 'YOHANA TUKUNG', 2, '90F5B11F68296478', 52, 'M', 'nil', '8124842260', 'Matbuen', 'Matbuen', 9.511830000, 9.040440000),
(1533, 185, 'GAKWAI TINGREP', 2, '90F5AF817A295694630', 32, 'M', 'nil', '8060540881', 'Gotlong', 'Matbuen', 9.508870000, 9.057070000),
(1534, 185, 'JACOB MAJIOR', 2, '90F5B17924508254322', 37, 'M', 'nil', '7014036102', 'Koetes', 'Koetes', 9.513470000, 9.053030000),
(1535, 185, 'RANGNIET DORATHY KOPLANG', 2, '90F5B15AA9296122602', 36, 'F', 'nil', '8063547360', 'Gwotkat', 'Matbuen', 9.510740000, 9.041330000),
(1536, 185, 'BITNAAN PATRICIA D.', 2, '90F5B11F68296487019', 36, 'F', 'nil', '8086067355', 'Matbuen', 'Matbuen', 9.507730000, 9.056060000),
(1537, 185, 'PATIENCE YUSUF', 1, '18497141993', 33, 'F', 'nil', '8020643441', 'Matbuen', 'Matbuen', 9.503030000, 9.042110000),
(1538, 185, 'MERCY FIDELIS', 1, '80273157602', 40, 'F', 'nil', '8029144562', 'Longbis', 'Longbis', 9.507950000, 9.014510000),
(1539, 185, 'TWALSWOT LONGGOE DUTLONG', 2, '90F5B11F68296212738', 57, 'F', 'nil', '7069267132', 'Matbuen', 'Matbuen', 9.512360000, 9.052020000),
(1540, 185, 'HANGSOEM APJAN LONGKESGWIM ', 1, '10549062284', 50, 'F', 'nil', '7036826181', 'Matbuen', 'Matbuen', 9.510720000, 9.041230000),
(1541, 186, 'DENIS KUMTAL', 2, 'A09437810', 39, 'M', 'nil', '8050553620', 'Piapung', 'Shamang', 9.489040000, 9.013590000),
(1542, 186, 'LIVINUS KUNGRAP', 1, '26456696999', 49, 'M', 'nil', '8022554371', 'Shamang', 'Shamang', 9.489320000, 9.013090000),
(1543, 186, 'RICHARD SOTBOK', 2, '90F5B19205298551890', 60, 'M', 'nil', '9059814773', 'Shamang', 'Shamang', 9.489640000, 9.012540000),
(1544, 186, 'KOPTEI ISHAYA', 2, '90F5B19205296466840', 54, 'M', 'nil', '9029819427', 'Shamang', 'Shamang', 9.489980000, 9.012130000),
(1545, 186, 'CALEB DAIYEP', 2, '90F5B19205295687973', 88, 'M', 'nil', '8078527660', 'Shamang', 'Shamang', 9.490330000, 9.011820000),
(1546, 186, 'SELINA SUNDAY', 2, '90F5AF2211286044428', 46, 'F', 'nil', '7040447710', 'Piapung', 'Peer', 9.490570000, 9.011450000),
(1547, 186, 'NANPOEN VICTORIA DAPOM', 2, '90F5AF2221296043609', 49, 'F', 'nil', '8032951541', 'Piapung', 'Peer', 9.490920000, 9.010880000),
(1548, 186, 'LARABA WOTDANG', 2, '90F5B19205295621453', 35, 'F', 'nil', '8086711189', 'Shamang', 'Shamang', 9.490420000, 9.010680000),
(1549, 186, 'NAKIUM HALANGGWIM JOHN', 2, '90F5B19205295626155', 59, 'F', 'nil', '9071154044', 'Shamang', 'Shamang', 9.489830000, 9.010740000),
(1550, 186, 'KATKOET TITUS', 2, 'INC22000000014960023', 45, 'F', 'nil', '8063251456', 'Shamang', 'Shamang', 9.489720000, 9.010940000),
(1551, 187, 'YOHANA FUANKA LENGYANG', 1, '83164309951', 44, 'M', 'nil', '8081207719', 'Piapung', 'piabeer', 9.485280000, 9.012970000),
(1552, 187, 'POLYCARP KADAI', 1, '42284871476', 53, 'M', 'nil', '8081207719', 'Piapung', 'piapung', 9.486940000, 9.019580000),
(1553, 187, 'SARAH TONLAT LIEPGOE', 1, '49962974684', 43, 'F', 'nil', '8177781291', 'Piabeer', 'piabeer', 9.499020000, 9.018270000),
(1554, 187, 'EMMANUEL KOPYEP', 1, '98875017493', 45, 'M', 'nil', '8085996920', 'piapung', 'piabeer', 9.486960000, 9.019560000),
(1555, 187, 'NAWOM AMOS WAILOM', 2, '90F5AF2221295616786', 50, 'F', 'nil', '8137455297', 'piapung', 'piabeer', 9.486460000, 9.019640000),
(1556, 187, 'LAMI ELIAS', 1, '33247597933', 37, 'F', 'nil', '7032033670', 'Piapung', 'piabeer', 9.487940000, 9.015570000),
(1557, 187, 'AMOS NIANGDIP', 2, '90F5AD6360296644395', 56, 'M', 'nil', '7081575706', 'Piapung', 'piabeer', 9.487860000, 9.015620000),
(1558, 187, 'ISHAKU TWALWAI', 1, '41193395051', 48, 'M', 'nil', '8115276911', 'Shamang', 'Shamang', 9.488340000, 9.015580000),
(1559, 187, 'DEIDEI PETER', 2, '90F5B13577541930544', 54, 'F', 'nil', '8115276911', 'Piapung', 'Shamang', 9.488430000, 9.016530000),
(1560, 187, 'MARYA MUSAMAILA', 2, '90F5B19205298745352', 68, 'F', 'nil', '7066476754', 'Shamang', 'Shamang', 9.488170000, 9.015470000),
(1561, 188, 'RANBUET SYLVANUS', 1, '39382492705', 32, 'M', 'nil', '8095463289', 'Piapung', 'Shamang', 9.486150000, 9.021180000),
(1562, 188, 'SHEPMA NAANSHEPEZEKIEL ', 2, '90F5B21400497963677', 31, 'M', 'nil', '8080694129', 'Koetes', 'Ganggoevoel', 9.507950000, 9.014510000),
(1563, 188, 'RACHEAL WOTNAAN D.', 1, '41085276100', 29, 'F', 'nil', '8088696079', 'piapung', 'Soemdok', 9.488880000, 9.014400000),
(1564, 188, 'KWANLEK NAANBUET JOHN', 1, '84237371626', 30, 'M', 'nil', '8029083319', 'Piapung', 'Naanlong', 9.099020000, 9.018270000),
(1565, 188, 'NAANLOE KUNGSDANLAMI', 1, '66812630225', 30, 'M', 'nil', '7012930817', 'Piapung', 'Gwotkot', 9.500100000, 9.053520000),
(1566, 188, 'CECILIA SOHNAAN', 1, '81966437234', 50, 'F', 'nil', '7081533531', 'Piapung', 'Dunggaras', 9.485370000, 9.022860000),
(1567, 188, 'GOLWAI JEREMIAH C.', 1, '54642764952', 35, 'F', 'nil', '8097364881', 'Piapung', 'Piapung', 9.473620000, 9.014310000),
(1568, 188, 'NAOMI AUGUSTINE', 2, 'A09015958', 47, 'F', 'PLWD', '8079289002', 'Piapung', 'Dunggaras', 9.491430000, 9.014680000),
(1569, 188, 'ESTHER NANKIER KUNGRAP', 1, '20435376202', 50, 'F', 'nil', '9018436260', 'Piapung', 'Piapung', 9.489320000, 9.012660000),
(1570, 188, 'JANLAT DEMDIP JACOB', 1, '44691845425', 30, 'M', 'nil', '9126200391', 'Piapung', 'Piapung', 9.484700000, 9.019620000),
(1571, 189, 'SYLVESTER KUNTOT', 1, '26250049202', 59, 'M', 'nil', '8051220026', 'Ganggoevoel', 'Ganggoevoel', 9.499200000, 9.018260000),
(1572, 189, 'YAKUBU ZAMMUAN', 1, '24234138617', 60, 'M', 'nil', '7011860445', 'Ganggoevoel', 'Ganggoevoel', 9.516840000, 9.014660000),
(1573, 189, 'ELI  JONATHAN', 1, '64683941555', 41, 'F', 'nil', '8026536073', 'Ganggoevoel', 'Ganggoevoel', 9.448771000, 9.019720000),
(1574, 189, 'KUTLANG JONATHAN', 1, '48096308701', 37, 'M', 'nil', '9077103705', 'Ganggoevoel', 'Ganggoevoel', 9.514630000, 9.054630000),
(1575, 189, 'IBRAHIM BOLGWIM', 1, '64691845425', 43, 'M', 'Blind', '8028967170', 'Shior', 'Piapung', 9.475910000, 9.014960000),
(1576, 189, 'REJINA JOHN', 1, '92837811350', 40, 'F', 'nil', '7011860445', 'Ganggoevoel', 'Ganggoevoel', 9.511130000, 9.044440000),
(1577, 189, 'AMOS TANGWIN ', 1, '47854744115', 45, 'M', 'nil', '7086843852', 'Ganggoevoel', 'Ganggoevoel', 9.500290000, 9.057020000),
(1578, 189, 'LIVINUS FEBIAN', 1, '52238452006', 38, 'M', 'nil', '8144555225', 'Ganggoevoel', 'Ganggoevoel', 9.400190000, 9.045350000),
(1579, 189, 'LAMI FRIDAY HYSENT', 2, '90F5B130D0296221690', 32, 'F', 'nil', '8081157592', 'Piapung', 'Piapung', 9.473120000, 9.019510000),
(1580, 189, 'SUZANA LONGKOEN WANLEK', 2, '90F5AF817A295616865', 72, 'F', 'AGED', '8147596151', 'Gotlong', 'Pangjem', 9.484170000, 9.029270000),
(1581, 190, 'SABASTINE SALOMI KWOTWAI', 1, '51656112702', 58, 'F', 'nil', '7011307730', 'Piapung', 'Toengdas', 9.486300000, 9.023370000),
(1582, 190, 'FESTUS MARAFA', 1, '73951404675', 40, 'M', 'nil', '9020800589', 'Catholic Piapung', 'Piapung', 9.486470000, 9.022880000),
(1583, 190, 'JUMAI FUASWANG', 1, '97032315848', 59, 'F', 'nil', '9079515162', 'Piapung', 'Sotfuen', 9.486710000, 9.023530000),
(1584, 190, 'CHRISTIANA LITYONG', 1, '68295849537', 60, 'F', 'nil', '8123595162', 'Piapung', 'Piapung', 9.484170000, 9.021940000),
(1585, 190, 'RIFKATU MOSES', 1, '81228062736', 61, 'F', 'nil', '7017564417', 'Piapung', 'Piapung', 9.485660000, 9.022880000),
(1586, 190, 'MARY SHEIBOK', 5, 'NIL', 63, 'F', 'PLWD', '9061338006', 'Piapung', 'Piapung', 9.486060000, 9.023680000),
(1587, 190, 'SHAWONG MARYAMU TALMUAN', 2, '90F5AF2221295783466', 67, 'F', 'nil', '705064688', 'Piapung', 'piabeer', 9.487480000, 9.020340000),
(1588, 190, 'APJAN HANGSOEN', 1, '10549062284', 50, 'F', 'nil', '7013254475', 'Piapung', 'Peer', 9.485120000, 9.023360000),
(1589, 190, 'REGINA BATHALOMEW', 2, '71BC3D838A296478916', 44, 'F', 'nil', '7017564417', 'Piapung', 'Nboer', 9.485380000, 9.021790000),
(1590, 190, 'FAITH HANTU', 1, '54793588482', 56, 'F', 'nil', '8136024640', 'Piabeer', 'piabeer', 9.085690000, 9.022850000),
(1591, 146, 'Showul Jindang', 1, '61152354442', 55, 'M', 'Displaced', '8072437352', 'LONKAT', 'LONKAT', 8.255900000, 10.971070000),
(1592, 146, 'John Matthew Dakop', 2, '90F5AEF873295820014', 50, 'M', 'Widow/displaced', '8079134897', 'KWALAH', 'LONKAT', 8.429780000, 12.199850000),
(1593, 146, 'Jacob Dasho', 2, 'F2295884927', 47, 'M', 'Displaced', '7057153010', 'KOPKULENG', 'LONKAT', 9.128010000, 9.361920000),
(1594, 146, 'Tapsuk Dayil', 2, '4B286835784', 45, 'M', 'Displaced', '811538197', 'KON CHIP', 'LONKAT', 9.069340000, 9.327410000),
(1595, 146, 'Patricia M.Daret', 2, '90F5B17BA7295693151', 59, 'F', 'Widow/displaced', '8035752485', 'KAPIL CHIP', 'LONKAT', 9.469280000, 9.465030000),
(1596, 146, 'Enmalong Dabohol Banyami', 2, '90F5B04F58811433919', 38, 'F', 'Displaced', '8052795222', 'YELWA', 'LONKAT', 9.065360000, 9.267400000),
(1597, 146, 'Wasat Helen', 2, '90F5B17BA7295704270', 42, 'F', 'Displaced', '8154519386', 'KAPIL CHIP', 'LONKAT', 9.108860000, 9.305960000),
(1598, 146, 'Vilmut J.Dare', 1, '49205490217', 50, 'M', 'Displaced', '8070954938', 'MHINZAM', 'LONKAT', 9.065660000, 9.372060000),
(1599, 146, 'Paul Tangkat', 1, '15067986247', 23, 'F', 'Displaced', '8059853122', 'KHIDUHUM', 'LONKAT', 9.372610000, 9.265210000),
(1600, 146, 'Christopher Bala', 2, '90F5B161E5516959333', 51, 'M', 'Widow/displaced', '9059996015', 'BWAWAR CHIP', 'LONKAT', 9.063720000, 9.368470000),
(1601, 147, 'Paul E.Daen', 1, '35600977896', 55, 'M', 'Displaced', '817501878', 'KOPKULENG', 'LONKAT', 8.429300000, 9.742320000),
(1602, 147, 'James S.Dakop', 2, '90F5B20D87298141448', 68, 'M', 'Displaced', '8115135661', 'JIBAM', 'LONKAT', 8.777140000, 8.689150000),
(1603, 147, 'Tomothy D.Ngyak', 2, '90F5B1E64B2963987', 49, 'M', 'Displaced', '8076748550', 'KHIDUHUM', 'LONKAT', 9.215830000, 9.471040000),
(1604, 147, 'Freeman Ajidang', 1, '50667837540', 27, 'M', 'Displaced', '7037120261', 'LONKAT', 'LONKAT', 9.196930000, 9.422950000),
(1605, 147, 'Endang Paul', 2, '90F5B1F4F2295778266', 48, 'M', 'Widow/displaced', '9058236379', 'KOPKULENG', 'LONKAT', 9.117480000, 9.235030000),
(1606, 147, 'Bethel John Simdi', 2, '90F5AFB964416065437', 37, 'M', 'Displaced', '7050248072', 'KHIDUHUM', 'LONKAT', 9.815740000, 9.303080000),
(1607, 147, 'Showul P.Ajidang', 1, '80280212877', 30, 'F', 'Aged/displaced', '7033608049', 'LONKAT', 'LONKAT', 9.715260000, 9.357640000),
(1608, 147, 'Cletus E.Dagwor', 2, '90F5B1E64B296469355', 48, 'M', 'Displaced', '811103860', 'KHIDUHUM', 'LONKAT', 9.514790000, 9.458760000),
(1609, 147, 'Dadyang Peter N.', 1, '9263016764', 52, 'M', 'Displaced', '8143360550', 'KHIDUHUM', 'LONKAT', 9.134630000, 9.307620000),
(1610, 147, 'Daben Nanalong Nandeng', 2, '90F5B07FF0534159219', 55, 'M', 'Displaced', '8152591360', 'CHIP', 'LONKAT', 9.115730000, 9.357000000),
(1611, 148, 'Dabilip N.Dimas', 2, '90F5B1F4F2296824620', 38, 'M', 'Displaced', '7053542108', 'MHINZAM', 'MHINZAM ', 9.643200000, 7.811420000),
(1612, 148, 'Shikmuut E. Shangklin', 2, '90F5AFCF7F296056934', 32, 'M', 'Displaced', '9029147790', 'KOPSHAKAP', 'MHINZAM ', 9.643200000, 7.811420000),
(1613, 148, 'Salome Yusuf', 2, '90F5B161E5516961608', 46, 'F', 'Displaced', '8056285669', 'KAPIL CHIP', 'MHINZAM ', 9.643200000, 7.811420000),
(1614, 148, 'James Bridget', 1, '64311090893', 36, 'F', 'Displaced', '805287031', 'JAK', 'MHINZAM ', 9.643200000, 7.811420000),
(1615, 148, 'Daben L.Shinmeh', 5, 'VIN NOT COMPLETE', 25, 'M', 'Displaced', '8064711526', 'KAPIL CHIP', 'MHINZAM ', 9.643200000, 7.811420000),
(1616, 148, 'Nanshin Damulak', 2, '90F5B1F4F2296494', 31, 'F', 'Displaced', '8074783880', 'PYABOR', 'MHINZAM ', 9.643200000, 7.811420000),
(1617, 148, 'Dimas T.Endang', 2, '90F5B07C8B534679752', 28, 'F', 'Displaced', '8155357809', 'MHINZAM', 'MHINZAM ', 9.643200000, 7.811420000),
(1618, 148, 'Agidang Ansarnan Showul', 1, '54292316848', 29, 'F', 'Displaced', '8050493255', 'LONKAT', 'MHINZAM ', 9.643200000, 7.811420000),
(1619, 148, 'Mary Timothy', 2, '90F5B1E84B295033018', 49, 'F', 'Widow/displaced', '9058305458', 'KHIDUHUM', 'MHINZAM ', 9.643200000, 7.811420000),
(1620, 148, 'Guwan Regina', 2, '90F5B1E64B296126939', 37, 'F', 'Displaced', '9056307282', 'KHIDUHUM', 'MHINZAM ', 9.643200000, 7.811420000),
(1621, 149, 'Tukursuk James', 1, '40899765895', 28, 'M', 'Displaced', '7057378167', 'KOPKULENG', 'LONKAT', 7.037460000, 9.391260000),
(1622, 149, 'Garba D.Ntuhun', 1, '74427471174', 26, 'M', 'Displaced', '8071378167', 'KOPKULENG', 'LONKAT', 8.631890000, 9.611450000),
(1623, 149, 'Lohommu Sa''a', 2, '90F5B17BA7296234426', 21, 'F', 'Displaced', '905141367', 'DUNGGWAN CHIP', 'LONKAT', 8.437220000, 9.612080000),
(1624, 149, 'Jacob Happy', 2, '90F5B161E5516984907', 22, 'F', 'Displaced', '8114146118', 'CHIP', 'LONKAT', 8.634920000, 9.612290000),
(1625, 149, 'Dateer Augustine M.', 2, '90F5B1E64B295956217', 51, 'M', 'Displaced', '8050410287', 'KHIDUHUM', 'LONKAT', 8.633490000, 9.613100000),
(1626, 149, 'Felicia John', 2, '90F5B1F4F2295942883', 36, 'F', 'Displaced', '8153352205', 'KOPKULENG', 'LONKAT', 8.734110000, 9.611680000),
(1627, 149, 'Makmis Nandi Dara', 1, '83020801248', 23, 'F', 'Displaced', '8155094884', 'ST. ANTHONY CHIP', 'LONKAT', 8.684310000, 9.600680000),
(1628, 149, 'Helen Nandi', 2, '90F5AEFB73296739533', 47, 'F', 'Displaced', '8055676825', 'KWALAH', 'LONKAT', 8.238020000, 9.613480000),
(1629, 149, 'Rebecca Plangnan', 2, '90F5AFB964416392598', 28, 'F', 'Lame/displaced', '9158367517', 'JEPMIDYEL', 'LONKAT', 8.632180000, 9.612350000),
(1630, 149, 'Yilshwan Danjuma', 2, '90F5B1F4F2296236428', 34, 'M', 'Displaced', '7052260347', 'MHINZAM', 'LONKAT', 8.635220000, 9.611620000),
(1631, 150, 'Dawan Perim', 2, '90F5B1F4F2293207191', 40, 'M', 'Displaced', '8053315000', 'MHINZAM', 'LONKAT', 9.817150000, 11.322160000),
(1632, 150, 'Albert Dabit', 2, '90F5B1F4F2296117481', 42, 'M', 'Displaced', '8056926979', 'KARAM', 'LONKAT', 9.633990000, 11.146630000),
(1633, 150, 'Felicity Felix', 1, '19573885311', 32, 'F', 'Displaced', '8055364184', 'MHINZAM', 'LONKAT', 9.258010000, 9.360470000),
(1634, 150, 'Makneng Dayil', 1, '52646995437', 43, 'M', 'Displaced', '7053729197', 'BAKWAR CHIP', 'LONKAT', 9.518020000, 9.616480000),
(1635, 150, 'Peace Augustine', 1, '24872653306', 43, 'F', 'Displaced', '8155476885', 'CHIP', 'LONKAT', 9.198030000, 9.436490000),
(1636, 150, 'Shakop Nanfe', 2, '90F5B1F4F2296041030', 40, 'F', 'Displaced', '905236477', 'MHINZAM', 'LONKAT', 9.618040000, 9.266380000),
(1637, 150, 'Kamna Aaron Dalong', 1, '96427415763', 30, 'F', 'Displaced ', '7056384987', 'MHINZAM', 'LONKAT', 9.125010000, 9.353950000),
(1638, 150, 'Suzana Jeriamiah', 2, '90F5AD2D2D296217988', 47, 'F', 'Displaced', '7055889019', 'JEPMIDYEL', 'LONKAT', 9.118070000, 9.366400000),
(1639, 150, 'Daben Nandeng Lama', 1, '21896596322', 27, 'M', 'Displaced', '81734963530', 'ST. ANTHONY CHIP', 'LONKAT', 9.118090000, 9.661400000),
(1640, 150, 'Dakup I.Alexander', 2, '90F5B07C8B534842728', 27, 'M', 'Displaced', '8191194085', 'YANGSHUNG', 'LONKAT', 9.582910000, 9.366160000),
(1641, 151, 'MaGtong Dasat', 1, '17270544630', 29, 'F', 'Displaced', '8134953530', 'CHIP', 'LONKAT', 8.948370000, 10.618090000),
(1642, 151, 'Bilpas Katnock Dapus', 1, '75091348196', 27, 'M', 'Displaced', '915478560', '43 KOPKULENG', 'LONKAT', 9.124140000, 7.635880000),
(1643, 151, 'Kangring Nankwat', 2, '90F5B1E64B296558141', 30, 'M', 'Displaced', '905580560', 'KHIDUHUM', 'LONKAT', 9.160760000, 9.369190000),
(1644, 151, 'Shindang Bala', 2, '90F5B1F4F2296729872', 26, 'F', 'Displaced', '9153755811', 'PYABOR', 'LONKAT', 9.169280000, 9.562560000),
(1645, 151, 'Timothy Nantap', 2, '90F5B1E64B295886724', 30, ' ', 'Displaced ', '8117713048', 'ST. ANTHONY CHIP', 'LONKAT', 9.162880000, 9.163260000),
(1646, 151, 'Molbang Nandet', 1, '35764970305', 29, 'M', 'Displaced', '8134953530', 'COCIN RCC CHIP', 'LONKAT', 9.161440000, 9.262900000),
(1647, 151, 'Miyikshak J.Alexander', 1, '36263204188', 36, 'M', 'Displaced', '8078954127', 'JEPMIDYEL', 'LONKAT', 9.162100000, 9.360110000),
(1648, 151, 'Pyaltong Mamu', 2, '90F5B1F5F2296235691', 37, 'F', 'Displaced', '807042106', 'MHINZAM', 'LONKAT', 9.159250000, 9.411520000),
(1649, 151, 'Timothy P.Ngyak', 2, '90F5B1E64B296398788', 47, 'M', 'Displaced ', '8070570480', 'KHIDUHUM', 'LONKAT', 9.156980000, 9.392950000),
(1650, 151, 'Dajab John', 2, '90F5B1F4F2295628497', 54, 'M', 'Displaced', 'nil', 'PYABOR', 'LONKAT', 9.156680000, 9.365220000),
(1651, 152, 'Dasat James peter', 1, '41264406182', 30, 'M', 'Displaced', '9155235851', 'KOPKULENG', 'LONKAT', 7.734260000, 9.566790000),
(1652, 152, 'Elias Dominic', 2, '90F5B161E5516636694', 28, 'M', 'Displaced', '70575539763', 'PYABOR', 'LONKAT', 9.124170000, 9.366830000),
(1653, 152, 'Makel B. Plangni', 2, '90F5AE4E47415884397', 40, 'F', 'Displaced', '8112603331', 'KHIDUHUM', 'LONKAT', 9.217220000, 9.315000000),
(1654, 152, 'Simyon Sohotdet', 2, '90F5AEF873286036748', 30, 'M', 'Widow/displaced', '8152649526', 'KWALAH', 'LONKAT', 9.116530000, 9.276420000),
(1655, 152, 'Dasat Shinzennan', 2, '90F5B1E64B295620952', 30, 'F', 'widow/displaced', '8072651172', 'KHIDUHUM', 'LONKAT', 9.119310000, 9.360020000),
(1656, 152, 'Nyamyogol Tagun Mulak', 2, '90F5AFB964416220716', 38, 'F', 'Displaced', '9052030407', 'KHIDUHUM', 'LONKAT', 9.017610000, 9.166710000),
(1657, 152, 'Longdi bammak', 2, '90F5B1F4F2296060654', 37, 'F', 'Aged/widow/displaced', '9154703078', 'MHINZAM', 'LONKAT', 9.115120000, 9.565040000),
(1658, 152, 'Regina Shiya', 2, '90F5B1F4F2296652238', 31, 'F', 'Displaced', '8117056532', 'KOPKULENG', 'LONKAT', 9.116480000, 9.393260000),
(1659, 152, 'Felicia Damen', 2, '90F5B1F4F2296315148', 37, 'F', 'Displaced', '9153765011', 'PYABOR', 'LONKAT', 9.416150000, 9.362950000),
(1660, 152, 'George Nantok', 2, '90F5B1F4F2296490545', 32, 'F', 'Blind/displaced', '9054932528', 'PYABOR', 'LONKAT', 9.117900000, 9.065110000),
(1661, 153, 'Moses P. Zalangshaka', 5, 'PROVIDE CORRECT NIN', 27, 'M', 'Displaced', '8132947952', 'BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1662, 153, 'Zalanshaka Zatshiwe', 1, '28962877338', 22, 'M', 'Widow/displaced', '9030950538', 'ST THOMAS PANKSHIN', 'PYEL', 9.124100000, 11.322160000),
(1663, 153, 'Clement Lengshak F.', 1, '72680692277', 26, 'M', 'Widow/displaced', '7016438781', 'OPP. F.C.E BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1664, 153, 'Nemene Danjuma M.', 1, '42562602946', 22, 'F', 'Displaced', '9013957822', 'BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1665, 153, 'Bala Dimshak John', 2, '71BC3D7A7B296385308', 40, 'M', 'Aged/widow/displaced', '7063073640', 'BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1666, 153, 'Gosen Clement M', 1, '10056140189', 40, 'M', 'Displaced', '7013196099', 'TAMBES', 'PYEL', 9.124100000, 11.322160000),
(1667, 153, 'Paulinus Gotom', 5, 'PLEASE PROVIDE PROOF OF ID', 67, 'M', 'Widow/displaced', '8039918282', 'PYEL', 'PYEL', 9.124100000, 11.322160000),
(1668, 153, 'Sati T. Simku', 2, '71BC3D747B296145310', 32, 'M', 'Displaced', '8160021796', 'BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1669, 153, 'Mantong I. Ladi', 1, '58892889543', 29, 'F', 'Aged/displaced', '8060213341', 'OPP. F.C.E BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1670, 153, 'Danlami Toma', 1, '85633807088', 34, 'M', 'Deaf/displaced', '8061645457', 'COCIN BWARAK', 'PYEL', 9.124100000, 11.322160000),
(1671, 154, 'Audu Margaret', 2, '71BC3D7A84296219808', 43, 'F', 'Widow/displaced', '7063381349', 'OPP.YOUTH CENTER', 'SPECIAL SITE', 7.560100000, 10.444480000),
(1672, 154, 'Bridget Tunkuda Goshit', 2, '90F5B1325E296299064', 38, 'F', 'Widow/displaced', '8061661542', 'KUBA', 'SPECIAL SITE', 8.255980000, 10.620020000),
(1673, 154, 'Emmanuel Nenfe Patience', 1, '43187153456', 48, 'F', 'Displaced ', '8065521203', 'SPECIAL SITE', 'SPECIAL SITE', 8.253650000, 10.091620000),
(1674, 154, 'Evelyn C. Rume', 1, '10921969593', 52, 'F', 'Displaced ', '8137675596', '8TH.MAN QUARTERS', 'SPECIAL SITE', 5.173220000, 8.069120000),
(1675, 154, 'Simon Nenpan Gofwen', 1, '73513428294', 42, 'F', 'Displaced ', '8037135059', 'NEW LAYOUT', 'NEW LAYOUT', 8.950660000, 9.742320000),
(1676, 154, 'Dasar Hadiza Ayuba', 1, '34297931869', 40, 'F', 'Displaced ', '9031120973', 'OPP. UBA PANKSHIN', 'OPP. UBA PNK', 8.255980000, 10.620020000),
(1677, 154, 'Helen S. Emmanuel', 2, '90F5B19CDA415990943', 59, 'F', 'Widow/displaced', '7063381349', 'NYELLENG', 'NEW LAYOUT', 2.837800000, 1.520260000),
(1678, 154, 'Talatu Patrick Kebang', 1, '14486697344', 35, 'F', 'Widow/displaced', '7067133848', 'G.R.A. ROAD PANKSHIN', 'NEW LAYOUT', 0.365340000, 2.455810000),
(1679, 154, 'Stella Joseph Arobo', 1, '43407206740', 31, 'F', 'Widow/displaced', '8039238203', 'OPP.GOV.COLLEGE', 'NEW LAYOUT', 8.950650000, 9.742320000),
(1680, 154, 'Rachael Yilkat', 1, '79646300360', 26, 'F', 'Displaced ', '8065507090', 'HOLY CROSS PANKSHIN', 'HOLY CROSS', 0.907100000, 10.408000000),
(1681, 155, 'Clement Wakdok', 1, '54859099285', 40, 'M', 'Displaced', '8069601454', 'COCIN VEL', 'KURUM', 9.323950000, 9.442790000),
(1682, 155, 'Edward D. Sunkur', 3, 'BUU20782AA71', 40, 'M', 'Displaced', '8162137517', 'MILE 8 FIER', 'KURUM', 9.323950000, 9.442790000),
(1683, 155, 'Gomos Elizabeth C.', 1, '29981418724', 40, 'F', 'Displaced ', '7032162145', 'HOLY CROSS PANKSHIN', 'KURUM', 9.323950000, 9.442790000),
(1684, 155, 'Patricia Clement', 2, '90F5B1E57298273747', 40, 'F', 'Displaced', '8069601454', 'HOLY CROSS PANKSHIN', 'KURUM', 9.323950000, 9.442790000),
(1685, 155, 'Ibrahim Esther Sokche', 1, '70002939508', 40, 'F', 'Widow', '8062939202', 'TOPPET', 'KURUM', 9.323950000, 9.442790000),
(1686, 155, 'Monica Kumshep', 1, '98695483687', 40, 'F', 'Displaced ', '8103580445', 'YIMTUL', 'KURUM', 9.323950000, 9.442790000),
(1687, 155, 'Gofwen Rose M.', 1, '70830713963', 40, 'F', 'Deaf', '7036609078', 'YIMTUL', 'KURUM', 9.323950000, 9.442790000),
(1688, 155, 'Silas Gokir', 1, '37740565856', 40, 'M', 'Displaced', '8069762224', 'BEHIND COLL. OF HEALTH', 'KURUM', 9.323950000, 9.442790000),
(1689, 155, 'DanjumaKopduna', 1, '35726471479', 40, 'M', 'Displaced ', '8162020872', 'ST.PETERS PANKSHIN', 'KURUM', 9.323950000, 9.442790000),
(1690, 155, 'Gabriel Celina Piwanga', 1, '72855309711', 40, 'F', 'Displaced', '7035364414', 'VEL. PANKSHIN', 'KURUM', 9.323950000, 9.442790000),
(1691, 156, 'Goyol Rahab', 2, '030DCE8757295962112', 48, 'F', 'Displaced', '7066143824', 'YOUTH CENTER', '', 7.560100000, 10.795550000),
(1692, 156, 'Silas Nakom Blessing ', 1, '20664986033', 32, 'F', 'nil', '8032523072', 'PANKSHIN', '', 9.470790000, 9.742320000),
(1693, 156, 'Plangnan Philemon ', 1, '80811668736', 37, 'F', 'nil', '8053718764', 'GOV. COLL. PANKSHIN', '', 7.385930000, 15.008450000),
(1694, 156, 'Solomon Celestina', 1, '44798811409', 35, 'F', 'nil', '7065753319', 'OPP.RD. SAFETY OFFICE', '', 7.560100000, 10.795550000),
(1695, 156, 'Arshakat Christiana Manasseh', 1, '61349384706', 34, 'F', 'Displaced', '7034516322', 'HIGH COURT JUNCTION', '', 9.470790000, 9.742320000),
(1696, 156, 'Simdi Nenkimwa Justina', 1, '84296813125', 40, 'F', 'nil', '8137801790', 'YOUTH CENTER', '', 4.706700000, 11.811330000),
(1697, 156, 'NanklingYohanna', 1, '21365940827', 30, 'F', 'nil', '8161716168', 'PANKSHIN', '', 7.385930000, 15.008450000),
(1698, 156, 'Yosi Musa ', 2, '71BC060ABD296031366', 54, 'F', 'nil', '7067007437', 'ANGWAN SARKI 2', 'DOUBLE ACROSS', 9.470790000, 10.093400000),
(1699, 156, 'Genka Justina T', 2, '90F5B15EOC295612079', 48, 'F', 'nil', '8065471625', 'OPP. DAILY MARKET', 'OPP. DAILY MKT', 9.470790000, 9.742320000),
(1700, 156, 'Monica Andrew', 2, '71BC3D7772295884219', 49, 'F', 'nil', '7063068059', 'SPECIAL SITE', 'SPECIAL SITE', 7.560100000, 10.795550000),
(1701, 157, 'Nandyi Dakas', 1, '23132518165', 35, 'M', 'Widow/displaced', '8137645715', 'NEW LAYOUT', 'KOR', 9.814530000, 0.584112000),
(1702, 157, 'Tongmer Ritmwa E.', 1, '29211731151', 30, 'F', 'Widow/displaced', '8119348792', 'KOR', 'KOR', 0.668060000, 5.028580000),
(1703, 157, 'Samu', 3, 'PL65T216680', 70, 'M', 'Aged/displaced', '8065266572', 'KOR', 'KOR', 5.406350000, 10.404000000),
(1704, 157, 'Tokdang Musa G.', 2, '90F5AE8BD2415900980', 26, 'F', 'nil', '7058505669', 'KOR', 'KOR', 4.648140000, 6.665800000),
(1705, 157, 'Nendang Nentawe', 1, '83818688262', 30, 'F', 'Widow/displaced', '8137676651', 'KUBONG MILE 10', 'KOR', 2.370010000, 3.859140000),
(1706, 157, 'Timothy Watyil', 2, '90F5AEFBBE295631046', 47, 'M', 'Widow/displaced', '7087909174', 'KOR', 'KOR', 2.837790000, 4.560810000),
(1707, 157, 'Rifkatu Samuel', 3, 'PL653090738', 67, 'F', 'Widow/displaced', '8065559149', 'KOR', 'KOR', 2.837790000, 4.560810000),
(1708, 157, 'Nenfort Sekat', 1, '67450455701', 38, 'M', 'nil', '801076552', 'KOR', 'KOR', 11.883900000, 0.116940000),
(1709, 157, 'Zumji Kefas', 1, '49463350571', 32, 'M', 'Widow/displaced', '8160811950', 'OPP. DAILY MARKET', 'KOR', 3.772750000, 2.221930000),
(1710, 157, 'Dakup Lerishmwa', 2, '90F5B129AE518774749', 25, 'F', 'Widow/displaced', '9075454296', 'KOR', 'KOR', 5.114710000, 0.116940000),
(1711, 158, 'Linda Sati Dekom', 1, '36162192726', 43, 'F', 'Widow', '8062451287', 'PANKSHIN', 'ST.BENEDICT RD', 0.803140000, 4.326920000),
(1712, 158, 'Longji Lapwarangnen', 2, '90F5B1FBE6296437689', 32, 'F', 'nil', '7032168169', 'COCIN VEL', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1713, 158, 'Dinatu Jeremiah', 2, '90F5B1A730295705124', 33, 'F', 'Widow', '9033662004', 'DUNG POPIT', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1714, 158, 'Bibiana Muyitgak', 1, '97256967593', 36, 'F', 'nil', '9064121420', 'COCIN FWOR', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1715, 158, 'Blessing Daniel', 1, '85714803947', 33, 'F', 'nil', '7030089704', 'COCIN VEL', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1716, 158, 'Linda Sati', 1, '36162192726', 25, 'F', 'Widow/Partial Paraly', '7047486917', 'NEW LAYOUT', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1717, 158, 'Ruth Moses', 1, '13319314893', 30, 'F', 'nil', '7037769216', 'DAILY MARKET', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1718, 158, 'Dorkat Deshi', 1, '41696203580', 32, 'F', 'Lame/displaced', '9133800449', 'COCIN MILE 10', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1719, 158, 'Yilput Evelyn A.', 1, '28057855647', 29, 'F', 'nil', '9067896093', 'PANKSHIN', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1720, 158, 'Yitpimwa Musa', 1, '17649166151', 36, 'F', 'nil', '7039665995', 'NO.1 ST BENEDICT ROAD', 'ST.BENEDICT RD', 3.947730000, 3.157480000),
(1721, 159, 'Mageret Clement', 2, '71BC3D7A7B296635820', 60, 'F', 'Widow', '', 'BWARAK GIDA', 'BWARAK', 8.429770000, 7.811420000),
(1722, 159, 'Lengzem Jummai', 3, 'PL647710142', 54, 'F', 'nil', '7039391135', 'PYEL', 'BWARAK', 9.470790000, 8.513560000),
(1723, 159, 'Hannatu N. Clement', 1, '54250212891', 38, 'F', 'nil', '8138851035', 'OPP.F.C.E BWARAK', 'BWARAK', 8.082120000, 9.215710000),
(1724, 159, 'Sati Danjuma', 2, '90F5B2014D295429375', 41, 'M', 'nil', '9068181800', 'RIM BWARAK', 'BWARAK', 8.776470000, 9.919780000),
(1725, 159, 'Yakubu Dimshak', 1, '61026240368', 30, 'M', 'Aged', '9124283799', 'opposite FCE, BWARAK', 'BWARAK', 8.255980000, 10.620020000),
(1726, 159, 'Tokdima Laurencia', 2, '90F5B2014D295803957', 43, 'F', 'nil', '8107769135', 'RIM BWARAK', 'BWARAK', 5.990390000, 6.582660000),
(1727, 159, 'Paulina Dayol', 1, '29839174800', 66, 'F', 'nil', '8164867852', 'ST THOMAS MANGET', 'BWARAK', 9.124100000, 2.194220000),
(1728, 159, 'Elizabeth Monday', 1, '59528130071', 30, 'F', 'nil', '8109887921', 'ST. WILLIAMS BWARAK', 'BEHIND GEN.HOS.', 9.470790000, 7.109270000),
(1729, 159, 'Sekidah Francis', 1, '10379524189', 50, 'M', 'nil', '8130890199', 'BWARAK', 'BWARAK', 7.385930000, 9.566790000),
(1730, 159, 'Tani Cletus', 2, '90F5B2136C296131283', 68, 'F', 'nil', '7043766383', 'VEL. PANKSHIN', 'BWARAK', 7.037430000, 4.651740000),
(1731, 160, 'Nenfort Jinah', 2, 'A295704972', 41, 'F', 'nil', '8032418694', 'LEPTAR', 'GOLONG RD', 9.326480000, 9.437579000),
(1732, 160, 'Christina Luka', 2, '90F5AE8A92533907826', 38, 'F', 'nil', '8039491668', 'BEHIND HOLY CROSS', 'GOLONG RD', 9.325460000, 9.437230000),
(1733, 160, 'Juliana Nuhu', 1, '16393530031', 43, 'F', 'nil', '7035995388', 'DUK', 'DUK', 9.324760000, 9.437900000),
(1734, 160, 'Leshimwa Reuben ', 2, '90F5B20208296480998', 37, 'F', 'nil', '7035196281', 'KURURUWA', 'KURURUWA', 9.235500000, 8.734200000),
(1735, 160, 'Lokrit Gideon ', 1, '21311669555', 44, 'F', 'nil', '8037800882', 'KURURUWA', 'KURURUWA', 9.325450000, 9.437926000),
(1736, 160, 'Goma Armunen Hope', 1, '33147777350', 22, 'F', 'nil', '9079434278', 'KURURUWA', 'KURURUWA', 9.326470000, 9.437900000),
(1737, 160, 'Yakubu longret', 2, '90F5AFA589295696975', 30, 'F', 'nil', '8069675794', 'COCIN ASA', 'GOLONG RD', 9.325490000, 9.436191000),
(1738, 160, 'Simdi Nenkimwa Justina', 2, '71BC3D7A84296813125', 38, 'F', 'nil', '7035119788', 'YOUTH CENTER', 'OPP. YOUTH CENT', 9.325430000, 9.437927000),
(1739, 160, 'Bizum ngwan', 1, '72444477751', 42, 'F', 'nil', '8036176825', 'OPP. DAILY MARKET', 'OPP. DAILY MKT', 9.326470000, 9.437926600),
(1740, 160, 'Gokwat Mary', 1, '79471532849', 34, 'F', 'nil', '7032105784', 'DAILY MARKET', 'DAILY MARKET', 9.325260000, 9.437232300),
(1741, 191, 'CATHERINE DOGARI', 2, '90F5B1FE6F415892520', 63, 'F', 'WIDOW', '8053460858', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1742, 191, 'CHRISTIANA LONGWEN', 2, '90F5B1FE61416045881', 46, 'F', 'WIDOW', '8069492070', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1743, 191, 'MERCY ALBERT YENWAN', 1, '51339659162', 38, 'F', 'WIDOW', '8180466771', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1744, 191, 'WUBANG SOEMDAT', 2, '90R5B06D80416229967', 42, 'F', 'WIDOW', '8051622211', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1745, 191, 'LARABA TUAMLONG LONGTUK', 2, '90F5B17C27517583606', 40, 'F', 'WIDOW', '8053460858', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1746, 191, 'DOGARI YENLA', 2, '9075B06D80416238561', 52, 'F', 'WIDOW', '8078678851', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1747, 191, 'HYCIENTH LONGS', 2, '9075B06D80416238561', 40, 'M', 'WIDOW', '8055934056', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1748, 191, 'TONI LONGLAT', 1, '79540719419', 25, 'M', 'UNEMPLOYED', '8050578814', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1749, 191, 'DAMSEN DAMEN(GAMBO)', 2, '90F5B17C27517576628', 35, 'F', 'WIDOW', '9159369406', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1750, 191, 'ENDAT MELICENT', 2, '90F5B1FE6F415802572', 40, 'F', 'WIDOW', '8053460858', 'C/O ST.FRANCIS CATHOLIC CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1751, 192, 'LADI WUPANG', 2, '90F5B06D80416236801', 45, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.325750000, 9.074750000),
(1752, 192, 'JUMMAI  DOGARI', 2, '90F581FE6F415874433', 58, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.325980000, 9.074750000),
(1753, 192, 'AGWO ANNA NAIL', 2, '030DF29067416147679', 29, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.326230000, 9.074750000),
(1754, 192, 'YITDANG MAKSUK', 2, '90F5B17C27517583360', 35, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.326500000, 9.074750000),
(1755, 192, 'SILVIAL DECSON', 1, '92296453193', 33, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.326790000, 9.074750000),
(1756, 192, 'DABOU FLOURENCE ', 2, '90F5B06D80416044696', 40, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'D0KA', 9.327100000, 9.074750000),
(1757, 192, 'MATHEW DALOP', 1, '56094861330', 42, 'M', 'UNEMPLOYED', '7051661841', 'DOKAN KASUWA', 'DOKA', 9.327430000, 9.074750000),
(1758, 192, ' SYLVESTER YONSOEM ', 2, '90F5B06D80416216924', 36, 'M', 'UNEMPLOYED', '7056748330', 'DOKAN KASUWA', 'DOKA', 9.327780000, 9.074750000),
(1759, 192, 'LATSUK GAPLIL', 1, '24823756543', 41, 'M', 'UNEMPLOYED', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.328150000, 9.074750000),
(1760, 192, 'DAMEN GAMBO', 2, '90F5B17C27517576628', 45, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.328540000, 9.074750000),
(1761, 193, 'MARY ROBERT(DOENAAN)', 1, '31722578120', 40, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.350550000, 0.000000000),
(1762, 193, 'EVARISTER DABANG', 1, '47644970792', 45, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.351580000, 9.101780000),
(1763, 193, 'ESTHER SHANBONG(NANAAN)', 2, '90F5AFB344415738804', 38, 'F', 'UNEMPOYED', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.352630000, 9.102830000),
(1764, 193, 'KAMSHINEN GOSHWE(SAMUEL', 2, '90F5B17C27517841645', 29, 'M', 'UNEMPOYED', '7050802539', 'DOKAN KASUWA', 'DOKA', 9.353700000, 9.103900000),
(1765, 193, 'MARY YAKWAL', 5, 'nil', 45, 'F', 'WIDOW', '8160073302', 'NIL', '', 9.354790000, 9.104990000),
(1766, 193, 'DENAAN VINCENT(DOGARI)', 2, '90F5B1FE6F416126115', 35, 'M', 'UNEMPLOYED', '705074338', 'DOKAN KASUWA', 'DOKA', 9.355900000, 9.106100000),
(1767, 193, 'CATHERINE DANNAN', 5, 'NO ID PROVIDED', 38, 'F', 'WIDOW', '8053460858', 'NIL', '', 9.357030000, 9.107230000),
(1768, 193, 'MAGDALINE DAJUNG', 5, 'NO ID PROVIDED', 35, 'F', '0', '8053460858', 'NIL', '', 9.358180000, 9.108380000),
(1769, 193, 'MAKSUK DOGARI', 2, '90F5B1FE6F415963006', 34, 'M', 'UNEMPLOYED', '7053178680', 'DOKAN KASUWA', 'DOKA', 9.359350000, 9.109550000),
(1770, 193, 'LAMI RAYMOND', 5, 'NO ID PROVIDED', 32, 'F', 'WIDOW', '8053460858', 'NIL', '', 9.360540000, 9.110740000),
(1771, 194, 'JUSTINA GAPYIL', 2, '90F5B1FE6F415872185', 49, 'F', 'UNEMPLOYED', '816889085', 'DOKAN KASUWA', 'DOKA', 9.328950000, 9.079150000),
(1772, 194, 'DANLADI JUMMAI ', 2, '90F5B13CE0416290399', 40, 'F', 'UNEMPLOYED', '8119174364', 'DOKAN KASUWA', 'DOKA', 9.329380000, 9.079580000),
(1773, 194, 'RUTH NAANPIAN', 2, '90F5AEF5C4416045060', 35, 'F', 'UNEMPLOYED', '9053648460', 'DOKAN KASUWA', 'DOKA', 9.329830000, 9.080030000),
(1774, 194, 'VICTORIA DAMULAK', 1, '38712699697', 45, 'F', 'UNEMPLOYED', '815112099', 'DOKAN KASUWA', 'DOKA', 9.330300000, 9.080500000),
(1775, 194, 'DAMULACK ISAAC', 1, '30855658742', 30, 'M', 'UNEMPLOYED', '8063388561', 'DOKAN KASUWA', 'DOKA', 9.330790000, 9.080990000),
(1776, 194, 'BALA BLESSING', 1, '92043492771', 37, 'F', 'UNEMPLOYED', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.331300000, 9.081500000),
(1777, 194, 'BERNARD CELESTINA ', 2, '90F5B050G84159911726', 48, 'F', 'UNEMPLOYED', '811823343', 'DOKAN KASUWA', 'DOKA', 9.331830000, 9.082030000),
(1778, 194, 'REBECCA DAMULAK ', 2, '90F5AFD256495460061', 39, 'F', 'UNEMPLOYED', '811193400', 'KWANOENG  DOKAN KASUWA', 'KWANOENG', 9.332380000, 9.082580000),
(1779, 194, 'DALONG GALLA', 2, '90F5B1FC85296210908', 38, 'M', 'UNEMPLOYED', '811988900', 'DOKAN KASUWA', 'DOKA', 9.332950000, 9.083150000),
(1780, 194, 'GAPYIL NAANMAN  ', 2, '238BF010CF506526608', 25, 'M', 'UNEMPLOYED', '8145449108', 'DOKAN KASUWA', 'DOKA', 9.333540000, 9.083740000),
(1781, 195, 'CLEMENTINA JOHN', 1, '33027805598', 54, 'F', 'WIDOW', '8079289002', 'DOKAN KASUWA', 'DOKA', 9.325750000, 9.075950000),
(1782, 195, 'KEZIAH HUBERT', 2, '90F5B050C8416134437', 43, 'F', '', '8059897391', 'NIL', '', 9.325980000, 9.076180000),
(1783, 195, 'ASABE GURUMZAK TANGYER', 2, '90F5B050C8415957429', 46, 'F', '', '7054139465', 'NIL', '', 9.326230000, 9.076430000),
(1784, 195, 'MERCY YENWAN', 1, '51339659162', 37, 'F', 'UNEMPLOYED', '8055717992', 'DOKAN KASUWA', 'DOKA', 9.326500000, 9.076700000),
(1785, 195, 'DORATHY DALONG', 1, '67480530282', 29, 'F', '', '8131455778', 'NIL', '', 9.326790000, 9.076990000),
(1786, 195, 'JANET DALONG', 1, '25822402889', 28, 'F', '', '8117724747', 'NIL', '', 9.327100000, 9.077300000),
(1787, 195, 'KESOEM NAANMAN', 2, '90F5B15E8A496394862', 44, 'F', 'UNEMPLOYED', '8113176274', 'DOKAN KASUWA', 'D0KA', 9.327430000, 9.077630000),
(1788, 195, ' DABANG TANGMUUT ', 1, '49657017904', 45, 'F', 'WIDOW', '8074678768', 'DOKAN KASUWA', 'DOKA', 9.327780000, 9.077980000),
(1789, 195, 'DABOU FLORENCE ', 2, '90F5B06D80416044696', 40, 'F', 'WIDOW', '8076948376', 'DOKAN KASUWA', 'DOKA', 9.328150000, 9.078350000),
(1790, 195, 'WUBANG SOEMDAT', 2, '90F5B06D80416229967', 39, 'F', 'UNEMPLOYED', '8051622632', 'DOKAN KASUWA', 'DOKA', 9.328540000, 9.078740000),
(1791, 196, 'KATLONG SHINTON', 1, '54282421414', 47, 'M', 'WIDOW', '8115700566', 'COCIN CHURCH DOKA', 'DOKA', 9.341350000, 9.091550000),
(1792, 196, 'JOSEPHINE JOEL', 2, '90F5B16046415791639', 38, 'F', 'WIDOW', '9155882956', 'KOPGUWAI  DOKA', 'DOKA', 9.342180000, 9.092380000),
(1793, 196, 'MARKLONG BIPLANG MAKPLANG DASIM', 2, '90F5BD7FF0533895142', 32, 'F', 'WIDOW', '7054151381', 'DIMWAI DOKA', 'DOKA', 9.343030000, 9.093230000),
(1794, 196, 'SIYONA JOSEPH', 2, '90F5B16046415942558', 37, 'F', 'WIDOW', '7054151381', 'KOPGUWAI  DOKA', 'DOKA', 9.343900000, 9.094100000),
(1795, 196, 'GYAMI YARRO DAJO', 2, '90F5B16046415942980', 72, 'F', 'WIDOW', '9056899816', 'KOPGUWAI  DOKA', 'DOKA', 9.344790000, 9.094990000),
(1796, 196, 'MARY MONDAY', 2, '90F5B16046415941485', 52, 'F', 'WIDOW', '8053460858', 'KOPGUWAI  DOKA', 'DOKA', 9.345700000, 9.095900000),
(1797, 196, 'WUKLONG TONGNIES', 2, '90F5B16046415871140', 69, 'F', 'WIDOW', '8053460858', 'KOPGUWAI  DOKA', 'DOKA', 9.346630000, 9.096830000),
(1798, 196, 'NEHEIMIAH WILLIAN', 1, '50141305364', 42, 'M', 'UNEMPLOYED', '9159397822', 'KOPGUWAI  DOKA', 'DOKA', 9.347580000, 9.097780000),
(1799, 196, 'ENTANG KOPLAT', 1, '79780654242', 34, 'M', 'UNEMPLOYED', '7052783051', 'KOPGUWAI  DOKA', 'DOKA', 9.348550000, 9.098750000),
(1800, 196, 'PANKYES TERLENG', 2, '90F5B18046415880196', 36, 'M', 'UNEMPLOYED', '7055168858', 'DOKAN KASUWA', 'DOKA', 9.349540000, 9.099740000),
(1801, 197, 'RITA ENDAT', 2, '90F5B1FE6F415799248', 60, 'F', 'WIDOW', '7052523995', 'RCM CHURCH DOKAN KASUWA', 'DOKA', 9.361750000, 9.111950000),
(1802, 197, 'NAYON DAKAS DATONG', 2, '2388F010CF506508030', 62, 'F', 'WIDOW', '8053460858', 'RCM CHURCH DOKAN KASUWA', 'DOKA', 9.362980000, 9.113180000),
(1803, 197, 'MODESTER DAMANG', 2, '90F5AF2C49507627071', 35, 'F', 'WIDOW', '7063384355', 'DOKAN KASUWA', 'DOKA', 9.364230000, 9.114430000),
(1804, 197, 'NAJIN THERESA GILBERT', 2, '90F5B1FE6F416142083', 52, 'F', 'WIDOW', '8053460858', 'RCM CHURCH DOKAN KASUWA', 'DOKA', 9.365500000, 9.115700000),
(1805, 197, 'PETER DAMEN', 1, '10481739763', 45, 'M', 'UNEMPLOYED', '8070954970', 'LCC LUGURUT', 'DOKA', 9.366790000, 9.116990000),
(1806, 197, 'NAANGWAN KUDI', 2, 'NO ID PROVIDED', 44, 'F', 'WIDOW', '8053460858', 'DOKAN KASUWA', 'DOKA', 9.368100000, 9.118300000),
(1807, 197, 'MILDRET NUHU DASHIP', 2, '90F5AE8CC1416148855', 38, 'F', 'WIDOW', '8053460858', 'RCM CHURCH DOKAN KASUWA', 'DOKA', 9.369430000, 9.119630000),
(1808, 197, 'NABWOET VOKYIT', 1, '44046298559', 45, 'F', 'WIDOW', '8053460858', 'ST. FRANCIS CATHOLICH CHURCH DOKA', 'DOKA', 9.370780000, 9.120980000),
(1809, 197, 'TUAMLONG DANG ENDAT', 1, '66955856357', 37, 'M', '', '9056908302', 'ST. FRANCIS CATHOLICH CHURCH DOKA', 'DOKA', 9.372150000, 9.122350000),
(1810, 197, 'BLESSING DAKKUR ENDAT', 1, '92311067847', 29, 'F', 'WIDOW', '8053460858', 'ST. FRANCIS CATHOLICH CHURCH DOKA', 'DOKA', 9.373540000, 9.123740000),
(1811, 198, 'USMAN AUDU BASHARI', 1, '51912386515', 68, 'M', '', '8036327017', 'KWANDE', 'KWANDE', 9.301440000, 8.677890000),
(1812, 198, 'SALIHU YAHAYA', 1, '18373670706', 62, 'M', '', '8159905329', 'KWANDE', 'KWANDE', 9.309370000, 8.673680000),
(1813, 198, 'ANGELA DANIEL', 1, '28752998222', 50, 'F', 'UNEMPLOYED', '7045935799', 'KWANDE', 'KWANDE', 9.308920000, 8.672340000),
(1814, 198, 'ZAINAB USMAN', 1, '34945555768', 53, 'F', 'UNEMPLOYED', '7037242513', 'ANGWAN GALADIMA KWANDE', 'KWANDE', 9.302580000, 8.679440000),
(1815, 198, 'GANI MAIRIGA', 1, '83397689672', 57, 'M', 'UNEMPLOYED', '9031682116', 'ANGWAN KASA KWANDE', 'KWANDE', 9.307870000, 8.674630000),
(1816, 198, 'YAHAYA ALI NKUK', 1, '17907870437', 69, 'M', '', '9137707084', 'ANGWAN KLIMAN KWANDE', 'KWANDE', 9.302890000, 8.674270000),
(1817, 198, 'AHMED MUSA DANTANI', 1, '91368692013', 53, 'M', 'UNEMPLOYED', '8166476686', 'ANGWAN KURMI KWANDE', 'KWANDE', 9.308290000, 8.673090000),
(1818, 198, 'ABDULWAHAB UMAR TUAMLONG', 1, '78011699583', 67, 'M', '', '8063408253', 'ANGWAN KASA KWANDE', 'KWANDE', 9.304000000, 8.673470000),
(1819, 198, 'ASABE DANLLAMI', 1, '83525901212', 65, 'F', 'WIDOW', '9022910502', 'CENTRAL MOSQUE KWANDE', 'KWANDE', 9.302390000, 8.674300000),
(1820, 198, 'SAAD USMAN BASHARI', 1, '12931049359', 35, 'M', 'UNEMPLOYED', '7045846961', 'KWANDE', 'KWANDE', 9.300250000, 8.679240000),
(1821, 199, 'TABAWA ZAKARI', 1, '79890116180', 35, 'F', 'WIDOW', '9031792460', 'SABON LAYI KURKWI', 'KURGWI', 9.301390000, 8.678250000),
(1822, 199, 'MIMI SAIDU   (AHAMED ISIYAKA)', 1, '21192505388', 37, 'F', 'DISABLED', '8061530193', 'ANGAWAN RAMA KURGWI', 'KURGWI', 9.307580000, 8.672540000),
(1823, 199, 'JOHN AUTA', 2, '90F5AFD256497447000', 45, 'M', 'DISABLED', '7047535929', 'KURGWI', 'KURGWI', 9.301550000, 8.673900000),
(1824, 199, 'SANI YUSUF ALI', 1, '51848451783', 45, 'M', 'DISABLED', '8160857456', 'ANGWAN DOROWA KURGWI', 'KURGWI', 9.303860000, 8.677180000),
(1825, 199, 'JIBO YAKUBU JIBRIN', 2, '90F5AFF5E8416223267', 53, 'M', 'UNEMPLOYED', '8061530193', 'DOROWA KURGWI', 'KURGWI', 9.307860000, 8.678930000),
(1826, 199, 'SALMA SAMAILA', 2, 'IINC21000000004536892', 56, 'F', 'UNEMPLOYED', '8130676245', 'ANGWAN DOROWA KURGWI', 'KURGWI', 9.302980000, 8.674870000),
(1827, 199, 'ADAMA LAWAL', 1, '38873539672', 55, 'F', 'UNEMPLOYED', '7019150028', 'ANGWAN DOROWA KURGWI', 'KURGWI', 9.308740000, 8.677590000),
(1828, 199, 'AISHATU SIRAJO MOHAMMAD', 2, '90F5AFF5E8416240521', 41, 'F', 'UNEMPLOYED', '7050775468', 'SABON LAY I KURGWI', 'KURGWI', 9.304490000, 8.678970000),
(1829, 199, 'ADAMU SAMAILA', 2, '90F5B22D25416381826', 35, 'M', 'UNEMPLOYED', '90774226085', 'ANGWAN LOKO KURGWI', 'KURGWI', 9.309730000, 8.674300000),
(1830, 199, 'KHADIJAT ISA', 1, '86050031600', 29, 'F', 'UNEMPLOYED', '8068125229', 'ANGWAN MUSKWANI KWALLA RD,GURKWI', 'KURGWI', 9.300860000, 8.679840000),
(1831, 200, 'DAVID SARAH', 1, '85468913518', 33, 'F', 'UNEMPLOYED', '9065518286', 'COCIN CHURCH DABAT', 'DABAT', 9.309030000, 8.670050000),
(1832, 200, 'DAKAT FELICIA', 1, '43582804249', 29, 'F', 'UNEMPLOYED', '812877075', 'DABAT PALCE', 'DABAT', 9.309030000, 8.670050000),
(1833, 200, 'SYLVANUS FELICIA', 1, '52419872615', 32, 'F', 'UNEMPLOYED', '9020614461', 'POLICE STATION DABAT', 'DABAT', 9.309030000, 8.670050000),
(1834, 200, 'REUBEN ALICE', 1, '39163511119', 38, 'F', 'UNEMPLOYED', '8046722755', 'ANGWAN MUSHERE DABAT', 'DABAT', 9.309030000, 8.670050000),
(1835, 200, 'LARABA MARKUS HABILA', 2, '90F5B10ADC295528485', 37, 'F', 'UNEMPLOYED', '7051815972', 'DABAT PALCE', 'DABAT', 9.309030000, 8.670050000),
(1836, 200, 'DAKAT RACHEAL', 2, '90F5AEFDA9415795040', 77, 'F', 'UNEMPLOYED', '7037064194', 'DABAT', 'DABAT', 9.309030000, 8.670050000),
(1837, 200, 'HABILA PHILOMINA', 1, '371927821', 53, 'F', 'UNEMPLOYED', '9027741311', 'DABAT', 'DABAT', 9.309030000, 8.670050000),
(1838, 200, 'JOSEPHINE TALATU DABAT KWALLAT', 1, '41133362427', 46, 'F', 'UNEMPLOYED', '7044274886', 'DABAT', 'DABAT', 9.309030000, 8.670050000),
(1839, 200, 'VINCENT RACHEAL', 1, '73895323468', 39, 'F', 'UNEMPLOYED', '90377149225', 'DABAT PALCE', 'DABAT', 9.309030000, 8.670050000),
(1840, 200, 'EMMA TARFUSA', 5, 'NIN NOT COMPLETE', 37, 'F', 'UNEMPLOYED', '7013046464', 'DABAT PALCE', 'DABAT', 9.309030000, 8.670050000),
(1841, 201, 'ZAINAB JIBRIN', 1, '92061809691', 40, 'F', 'UNEMPLOYED', '9036309343', 'KURGWI', 'KURGWI', 9.462100000, 8.680230000),
(1842, 201, 'ZULLAI DALHATU', 1, '14528132162', 52, 'F', '', '9135992075', 'NIL', '', 9.407580000, 8.672540000),
(1843, 201, 'HAUWAU MUHAMMED', 1, '85762343131', 45, 'F', 'WIDOW', '7036572705', 'KURGWI', 'KURGWI', 9.401550000, 8.673400000),
(1844, 201, 'MARYAM ZAKARI MUHAMMED YUSUF', 1, '36661447899', 52, 'F', 'WIDOW', '7033578872', 'KURGWI', 'KURGWI', 9.403860000, 8.677110000),
(1845, 201, 'HALIMA ABUBAKAR', 1, '64283675138', 42, 'F', 'UNEMPLOYED', '7036171877', 'ANGWAN GALADIMA GURGWI', 'KURGWI', 9.307860000, 8.670830000),
(1846, 201, 'SULE UWA HAUWA ', 2, '90F5BO098DE295516925', 40, 'F', 'WIDOW', '8067761413', 'ANGWAN GALADIMA GURGWI', 'KURGWI', 9.402980000, 8.669030000),
(1847, 201, 'MARYAM DANLADI GWADABE', 1, '27588863846', 35, 'F', 'UNEMPLOYED', '8061530193', 'PHC KURGWI', 'KURGWI', 9.308740000, 8.677570000),
(1848, 201, 'RABI SUNUSI', 1, '14777576241', 39, 'F', 'UNEMPLOYED', '7038990092', 'ANGWAN KASA KURGWI', 'KURGWI', 9.404490000, 8.678370000),
(1849, 201, 'HADIZA YUSUF', 1, '77763778020', 42, 'F', 'UNEMPLOYED', '8104324109', 'KURGWI', 'KURGWI', 9.409730000, 8.672500000),
(1850, 201, 'RAKIYA YAHAYA', 2, '90F5B1299E416057023', 48, 'F', 'UNEMPLOYED', '7035433610', 'KURGWI', 'KURGWI', 9.400860000, 8.679840000),
(1851, 202, 'TSENTOOR WILFRED', 2, '90F5AFE4B0416220287', 38, 'M', 'UNEMPLOYED', '7064497979', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1852, 202, 'MARY LONSHAL', 2, '90F5AFE4B0416379613', 26, 'F', 'UNEMPLOYED', '9027186151', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1853, 202, 'TUAMKWAP EVARISTUS', 2, '90F5B05586416054263', 39, 'M', 'UNEMPLOYED', '7036066996', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1854, 202, 'EUGENE DANJUMA', 1, '97541844117', 45, 'M', 'UNEMPLOYED', '8140147285', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1855, 202, 'PAUL KWAPYEN', 1, '67644953311', 42, 'M', 'UNEMPLOYED', '816545868', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1856, 202, 'AUSTINE KWAPLONG', 2, '90F5B0073B415966170', 44, 'M', 'UNEMPLOYED', '8159146366', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1857, 202, 'BRIDGET LEO NSHE', 1, '98213600738', 25, 'F', 'UNEMPLOYED', '81106038412', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1858, 202, 'HENRY TSENLONG', 1, '74931106306', 43, 'M', 'UNEMPLOYED', '8121084503', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1859, 202, 'RABI AHMADU', 2, '030DF29067416134705', 38, 'F', 'UNEMPLOYED', '8162065435', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1860, 202, 'AGWO ANNA NAIL', 2, '030DF29067416147799', 33, 'F', 'UNEMPLOYED', '7016569816', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.301390000, 8.670350000),
(1861, 203, 'KWALLAT GODIYA DABAT', 1, '25035416046', 52, 'M', 'UNEMPLOYED', '8120397758', 'GIDAN DABAT', 'DABAT', 9.303030000, 8.670080000),
(1862, 203, 'MAGAJI KOPWAL', 1, '47462693200', 47, 'M', 'UNEMPLOYED', '9124484331', 'GIDAN DABAT', 'DABAT', 9.304320000, 8.677840000),
(1863, 203, 'DOEGWAI HABILA', 1, '86146236938', 42, 'M', 'UNEMPLOYED', '8089756220', 'DABAT', 'DABAT', 9.309030000, 8.670050000),
(1864, 203, 'LINUS TELGET', 1, '72990822250', 57, 'M', 'UNEMPLOYED', '8084550789', 'GIDAN DABAT', 'DABAT', 9.307840000, 8.677510000),
(1865, 203, 'PAUL NICHOLAS', 1, '99095911418', 42, 'M', 'UNEMPLOYED', '8135780955', 'GIDAN DABAT', 'DABAT', 9.303200000, 8.670300000),
(1866, 203, 'JULIANA SIMON', 1, '69317791389', 42, 'F', 'UNEMPLOYED', '708829210', 'COCIN GIDAN DABAT', 'DABAT', 9.309560000, 8.670480000),
(1867, 203, 'MARTINA HILARI', 1, '32230380129', 41, 'F', 'UNEMPLOYED', '7088670991', 'KOFFAR RUWA DABAT', 'DABAT', 9.309980000, 8.675830000),
(1868, 203, 'MOUREEN MONDAY', 1, '45631182528', 42, 'F', 'UNEMPLOYED', '7083806500', 'ANGWAN MISSION DABAT', 'DABAT', 9.301180000, 8.674170000),
(1869, 203, 'MUSA MARY', 1, '50027439304', 36, 'F', 'UNEMPLOYED', '7089102581', 'COCIN GIDAN DABAT', 'DABAT', 9.308040000, 8.670090000),
(1870, 203, 'ALEXANDER GLORIA DABAT SALLAH', 1, '40855747707', 43, 'F', 'UNEMPLOYED', '9126605295', 'ANGWAN KWALLA DABAT', 'DABAT', 9.305690000, 8.660870000),
(1871, 204, 'TSENYEN GANI', 5, 'NIN NOT COMPLETE', 23, 'M', 'UNEMPLOYED', '8037349867', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1872, 204, 'LONGGUNG NYLONG', 1, '54298575569', 30, 'M', 'UNEMPLOYED', '7081209838', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1873, 204, 'HERIATA PAUL HEMYEN', 1, '39380814361', 33, 'F', 'UNEMPLOYED', '8037349867', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1874, 204, 'MARY NKUP', 1, '39354098857', 28, 'F', 'UNEMPLOYED', '7042849874', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(1875, 204, 'ANESTHESIA TANKO', 1, '66346173016', 30, 'F', 'UNEMPLOYED', '9121481186', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1876, 204, 'BIAIKEM MANOMI REGINA', 1, '28504342614', 35, 'F', 'UNEMPLOYED', '8033142869', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1877, 204, 'MARTINA MAKAT', 1, '51028931577', 28, 'F', 'UNEMPLOYED', '8021228413', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1878, 204, 'SALLAH AUDU', 1, '19407315327', 30, 'M', 'UNEMPLOYED', '8021228413', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1879, 204, 'DONGKUR KWANDE', 1, '10257378278', 25, 'M', 'UNEMPLOYED', '7014716054', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1880, 204, 'ROMANUS NGULUNG', 1, '82771799483', 30, 'M', 'UNEMPLOYED', '8110736817', 'ST.JOHN VIANNEY CATHOLIC CHURCH KWANDE', 'KWANDE', 9.304420000, 8.674220000),
(1881, 205, 'Kefas Sunday', 1, '23030860273', 49, 'M', 'nil', '9038176302', 'na', 'KWAKWI', 8.655700000, 0.000000000),
(1882, 205, 'Racheal Ishaya', 5, 'nil', 45, 'F', 'nil', '7069345236', 'na', 'na', 8.656100000, 0.000000000),
(1883, 205, 'Dauda Iliya Ngyang', 2, '90F5B18CDF295876699', 31, 'M', 'nil', '9060125472', 'COCIN KWAKWI', 'KWAKWI', 8.653200000, 9.608900000),
(1884, 205, 'Monica Musa', 5, 'nil', 32, 'F', 'nil', '7040680112', 'na', 'na', 8.646300000, 9.574900000),
(1885, 205, 'Chai Bagu Nyam', 5, 'nil', 33, 'M', 'nil', '7037362865', 'na', 'na', 8.652100000, 9.594210000),
(1886, 205, 'Deborah Markus', 5, 'nil', 37, 'F', 'nil', '9160158297', 'na', 'na', 8.651600000, 9.607000000),
(1887, 205, 'Mary Yohanna', 5, 'nil', 18, 'F', 'nil', '7065076855', 'na', 'na', 8.656570000, 9.603230000),
(1888, 205, 'Jummai Pyam', 5, 'nil', 23, 'F', 'nil', '8122039654', 'na', 'na', 8.655730000, 9.604520000),
(1889, 205, 'Giyam Bako', 5, 'nil', 48, 'M', 'nil', '8037439765', 'na', 'na', 98.235000000, 55.914560000),
(1890, 205, 'Sati Chibi', 2, '71BC05F48F416335140', 47, 'M', 'nil', '9060029839', 'na', 'KWAKWI', 8.656410000, 9.580580000),
(1891, 206, 'Dadi Useni', 5, 'nil', 35, 'M', 'nil', '9132245863', 'na', 'na', 8.631220000, 9.660920000),
(1892, 206, 'Hyat Sunday', 5, 'nil', 30, 'M', 'nil', '9068898385', 'na', 'na', 8.631220000, 9.660920000),
(1893, 206, 'Mbok Gyang', 5, 'nil', 25, 'M', 'nil', '9059947433', 'na', 'na', 8.631220000, 9.660920000),
(1894, 206, 'Polycarp Michael', 5, 'nil', 28, 'M', 'nil', '7032219067', 'na', 'na', 8.631220000, 9.660920000),
(1895, 206, 'Net Nzeng', 5, 'nil', 30, 'M', 'nil', '8109241056', 'na', 'na', 8.631220000, 9.660920000),
(1896, 206, 'Dauda Net', 5, 'nil', 35, 'M', 'nil', '8105616855', 'na', 'na', 8.631220000, 9.660920000),
(1897, 206, 'Abudaya Sati', 5, 'nil', 39, 'M', 'nil', '7044198460', 'na', 'na', 8.631220000, 9.660920000),
(1898, 206, 'Daniel Net', 5, 'nil', 28, 'M', 'nil', '7043419771', 'na', 'na', 8.631220000, 9.660920000),
(1899, 206, 'DantalaDazat', 5, 'nil', 29, 'M', 'nil', '8168776111', 'na', 'na', 8.631220000, 9.660920000),
(1900, 206, 'Monday Sata', 5, 'nil', 30, 'M', 'nil', '7033298041', 'na', 'na', 8.631220000, 9.660920000),
(1901, 207, 'Ngyang Fon', 1, 'PL157966490', 46, 'M', 'nil', '806592687', 'IN CHURCH TSE', 'na', 8.640300000, 0.000000000),
(1902, 207, 'Ngyang Kukum', 2, '90F5B20C14295535232', 39, 'M', 'nil', '8060082458', 'na', 'na', 8.640270000, 0.000000000),
(1903, 207, 'Felicia John', 1, '5.30E+15', 45, 'F', 'nil', '8034990068', 'na', 'na', 8.640040000, 0.000000000),
(1904, 207, 'Shishang Hwok', 2, '90F5B162A8416377225', 43, 'F', 'nil', '8104732734', 'DANTRA EKAN. PRY SCH. II', 'na', 0.000000000, 0.000000000),
(1905, 207, 'Asabe Zaka', 2, '90F5B03687416044811', 58, 'F', 'nil', '9060739067', 'na', 'na', 0.000000000, 0.000000000),
(1906, 207, 'Lami Net', 2, '90F5AF2C49516715544', 52, 'F', 'nil', '9067995251', 'na', 'TSE', 0.000000000, 0.000000000),
(1907, 207, 'Nvel Bung Rebecca', 2, '90F5B162A8416076883', 48, 'F', 'nil', '704482421', 'na', 'na', 0.000000000, 0.000000000),
(1908, 207, 'Ngyan Wan', 5, 'nil', 53, 'F', 'nil', '8062591166', 'na', 'na', 0.000000000, 0.000000000),
(1909, 207, 'Ngyang Samuel', 1, '5.73E+12', 34, 'M', 'nil', '9066786489', 'na', 'na', 0.000000000, 0.000000000),
(1910, 207, 'Bulus Ngyang Bagu', 2, '90F5B2096F296137606', 43, 'M', 'nil', '7038343732', 'na', 'GURA', 0.000000000, 0.000000000),
(1911, 208, 'LarabaAyuba', 5, 'nil', 38, 'F', 'nil', '7065757021', 'na', 'na', 0.000000000, 0.000000000),
(1912, 208, 'Lyop Bon Shekara', 5, 'nil', 40, 'F', 'nil', '8098273214', 'na', 'na', 0.000000000, 0.000000000),
(1913, 208, 'Shesang Nyam Jong', 2, '90F5B18CDF295879955', 32, 'F', 'nil', '7038766262', 'na', 'na', 0.000000000, 0.000000000),
(1914, 208, 'Nvel Philip Luka', 2, '90F5B04244516705756', 40, 'F', 'nil', '8069691363', 'na', 'TSE', 0.000000000, 0.000000000),
(1915, 208, 'Mary Luka Kwon', 5, 'nil', 34, 'F', 'nil', 'nil', 'na', 'na', 0.000000000, 0.000000000),
(1916, 208, 'Choki Sati', 5, 'nil', 62, 'F', 'nil', '7035447405', 'na', 'na', 0.000000000, 0.000000000),
(1917, 208, 'Foi Bitrus Gying', 2, '90F5AF2C49516099669', 45, 'F', 'nil', '7063538047', 'na', 'TSE', 0.000000000, 0.000000000),
(1918, 208, 'Nchong Hwok Toma', 2, '90F5B10D8B29595412', 38, 'F', 'nil', 'nil', 'na', 'na', 0.000000000, 0.000000000),
(1919, 208, 'Ruth Njim', 2, '90F5AF5530516112059', 49, 'F', 'nil', '8165401627', 'na', 'TSE', 0.000000000, 0.000000000),
(1920, 208, 'Nvel Chilli', 2, '90F5B1CD86295967153', 42, 'F', 'nil', '7063538047', 'na', 'na', 0.000000000, 0.000000000),
(1921, 209, 'Micah Sati', 5, 'nil', 35, 'M', 'nil', '7038343732', 'na', 'na', 0.000000000, 0.000000000),
(1922, 209, 'Hyok Tok', 2, '90F5B162A8416402153', 41, 'F', 'nil', '7065761944', 'DANTRA EKAN. PRY SCH. II', 'na', 8.637820000, 0.000000000),
(1923, 209, 'Elizabeth Nyang', 5, 'nil', 66, 'F', 'nil', '8143739727', 'na', 'na', 8.636960000, 0.000000000),
(1924, 209, 'Fei Reuben', 5, 'nil', 48, 'M', 'nil', '7034200606', 'na', 'na', 8.638700000, 0.000000000),
(1925, 209, 'Chuwul Kandi', 2, '90F5AF3C27298821932', 42, 'F', 'nil', '7034200606', 'DANTRA EKAN PRY SCH. II', 'na', 8.637770000, 0.000000000),
(1926, 209, 'Amos Mangai', 5, 'nil', 21, 'M', 'nil', '8169993753', 'na', 'na', 8.637070000, 0.000000000),
(1927, 209, 'Sarah Hwok', 2, '90F5AF2C49516806955', 45, 'F', 'nil', '8169993753', 'na', 'TSE', 8.638690000, 0.000000000),
(1928, 209, 'Ngyang Shok', 5, 'nil', 30, 'F', 'nil', '9066786489', 'na', 'na', 8.636900000, 0.000000000),
(1929, 209, 'Jummai Peter', 2, '90F5BICD8B295709130', 57, 'F', 'nil', '8169707496', 'DANTRA EKAN  II', 'na', 8.644250000, 0.000000000),
(1930, 209, 'Willing Jang', 5, 'nil', 50, 'M', 'nil', '8030403006', 'na', 'na', 8.637400000, 0.000000000),
(1931, 210, 'Mbarak Ngyang', 2, '90F5AF0250296735882', 71, 'M', 'nil', '8064735961', 'na', 'FANGROI', 8.633590000, 0.000000000),
(1932, 210, 'Bagu Gywa', 2, '90F5AFD280295258697', 67, 'M', 'nil', '8146347339', 'na', 'FANGRO', 8.635030000, 0.000000000),
(1933, 210, 'Gwon Baba', 5, 'nil', 39, 'M', 'nil', '8147149236', 'na', 'na', 8.636290000, 0.000000000),
(1934, 210, 'Laraba Samuel', 5, 'nil', 55, 'F', 'nil', '8139919195', 'na', 'na', 8.634720000, 0.000000000),
(1935, 210, 'Chai Bagu', 5, 'nil', 44, 'M', 'nil', '7035048064', 'na', 'na', 8.634590000, 0.000000000),
(1936, 210, 'Gwong Wan', 2, '90F5AFD260295429922', 79, 'M', 'nil', '9081300887', 'na', 'FANGROI', 8.633610000, 0.000000000),
(1937, 210, 'Chai Deme', 2, '90F5AFD260295534673', 66, 'M', 'nil', '8060590148', 'na', 'FANGROI', 8.634800000, 0.000000000),
(1938, 210, 'Mary Ngyang', 2, '90F5AFD260295959296', 28, 'F', 'nil', '7030259664', 'na', 'FANGROI', 8.637190000, 0.000000000),
(1939, 210, 'Nvel Hyok', 5, 'nil', 45, 'F', 'nil', '706737155', 'na', 'na', 8.635600000, 0.000000000),
(1940, 210, 'Ngyem Ngyang', 2, '90F5AFD280295361506', 42, 'F', 'nil', '7066331592', 'na', 'FANGROI', 8.634800000, 0.000000000),
(1941, 211, 'Lahira Bitrus', 5, 'nil', 48, 'F', 'nil', '9034840108', 'na', 'na', 8.642450000, 0.000000000),
(1942, 211, 'Jummai Ishaku', 5, 'nil', 40, 'F', 'nil', '8166996454', 'na', 'na', 8.643250000, 0.000000000),
(1943, 211, 'Laraba wang', 2, '90F5B04244517236249', 36, 'F', 'nil', '8061292473', 'na', 'BUM', 8.641560000, 0.000000000),
(1944, 211, 'Nvou Joshua', 2, '90F5B20DA6295694462', 52, 'F', 'nil', '9062349843', 'na', 'na', 8.643630000, 0.000000000),
(1945, 211, 'Chong Bagu', 2, '90F5B1F7BF295704745', 47, 'E', 'nil', '70250554250', 'na', 'BUM', 8.644330000, 0.000000000),
(1946, 211, 'Ladi Gwong', 2, '90F5AFC1A7296533237', 58, 'F', 'nil', '7068576694', 'na', 'na', 8.643630000, 0.000000000),
(1947, 211, 'Gwong Deme', 2, '71BC060C97415830484', 47, 'M', 'nil', '81330440172', 'na', 'FANGROI', 8.643810000, 9.693920000),
(1948, 211, 'Monday Kom', 5, 'nil', 44, 'M', 'nil', '8100598545', 'na', 'BUM', 8.643220000, 0.000000000),
(1949, 211, 'Peter Deme', 5, 'nil', 48, 'M', 'nil', '7043068527', 'na', 'na', 8.644730000, 0.000000000),
(1950, 211, 'Deme Dak', 1, '17848566573', 34, 'M', 'nil', '8168130471', 'na', 'BUM', 8.644730000, 0.000000000),
(1951, 212, 'Ruth Bitrus', 5, 'nil', 53, 'F', 'nil', '9131536373', 'na', 'na', 0.000000000, 0.000000000),
(1952, 212, 'Ruth Gyang Bot', 2, 'FA5B3EC1FA533567772', 24, 'F', 'nil', '8064256252', 'na', 'na', 0.000000000, 0.000000000),
(1953, 212, 'Blessing Nansel', 2, '71BC060C98504600211', 34, 'F', 'nil', '7063498773', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1954, 212, 'Mwadgwong Dalyop', 5, 'nil', 47, 'M', 'nil', '9137714926', 'na', 'na', 0.000000000, 0.000000000),
(1955, 212, 'Esther Nuhu', 2, '90F5B20DA6295795194', 39, 'F', 'nil', '8104147050', 'na', 'na', 0.000000000, 0.000000000),
(1956, 212, 'Racheal Samuel', 2, '90F5AF7B08533113221', 31, 'F', 'nil', '9073447300', 'na', 'na', 0.000000000, 0.000000000),
(1957, 212, 'Pam Sunday Jah', 5, 'nil', 40, 'M', 'nil', '9070648371', 'na', 'na', 0.000000000, 0.000000000),
(1958, 212, 'Lucy Pam', 2, '90F5AE48AE416235149', 38, 'F', 'nil', '8027217790', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1959, 212, 'Yop Mathias', 2, '90F5AFA330508234573', 54, 'F', 'nil', '8024301766', 'na', 'SAMBAK', 0.000000000, 0.000000000),
(1960, 212, 'Davou Yohanna', 2, '90F5AFA81E296828071', 51, 'M', 'nil', '9034725581', 'na', 'na', 0.000000000, 0.000000000),
(1961, 213, 'Bulus Dayuru', 2, '90F5AF7948296031796', 77, 'M', 'nil', '8127754077', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1962, 213, 'Dauda Dachung', 2, '90F5AF7948295356989', 72, 'M', 'nil', '8131382525', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1963, 213, 'Pam Joshua', 5, 'nil', 47, 'M', 'nil', '8103588564', 'na', 'na', 0.000000000, 0.000000000),
(1964, 213, 'Lyop Gyang', 2, '90F5AF7948295795723', 63, 'F', 'nil', '8104973653', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1965, 213, 'Davou Gyang', 2, '90F5AF7948295523567', 68, 'M', 'nil', '8063200507', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1966, 213, 'Kaneng Daniel', 2, '90F5AF7948296486018', 65, 'F', 'nil', '8105735556', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1967, 213, 'Lyop Mwanti Daju', 2, '90F5AF7948295534065', 66, 'F', 'nil', '7063687628', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1968, 213, 'NvouMonday', 5, 'nil', 34, 'F', 'nil', '7073484448', 'na', 'na', 0.000000000, 0.000000000),
(1969, 213, 'Hannatu Jah Chollom', 2, '90F5AE48AE415869407', 55, 'F', 'nil', '8137333203', 'na', 'KWALLAK', 0.000000000, 0.000000000),
(1970, 213, 'Laraba Dalyop Garba', 1, '72087547016', 48, 'F', 'nil', '9138384873', 'CLOSE TO COCIN CHURCH, KWALLAK', 'na', 0.000000000, 0.000000000),
(1971, 214, 'David Chollom', 2, '90F5AE9077296214135', 53, 'M', 'nil', '8134747111', 'na', 'DABWAM', 8.761450000, 0.000000000),
(1972, 214, 'Yohanna Gyeng', 2, 'nil', 45, 'M', 'nil', '8100501206', 'na', 'na', 8.761450000, 0.000000000),
(1973, 214, 'Helen Dung', 2, 'nil', 35, 'F', 'nil', '9039272500', 'na', 'na', 8.761450000, 0.000000000),
(1974, 214, 'Chollom C.Boyi', 2, '90F5AE9077295717450', 30, 'M', 'nil', '8035288017', 'na', 'KUM, RIYOM', 8.761450000, 0.000000000),
(1975, 214, 'Kachollom Ezekiel', 1, 'PL652102246', 39, 'F', 'nil', '9138672433', 'COCIN CC KUM', 'KUM, RIYOM', 8.761450000, 0.000000000),
(1976, 214, 'Martha Joshua', 2, '90F5AE9077296232289', 47, 'F', 'nil', '7061548020', 'na', 'DABWAM', 8.761450000, 0.000000000),
(1977, 214, 'Ruth Samson', 2, '90F5AFFA29531724923', 28, 'F', 'nil', '8147287114', 'na', 'DABWAM', 8.761450000, 0.000000000),
(1978, 214, 'Sarah Davou', 2, '90F5B1B25C415393843', 44, 'F', 'nil', '8039490461', 'na', 'na', 8.761450000, 0.000000000),
(1979, 214, 'Esther Isaac', 2, '90F5AFFA29531722356', 31, 'F', 'nil', '8142189861', 'na', 'DABWAM', 8.761450000, 0.000000000),
(1980, 214, 'Sara Silas', 2, '90F5AE9077296208014', 47, 'F', 'nil', '9123614836', 'na', 'DABWAM', 8.761450000, 0.000000000),
(1981, 215, 'Danladi Dambo', 5, 'nil', 46, 'M', 'nil', '8069218763', 'na', 'na', 0.000000000, 0.000000000),
(1982, 215, 'DachomoWeng', 5, 'nil', 48, 'M', 'nil', '8131130715', 'na', 'na', 0.000000000, 0.000000000),
(1983, 215, 'NgyangDanbana', 5, 'nil', 34, 'M', 'nil', '8145197379', 'na', 'na', 0.000000000, 0.000000000),
(1984, 215, 'Mary Chen', 2, '90F5B162A8416122690', 69, 'F', 'nil', '8068410517', 'DANTRA EKAN PRY SCH. II', 'na', 0.000000000, 0.000000000),
(1985, 215, 'James Danka', 5, 'nil', 49, 'M', 'nil', '9044021246', 'na', 'na', 0.000000000, 0.000000000),
(1986, 215, 'Kangyang Ezekiel', 5, 'nil', 47, 'F', 'nil', '8088830679', 'na', 'na', 0.000000000, 0.000000000),
(1987, 215, 'Musa Dangyang', 5, 'nil', 36, 'M', 'nil', '9030844897', 'na', 'na', 0.000000000, 0.000000000),
(1988, 215, 'Shishang Sati', 5, 'nil', 44, 'F', 'nil', '8168927309', 'na', 'na', 0.000000000, 0.000000000),
(1989, 215, 'LarabaYohanna', 5, 'nil', 36, 'F', 'nil', '8139895852', 'na', 'na', 0.000000000, 0.000000000),
(1990, 215, 'Gu Gwong', 5, 'nil', 28, 'M', 'nil', '7038505959', 'na', 'na', 0.000000000, 0.000000000),
(1991, 216, 'Dung Paul Dalyop', 5, 'nil', 48, 'M', 'nil', '8069543624', 'na', 'na', 8.761450000, 9.637830000),
(1992, 216, 'Deborah Emmanuel', 1, '17122827073', 34, 'F', 'nil', '8033954988', 'DAGWOM RWEY''S PALACE', 'na', 8.761450000, 9.637830000),
(1993, 216, 'Janet DaudaDavou', 1, '35652101172', 30, 'F', 'nil', '7039266387', 'OPP. STAFF QUARTERS GSS RIYOM', 'na', 8.761450000, 9.637830000),
(1994, 216, 'Nvon Joshua', 5, 'nil', 33, 'F', 'nil', '8167598622', 'na', 'na', 8.761450000, 9.637830000),
(1995, 216, 'Patience Iliya', 5, 'nil', 24, 'F', 'nil', '9019904825', 'na', 'na', 8.761450000, 9.637830000),
(1996, 216, 'Patience Steven', 5, 'nil', 25, 'F', 'nil', '9124779160', 'na', 'na', 8.761450000, 9.637830000),
(1997, 216, 'Rabecah Dauda', 1, '82730402206', 36, 'F', 'nil', '8168768358', 'OPP. COCIN LCC KWALLAK', 'KWALLAK', 8.761450000, 9.637830000),
(1998, 216, 'Ezekiel Yakubu', 2, '90F5B20D86295705945', 41, 'M', 'nil', '9018345585', 'na', 'na', 8.761450000, 9.637830000),
(1999, 216, 'Dachung Emmanuel', 2, '90F5B20DA6295711603', 30, 'M', 'nil', '8089686467', 'na', 'na', 8.761450000, 9.637830000),
(2000, 216, 'Helen Davou Ganba', 2, '90F5B20DA6295604178', 53, 'F', 'nil', '7081950791', 'na', 'na', 8.761450000, 9.637830000),
(2001, 217, 'Dachung Mwanti', 2, '90F5AFA02F295623309', 50, 'M', 'nil', '8069841594', 'COCIN LCC HWOLL', 'na', 0.000000000, 9.635820000),
(2002, 217, 'Ayuba Dalyop', 2, '90F5AF802F295856636', 35, 'M', 'nil', '8069841594', 'COCIN LCC HWOLL', 'na', 0.000000000, 0.000000000),
(2003, 217, 'Martha Dung', 2, '90F5AF802F295713505', 50, 'F', 'nil', '816027814', 'COCIN LCC HWOLL', 'na', 0.000000000, 0.000000000),
(2004, 217, 'Kangyang Jugul', 1, '35808448170', 59, 'F', 'nil', '9021598130', 'AFTER COCIN CHURCH HWOLL', 'na', 0.000000000, 0.000000000),
(2005, 217, 'Iliya John', 1, '45345972976', 42, 'M', 'nil', '9011909778', 'COCIN CHURCH HWOLL', 'na', 0.000000000, 0.000000000),
(2006, 217, 'Chundung Dongo', 2, '90F5AE802F296206398', 41, 'F', 'nil', '8060497614', 'COCIN CHURCH HWOLL', 'na', 0.000000000, 0.000000000),
(2007, 217, 'Jummai Tep', 2, '90F5AFD4A9296473418', 73, 'F', 'nil', '9034419133', 'na', 'TANJOL', 0.000000000, 0.000000000),
(2008, 217, 'Briskila Simon', 2, '90F5B1FD61295451382', 31, 'F', 'nil', '8129478502', 'TAHOSS', 'na', 0.000000000, 0.000000000),
(2009, 217, 'Pam Gimba', 1, '48645121015', 56, 'M', 'nil', '9077997275', 'COCIN CHURCH HWOLL', 'HWOLL', 0.000000000, 9.635480000),
(2010, 217, 'Helen Iliya', 5, 'nil', 33, 'F', 'nil', '9048591365', 'na', 'na', 0.000000000, 0.000000000),
(2011, 218, 'Monday Davou ', 2, '90F5AE9077295625990', 34, 'M', 'nil', '9063238281', 'na', 'BYEI', 8.782120000, 0.000000000),
(2012, 218, 'Iliya Yakubu ', 2, '90F5AE9077296479029', 35, 'M', 'nil', '9063238281', 'na', 'BYEI', 8.783290000, 0.000000000),
(2013, 218, 'Garose Dauda', 2, '90F5AE9077295707899', 45, 'F', 'nil', '7036111867', 'na', 'BYEI', 8.784270000, 0.000000000),
(2014, 218, 'Patience Bitrus', 5, 'nil', 25, 'F', 'nil', 'nil', 'na', 'na', 0.000000000, 0.000000000),
(2015, 218, 'Emmanuel Yohanna', 2, '90F5AE48AE416217407', 26, 'M', 'nil', 'nil', 'na', 'BYEI', 0.000000000, 0.000000000),
(2016, 218, 'Godiya Emmanuel Monday', 1, '64379865882', 27, 'F', 'nil', 'nil', 'CLOSE TO COCIN CHURCH, BYEI', 'na', 0.000000000, 0.000000000),
(2017, 218, 'Victor Joshua', 2, '90F5B0285D516800949', 23, 'M', 'nil', '8162041848', 'na', 'DANGBAM', 8.780700000, 0.000000000),
(2018, 218, 'Yohanna Davou', 2, '90F5AE9077295613832', 47, 'M', 'nil', '8136020097', 'na', 'BYEI', 0.000000000, 0.000000000),
(2019, 218, 'Nvou Emmanuel', 2, '90F5AE9077296394673', 36, 'F', 'nil', 'nil', 'na', 'BYEI', 0.000000000, 0.000000000),
(2020, 218, 'Kachollom Pam', 2, '90F5AE9077296043288', 32, 'F', 'nil', '9120942281', 'na', 'BYEI', 0.000000000, 0.000000000),
(2021, 219, 'Joshua Ezekiel Dalyop', 2, '90F51E9077295601134', 45, 'M', 'nil', '9028837290', 'na', 'KUM, RIYOM', 8.781580000, 0.000000000),
(2022, 219, 'David Gyang', 2, '90F5AE9077296393038', 37, 'M', 'nil', '8081641909', 'na', 'KUM, RIYOM', 8.783360000, 0.000000000),
(2023, 219, 'Grace Haruna', 2, '90F5AE9077296222803', 49, 'F', 'nil', '9021219342', 'na', 'KUM, RIYOM', 8.777890000, 0.000000000),
(2024, 219, 'Blessing Kefas', 5, 'nil', 24, 'F', 'nil', '7065706222', 'na', 'na', 8.774990000, 0.000000000),
(2025, 219, 'Ruth Samson', 5, 'nil', 29, 'F', 'nil', '907748833', 'na', 'na', 8.775220000, 0.000000000),
(2026, 219, 'Helen Labi', 2, '90F5AE9077295949736', 31, 'F', 'nil', '8106122578', 'na', 'KUM, RIYOM', 8.781410000, 0.000000000),
(2027, 219, 'Yohana Kachollom Esther', 2, '90F5AE9077295712497', 34, 'F', 'nil', '8100521206', 'na', 'KUM, RIYOM', 0.000000000, 0.000000000),
(2028, 219, 'Kachollom Ishaku', 2, '90F5AE9077295801445', 45, 'F', 'nil', 'nil', 'na', 'KUM, RIYOM', 8.781660000, 0.000000000),
(2029, 219, 'Bitrus Joshua', 5, 'nil', 46, 'M', 'nil', '7086360797', 'na', 'na', 8.781580000, 0.000000000),
(2030, 219, 'Sarah Solomon', 2, '90F5AE90772968499112', 41, 'F', 'nil', '9134459049', 'na', 'BYEI', 8.783030000, 0.000000000),
(2031, 161, 'Gwanmen Tsenyil Simon', 2, 'A09920991', 70, 'M', 'Aged', '7060851887', 'Ungwan- Dadi', 'Ungwan-Dadi', 8.716850000, 9.490290000),
(2032, 161, 'Yilshan Chrisantus Baamkwap', 1, '81281584726', 32, 'M', 'Youth ', '7030089929', 'Umgwan-Dadi', 'Ungwan- Dadi', 8.716970000, 9.490220000),
(2033, 161, 'Philomena Longma', 1, '72139584747', 35, 'F', 'Widow ', '8123128315', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.717280000, 9.489990000),
(2034, 161, 'Victor Tsenyil Mapyil', 1, '41019292627', 51, 'M', 'Aged', '7063352415', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.715450000, 9.489910000),
(2035, 161, 'Koomvel Taru', 2, '90F5AE6D4516262244', 47, 'M', 'Blind ', '8101192136', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.734580000, 9.463820000),
(2036, 161, 'Jennifer Kasmi', 1, '57948643405', 26, 'F', 'Youth ', 'nil', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.724730000, 9.454730000),
(2037, 161, 'Kesan Shepmuk', 1, '20446857965', 38, 'F', 'Widow ', '8166126297', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.719530000, 9.495430000),
(2038, 161, 'Mabis Hillary Naanmiap ', 1, '59576279243', 30, 'F', 'Youth ', '7032685712', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.710950000, 9.492240000),
(2039, 161, 'Nkup Kwanmen', 1, '6350976855', 29, 'M', 'Youth', '8167078012', 'Ungwan- Dadi', 'Ungwan- Dadi', 8.715560000, 9.496310000),
(2040, 161, 'Emmanuel Tsenyil John', 2, '90F5B18A7B295881587', 37, 'M', 'Youth ', '7065205055', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.714320000, 9.403440000),
(2041, 162, 'Velnoe Yilter Yilman', 2, '90F5B18A78295354176', 75, 'M', 'Aged ', '7062274581', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.743850000, 9.476530000),
(2042, 162, 'Mituam Taru', 1, '16408054306', 48, 'M', 'Aged ', '8160608966', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.716540000, 9.453210000),
(2043, 162, 'Paulina Longjap Miwan', 1, '43883653887', 55, 'F', 'Aged ', '7040522853', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.719900000, 9.497540000),
(2044, 162, 'Angelina Kwanmen', 2, 'A07571846', 50, 'F', 'Aged ', '8148581257', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.715300000, 9.493040000),
(2045, 162, 'Dongurum Madugu', 5, 'nil', 51, 'F', 'nil', '7061024915', 'nil', 'nil', 8.718260000, 9.481220000),
(2046, 162, 'Rangkiak Diemkwap', 5, 'nil', 30, 'F', 'nil', '7038312263', 'nil', 'nil', 8.716740000, 9.484410000),
(2047, 162, 'Shalsan Kwanmen Mathew', 2, '90F5B18A78295354176', 37, 'M', 'Youth ', '8130997622', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.726320000, 9.481130000),
(2048, 162, 'Penyit Peter', 1, '59024215742', 27, 'M', 'Youth ', '8166192673', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.714320000, 9.487540000),
(2049, 162, 'Yilman Tsenyil', 1, '46527981026', 62, 'M', 'Aged ', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.716870000, 9.537360000),
(2050, 162, 'Henry Velwan', 1, '63982549307', 63, 'M', 'Aged ', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.716460000, 9.532740000),
(2051, 163, 'Pringkwap Kwanmen Nda', 1, '19436250605', 60, 'M', 'Aged ', '8134086710', 'Ungwan-Dadi', 'Ungwan Dadi', 8.719430000, 9.496540000),
(2052, 163, 'Patricia Walong', 2, 'A09971336', 37, 'F', 'nil', '8102170324', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.716450000, 9.581230000),
(2053, 163, 'Beatrice Yilter', 1, '23114022577', 32, 'F', 'Youth ', '8132510743', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.714550000, 9.594210000),
(2054, 163, 'Madugu Danyaro Kwanmen', 1, '63509768555', 72, 'M', 'Aged ', '9132353166', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.711560000, 9.564380000),
(2055, 163, 'Talatu Dawal', 2, '90F5AE6DD4516268946', 29, 'F', 'Youth ', '8039544993', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.719030000, 9.582340000),
(2056, 163, 'Shepsukn Danladi', 1, '43279621529', 50, 'M', 'Aged ', '7062848659', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.713090000, 9.582160000),
(2057, 163, 'Philomena Tsenyil', 1, '56723841089', 27, 'F', 'Youth ', '7016628704', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.723460000, 9.584430000),
(2058, 163, 'Dandalang Tsenyil', 1, '68412076925', 63, 'M', 'Aged', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.745320000, 9.497650000),
(2059, 163, 'Godwin Taru', 1, '61918666516', 36, 'M', 'Youth ', '7063115594', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.715970000, 9.493220000),
(2060, 163, 'Niakmi Nkup', 1, '61918666516', 23, 'M', 'Youth', '8146314052', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.742010000, 9.486520000),
(2061, 164, 'Yilzem Sanda', 5, 'nil', 35, 'M', 'Youth ', '8047642954', 'Kalong', 'Kalong', 8.753420000, 9.473320000),
(2062, 164, 'Uwa Nbai Maigari', 2, '90F5B19065534366681', 41, 'F', 'Widow ', '9063211807', 'Kalong', 'Kalong', 8.712240000, 9.428550000),
(2063, 164, 'Longdiem Bakuwa', 2, 'A35761600', 51, 'F', 'Widow ', '9160716571', 'Kalong', 'Kalong', 8.713460000, 9.413450000),
(2064, 164, 'Mary Menvel', 5, 'nil', 61, 'F', 'Aged', '8128131724', 'Kalong', 'Kalong', 8.717650000, 9.418900000),
(2065, 164, 'Makama Hortoe', 5, 'nil', 36, 'M', 'Youth ', '7047537206', 'Kalong', 'Kalong', 8.714320000, 9.413320000),
(2066, 164, 'Emmanuel Goeduut', 1, '17113058129', 61, 'M', 'Aged', '7069477400', 'Kalong', 'Kalong', 8.715670000, 9.414380000),
(2067, 164, 'Milat Tsenwan', 1, '62075440732', 51, 'F', 'Aged', '7030680675', 'Kalong', 'Kalong', 8.719650000, 9.518540000),
(2068, 164, 'Salihu Naanlong', 1, '30425795245', 38, 'M', 'Blind ', '8036175080', 'Kalong', 'Kalong', 8.716540000, 9.518540000),
(2069, 164, 'Samu Tsemwan', 1, '94117954901', 46, 'M', 'Youth', '8067045009', 'Kalong', 'Kalong', 8.719430000, 9.513210000),
(2070, 164, 'Kefas Kwaltei', 5, 'nil', 43, 'M', 'nil', '7031510130', 'nil', 'nil', 8.715430000, 9.416440000),
(2071, 165, 'Henry Ma', 2, 'A06484303', 63, 'M', 'Aged', '8133991613', 'Kalong', 'Kalong', 8.714020000, 9.418530000),
(2072, 165, 'Henry Yilnaan Henbwen', 1, '31294492647', 61, 'M', 'Aged', '7035988238', 'Kalong', 'Kalong', 8.716900000, 9.413500000),
(2073, 165, 'Longkuet Elias Tsenshuut', 1, '81584068675', 49, 'M', 'Aged ', '8064334202', 'Kalong', 'Kalong', 8.719080000, 9.434050000),
(2074, 165, 'Longshal Sallah Emmanuel', 2, '90F5B0785E296293151', 34, 'M', 'Youth ', '8034098864', 'Kalong', 'Kalong', 8.717650000, 9.483210000),
(2075, 165, 'Longtoe Bayaro Naanpoe', 1, '32930483560', 39, 'F', 'Youth ', '9060084954', 'Kalong', 'Kalong', 8.713320000, 9.473250000),
(2076, 165, 'Pamlong Yilzem', 2, 'A10016966', 36, 'M', 'Youth ', '8133315553', 'Kalong', 'Kalong', 8.712260000, 9.417790000),
(2077, 165, 'Matilda Haji ', 5, 'nil', 38, 'F', 'Widow ', '8068973982', 'Kalong', 'Kalong', 8.713210000, 9.416540000),
(2078, 165, 'Sylvanus Dongkum', 2, '90F5AFE3FD295684017', 57, 'M', 'Aged ', '8033120446', 'Kalong', 'Kalong', 8.715430000, 9.414480000),
(2079, 165, 'Pringkwap Sallah Patrick', 1, '47630656205', 49, 'M', 'Widower ', '8065412160', 'Kalong', 'Kalong', 8.719860000, 9.510940000),
(2080, 165, 'Lawan Kalum', 5, 'nil', 43, 'M', 'Youth ', '7068155120', 'Kalong', 'Kalong', 8.715410000, 9.510720000),
(2081, 164, 'Kelong Yakubu Tunkuyo', 3, 'Shd01224AA07', 40, 'M', 'Youth ', '8069579353', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.719320000, 9.415320000),
(2082, 164, 'Nuwang Sanda ', 5, 'nil', 38, 'M', 'nil', '8133059510', 'nil', 'nil', 8.716320000, 9.414650000),
(2083, 164, 'Toekwap  Yilnaan', 5, '21106835657', 49, 'M', 'Youth ', '8063900507', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.714370000, 9.457310000),
(2084, 164, 'Tsenmen Menvel', 5, '47213422211', 33, 'M', 'Youth ', '7032939208', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.710840000, 9.430940000),
(2085, 164, 'Amanta Umaru', 2, '90F5B03A37295700470', 66, 'F', 'nil', '8056394490', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.716630000, 9.415440000),
(2086, 164, 'Jummai Peter', 5, 'nil', 70, 'F', 'Aged', '9066226710', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.713400000, 9.413470000),
(2087, 164, 'Baba Doetlong Yilkwap', 5, 'nil', 80, 'M', 'nil', '9063809141', 'Ungwan-Dadi', '', 8.710870000, 9.412220000),
(2088, 164, 'Mary Tsenyil Toryil', 1, '97994835789', 62, 'F', 'Aged', '8164431546', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.714930000, 9.413360000),
(2089, 164, 'Longkwap Taru', 2, 'A09899995', 54, 'M', 'Aged', '8064559784', '', '', 8.718490000, 9.412340000),
(2090, 164, 'Longba Audu Dominic', 1, '12701808990', 64, 'M', 'Aged', 'nil', 'Ungwan- Dadi', 'Ungwan - Dadi', 8.715670000, 9.410450000),
(2091, 165, 'Longjap Tsenlong ', 2, 'A07655332', 38, 'M', 'nil', '7035747256', '', '', 8.718230000, 9.493740000),
(2092, 165, 'Bikut Peter', 5, 'nil', 40, 'M', 'Youth ', '9067657417', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2093, 165, 'Raymond Dangana', 1, '41886277654', 33, 'M', 'Youth ', '7062159690', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2094, 165, 'Wilfred Kwapyong Wulkwap', 2, '90F5B18A78296729620', 33, 'M', 'Youth', '8166461747', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2095, 165, 'Edward Nkwap', 5, 'nil', 30, 'M', 'Youth ', '8081884869', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2096, 165, 'Stephen Yirbuet', 1, '54231364120', 37, 'M', 'Youth ', '8032531453', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2097, 165, 'Rangmuk Martins', 1, '68215931682', 72, 'F', 'Aged', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2098, 165, 'Juma Kwapyil', 1, '97426184697', 78, 'F', 'Aged', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493740000),
(2099, 165, 'Binoe Shalbi', 5, 'nil', 34, 'F', 'nil', '7038167727', 'nil', 'nil', 8.718230000, 9.493740000),
(2100, 165, 'Juliana Yilnaan', 1, '43987163252', 58, 'F', 'Aged ', 'nil', 'Ungwan-Dadi', 'Ungwan-Dadi', 8.718230000, 9.493790000),
(2101, 166, 'Longzem', 5, 'nil', 49, 'M', 'nil', '7062848086', 'nil', 'Kalong', 8.722240000, 9.512040000),
(2102, 166, 'Pricilla Dachelem Bawa', 1, '59733012982', 36, 'F', 'Widow ', '7047458528', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2103, 166, 'Francisca Dominic', 1, '93842575291', 38, 'F', 'Widow', '8143498200', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2104, 166, 'Shan Celestina Jumma', 1, '19683669854', 40, 'F', 'Widow', '7069318160', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2105, 166, 'Linda Shalong Betzoom', 1, '17259415953', 38, 'F', 'Widow', '8066596632', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2106, 166, 'Tsensu ', 5, 'nil', 29, 'F', 'nil', '8140033857', 'nil', 'Kalong', 8.722240000, 9.512040000),
(2107, 166, 'Rebecca Dachelem', 1, '63829692914', 51, 'F', 'Aged', 'nil', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2108, 166, 'Justine Tuamtsen', 1, '21858296715', 30, 'M', 'Youth ', '8069718114', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2109, 166, 'Shepnaan Kwamkwap', 1, '24978151356', 39, 'F', 'Youth ', '8155495443', 'Kalong', 'Kalong', 8.722240000, 9.512040000),
(2110, 166, 'Longba Audu ', 1, '26218215554', 48, 'M', 'nil', '7063798600', 'nil', 'nil', 8.722240000, 9.512040000),
(2111, 167, 'Hyacinth Henlong', 1, '40297174720', 41, 'M', 'Youth ', '7030062857', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2112, 167, 'Shinmuk Damulak', 1, '20457951206', 43, 'M', 'Youth ', '9068809244', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2113, 167, 'Bibiana Maihanci', 5, 'nil', 35, 'F', 'nil', '7063810689', 'nil', 'nil', 8.714280000, 9.508780000),
(2114, 167, 'Kamil Simon Leo', 1, '63287934120', 55, 'M', 'Aged', '7034688561', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2115, 167, 'Rose Foutnaan', 1, '85975146320', 30, 'F', 'Youth ', '9060577967', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2116, 167, 'Buetsen Precious', 1, '50365247596', 27, 'F', 'Youth', '8065615312', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2117, 167, 'Yilkang Tsenyil', 5, 'nil', 60, 'M', 'nil', 'nil', 'nil', 'nil', 8.714280000, 9.508780000),
(2118, 167, 'Francisca Dominic', 1, '68264673215', 38, 'F', 'Youth ', '8143498200', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2119, 167, 'Rebecca Peter', 1, '44858497934', 51, 'F', 'Aged', '7033712598', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2120, 167, 'Maigari Mbai', 1, '57271955284', 43, 'M', 'Youth ', '7066771996', 'Kalong', 'Kalong', 8.714280000, 9.508780000),
(2121, 168, 'Hassan Ibrahim Daiyabu', 1, '39515073986', 50, 'M', 'Aged', '8025065673', 'Shimankar ', 'Shimankar ', 8.631750000, 9.514740000),
(2122, 168, 'Longyen Daniel Tukman', 1, '72962721858', 40, 'M', 'Youth', '9027460861', 'Shimankar ', 'Shimankar ', 8.625310000, 9.532380000),
(2123, 168, 'Paskalina Kande Gana', 1, '58282869271', 30, 'F', 'Youth ', '8028481371', 'Shimankar ', 'Shimankar ', 8.631740000, 9.514500000),
(2124, 168, 'Gwammen Dongjap', 1, '64227984510', 55, 'M', 'Aged', '7013958800', 'Shimankar ', 'Shimankar ', 8.624800000, 9.532570000),
(2125, 168, 'Heline Kensun', 1, '63522287945', 35, 'F', 'Youth', '9029894002', 'Shimankar ', 'Shimankar ', 8.264800000, 9.532570000),
(2126, 168, 'Sale B. Sule', 2, '90F5B211E3295609275', 54, 'M', 'Blind ', '8081488980', 'Shimankar ', 'Shimankar ', 8.631340000, 9.515360000),
(2127, 168, 'Muhammed Ibrahim BabanFulani', 1, '56588477309', 47, 'M', 'Deaf', '9126558193', 'Shimankar ', 'Shimankar ', 8.626340000, 9.532170000),
(2128, 168, 'Rita Longsaar', 1, '77214376932', 33, 'F', 'Youth ', '9046690285', 'Shimankar', 'Shimankar ', 8.624930000, 9.533900000),
(2129, 168, 'Roseline Hoomsuk', 1, '14527597820', 47, 'F', 'Widow', '9017817276', 'Shimankar ', 'Shimankar ', 8.264850000, 9.533200000),
(2130, 168, 'Mary Paul Habu', 1, '26592525966', 31, 'F', 'Youth ', '7035620988', 'Ngwan yargam shimankar ', 'Shimankar', 8.626410000, 9.531110000),
(2131, 169, 'Naantuam Laji Linus', 1, '44232609891', 40, 'M', 'Youth ', '9025907600', 'Shimankar ', 'Shimankar ', 8.625390000, 9.532720000),
(2132, 169, 'Benard Goekwan', 1, '21075624095', 48, 'M', 'Crippled ', '7089335304', 'Shimankar ', 'Shimankar ', 8.626600000, 9.532380000),
(2133, 169, 'Mercy Lankwap', 1, '86997388322', 39, 'F', 'Widow', '9074552182', 'Shimankar ', 'Shimankar ', 8.638720000, 9.538530000),
(2134, 169, 'Mazawaje M. Jesicca', 5, 'nil', 31, 'F', 'Youth ', '9013936020', 'Shimankar ', 'Shimankar ', 8.626610000, 9.532530000),
(2135, 169, 'Rose Nukup', 5, 'nil', 33, 'F', 'Youth ', '7015442805', 'Shimankar ', 'Shimankar ', 8.627440000, 9.533380000),
(2136, 169, 'Ruth Yusufu', 5, 'nil', 34, 'F', 'Youth ', '9029156559', 'Shimankar ', 'Shimankar ', 8.625310000, 9.534420000),
(2137, 169, 'Manyum Emmanuel', 1, '40862949060', 51, 'M', 'nil', '8086923033', 'Shimankar', 'Shimankar', 8.631780000, 9.534350000),
(2138, 169, 'Nkwap Billy', 5, 'nil', 39, 'M', 'Youth ', '8024475196', 'Shimankar ', 'Shimankar ', 8.626920000, 9.532380000),
(2139, 169, 'Boniface Yilwan', 1, '86975432207', 36, 'M', 'Youth ', '8121755407', 'Shimankar ', 'Shimankar ', 8.862670000, 9.534350000),
(2140, 169, 'Epkwap Shedrack', 1, '46423950717', 38, 'M', 'Youth ', '8024995481', 'Shimankar ', 'Shimankar ', 8.627280000, 9.532330000),
(2141, 170, 'Vongjen Sunday', 1, '63960361812', 35, 'M', 'Youth ', '7059252063', 'Shimankar ', 'Shimankar ', 8.627290000, 9.532340000),
(2142, 170, 'Abdusallam Adamu', 1, '83933119568', 25, 'M', 'Youth', '8083603413', 'Shimankar ', 'Shimankar ', 8.676230000, 9.538710000),
(2143, 170, 'Yanbaam Kwapya', 1, '78923513653', 45, 'M', 'Youth ', '8117962158', 'Shimankar ', 'Shimankar ', 8.625430000, 9.534240000),
(2144, 170, 'Yossi Caleb', 1, '54829615322', 36, 'M', 'Youth ', '805617985', 'Shimankar ', 'Shimankar ', 8.627530000, 9.533340000),
(2145, 170, 'Danasabe Audu', 1, '73617496732', 35, 'M', 'Youth ', '8051591518', 'Shimankar ', 'Shimankar ', 8.626720000, 9.534280000),
(2146, 170, 'John Adamu', 1, '97437513476', 42, 'M', 'Youth ', '8121502916', 'Shimankar ', 'Shimankar ', 8.621730000, 9.632730000),
(2147, 170, 'Aisha Musa', 1, '32196372963', 27, 'F', 'Youth ', '9056039415', 'Shimankar ', 'Shimankar ', 8.626210000, 9.534470000),
(2148, 170, 'Philomina John', 1, '47478593127', 30, 'F', 'Widow', 'nil', 'Shimankar ', 'Shimankar ', 8.636350000, 9.534460000),
(2149, 170, 'Queen Dauda', 1, '60345080461', 25, 'F', 'Youth ', '9010250371', 'Shimankar ', 'Shimankar ', 8.627950000, 9.557490000),
(2150, 170, 'Man Ibrahim', 1, '57292649261', 35, 'F', 'Handicapped ', '8056859239', 'Shimankar ', 'Shimankar ', 8.628490000, 9.555560000),
(2151, 171, 'Rangmuk Niyu GAJERE', 1, '63177842558', 40, 'M', 'Youth ', '8087794169', 'Shimankar ', 'Shimankar ', 8.629040000, 9.557080000),
(2152, 171, 'Lucy D. Borolin', 2, 'A101066916', 42, 'F', 'Widow ', '802270301', 'Shimankar ', 'Shimankar ', 8.628580000, 9.556840000),
(2153, 171, 'Andrea L. Maigari', 1, '93914180522', 42, 'M', 'Youth ', '8066056065', 'Shimankar ', 'Shimankar ', 8.632390000, 9.568320000),
(2154, 171, 'Idris Abdullahi', 1, '21347358015', 54, 'M', 'Aged', '8020948239', 'Shimankar ', 'Shimankar ', 8.626540000, 9.558710000),
(2155, 171, 'Corella Noeben Njin', 1, '68372869296', 35, 'F', 'Youth ', '7014226333', 'Shimankar ', 'Shimankar ', 8.627800000, 9.552310000),
(2156, 171, 'Medline Kensun', 1, '4711222312', 40, 'F', 'Widow ', '9029894002', 'Shimankar ', 'Shimankar ', 8.621240000, 9.551390000),
(2157, 171, 'Stella Naante', 1, '58271859393', 38, 'F', 'Youth ', '9014394440', 'Shimankar ', 'Shimankar ', 8.628450000, 9.557530000),
(2158, 171, 'Tokwa Reuben', 1, '55401605213', 46, 'M', 'Youth', '8026180159', 'Shimankar ', 'Shimankar ', 8.626740000, 9.554520000),
(2159, 171, 'Florence Homen', 1, '50801038795', 40, 'F', 'Widow ', '9127547385', 'Ngwan saba shimankar ', 'Shimankar ', 8.625410000, 9.557800000),
(2160, 171, 'Anastesia Nantoe', 1, '68382969683', 38, 'F', 'Youth ', '9072594185', 'Shimankar ', 'Shimankar ', 8.634160000, 9.549010000),
(2161, 172, 'Duamlong Clement Diemkwap', 1, '63726822421', 40, 'M', 'Youth ', '7036120909', 'Shimankar ', 'Shimankar ', 8.635640000, 9.549830000),
(2162, 172, 'Kingsley Tongla Dongjap', 1, '38441851184', 34, 'M', 'Youth ', '8169763725', 'Shimankar ', 'Shimankar ', 8.636850000, 9.543260000),
(2163, 172, 'Kelong Damen', 1, '75553934227', 29, 'F', 'Widow', '7063432525', 'Shimankar ', 'Shimankar ', 8.636210000, 9.554320000),
(2164, 172, 'Helen Kensem Brolyn', 2, 'A10658397', 35, 'F', 'Youth ', '9029894002', 'Shimankar ', 'Shimankar ', 8.632170000, 9.553210000),
(2165, 172, 'Abau Millicent Miapmi', 1, '32577927717', 41, 'F', 'Widow ', '7030999764', 'Shimankar ', 'Shimankar ', 8.633120000, 9.542890000),
(2166, 172, 'Karnap Yildir Yilnap', 1, '82841787976', 30, 'F', 'Youth ', 'nil', 'Shimankar ', 'Shimankar ', 8.632170000, 9.558740000),
(2167, 172, 'Ladi Katgurum', 1, '58385929589', 46, 'F', 'Widow', 'nil', 'Shimankar ', 'Shimankar ', 8.624370000, 9.553210000),
(2168, 172, 'Josephine Sabastine', 1, '68382683821', 35, 'F', 'Youth ', '806585026', 'Shimankar ', 'Shimankar ', 8.628540000, 9.558720000),
(2169, 172, 'Eugene Pringkwap', 2, '90F5B15766501668501', 23, 'M', 'Youth ', '9125330264', 'Shimankar ', 'Shimankar ', 8.636540000, 9.554380000),
(2170, 172, 'Danjuma Felicity', 1, '87259708359', 30, 'F', 'Widow ', 'nil', 'Shimankar ', 'Shimankar ', 8.627640000, 9.546340000),
(2171, 173, 'Labi Lawrence ', 1, '57282959712', 53, 'M', 'Aged', '8026697624', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2172, 173, 'katgurum Donatus Albert', 1, '36922482257', 35, 'M', 'Youth ', '7019247002', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2173, 173, 'Janet Alphonsus', 1, '63296710768', 43, 'F', 'Widow ', '816130559', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2174, 173, 'Nicholas Diemlong', 1, '12427753193', 57, 'M', 'nil', '8021183464', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2175, 173, 'Buetsen Beatrice Diemkwap', 1, '58485281485', 55, 'F', 'Aged', 'nil', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2176, 173, 'Agap Manu', 1, '77183408325', 27, 'M', 'Youth ', 'nil', 'Shimankar ', 'Shimankar', 8.622020000, 9.530100000),
(2177, 173, 'Terry Dashe', 1, '38269386012', 35, 'M', 'Youth ', '7055902317', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2178, 173, 'Sabastine Gurumyen', 5, 'nil', 35, 'M', 'Youth ', 'nil', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2179, 173, 'Lucy Tani Walong', 1, '81936466028', 34, 'F', 'Widow', 'nil', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2180, 173, 'Livinus Lutoe', 5, 'nil', 35, 'M', 'Youth ', '9073619924', 'Shimankar ', 'Shimankar ', 8.622020000, 9.530100000),
(2181, 174, 'Kwalak Alex', 1, '57312648858', 56, 'M', 'nil', '9074142635', 'Shimankar ', 'Shimankar ', 8.635420000, 9.518500000),
(2182, 174, 'Mary Katgurum', 2, 'FA5B3EC1FF525438466', 34, 'F', 'Youth ', 'nil', 'Shimankar ', 'Shimankar ', 8.638920000, 9.516500000),
(2183, 174, 'Cordelia Mary', 1, '35865342711', 51, 'F', 'Aged', 'nil', 'Shimankar ', 'Shimankar ', 8.631250000, 9.519300000),
(2184, 174, 'Chido Katgurum Danladi', 1, '85953672396', 57, 'F', 'Aged ', 'nil', 'Shimankar ', 'Shimankar ', 8.635520000, 9.512300000),
(2185, 174, 'Boni Victoria', 1, '63894272386', 60, 'F', 'Aged', 'nil', 'Shimankar ', 'Shimankar ', 8.636210000, 9.516000000),
(2186, 174, 'Joy Sameh Dabang', 1, '32185931821', 30, 'F', 'Youth ', '8138054057', 'Shimankar ', 'Shimankar ', 8.637900000, 9.517600000),
(2187, 174, 'Mary Habu', 1, '43682198746', 30, 'F', 'Youth ', 'nil', 'Shimankar ', 'Shimankar ', 8.627890000, 9.557950000),
(2188, 174, 'Hilary Daniel', 1, '40784973239', 37, 'M', 'Youth ', 'nil', 'Shimankar ', 'Shimankar ', 8.635620000, 9.515360000),
(2189, 174, 'Naanpoe Bibiana', 1, '58764527879', 39, 'F', 'Youth ', '9123276234', 'Shimankar ', 'Shimankar', 8.635630000, 9.514550000),
(2190, 220, 'Jibrin Sale', 2, '90F5AF0CC8295542563', 40, 'M', 'NIL', '8065557115', 'unguwan turawa, wase', 'along kadarko road wase', 9.096030000, 9.956460000),
(2191, 220, 'Salihu Dandada', 1, '38870918088', 35, 'M', 'NIL', '8068089977', 'unguwan kaura, wase', 'along kadarko road wase', 9.094660000, 9.959390000),
(2192, 220, 'Rakiya Salihu Idris', 2, '90F5B04255296361388', 27, 'F', 'NIL', '7032467909', 'kauran sarki1,wase', 'along kadarko road wase', 9.096030000, 9.956460000),
(2193, 220, 'Hassan Abdullahi', 1, 'S7Y0OG2VU00027V', 40, 'M', 'NIL', '8030687833', 'kauran sarki 1', 'along kadarko road wase', 9.094660000, 9.959390000),
(2194, 220, 'Ruth Emmanuel Azi', 1, '32799495572', 0, 'F', 'NIL', '7064342454', 'Kauran sarki 1', 'along kadarko road wase', 9.096030000, 9.956460000),
(2195, 220, 'Hashimu Gurama Abdullahi', 2, '71BC12F2F3296384632', 41, 'M', 'NIL', '7035209363', 'kauran sarki 1 wase', 'along kadarko road wase', 9.094660000, 9.959390000),
(2196, 220, 'Tanko Idris Ismail', 1, '76151911167', 37, 'M', 'NIL', '8031841800', 'unguwan kaura2,wase', 'along kadarko road wase', 9.096030000, 9.956460000),
(2197, 220, 'Ahmad Shahid Ahmad', 1, '13782232863', 30, 'M', 'NIL', '8032346236', 'unguwan turawa, wase', 'along kadarko road wase', 9.094660000, 9.959390000),
(2198, 220, 'Ali Zakari', 1, '34350000788', 40, 'M', 'NIL', '8060921777', 'unguwan makwalla, wase', 'along kadarko road wase', 9.094660000, 9.959390000),
(2199, 220, 'Uba Alkasim Abdullahi', 1, '19424749903', 48, 'M', 'NIL', '7033226519', 'unguwan zango, wase', 'along kadarko road wase', 9.096030000, 9.956460000),
(2200, 221, 'Aminu Umar Jibin', 1, 'S7Y0NYFH9000E6B', 39, 'M', 'NIL', '8036471428', 'unguwan iya, wase', 'unguwan iya, wase', 9.094900000, 9.955920000),
(2201, 221, 'Auwal Muhammad Muhammad', 1, '96100014700', 28, 'M', 'NIL', '9063275710', 'unguwan karofi ,wase', 'unguwan karofi ,wase', 9.094900000, 9.955920000),
(2202, 221, 'Faiza Sani Adamu', 1, '18211294358', 28, 'F', 'NIL', '7037055981', 'unguwan karofi, wase', 'unguwan karofi ,wase', 9.096030000, 9.956460000),
(2203, 221, 'Saratu U. Tijjani', 1, '83983629742', 42, 'F', 'NIL', '9061853860', 'bayan fada, wase', 'bayan fada, wase', 9.094900000, 9.955920000),
(2204, 221, 'Habiba Mohammed', 2, '90FDDE5C01296572115', 40, 'F', 'NIL', '8123544036', 'makwalla wase', 'makwalla wase', 9.096030000, 9.956460000),
(2205, 221, 'Arma yau Yakubu ', 2, '90F5B13515296789161', 45, 'M', 'NIL', '7060351668', 'Unguwan turawa, wase', 'Unguwan turawa, wase', 9.094900000, 9.955920000),
(2206, 221, 'Salifa Mahmud', 1, '49520048255', 30, 'F', 'NIL', '7033908131', 'unguwan low-cost wase', 'unguwan low-cost wase', 9.094900000, 9.955920000),
(2207, 221, 'Zulaihatu A. Mohammad', 2, '90F5B06530895822445', 45, 'F', 'NIL', '8069642653', 'unguwan galadima, wase', 'unguwan galadima, wase', 9.093540000, 9.955820000),
(2208, 221, 'Sahura Usman', 1, '85921301717', 40, 'F', 'NIL', '8164970299', 'unguwan kuyanbana wase', 'unguwan kuyanbana wase', 9.100380000, 9.960490000),
(2209, 221, 'Aisha Aliyu Zakari', 1, '77694837403', 27, 'F', 'NIL', '9034138190', 'unguwan galadima, wase', 'unguwan galadima, wase', 9.099530000, 9.960870000),
(2210, 222, 'Kabiru A. Usman', 1, '73303598913', 41, 'M', 'NIL', '8036043539', 'unguwan kauran sarki 1', 'along mavo road, wase', 9.098130000, 9.958720000),
(2211, 222, 'Libabatu Yakubu', 2, '90F5AFAE62295699287', 29, 'F', 'NIL', '8032277503', 'unguwan iya, wase', 'along mavo road, wase', 9.095150000, 9.957540000),
(2212, 222, 'Usman  Abubakar', 1, 'PL157214510', 69, 'M', 'NIL', '7043338857', 'unguwan kauran sarki 1', 'along mavo road, wase', 9.095890000, 9.956620000),
(2213, 222, 'Kadija Usman', 2, '71BC12F2F3296039904', 62, 'F', 'NIL', '9069078264', 'unguwan kauran sarki 1', 'along mavo road, wase', 9.095080000, 9.956130000),
(2214, 222, 'Aishatu Usman Alhaji', 2, '71BC12F2F3296046548', 68, 'F', 'NIL', '8107179109', 'unguwan kauran sarki 1', 'tenam mavo road, wase', 9.095330000, 9.955890000),
(2215, 222, 'Aliyu Usman Garba', 3, 'PL161734712', 25, 'M', 'NIL', '8034490988', 'unguwan turawa, wase', 'along mavo road, wase', 9.095040000, 9.956480000),
(2216, 222, 'Fatima Sani Zainab Idris', 2, '90F5B119AD295789584', 44, 'F', 'NIL', '9030830849', 'unguwan iya ,wase', 'tenam mavo road, wase', 9.094770000, 9.956660000),
(2217, 222, 'Safiya Abdulhamid', 1, '49197009682', 37, 'F', 'NIL', '7064987164', 'unguwan iya ,wase', 'along mavo road, wase', 9.094700000, 9.956690000),
(2218, 222, 'Jummai Mohammed', 1, 'S1E9NVQ3BW6001S', 28, 'F', 'NIL', '9048768402', 'unguwan karofi, wase', 'along mavo road, wase', 9.100380000, 9.960490000),
(2219, 222, 'Maryam Garba', 1, '12091740205', 30, 'F', 'NIL', '7037476112', 'Tudun galadima, wase', 'along mavo road, wase', 9.099530000, 9.960870000),
(2220, 223, 'Aishatu Isa', 2, '90F5B03501295958901', 39, 'F', 'NIL', '7035280070', 'unguwan kuyanbana, wase', 'kurum bayandutse  wase', 9.098130000, 9.958720000),
(2221, 223, 'Muhammad Musa Abdullahi', 1, '63866861405', 27, 'M', 'NIL', '8030485124', 'unguwan turawa, wase', 'kurum bayandutse  wase', 9.095150000, 9.957540000),
(2222, 223, 'Tabawa Kamilu', 2, '90F5B04255295441421', 35, 'F', 'NIL', '8131624722', 'unguwan karofi, wase', 'kurum', 9.095890000, 9.956620000),
(2223, 223, 'Usman Tijjani', 1, '49633882731', 35, 'm', 'NIL', '8038863887', 'unguwan bayan fada wase', 'saluwe', 9.095890000, 9.956620000),
(2224, 223, 'Hammata Dauda Yahaya', 1, 'PL655249356', 37, 'F', 'NIL', '7036548765', 'unguwan turawa wase', 'yola', 9.095080000, 9.956130000),
(2225, 223, 'Tijjani Ukasha Usman', 1, '65594837434', 30, 'M', 'NIL', '7038989385', 'unguwan bayan fada wase', 'kanwa', 9.095330000, 9.955890000),
(2226, 223, 'Nasiru Abdullahi', 2, '90F5AFAE62295951197', 42, 'M', 'NIL', '8139028584', 'unguwan Mal. adama wase', 'kumbur', 9.095040000, 9.956480000),
(2227, 223, 'Salamtu Buhari', 1, '28430866045', 41, 'F', 'NIL', '9124147251', 'kauran sarki1', 'behind science school wase', 9.094770000, 9.956660000),
(2228, 223, 'Abubakar Usman Abubakar', 1, '84684564452', 42, 'M', 'NIL', '8069692838', 'unguwan kauran sarki1 wase', 'jigawan audu', 9.094700000, 9.956690000),
(2229, 223, 'Rakiya Abdulmumini', 5, 'NIL', 34, 'F', 'NIL', '8160037145', 'unguwan iya, wase', 'behind science school wase', 9.098130000, 9.958720000),
(2230, 224, 'Abdullahi G. Zakari', 2, '90F5B1D50D419838283', 39, 'M', 'NIL', '8030533865', 'unguwan kuyanbana wase', 'along saluwe road wase', 9.095150000, 9.957540000),
(2231, 224, 'Halima Hamza', 2, '90F5B04255295622950', 42, 'F', 'NIL', '8164302400', 'unguwan kwata wase', 'saluwe', 9.095890000, 9.956620000),
(2232, 224, 'Kulu Laminga ', 2, '90F5AFD86C2963049071', 50, 'F', 'NIL', '7015928075', 'unguwan low cost wase', 'along saluwe road wase', 9.095890000, 9.956620000),
(2233, 224, 'Zainab Garba', 2, '90F5BC35Q1295605162', 23, 'F', 'NIL', '7065685085', 'unguwan kuyanbana wase', 'kanwa', 9.095080000, 9.956130000),
(2234, 224, 'Sailuba Haruna', 2, '90F5B1AB5E295706909', 29, 'F', 'NIL', '7068681266', 'unguwan. lowcost wase', 'mavo', 9.096030000, 9.956460000),
(2235, 224, 'Hauwa Suleiman ', 1, 'B39YN2D5Q0000T6', 46, 'F', 'NIL', '9066008687', 'kauran sarki1 wase', 'lamba road', 9.094660000, 9.959390000),
(2236, 224, 'Yahainasu Salihu', 2, '90F5B1F4DC507026412', 65, 'F', 'NIL', '7060475161', 'unguwan kuyanbana wase', 'along saluwe road wase', 9.096030000, 9.956460000),
(2237, 224, 'Jamila Usman', 2, '90F5B07764495621106', 34, 'F', 'NIL', '8060226679', 'unguwan garkuwa wase', 'tenam', 9.094660000, 9.959390000),
(2238, 224, 'Rabi Lawal Sani', 2, '0F5B15709295703010', 45, 'F', 'NIL', '8065094836', 'unguwan garkuwa, wase', 'ung.tsakuwa', 9.096030000, 9.956460000),
(2239, 224, 'Iya Rakiya Bala', 2, '90F5B03501296044717', 40, 'F', 'NIL', '7063076760', 'unguwan kuyanbana, wase', 'along saluwe road wase', 9.094660000, 9.959390000),
(2240, 225, 'Sakinatu Halilu Mohammed', 1, '93840825393', 30, 'F', 'NIL', '7030486207', ' Tudun galadima wase', 'saluwe ', 9.096030000, 9.956460000),
(2241, 225, 'Sa', 2, '90F5AFC97D296304480', 31, 'F', 'NIL', '7064855543', ' Tudun galadima wase', 'along yingiling road wase', 9.094660000, 9.959390000),
(2242, 225, 'Safiya Lawal Alhassan', 2, '90F5AFA01E510606045', 25, 'F', 'NIL', '8038387016', 'unguwan low-cost wase', 'saluwe road', 9.094660000, 9.959390000),
(2243, 225, 'Amina Ahmed', 2, '71BC12F2F3291637084', 32, 'F', 'NIL', '8101937200', 'unguwan garkuwa wase', 'ung.tsakuwa', 9.096030000, 9.956460000),
(2244, 225, 'Zainab A. Maigoge Jaafaru', 2, '90F5AEFBBE416043184', 34, 'F', 'NIL', '8130146350', 'gudus, wase', 'tenam mavo road', 9.094900000, 9.955920000),
(2245, 225, 'Maryam Isa', 2, '90F5B10FA1296389224', 45, 'F', 'NIL', '7063342983', 'unguwan garkuwa wase', 'along yingiling road wase', 9.094660000, 9.959390000),
(2246, 225, 'Baraatu Gambo', 2, '90F5B03501296053594', 30, 'F', 'NIL', '7038069153', 'unguwan kuyanbana wase', 'along yingiling road wase', 9.096030000, 9.956460000),
(2247, 225, 'Hassana Lawal', 2, '90F5B10FA1295540993', 25, 'F', 'NIL', '9032408613', 'unguwan kuyanbana wase', 'yingiling', 9.094660000, 9.959390000),
(2248, 225, 'Hafsatu Isa', 2, '90F5B03501296060976', 28, 'F', 'NIL', '8162009444', 'unguwan kuyanbana wase', 'along yingiling road wase', 9.096030000, 9.956460000),
(2249, 225, 'Muazatu Husaini', 2, '90F5AFIF47295437208', 23, 'F', 'NIL', '8060925163', 'unguwan kuyanbana wase', 'along yingiling road wase', 9.094660000, 9.959390000),
(2250, 226, 'Maryam Mohammed', 2, '90F5B12FC3296744623', 31, 'F', 'NIL', '7051699963', 'unguwan galadima wase', 'KADARKO road along old G.R.A. wase', 9.095150000, 9.957540000),
(2251, 226, 'Hauwa Yakubu Yusuf', 2, '90F5AFAE62295627892', 34, 'F', 'NIL', '8168059809', 'unguwan galadima wase', 'KADARKO road along old G.R.A. wase', 9.095890000, 9.956620000),
(2252, 226, 'Zaituna Yusuf', 2, '90F5B12FC3296405007', 39, 'F', 'NIL', '8060545523', 'lamba, wase', 'KADARKO road along old G.R.A. wase', 9.095890000, 9.956620000),
(2253, 226, 'Hauwau Ummar', 5, 'NIL', 33, 'F', 'NIL', '9026868632', 'lamba , wase', 'kanwa', 9.095080000, 9.956130000),
(2254, 226, 'Hussaina Yakubu', 2, '90F5B12FC3296400966', 32, 'F', 'NIL', '8084952702', 'lamba wase', 'tenam', 9.095330000, 9.955890000),
(2255, 226, 'Shakunkun Lamba Ishaku', 1, '38276840982', 39, 'M', 'NIL', '7037776093', 'tudun galadima wase', 'old GRA wase', 9.096030000, 9.956460000);
INSERT INTO `beneficiary` (`id`, `group_id`, `beneficiary_name`, `moi_id`, `id_no`, `age`, `gender`, `vul_status`, `phone`, `contact_address`, `farm_location`, `longitude`, `latitude`) VALUES
(2256, 226, 'Adamu Ibn Adamu ', 2, '90F5B15709295043282', 56, 'M', 'NIL', '7035732275', 'unguwan galadima wase', 'kurum', 9.094660000, 9.959390000),
(2257, 226, 'Garba  A. Junaidu', 2, '90F5BCF5A1236817829', 29, 'M', 'NIL', '7064674052', 'unguwan kuyanbana wase', 'bayan dutse', 9.096030000, 9.956460000),
(2258, 226, 'Abubakar Z. Abdullahi', 2, 'B07764495706407', 36, 'M', 'NIL', '8035827404', 'unguwan low-cost wase', 'KADARKO road along old G.R.A. wase', 9.094660000, 9.959390000),
(2259, 226, 'Haruna Abdullahi', 2, '90F5B19363519635645', 44, 'M', 'NIL', '8030864970', 'unguwan galadima wase', 'gindin dutse', 9.096030000, 9.956460000),
(2260, 227, 'Nimtim Sila', 5, 'please provide clear copy', 40, 'M', 'NIL', '9156281401', 'COCIN KADARKO ', 'SUKU ROAD', 8.906200000, 10.064900000),
(2261, 227, 'Sartim oliver', 5, 'please provide clear copy', 39, 'M', 'NIL', '7066771726', 'COCIN KADARKO', 'SUKU ROAD', 8.906200000, 10.026490000),
(2262, 227, 'Nimmyel Emmanuel', 5, 'please provide clear copy', 49, 'M', 'NIL', '7051021531', 'ANGWAN PONZHI KADARKO', 'KADARKO', 8.906190000, 10.026460000),
(2263, 227, 'Usman Nanfa Nalda', 5, 'please provide clear copy', 38, 'M', 'NIL', '8067822693', 'SUKU KADARKO', 'WADATA ROAD', 8.906170000, 10.026450000),
(2264, 227, 'Dinchit Kure', 5, 'NIL', 38, 'F', 'NIL', '7059571890', 'SUKU KADARKO', 'WADATA ROAD', 8.906120000, 10.026160000),
(2265, 227, 'Ruth Siman', 2, '90F5B070B7517312304', 60, 'F', 'NIL', '9065398600', 'ANGWAN PONZHI KADARKO', 'KADARKO', 8.906150000, 10.026160000),
(2266, 227, 'Nimdak Ibrahim Yakubu', 2, '90F5B00740288795702', 38, 'F', 'NIL', '8050827731', 'COCIN KADARKO', 'KADARKO', 8.906170000, 10.026180000),
(2267, 227, 'Queen Nankpak', 5, 'please provide clear copy', 31, 'F', 'NIL', '9047866852', 'SUKU KADARKO', 'KADARKO', 8.906190000, 10.026230000),
(2268, 227, 'Esther Stephen', 5, 'please provide clear copy', 41, 'F', 'NIL', '8051199825', 'ANGWAN PONZHI KADARKO', 'KADARKO', 8.906200000, 10.064900000),
(2269, 227, 'Bukata Iliya', 5, 'NILL', 40, 'M', 'NIL', '9158736628', 'COCIN KADARKO', 'SUKU ROAD', 8.906200000, 10.026490000),
(2270, 228, 'Mal Musa Abubakar', 2, '90F5B13C06296047322', 82, 'M', 'AGED', '8060755708', 'GSS MAVO', 'KANWA ROAD WASE', 8.906190000, 10.026460000),
(2271, 228, 'Adamu A. Bako', 5, 'NILL', 44, 'M', 'NIL', '7032249660', 'GSS MAVO', 'KANWA ROAD WASE', 8.906170000, 10.026450000),
(2272, 228, 'Dauda Hassan', 2, '90F5B1793F296731042', 31, 'M', 'HANDICAP', '7041906413', 'KANGWA MAVO', 'KANWA ROAD WASE', 8.906120000, 10.026160000),
(2273, 228, 'Ibrahim Usman', 1, '93033229762', 43, 'M', 'NIL', '8030538257', 'KANWAN MAVO', 'UNGUWAN SAKUWA', 8.906150000, 10.026160000),
(2274, 228, 'Tijjani Adamu', 2, '90F5B04255296903328', 30, 'M', 'NIL', '8145433757', 'KANWAN MAVO', 'UNGUWAN SAKUWA', 8.906170000, 10.026180000),
(2275, 228, 'Adamu Ahmad Saidu', 1, '68010577571', 33, 'M', 'NIL', '7066270319', 'BEHIND MOSQUE MAVO', 'UNGUWAN SAKUWA', 8.906170000, 10.026190000),
(2276, 228, 'Yahainasu Halilu', 2, '90F5B19363519988637', 37, 'F', 'NIL', '7038062281', 'GSS MAVO', 'UNGUWAN SAKUWA', 8.907650000, 10.026120000),
(2277, 228, 'Jummai Baba', 1, '27445575541', 36, 'F', 'NIL', '8164443812', 'GSS MAVO', 'YINGING ROAD', 8.907930000, 10.026120000),
(2278, 228, 'Safiya Hamisu', 1, '17175581390', 40, 'F', 'NIL', '8139113122', 'BEHIND MOSQUE MAVO', 'YINGING ROAD', 8.907910000, 10.026110000),
(2279, 228, 'Mohammed Baba Goni', 2, '90F5AF6561416256563', 50, 'M', 'NIL', '8135679464', 'BEHIND MOSQUE MAVO', 'YINGING ROAD', 8.907840000, 10.026080000),
(2280, 229, 'Nangang Kapbin', 2, '90F5B079B1295712488', 37, 'M', 'NIL', '7026110897', 'WADATAN KASUWA', 'WADATA KASUWA', 8.906200000, 10.064900000),
(2281, 229, 'Nanbol Michael', 1, 'PL648805254', 37, 'M', 'NIL', '9053647847', 'WADATAN KASUWA', 'WADATA KASUWA', 8.906200000, 10.026490000),
(2282, 229, 'Ndam Danjuma Nansoh', 2, '90F5AE490D502811711', 35, 'M', 'NIL', '7055631035', 'AREWA ROAD WADATA', 'WADATA KASUWA', 8.906190000, 10.026460000),
(2283, 229, 'Nannak Nanfa', 5, 'NILL', 40, 'M', 'NIL', '8082664957', 'WADATAN KASUWA', 'WADATA KASUWA', 8.906170000, 10.026450000),
(2284, 229, 'Zingtim Bali', 5, 'NILL', 39, 'M', 'NIL', '8157266608', 'WADATAN KASUWA MARKET', 'WADATA KASUWA', 8.906120000, 10.026160000),
(2285, 229, 'Ndam Kargwak Francis', 2, '03ODD3653D288830320', 31, 'M', 'NIL', '9015369590', 'WADATAN KASUWA', 'WADATA KASUWA', 8.906190000, 10.026460000),
(2286, 229, 'Dindul Hosea Sunday', 1, '3.05E+11', 36, 'M', 'NIL', '9011630551', 'AREWA ROAD WADATA', 'WADATA KASUWA', 8.906170000, 10.026450000),
(2287, 229, 'Namnan Zigi', 5, 'NILL', 40, 'M', 'NIL', '9150197565', 'AREWA ROAD WADATA', 'WADATA KASUWA', 8.906120000, 10.026160000),
(2288, 229, 'Gumfa Timjul', 5, 'NILL', 39, 'M', 'NIL', '8120431359', 'AREWA ROAD WADATA', 'WADATA KASUWA', 8.906150000, 10.026160000),
(2289, 229, 'Ponfa Nanfa', 5, 'NILL', 40, 'M', 'NIL', '8052801271', 'WADATAN KASUWA', 'WADATA KASUWA', 8.906170000, 10.026180000),
(2290, 230, 'Musa Nandul', 1, '85180246096', 37, 'M', 'NIL', '8168011983', 'COCIN GWANGTIM', 'GWANGTIM', 8.906190000, 10.026230000),
(2291, 230, 'Nanre Mercy Ladong ', 2, '90F5B18528415976364', 59, 'F', 'NIL', '8065634794', 'COCIN GWANGTIM', 'TIMSHAT BAKINRIJIYA', 8.906200000, 10.064900000),
(2292, 230, 'Felix Nimfa', 1, '53883040695', 30, 'M', 'NIL', '8151746575', 'TIMCHANG BAKINRIJIYA', 'TIMSHAT BAKIN RIJIYA', 8.906200000, 10.026490000),
(2293, 230, 'Julcit Nimtur', 2, '90F5B079B1528448093', 60, 'F', 'NIL', '8033662696', 'KOGIN KASA', 'CLOSE TO WASE LANGTANG BRIDGE', 8.906170000, 10.026180000),
(2294, 230, 'Christiana Ramson', 2, '90F5AE651D216254754', 42, 'F', 'NIL', '7047114032', 'COCIN GWANGTIM', 'GWANGTIM', 8.906190000, 10.026230000),
(2295, 230, 'Haruna Mathew', 5, '78732267388', 40, 'M', 'NIL', '7035077453', 'TENAM', 'TENAM', 8.906200000, 10.064900000),
(2296, 230, 'Yenkat B. Nimmak', 5, 'please provide clear copy', 33, 'F', 'NIL', '7030636646', 'U. BALAK', 'U. BALAK', 8.906190000, 10.026460000),
(2297, 230, 'Tani Zhimwang', 2, '71BC060C98516720296', 34, 'F', 'NIL', '7035638284', 'U.BALAK', 'U.BALAK', 8.906170000, 10.026450000),
(2298, 230, 'Marcina Zingdul', 5, '90F5AF2431295709133', 30, 'F', 'NIL', '7033349053', 'U.BALAK', 'U.BALAK', 8.906120000, 10.026160000),
(2299, 230, 'Manyil Nanman', 5, 'please provide clear copy', 32, 'F', 'NIL', '7031060212', 'COCIN GWANGTIM', 'TIMSHAT BAKINRIJIYA', 8.906150000, 10.026160000),
(2300, 231, 'Awodi Mijinyawa', 5, 'PL161421566', 49, 'M', 'AGED', '8111462272', 'WADATA AREWA SOUTH', 'WADATA AREWA', 8.906170000, 10.026180000),
(2301, 231, 'Hauwa Dimka', 2, '90F5B1CE15298039612', 37, 'F', 'NIL', '8115111699', 'WADATA AREWA SOUTH', 'WADATA AREWA', 8.906170000, 10.026180000),
(2302, 231, 'Joshua Nanzing', 5, 'please provide clear copy', 43, 'M', 'NIL', '9153763271', 'WADATA AREWA MAKARANTA', 'WADATA AREWA', 8.906170000, 10.026180000),
(2303, 231, 'Nimchit Ibrahim', 2, '90F5B070B7523437671', 33, 'F', 'NIL', '7038631122', 'WADATA AREWA MAKARANTA', 'WADATA AREWA', 8.906170000, 10.026180000),
(2304, 231, 'Danladi Sylvia Langmar', 5, 'please provide clear copy', 39, 'F', 'NIL', '8075680659', 'WADATA AREWA MAKARANTA', 'WADATA AREWA', 8.906190000, 10.026230000),
(2305, 231, 'John Nanchwat', 2, '90F5B1CE15296053366', 40, 'M', 'NIL', '8150613361', 'WADATA AREWA MARKET', 'WADATA AREWA', 8.906190000, 10.026230000),
(2306, 231, 'Adam Rimkat', 5, 'please provide clear copy', 47, 'M', 'NIL', '9156466864', 'WADATA AREWA MARKET', 'WADATA AREWA', 8.906190000, 10.026230000),
(2307, 231, 'Youmtroe Tanko', 2, '90F5B079B1529472502', 39, 'M', 'NIL', '9058745458', 'WADATA AREWA MAKARANTA', 'WADATA AREWA', 8.906190000, 10.026230000),
(2308, 231, 'Ponfa Johnson', 5, 'please provide clear copy', 35, 'M', 'NIL', '8074709911', 'WADATA AREWA', 'WADATA AREWA', 8.906170000, 10.026190000),
(2309, 231, 'Lamko Mamsing Dimka', 2, '90F5B1CE15296148593', 38, 'M', 'NIL', '7055643495', 'WADATA AREWA', 'WADATA AREWA', 8.907650000, 10.026120000),
(2310, 232, 'Monday Nimkur', 5, 'please provide clear copy', 48, 'M', 'NIL', '8069570315', 'DALE WASE ROAD', 'DUWI CENTRE', 8.907930000, 10.026120000),
(2311, 232, 'Isa Nimtur', 1, '61847338444', 50, 'M', 'NIL', '8031149256', 'YOUDARA WASE', 'DUWI CENTRE', 8.907910000, 10.026110000),
(2312, 232, 'Regina Titus', 2, '90F5AF0DD9296231993', 39, 'F', 'NIL', '7063780605', 'COCIN DUWI', 'DUWI CENTRE', 8.907840000, 10.026080000),
(2313, 232, 'Ladi Karnak', 2, '90F5AF0DD9296230183', 51, 'F', 'NIL', '8063781731', 'DUWI CENTRE', 'DUWI CENTRE', 8.906190000, 10.026460000),
(2314, 232, 'Yarling Nannim Gungshin', 2, '90F5B005DE618010916', 42, 'M', 'NIL', '8032397338', 'UNGWAN BALLA', 'DUWI CENTRE', 8.906170000, 10.026450000),
(2315, 232, 'Ponfa Ibrahim', 5, 'NILL', 29, 'M', 'NIL', '8127553267', 'DALE WASE ROAD', 'DUWI CENTRE', 8.906120000, 10.026160000),
(2316, 232, 'Simkur Fanap', 2, '90F5AFA01E511873471', 49, 'M', 'NIL', '7064453845', 'DUWI CENTRE', 'DUWI CENTRE', 8.906150000, 10.026160000),
(2317, 232, 'Yaknana John', 5, 'please provide clear copy', 38, 'M', 'NIL', '8151766922', 'DUWI CENTRE', 'DUWI CENTRE', 8.906170000, 10.026180000),
(2318, 232, 'Patu Nimze', 2, '90F5AF0DD9296480981', 48, 'F', 'NIL', '8063705909', 'COCIN DUWI', 'DUWI CENTRE', 8.906170000, 10.026180000),
(2319, 232, 'Grace Ponfa', 1, '78159539026', 49, 'F', 'NIL', '8066901295', 'COCIN DUWI', 'DUWI CENTRE', 8.906190000, 10.026230000),
(2320, 233, 'Tau kefas', 5, 'PROVIDE NIN', 38, ' ', 'NIL', '8136732206', 'IBANG KADARKO', 'IBANG KADARKO', 8.906200000, 10.064900000),
(2321, 233, 'Pyenzing  Chirdap', 1, '80507790465', 35, 'M', 'NIL', '8152009170', 'IBANG KADARKO', 'IBANG KADARKO', 8.906190000, 10.026460000),
(2322, 233, 'Joseph Selkap', 1, '75331332457', 39, 'M', 'NIL', '9037400820', 'IBANG KADARKO', 'IBANG KADARKO', 8.906170000, 10.026450000),
(2323, 233, 'Jummai Dul', 5, 'NILL', 29, 'F', 'NIL', '7051501373', 'KANGKALA KADARKO', 'IBANG KADARKO', 8.906120000, 10.026160000),
(2324, 233, 'Baba Irimiya Samu', 2, '90F5B18082296467955', 92, 'M', 'AGED', '9123396623', 'KANGKALA KADARKO', 'IBANG KADARKO', 8.906150000, 10.026160000),
(2325, 233, 'Hosea Bature Zamba', 2, '90F5AE8C65515661857', 86, 'M', 'AGED', '8114121108', 'KANGKALA KADARKO', 'IBANG KADARKO', 8.906170000, 10.026180000),
(2326, 233, 'Saraya Ishaku (Iliya Patu)', 2, '90F5812461296032187', 34, 'F', 'NIL', '8071661749', 'IBANG KADARKO', 'IBANG KADARKO', 8.906170000, 10.026180000),
(2327, 233, 'Sargwak Binjin Ladi', 2, '90F5B18082295610515', 66, 'F', 'NIL', '8122294653', 'KANGKALA KADARKO', 'IBANG KADARKO', 8.906190000, 10.026230000),
(2328, 233, 'Helen Bulus', 1, '48150032428', 47, 'F', 'NIL', '9136327200', 'IBANG KADARKO', 'IBANG KADARKO', 8.906200000, 10.064900000),
(2329, 233, 'Nanchwat Sambo', 2, '90F5B0288A530533280', 36, 'M', 'NIL', '8068386762', ' KANGKALA KADARKO', 'IBANG KADARKO', 8.906200000, 10.064900000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `beneficiary_enterprise_item_summary`
--
CREATE TABLE IF NOT EXISTS `beneficiary_enterprise_item_summary` (
`dli_id` int(11)
,`dli_code` varchar(7)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`number` bigint(21)
,`qty_aprvd` bigint(31)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `beneficiary_enterprise_summary`
--
CREATE TABLE IF NOT EXISTS `beneficiary_enterprise_summary` (
`dli_id` int(11)
,`dli_code` varchar(7)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`number` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `beneficiary_item_summary`
--
CREATE TABLE IF NOT EXISTS `beneficiary_item_summary` (
`item_id` int(11)
,`item_desc` varchar(45)
,`quantity` decimal(32,0)
,`no_of_bfs` decimal(42,0)
,`qty_aprvd` decimal(52,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `beneficiary_lga_enterprise_summary`
--
CREATE TABLE IF NOT EXISTS `beneficiary_lga_enterprise_summary` (
`lga_name` varchar(25)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`number` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `beneficiary_view`
--
CREATE TABLE IF NOT EXISTS `beneficiary_view` (
`id` int(11)
,`beneficiary_name` varchar(100)
,`moi_id` int(11)
,`moi_desc` varchar(45)
,`id_no` varchar(45)
,`age` int(3)
,`gender` varchar(1)
,`vul_status` varchar(20)
,`phone` varchar(12)
,`contact_address` text
,`farm_location` text
,`longitude` double(12,9)
,`latitude` double(12,9)
,`group_id` int(11)
,`group_name` varchar(100)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`fca_id` int(11)
,`fca_name` varchar(65)
,`lga_id` int(11)
,`lga_name` varchar(25)
,`dli_id` int(11)
,`dli_code` varchar(7)
,`dli_name` varchar(65)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `distributed_group_assets_view`
--
CREATE TABLE IF NOT EXISTS `distributed_group_assets_view` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`no_of_groups` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`qty_dist` bigint(31)
,`unit` varchar(10)
,`unit_cost` double(11,2)
,`total_cost` double(19,2)
,`cost_of_qty_dist` double(19,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `distributed_individual_assets_view`
--
CREATE TABLE IF NOT EXISTS `distributed_individual_assets_view` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`no_of_ben` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`qty_dist` bigint(31)
,`unit` varchar(10)
,`unit_cost` double(11,2)
,`total_cost` double(19,2)
,`cost_of_qty_dist` double(19,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `distributed_inputs_view`
--
CREATE TABLE IF NOT EXISTS `distributed_inputs_view` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`no_of_ben` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`qty_dist` bigint(31)
,`unit` varchar(10)
,`unit_cost` double(11,2)
,`total_cost` double(19,2)
,`cost_of_qty_dist` double(19,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `dli`
--

CREATE TABLE IF NOT EXISTS `dli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dli_code` varchar(7) NOT NULL,
  `dli_name` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dli_code` (`dli_code`,`dli_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dli`
--

INSERT INTO `dli` (`id`, `dli_code`, `dli_name`) VALUES
(1, 'DLI 2.1', 'Agricultural inputs and services'),
(2, 'DLI 2.2', 'Improved agricultural infrastructure'),
(3, 'DLI 2.3', 'Agricultural assets'),
(4, 'DLI 2.4', 'Wet markets with upgraded water and sanitation service');

-- --------------------------------------------------------

--
-- Table structure for table `enterprise`
--

CREATE TABLE IF NOT EXISTS `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dli_id` int(11) NOT NULL,
  `enterprise_desc` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enterprise_desc` (`enterprise_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `enterprise`
--

INSERT INTO `enterprise` (`id`, `dli_id`, `enterprise_desc`) VALUES
(1, 1, 'Rice Production'),
(2, 1, 'Maize Production'),
(3, 1, 'Potato Production'),
(4, 1, 'Livestock Production (Poultry)'),
(5, 3, 'Piggery Production'),
(6, 3, 'Sheep and Goats'),
(7, 3, 'Farm Assets Services'),
(8, 3, 'Tomato Processing'),
(9, 3, 'Rice Processing'),
(10, 3, 'Maize Processing');

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_checklist`
--

CREATE TABLE IF NOT EXISTS `enterprise_checklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `enterprise_checklist`
--

INSERT INTO `enterprise_checklist` (`id`, `enterprise_id`, `item_id`, `quantity`) VALUES
(1, 3, 1, 150),
(2, 3, 2, 2),
(3, 3, 4, 1),
(4, 3, 5, 1000),
(5, 3, 6, 50),
(6, 1, 7, 20),
(7, 1, 2, 2),
(8, 1, 3, 2),
(9, 1, 6, 150),
(11, 2, 9, 12),
(12, 2, 6, 150),
(14, 2, 2, 2),
(15, 2, 4, 1),
(16, 4, 10, 50),
(17, 4, 11, 75),
(18, 4, 12, 100),
(19, 4, 13, 1),
(20, 5, 24, 2),
(21, 6, 23, 3),
(22, 7, 18, 2),
(23, 7, 19, 1),
(24, 8, 21, 3),
(25, 9, 20, 1),
(26, 10, 22, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `enterprise_checklist_summary`
--
CREATE TABLE IF NOT EXISTS `enterprise_checklist_summary` (
`id` int(11)
,`item_id` int(11)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`dli_id` int(11)
,`dli_code` varchar(7)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `enterprise_checklist_view`
--
CREATE TABLE IF NOT EXISTS `enterprise_checklist_view` (
`id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`unit_cost` double(11,2)
,`total_cost` double(19,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `enterprise_cost`
--
CREATE TABLE IF NOT EXISTS `enterprise_cost` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`enterprise_cost` double(19,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE IF NOT EXISTS `facilitator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facilitator_name` varchar(100) NOT NULL,
  `facilitator_email` varchar(65) DEFAULT NULL,
  `facilitator_phone` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facilitator_email` (`facilitator_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fca`
--

CREATE TABLE IF NOT EXISTS `fca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lga_id` int(11) NOT NULL,
  `fca_name` varchar(65) NOT NULL,
  `fca_leader` varchar(65) NOT NULL,
  `fca_leader_phone` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fca_name` (`fca_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `fca`
--

INSERT INTO `fca` (`id`, `lga_id`, `fca_name`, `fca_leader`, `fca_leader_phone`, `status`) VALUES
(2, 1, 'LOBIRING', 'VOU NYAM BULUS', '08063248567', 'approved'),
(3, 2, 'IGBAK', 'ANAH ADI BITRUS', '08121766290', 'approved'),
(5, 4, 'ANGWARE', 'Abubakar Agada', '08033942670', 'approved'),
(6, 4, 'FOBUR', 'NUHU ADANG JOHN', '08078651934', 'approved'),
(7, 6, 'RANTYA', 'Yakcit Emmanuel Nanfa', '08067468631', 'approved'),
(8, 6, 'ZAWAN', 'Vincent Davou', '08061206087', 'approved'),
(9, 5, 'NABORGWONG', 'Anna Panshak', '08030933736', 'approved'),
(10, 8, 'KABWIR PADA', 'Mary Peter ', '07034826972', 'approved'),
(11, 8, 'KUWANG', 'Mark Rangkukah', '08185083028', 'approved'),
(12, 9, 'BWARAT', 'PONFA ADAMU', '08063766573', 'approved'),
(13, 9, 'WADATA', 'ALEX NDAM TYEM', '07011223985', 'approved'),
(14, 3, 'KANGER', 'LILIAN LUKA', '0816343874', 'approved'),
(15, 3, 'TARANGOL', 'Ayuba Madugu', '07080089001', 'approved'),
(16, 7, 'GARGA-GYANGYANG', 'MUMSU NISA', '08137577264', 'approved'),
(17, 10, 'SABON GIDA', 'Thomas Ibrahim', '08082720096', 'approved'),
(18, 11, 'TONGASHAK', 'Bitrus Cishak', '08032110184', 'approved'),
(19, 11, 'PANYAM', 'Katlibet Stephen', '08067218279', 'approved'),
(20, 12, 'MIKHAM', 'Edward Zuel', '07039093378', 'approved'),
(21, 12, 'TOENGDAS', 'POLYCARP KADAI', '08081207719', 'approved'),
(22, 13, 'BELONGDEYIE', 'Dasat James Peter', '09155235851', 'approved'),
(23, 13, 'MUNDISHAK', 'MARGARET AUDU JIB', '07063381349', 'approved'),
(24, 14, 'DOKAN KASUWA', 'CATHERINE DOGARI', '08053460858', 'approved'),
(25, 14, 'KWANDE ', 'USMAN AUDU', '08036327017', 'approved'),
(26, 15, 'GANAWURI ', 'MICAH SATI', '07038343732', 'approved'),
(27, 15, 'RIYOM', 'RUTH BITRUS', '09131536373', 'approved'),
(28, 16, 'NGWA-DADI', 'Kelong Yakubu Tunkuyo', '08069579383', 'approved'),
(29, 16, 'SHIMANKAR', 'Rangmuk Niyu', '08087794169', 'approved'),
(30, 17, 'DANBIRAN', 'Jibrin Sale', '08065557115', 'approved'),
(32, 17, 'WADATA II', 'Nimtim Sila', '09156281401', 'approved'),
(33, 1, 'KAKURUK', 'NIL', 'NIL', ''),
(34, 2, 'MISTA-ALI', 'NIL', 'NIL', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `fca_view`
--
CREATE TABLE IF NOT EXISTS `fca_view` (
`id` int(11)
,`fca_name` varchar(65)
,`lga_id` int(11)
,`lga_name` varchar(25)
,`fca_leader` varchar(65)
,`fca_leader_phone` varchar(12)
,`status` varchar(12)
);
-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gen_code` varchar(1) NOT NULL,
  `gen_desc` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gen_code` (`gen_code`,`gen_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gen_code`, `gen_desc`) VALUES
(2, 'F', 'Female'),
(1, 'M', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fca_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `fca_id`, `group_name`, `enterprise_id`) VALUES
(1, 33, 'Teyei-Mot', 2),
(2, 33, 'Seleh Loh', 2),
(3, 33, 'Sangal Ntyang', 3),
(4, 33, 'Simi-Mot', 5),
(5, 33, 'Renuyel', 5),
(6, 33, 'Wunato', 3),
(7, 33, 'Sangal Chik', 3),
(8, 2, 'Vei-Rat', 8),
(9, 2, 'Mafeng', 3),
(10, 2, 'Yeipyeng', 2),
(11, 2, 'Nerat Dagwi', 3),
(12, 2, 'Jok MCS', 2),
(13, 2, 'Seleh Women', 2),
(14, 2, 'Diweng', 2),
(15, 2, 'Ajam', 7),
(16, 3, 'Godiya Famers', 8),
(17, 3, 'Kauna Farmers', 2),
(18, 3, 'United Farmers', 2),
(19, 3, 'Asak Kuru Ashigagai', 2),
(20, 3, 'Hyelsinta', 4),
(21, 3, 'Jesus Wives', 10),
(22, 3, 'Akpasu', 7),
(23, 3, 'Ikpul', 2),
(24, 34, 'Saje Farmers', 1),
(25, 34, 'Favoured Group', 2),
(26, 34, 'Blessed Farmers', 10),
(27, 34, 'Current Farmers', 2),
(28, 34, 'Tom-Tom', 7),
(29, 34, 'Tumu Farmers', 9),
(30, 34, 'Able Farmers', 1),
(31, 5, 'Angware Marketers MCS', 1),
(32, 5, 'Angware Traders', 1),
(33, 5, 'Gurraghiwi MCS', 2),
(34, 5, 'Akanang MCS', 6),
(35, 5, 'Peculiar Progressive Group', 4),
(36, 5, 'Angware Youth', 4),
(37, 5, 'Fadan Dabo Women', 9),
(38, 5, 'Kuksas MCS', 7),
(39, 6, 'Kukyem Adakunom', 2),
(40, 6, 'Ikeng Itek', 2),
(41, 6, 'Laminga Apex', 1),
(42, 6, 'Kuyik', 4),
(43, 6, 'Anan', 4),
(44, 6, 'Kutek Ajufuda', 10),
(45, 6, 'Kushim Adakunom', 8),
(46, 7, 'Courage Poultry MCS', 4),
(47, 7, 'Faithful Poultry ', 4),
(48, 7, 'Gosea MCS', 4),
(49, 7, 'Faith Piggery MCS', 5),
(50, 7, 'Shallom MCS', 6),
(51, 7, 'Smile Poultry Farmers', 4),
(52, 7, 'Zealous Group MCS', 10),
(53, 8, 'Wunato Besa MCS', 2),
(54, 8, 'Besa Hindsigat MCS', 2),
(55, 8, 'Nerat Dagwi', 2),
(56, 8, 'Sago Women MCS', 3),
(57, 8, 'Gasi haye Bwei Women', 7),
(58, 8, 'Zemsuk Farmers MCS', 8),
(59, 8, 'Haske Group', 5),
(60, 8, 'Weng Farmers', 5),
(61, 9, 'Food Processing MCS', 5),
(62, 9, 'Fonio MCS', 6),
(63, 9, 'Glorious Group', 4),
(64, 9, 'Haske Ventures', 5),
(65, 9, 'Mayiyom', 6),
(66, 9, 'Rightway MCS', 4),
(67, 9, 'Virtous Sisters', 8),
(68, 9, 'Victory Ventures', 4),
(69, 9, 'Victory Women', 5),
(70, 10, 'Mushishak Farming MCS', 2),
(71, 10, 'Be Mar Maize Farmers', 2),
(72, 10, 'Bimorit Poultry Farmers MCS', 4),
(73, 10, 'Nenwarang Poultry Farmers MCS', 4),
(74, 10, 'Wokrit Sheep Rearing Farmers MCS', 6),
(75, 10, 'Chormanbi Goat MCS', 6),
(76, 10, 'Nenkangmun Maize Processing Group', 10),
(77, 11, 'Chorbe Maize Farmers MCS', 2),
(78, 11, 'Dungrit Piggery MCS', 5),
(79, 11, 'Kagar Maize MCS', 10),
(80, 11, 'Kuwang Maize MCS', 2),
(81, 11, 'Margak Maize MCS', 10),
(82, 11, 'Munchichor Piggery MCS', 5),
(83, 11, 'Rotmar Youth MCS', 7),
(84, 12, 'Ndur Nbin Farmers', 2),
(85, 12, 'Ndur Iyem Kang Farmers', 4),
(86, 12, 'Ikam Nbin', 6),
(87, 12, 'Nachang Young Farmers', 4),
(88, 12, 'Ntimzing Chang Farmers', 5),
(89, 12, 'Timbyen Women', 5),
(90, 12, 'Nbin Iram Farmers', 2),
(91, 13, 'MBAN TIMZING FARMERS ASSO. ', 2),
(92, 13, 'NYER IKAM NBIN MAIZE PROCESSING FARMERS', 2),
(93, 13, 'NYER MAIZE FARMERS', 2),
(94, 13, 'ZAMKO 1 MAIZE PROCESSING GROUP OF FARMERS ', 10),
(95, 13, 'ZAMKO 2 MAIZE PROCESSING GROUP OF  FARMERS', 10),
(96, 13, 'ZAMKO 1 RICE PROCESSING GROUP OF FARMERS', 9),
(97, 13, 'ZAMKO 2 RICE PROCESSING GROUP OF FARMERS', 9),
(98, 13, 'ZAMKO 3 YOUNG GROUP OF FARMERS', 7),
(99, 14, 'CHINGOK FARMERS', 3),
(100, 14, 'DUWAR FARMERS', 3),
(101, 14, 'SAI FARMERS', 3),
(102, 14, 'DASOKOT FAEMERS', 2),
(103, 14, 'NANYAM FARMERS', 2),
(104, 14, 'FUNTINGS FARMERS', 7),
(105, 14, 'TANG TOMATOES PROCESSING', 8),
(106, 15, 'SER FARMERS', 2),
(107, 15, 'FAKKOS FARMERS', 2),
(108, 15, 'MANWO FARMERS', 2),
(109, 15, 'MABANG FARMERS', 3),
(110, 15, 'WUMAT FARMERS', 3),
(111, 15, 'YAPOK FARMERS', 3),
(112, 15, 'SHALLOM YOUTHS', 7),
(113, 16, 'All Season Farmers Mcs', 7),
(114, 16, 'Baure Multipurpose Co.', 2),
(115, 16, 'Kanyashimbn MCS', 6),
(116, 16, 'Layum farmers Asso.', 1),
(117, 16, 'Masses Chamber', 2),
(118, 16, 'Suan Young Famers', 2),
(119, 16, 'Sudik Farmers Mul. co', 6),
(120, 16, 'Ungwan Mission ', 1),
(121, 16, 'Yipmong Multi. Co.', 6),
(122, 17, 'Manzir', 2),
(123, 17, 'Assurance', 2),
(124, 17, 'Kauna ', 5),
(125, 17, 'Ringpyal', 1),
(126, 17, 'United Farmers', 1),
(127, 17, 'Peace Farmers', 7),
(128, 17, 'Grassroot Farmers', 7),
(129, 17, 'Unity Farmers', 2),
(130, 17, 'Success Farmers', 1),
(131, 18, 'Dangnan', 5),
(132, 18, 'Fwangret', 3),
(133, 18, 'Nankyer', 2),
(134, 18, 'Tongshan', 7),
(135, 18, 'Poret', 2),
(136, 18, 'Waldi potato farmers ', 3),
(137, 18, 'Walkinaan', 3),
(138, 18, 'Walshak', 4),
(139, 19, 'Bammun', 4),
(140, 19, 'Daspan', 2),
(141, 19, 'Kyenpia', 3),
(142, 19, 'Marret', 7),
(143, 19, 'Panshak', 2),
(144, 19, 'Tongryiang', 3),
(145, 19, 'Yanan', 8),
(146, 22, 'Belongdeyie', 1),
(147, 22, 'Deltihim', 1),
(148, 22, 'DHILSARSHAK', 7),
(149, 22, 'MARSHANG', 1),
(150, 22, 'NAANAWUMAH', 1),
(151, 22, 'RANBAAMMUN', 1),
(152, 22, 'ROMMARGY', 1),
(153, 23, 'Association Of Tomato', 8),
(154, 23, 'Chorbe Piggery Mcs', 5),
(155, 23, 'Fadama Tomatoes Mcs', 8),
(156, 23, 'Kangrot Farmers Mcs', 6),
(157, 23, 'Mulengchor Mcs', 2),
(158, 23, 'Muyesarshak Mcs', 10),
(159, 23, 'Morshang', 2),
(160, 23, 'Ninchor Mega Farmers ', 4),
(161, 28, 'Hoomsuk Farmers Assoc.', 1),
(162, 28, 'Zemsem Farmers Assoc.', 1),
(163, 28, 'Telsuk Farmers Assoc.', 1),
(164, 28, 'Young Farmers Assoc', 1),
(165, 28, 'Hoomsuk 2 Farmers Assoc.', 1),
(166, 28, 'Telkek Farmers & Multi P Ass', 2),
(167, 28, 'Kwalna', 9),
(168, 28, 'Progressive Farmers Assoc.', 8),
(169, 28, 'Henzem Farmers Assoc.', 7),
(170, 29, 'Labis Farmers Ass.', 1),
(171, 29, 'Nantuam Farm. Ass.', 1),
(172, 29, 'Ndayak Farm. Ass.', 1),
(173, 29, 'Poeteng 1 Farm. Ass', 1),
(174, 29, 'Century Farmers Assoc.', 2),
(175, 29, 'Poeteng 2 Farmers Assoc', 9),
(176, 29, 'Piggery Farmers Assoc.', 5),
(177, 20, 'Buut- Tah Farmers', 5),
(178, 20, 'Dhi-Youm', 4),
(179, 20, 'Nokmi', 4),
(180, 20, 'Noknan Farmers', 6),
(181, 20, 'Timman Farmers', 2),
(182, 20, 'Yarongmah Farmers', 7),
(183, 20, 'Youmkham Farmers', 1),
(184, 21, 'KANGKA', 4),
(185, 21, 'MAISHANG', 1),
(186, 21, 'NOKNAI MCS', 2),
(187, 21, 'PIABEER  FSC', 2),
(188, 21, 'SHAIKANG MCS', 1),
(189, 21, 'SHAISUK MCS', 4),
(190, 21, 'WIDOWS', 5),
(191, 24, 'JAGATNOEG', 9),
(192, 24, 'KANKA', 1),
(193, 24, 'KWANOEG', 1),
(194, 24, 'MOEYASUN', 2),
(195, 24, 'MERNYANG', 5),
(196, 24, 'PANSHAK', 2),
(197, 24, 'PEDOND', 2),
(198, 25, 'ALHERI', 4),
(199, 25, 'AMINCHI', 6),
(200, 25, 'BAMSHAK', 9),
(201, 25, 'CARING SISTERS', 4),
(202, 25, 'KOZAM YOUTH', 9),
(203, 25, 'YAKSUN', 5),
(204, 25, 'ZEMGURUM', 7),
(205, 26, 'Ahomkwakwi MCS', 2),
(206, 26, 'Dadi Useni Wuriya', 7),
(207, 26, 'DamyukTse MCS', 1),
(208, 26, 'Tse-Brice Farmers Ass', 1),
(209, 26, 'DAMYUK MCS', 5),
(210, 26, 'King ', 4),
(211, 26, '    SEM MCS', 4),
(212, 27, 'Alheri MCS Lon -Pass', 2),
(213, 27, 'Chanye MCS Kwallak', 3),
(214, 27, 'Gaweng Farmers Association  Dabwam', 3),
(215, 27, 'Mafeng Physically Challenge- Kwallak', 8),
(216, 27, 'RITO MCS JI- Riyom', 3),
(217, 27, 'TEYEI  MCS HWOL', 4),
(218, 27, 'WUNATO MCS Byei', 1),
(219, 27, 'Nerat MCS  Kum', 1),
(220, 30, 'Amana Group', 9),
(221, 30, 'Aminchi group', 6),
(222, 30, 'Alheri Farmers', 2),
(223, 30, 'Kaura Farmers ', 2),
(224, 30, 'Unity Farmers', 1),
(225, 30, 'Rabo Farmers ', 1),
(226, 30, 'Youth Farmers', 1),
(227, 32, 'Inan  Yiva Farmers', 1),
(228, 32, 'Gaskiya Farmers', 2),
(229, 32, 'Gampyal group', 1),
(230, 32, 'Nga-Npyal', 2),
(231, 32, 'Njulyi Farmers', 10),
(232, 32, 'Telzong', 8),
(233, 32, 'Nmen- Izir', 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `groups_view`
--
CREATE TABLE IF NOT EXISTS `groups_view` (
`id` int(11)
,`group_name` varchar(100)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`fca_id` int(11)
,`fca_name` varchar(65)
,`lga_id` int(11)
,`lga_name` varchar(25)
,`dli_code` varchar(7)
,`dli_name` varchar(65)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `group_assets_progress_report`
--
CREATE TABLE IF NOT EXISTS `group_assets_progress_report` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`qty_per_bf` int(11)
,`unit` varchar(10)
,`no_of_bfs` bigint(21)
,`no_of_groups` bigint(17)
,`qty_aprvd` bigint(17)
,`qty_dstr` decimal(32,0)
,`attrition` decimal(16,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `group_enterprise_summary`
--
CREATE TABLE IF NOT EXISTS `group_enterprise_summary` (
`id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`dli_code` varchar(7)
,`dli_name` varchar(65)
,`no_of_groups` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `individual_assets_progress_report`
--
CREATE TABLE IF NOT EXISTS `individual_assets_progress_report` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`qty_per_bf` int(11)
,`unit` varchar(10)
,`no_of_bfs` bigint(21)
,`qty_aprvd` bigint(31)
,`qty_dstr` decimal(32,0)
,`attrition` decimal(33,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_desc` varchar(45) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `unit_cost` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_desc`, `unit`, `unit_cost`) VALUES
(1, 'Potato Seed', 'kg', 250.00),
(2, 'Pre-Emergence Herbicide', 'Ltr', 2600.00),
(3, 'Post-Emergence Herbicide', 'Ltr', 3000.00),
(4, 'Insecticide', 'Ltr', 2400.00),
(5, 'Fungicide', 'g', 10.00),
(6, 'Fertilizer (NPK)', 'kg', 14000.00),
(7, 'Rice Seed', 'kg', 600.00),
(9, 'Maize Seed', 'kg', 500.00),
(10, 'Day-Old-Chick (DOC)', 'No', 600.00),
(11, 'Starter Feed', 'kg', 8000.00),
(12, 'Finisher Feed', 'kg', 8000.00),
(13, 'Poultry Medication', 'LS', 6500.00),
(18, 'Motorized Sprayer', 'No', 180000.00),
(19, 'Maize Planter', 'No', 75000.00),
(20, 'Rice Processing Machine', 'No', 600000.00),
(21, 'Tomato Processing Machine', 'No', 170000.00),
(22, 'Maize Processing Machine', 'No', 400000.00),
(23, 'Small Ruminant (Sheep & Goat)', 'No', 17000.00),
(24, 'Piglets', 'No', 48000.00),
(25, 'PPE', 'No', 0.00),
(26, 'Capacity Building', 'No', 0.00),
(27, 'Advisory Services', 'No', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `item_distribution`
--

CREATE TABLE IF NOT EXISTS `item_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `username` varchar(65) NOT NULL,
  `verified_by` varchar(65) NOT NULL,
  `verified_date` date NOT NULL,
  `sp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `item_distribution`
--

INSERT INTO `item_distribution` (`id`, `group_id`, `item_id`, `quantity`, `date`, `username`, `verified_by`, `verified_date`, `sp_id`) VALUES
(1, 113, 18, 2, '2022-07-10', 'huldas', '', '0000-00-00', 7),
(2, 113, 19, 1, '2022-07-10', 'huldas', '', '0000-00-00', 7),
(3, 114, 9, 120, '2022-07-10', 'huldas', '', '0000-00-00', 11),
(4, 114, 6, 3, '2022-07-10', 'huldas', '', '0000-00-00', 4),
(5, 115, 23, 45, '2022-07-11', 'huldas', '', '0000-00-00', 1),
(6, 116, 7, 120, '2022-07-11', 'huldas', '', '0000-00-00', 1),
(7, 116, 2, 20, '2022-07-12', 'huldas', '', '0000-00-00', 11),
(8, 116, 6, 1500, '2022-07-11', 'huldas', '', '0000-00-00', 3),
(9, 117, 9, 120, '2022-07-11', 'huldas', '', '0000-00-00', 13),
(10, 117, 6, 150, '2022-07-11', 'huldas', '', '0000-00-00', 12),
(11, 117, 2, 20, '2022-07-11', 'huldas', '', '0000-00-00', 3),
(12, 117, 4, 40, '2022-07-11', 'huldas', '', '0000-00-00', 3),
(13, 118, 9, 120, '2022-07-11', 'huldas', '', '0000-00-00', 1),
(14, 118, 2, 20, '2022-07-11', 'huldas', '', '0000-00-00', 3),
(15, 118, 4, 40, '2022-07-11', 'huldas', '', '0000-00-00', 3),
(16, 118, 6, 1500, '2022-07-11', 'huldas', '', '0000-00-00', 1),
(17, 1, 9, 120, '2022-07-18', 'bladi', '', '0000-00-00', 3),
(18, 1, 6, 1500, '2022-07-18', 'bladi', '', '0000-00-00', 1),
(19, 1, 2, 20, '2022-07-18', 'bladi', '', '0000-00-00', 4),
(20, 2, 9, 120, '2022-07-18', 'bladi', '', '0000-00-00', 3),
(21, 2, 6, 1500, '2022-07-18', 'bladi', '', '0000-00-00', 1),
(22, 2, 2, 20, '2022-07-18', 'bladi', '', '0000-00-00', 1),
(23, 73, 10, 50, '2022-07-26', 'ysokche', '', '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `item_distribution_view`
--
CREATE TABLE IF NOT EXISTS `item_distribution_view` (
`id` int(11)
,`group_id` int(11)
,`group_name` varchar(100)
,`item_id` int(11)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`dli_id` int(11)
,`dli_name` varchar(65)
,`fca_id` int(11)
,`fca_name` varchar(65)
,`lga_id` int(11)
,`lga_name` varchar(25)
,`username` varchar(65)
,`full_name` varchar(65)
,`lga_of_user` varchar(35)
,`date` date
,`verified_by` varchar(65)
,`verified_date` date
);
-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE IF NOT EXISTS `lga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lga_name` varchar(25) NOT NULL,
  `lga_code` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lga_name` (`lga_name`,`lga_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `lga`
--

INSERT INTO `lga` (`id`, `lga_name`, `lga_code`) VALUES
(1, 'Barkin Ladi', 'BLD'),
(2, 'Bassa', 'BSA'),
(3, 'Bokkos', 'BKK'),
(4, 'Jos East', 'JJE'),
(5, 'Jos North', 'JJN'),
(6, 'Jos South', 'JJS'),
(7, 'Kanam', 'DNG'),
(8, 'Kanke', 'KWK'),
(9, 'Langtang North', 'LGT'),
(10, 'Langtang South', 'MBD'),
(11, 'Mangu', 'MGU'),
(12, 'Mikang', 'MKG'),
(13, 'Pankshin', 'PKN'),
(14, 'Quaan Pan', 'QPN'),
(15, 'Riyom', 'RYM'),
(16, 'Shendam', 'SHD'),
(17, 'Wase', 'WAS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lgawise_groupasset_progress_report`
--
CREATE TABLE IF NOT EXISTS `lgawise_groupasset_progress_report` (
`lga_id` int(11)
,`lga_name` varchar(25)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` decimal(16,0)
,`qty_procured` decimal(32,0)
,`attrition` decimal(33,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lgawise_individualasset_progress_report`
--
CREATE TABLE IF NOT EXISTS `lgawise_individualasset_progress_report` (
`lga_id` int(11)
,`lga_name` varchar(25)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` bigint(31)
,`qty_procured` decimal(32,0)
,`attrition` decimal(33,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lgawise_inputs_progress_report`
--
CREATE TABLE IF NOT EXISTS `lgawise_inputs_progress_report` (
`lga_id` int(11)
,`lga_name` varchar(25)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` bigint(31)
,`qty_procured` decimal(32,0)
,`attrition` decimal(33,0)
,`percentage` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_enterprise_item_summary`
--
CREATE TABLE IF NOT EXISTS `lga_enterprise_item_summary` (
`lga_name` varchar(25)
,`lga_id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` bigint(31)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_enterprise_item_supply`
--
CREATE TABLE IF NOT EXISTS `lga_enterprise_item_supply` (
`lga_name` varchar(25)
,`enterprise_desc` varchar(120)
,`item_desc` varchar(45)
,`qty_distributed` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_enterprise_summary`
--
CREATE TABLE IF NOT EXISTS `lga_enterprise_summary` (
`lga_name` varchar(25)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_group_asset_summary`
--
CREATE TABLE IF NOT EXISTS `lga_group_asset_summary` (
`lga_name` varchar(25)
,`lga_id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` decimal(16,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_individual_asset_summary`
--
CREATE TABLE IF NOT EXISTS `lga_individual_asset_summary` (
`lga_name` varchar(25)
,`lga_id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` bigint(31)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lga_inputs_item_summary`
--
CREATE TABLE IF NOT EXISTS `lga_inputs_item_summary` (
`lga_name` varchar(25)
,`lga_id` int(11)
,`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`beneficiaries` bigint(21)
,`item_desc` varchar(45)
,`quantity` int(11)
,`unit` varchar(10)
,`qty_approved` bigint(31)
);
-- --------------------------------------------------------

--
-- Table structure for table `means_of_id`
--

CREATE TABLE IF NOT EXISTS `means_of_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moi_desc` varchar(45) NOT NULL,
  `moi_code` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `moi_desc` (`moi_desc`,`moi_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `means_of_id`
--

INSERT INTO `means_of_id` (`id`, `moi_desc`, `moi_code`) VALUES
(3, 'Driver''s License ', 'DLN'),
(4, 'International Passport', 'IPN'),
(1, 'National Identity Number', 'NIN'),
(5, 'Others', 'OTH'),
(2, 'Voter''s Card', 'VIN');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE IF NOT EXISTS `service_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `item_id` int(11) NOT NULL,
  `supplier_status` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `supplier_name`, `email`, `phone`, `item_id`, `supplier_status`) VALUES
(1, 'Fertileok Agro Ventures', 'me@you.com', '01', 25, 'active'),
(3, 'Pandash ', 'me@you1.com', '01', 23, 'active'),
(4, 'Jabit-Nen Concept Enterpises', 'me@you2.com', '01', 24, 'active'),
(5, 'Abdallah Veternary Consultancy Ltd.', 'me@you3.com', '01', 23, 'active'),
(6, 'Raurhod', 'me@you5.com', '01', 1, 'active'),
(7, 'Wayep Family Business Enterprises', 'me@you6.com', '01', 10, 'active'),
(8, 'IBN-ANN Ventures', 'me@you7.com', '01', 6, 'active'),
(9, 'Shetong N&I Enterprise', 'me@you8.com', '01', 6, 'active'),
(10, 'Multiabdo Enterprises', 'me@you9.com', '01', 2, 'active'),
(11, 'Lachang Faden Kemven', 'me@you10.com', '01', 26, 'active'),
(12, 'Romarey Ventures Nigeria Limited', 'me@you11.com', '01', 9, 'active'),
(13, 'Rim Nigeria Enterprises', 'me@you12.com', '01', 10, 'active'),
(14, 'Janny Penny Nigeria Enterprises', 'me@you13.com', '01', 19, 'active'),
(15, 'ABOAS Integrated Enterprises', 'me@you14.com', '01', 20, 'active'),
(16, 'Viewforesight Ventures', 'me@you15.com', '01', 18, 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `service_provider_view`
--
CREATE TABLE IF NOT EXISTS `service_provider_view` (
`id` int(11)
,`supplier_name` varchar(65)
,`email` varchar(65)
,`phone` varchar(12)
,`item_id` int(11)
,`supplier_status` varchar(9)
,`item_desc` varchar(45)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `supply_enterprise_item_summary`
--
CREATE TABLE IF NOT EXISTS `supply_enterprise_item_summary` (
`enterprise_id` int(11)
,`enterprise_desc` varchar(120)
,`item_id` int(11)
,`item_desc` varchar(45)
,`qty_dstr` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `support_service`
--

CREATE TABLE IF NOT EXISTS `support_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_desc` varchar(100) NOT NULL,
  `service_charge` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_desc` (`service_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `support_service`
--

INSERT INTO `support_service` (`id`, `service_desc`, `service_charge`) VALUES
(1, 'Extension Services', 2000),
(2, 'Capacity Building', 5000),
(3, 'Personal Protective Equipment (PPE)', 8000);

-- --------------------------------------------------------

--
-- Structure for view `agric_inputs_progress_report`
--
DROP TABLE IF EXISTS `agric_inputs_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `agric_inputs_progress_report` AS select `beis`.`enterprise_id` AS `enterprise_id`,`beis`.`enterprise_desc` AS `enterprise_desc`,`beis`.`item_id` AS `item_id`,`beis`.`item_desc` AS `item_desc`,`beis`.`quantity` AS `qty_per_bf`,`beis`.`unit` AS `unit`,`beis`.`number` AS `no_of_bfs`,`beis`.`qty_aprvd` AS `qty_aprvd`,`seis`.`qty_dstr` AS `qty_dstr`,(`beis`.`qty_aprvd` - `seis`.`qty_dstr`) AS `attrition`,ceiling(((`seis`.`qty_dstr` / `beis`.`qty_aprvd`) * 100)) AS `percentage` from (`beneficiary_enterprise_item_summary` `beis` join `supply_enterprise_item_summary` `seis` on(((`beis`.`enterprise_id` = `seis`.`enterprise_id`) and (`beis`.`item_id` = `seis`.`item_id`)))) where (`beis`.`enterprise_id` in (1,2,3,4)) group by `beis`.`enterprise_id`,`beis`.`item_id`;

-- --------------------------------------------------------

--
-- Structure for view `approved_group_assets_summary`
--
DROP TABLE IF EXISTS `approved_group_assets_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `approved_group_assets_summary` AS select `bes`.`dli_id` AS `dli_id`,`bes`.`dli_code` AS `dli_code`,`bes`.`enterprise_id` AS `enterprise_id`,`bes`.`enterprise_desc` AS `enterprise_desc`,`ecs`.`item_id` AS `item_id`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `qty_per_bf`,`ecs`.`unit` AS `unit`,`bes`.`number` AS `no_of_bfs`,ceiling((`bes`.`number` / 10)) AS `no_of_groups`,ceiling((`ecs`.`quantity` * (`bes`.`number` / 10))) AS `qty_aprvd` from (`beneficiary_enterprise_summary` `bes` left join `enterprise_checklist_summary` `ecs` on((`bes`.`enterprise_id` = `ecs`.`enterprise_id`))) where (`bes`.`enterprise_id` in (7,8,9,10));

-- --------------------------------------------------------

--
-- Structure for view `beneficiary_enterprise_item_summary`
--
DROP TABLE IF EXISTS `beneficiary_enterprise_item_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `beneficiary_enterprise_item_summary` AS select `bes`.`dli_id` AS `dli_id`,`bes`.`dli_code` AS `dli_code`,`bes`.`enterprise_id` AS `enterprise_id`,`bes`.`enterprise_desc` AS `enterprise_desc`,`ecs`.`item_id` AS `item_id`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `quantity`,`ecs`.`unit` AS `unit`,`bes`.`number` AS `number`,(`ecs`.`quantity` * `bes`.`number`) AS `qty_aprvd` from (`beneficiary_enterprise_summary` `bes` left join `enterprise_checklist_summary` `ecs` on((`bes`.`enterprise_id` = `ecs`.`enterprise_id`)));

-- --------------------------------------------------------

--
-- Structure for view `beneficiary_enterprise_summary`
--
DROP TABLE IF EXISTS `beneficiary_enterprise_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `beneficiary_enterprise_summary` AS select `beneficiary_view`.`dli_id` AS `dli_id`,`beneficiary_view`.`dli_code` AS `dli_code`,`beneficiary_view`.`enterprise_id` AS `enterprise_id`,`beneficiary_view`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `number` from `beneficiary_view` group by `beneficiary_view`.`enterprise_id`;

-- --------------------------------------------------------

--
-- Structure for view `beneficiary_item_summary`
--
DROP TABLE IF EXISTS `beneficiary_item_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `beneficiary_item_summary` AS select `beis`.`item_id` AS `item_id`,`beis`.`item_desc` AS `item_desc`,sum(`beis`.`quantity`) AS `quantity`,sum(`beis`.`number`) AS `no_of_bfs`,sum(`beis`.`qty_aprvd`) AS `qty_aprvd` from `beneficiary_enterprise_item_summary` `beis` group by `beis`.`item_id`;

-- --------------------------------------------------------

--
-- Structure for view `beneficiary_lga_enterprise_summary`
--
DROP TABLE IF EXISTS `beneficiary_lga_enterprise_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `beneficiary_lga_enterprise_summary` AS select `beneficiary_view`.`lga_name` AS `lga_name`,`beneficiary_view`.`enterprise_id` AS `enterprise_id`,`beneficiary_view`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `number` from `beneficiary_view` group by `beneficiary_view`.`lga_id`,`beneficiary_view`.`enterprise_id`;

-- --------------------------------------------------------

--
-- Structure for view `beneficiary_view`
--
DROP TABLE IF EXISTS `beneficiary_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `beneficiary_view` AS select `beneficiary`.`id` AS `id`,`beneficiary`.`beneficiary_name` AS `beneficiary_name`,`beneficiary`.`moi_id` AS `moi_id`,`means_of_id`.`moi_desc` AS `moi_desc`,`beneficiary`.`id_no` AS `id_no`,`beneficiary`.`age` AS `age`,`beneficiary`.`gender` AS `gender`,`beneficiary`.`vul_status` AS `vul_status`,`beneficiary`.`phone` AS `phone`,`beneficiary`.`contact_address` AS `contact_address`,`beneficiary`.`farm_location` AS `farm_location`,`beneficiary`.`longitude` AS `longitude`,`beneficiary`.`latitude` AS `latitude`,`beneficiary`.`group_id` AS `group_id`,`groups`.`group_name` AS `group_name`,`groups`.`enterprise_id` AS `enterprise_id`,`enterprise`.`enterprise_desc` AS `enterprise_desc`,`groups`.`fca_id` AS `fca_id`,`fca`.`fca_name` AS `fca_name`,`fca`.`lga_id` AS `lga_id`,`lga`.`lga_name` AS `lga_name`,`enterprise`.`dli_id` AS `dli_id`,`dli`.`dli_code` AS `dli_code`,`dli`.`dli_name` AS `dli_name` from ((((((`beneficiary` left join `groups` on((`beneficiary`.`group_id` = `groups`.`id`))) left join `enterprise` on((`groups`.`enterprise_id` = `enterprise`.`id`))) left join `dli` on((`enterprise`.`dli_id` = `dli`.`id`))) left join `fca` on((`groups`.`fca_id` = `fca`.`id`))) left join `lga` on((`fca`.`lga_id` = `lga`.`id`))) left join `means_of_id` on((`beneficiary`.`moi_id` = `means_of_id`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `distributed_group_assets_view`
--
DROP TABLE IF EXISTS `distributed_group_assets_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `distributed_group_assets_view` AS select `ges`.`enterprise_id` AS `enterprise_id`,`ges`.`enterprise_desc` AS `enterprise_desc`,`ges`.`no_of_groups` AS `no_of_groups`,`ecv`.`item_desc` AS `item_desc`,`ecv`.`quantity` AS `quantity`,(`ecv`.`quantity` * `ges`.`no_of_groups`) AS `qty_dist`,`ecv`.`unit` AS `unit`,`ecv`.`unit_cost` AS `unit_cost`,`ecv`.`total_cost` AS `total_cost`,(`ges`.`no_of_groups` * `ecv`.`total_cost`) AS `cost_of_qty_dist` from (`group_enterprise_summary` `ges` left join `enterprise_checklist_view` `ecv` on((`ges`.`enterprise_id` = `ecv`.`enterprise_id`))) where (`ges`.`enterprise_id` in (7,8,9,10));

-- --------------------------------------------------------

--
-- Structure for view `distributed_individual_assets_view`
--
DROP TABLE IF EXISTS `distributed_individual_assets_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `distributed_individual_assets_view` AS select `bes`.`enterprise_id` AS `enterprise_id`,`bes`.`enterprise_desc` AS `enterprise_desc`,`bes`.`number` AS `no_of_ben`,`ecv`.`item_desc` AS `item_desc`,`ecv`.`quantity` AS `quantity`,(`ecv`.`quantity` * `bes`.`number`) AS `qty_dist`,`ecv`.`unit` AS `unit`,`ecv`.`unit_cost` AS `unit_cost`,`ecv`.`total_cost` AS `total_cost`,(`bes`.`number` * `ecv`.`total_cost`) AS `cost_of_qty_dist` from (`beneficiary_enterprise_summary` `bes` left join `enterprise_checklist_view` `ecv` on((`bes`.`enterprise_id` = `ecv`.`enterprise_id`))) where (`bes`.`dli_id` = 3);

-- --------------------------------------------------------

--
-- Structure for view `distributed_inputs_view`
--
DROP TABLE IF EXISTS `distributed_inputs_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `distributed_inputs_view` AS select `bes`.`enterprise_id` AS `enterprise_id`,`bes`.`enterprise_desc` AS `enterprise_desc`,`bes`.`number` AS `no_of_ben`,`ecv`.`item_desc` AS `item_desc`,`ecv`.`quantity` AS `quantity`,(`ecv`.`quantity` * `bes`.`number`) AS `qty_dist`,`ecv`.`unit` AS `unit`,`ecv`.`unit_cost` AS `unit_cost`,`ecv`.`total_cost` AS `total_cost`,(`bes`.`number` * `ecv`.`total_cost`) AS `cost_of_qty_dist` from (`beneficiary_enterprise_summary` `bes` left join `enterprise_checklist_view` `ecv` on((`bes`.`enterprise_id` = `ecv`.`enterprise_id`))) where (`bes`.`dli_id` = 1);

-- --------------------------------------------------------

--
-- Structure for view `enterprise_checklist_summary`
--
DROP TABLE IF EXISTS `enterprise_checklist_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enterprise_checklist_summary` AS select `ec`.`id` AS `id`,`ec`.`item_id` AS `item_id`,`item`.`item_desc` AS `item_desc`,`ec`.`quantity` AS `quantity`,`item`.`unit` AS `unit`,`ec`.`enterprise_id` AS `enterprise_id`,`enterprise`.`enterprise_desc` AS `enterprise_desc`,`enterprise`.`dli_id` AS `dli_id`,`dli`.`dli_code` AS `dli_code` from (((`enterprise_checklist` `ec` left join `item` on((`ec`.`item_id` = `item`.`id`))) left join `enterprise` on((`ec`.`enterprise_id` = `enterprise`.`id`))) left join `dli` on((`enterprise`.`dli_id` = `dli`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `enterprise_checklist_view`
--
DROP TABLE IF EXISTS `enterprise_checklist_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enterprise_checklist_view` AS select `ec`.`id` AS `id`,`ec`.`enterprise_id` AS `enterprise_id`,`en`.`enterprise_desc` AS `enterprise_desc`,`ec`.`item_id` AS `item_id`,`item`.`item_desc` AS `item_desc`,`ec`.`quantity` AS `quantity`,`item`.`unit` AS `unit`,`item`.`unit_cost` AS `unit_cost`,(`ec`.`quantity` * `item`.`unit_cost`) AS `total_cost` from ((`enterprise_checklist` `ec` join `enterprise` `en` on((`ec`.`enterprise_id` = `en`.`id`))) join `item` on((`ec`.`item_id` = `item`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `enterprise_cost`
--
DROP TABLE IF EXISTS `enterprise_cost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enterprise_cost` AS select `enterprise_checklist_view`.`enterprise_id` AS `enterprise_id`,`enterprise_checklist_view`.`enterprise_desc` AS `enterprise_desc`,sum(`enterprise_checklist_view`.`total_cost`) AS `enterprise_cost` from `enterprise_checklist_view` group by `enterprise_checklist_view`.`enterprise_id`;

-- --------------------------------------------------------

--
-- Structure for view `fca_view`
--
DROP TABLE IF EXISTS `fca_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fca_view` AS select `fca`.`id` AS `id`,`fca`.`fca_name` AS `fca_name`,`fca`.`lga_id` AS `lga_id`,`lga`.`lga_name` AS `lga_name`,`fca`.`fca_leader` AS `fca_leader`,`fca`.`fca_leader_phone` AS `fca_leader_phone`,`fca`.`status` AS `status` from (`fca` left join `lga` on((`fca`.`lga_id` = `lga`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `groups_view`
--
DROP TABLE IF EXISTS `groups_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `groups_view` AS select `groups`.`id` AS `id`,`groups`.`group_name` AS `group_name`,`groups`.`enterprise_id` AS `enterprise_id`,`enterprise`.`enterprise_desc` AS `enterprise_desc`,`groups`.`fca_id` AS `fca_id`,`fca`.`fca_name` AS `fca_name`,`fca`.`lga_id` AS `lga_id`,`lga`.`lga_name` AS `lga_name`,`dli`.`dli_code` AS `dli_code`,`dli`.`dli_name` AS `dli_name` from ((((`groups` left join `enterprise` on((`groups`.`enterprise_id` = `enterprise`.`id`))) left join `dli` on((`enterprise`.`dli_id` = `dli`.`id`))) left join `fca` on((`groups`.`fca_id` = `fca`.`id`))) left join `lga` on((`fca`.`lga_id` = `lga`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `group_assets_progress_report`
--
DROP TABLE IF EXISTS `group_assets_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `group_assets_progress_report` AS select `agas`.`enterprise_id` AS `enterprise_id`,`agas`.`enterprise_desc` AS `enterprise_desc`,`agas`.`item_id` AS `item_id`,`agas`.`item_desc` AS `item_desc`,`agas`.`qty_per_bf` AS `qty_per_bf`,`agas`.`unit` AS `unit`,`agas`.`no_of_bfs` AS `no_of_bfs`,ceiling(`agas`.`no_of_groups`) AS `no_of_groups`,ceiling(`agas`.`qty_aprvd`) AS `qty_aprvd`,`seis`.`qty_dstr` AS `qty_dstr`,ceiling((`agas`.`qty_aprvd` - `seis`.`qty_dstr`)) AS `attrition`,ceiling(((`seis`.`qty_dstr` / `agas`.`qty_aprvd`) * 100)) AS `percentage` from (`approved_group_assets_summary` `agas` left join `supply_enterprise_item_summary` `seis` on(((`agas`.`enterprise_id` = `seis`.`enterprise_id`) and (`agas`.`item_id` = `seis`.`item_id`)))) group by `agas`.`enterprise_id`,`agas`.`item_id`;

-- --------------------------------------------------------

--
-- Structure for view `group_enterprise_summary`
--
DROP TABLE IF EXISTS `group_enterprise_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `group_enterprise_summary` AS select `groups_view`.`id` AS `id`,`groups_view`.`enterprise_id` AS `enterprise_id`,`groups_view`.`enterprise_desc` AS `enterprise_desc`,`groups_view`.`dli_code` AS `dli_code`,`groups_view`.`dli_name` AS `dli_name`,count(0) AS `no_of_groups` from `groups_view` group by `groups_view`.`enterprise_id`;

-- --------------------------------------------------------

--
-- Structure for view `individual_assets_progress_report`
--
DROP TABLE IF EXISTS `individual_assets_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `individual_assets_progress_report` AS select `beis`.`enterprise_id` AS `enterprise_id`,`beis`.`enterprise_desc` AS `enterprise_desc`,`beis`.`item_id` AS `item_id`,`beis`.`item_desc` AS `item_desc`,`beis`.`quantity` AS `qty_per_bf`,`beis`.`unit` AS `unit`,`beis`.`number` AS `no_of_bfs`,`beis`.`qty_aprvd` AS `qty_aprvd`,`seis`.`qty_dstr` AS `qty_dstr`,(`beis`.`qty_aprvd` - `seis`.`qty_dstr`) AS `attrition`,ceiling(((`seis`.`qty_dstr` / `beis`.`qty_aprvd`) * 100)) AS `percentage` from (`beneficiary_enterprise_item_summary` `beis` join `supply_enterprise_item_summary` `seis` on(((`beis`.`enterprise_id` = `seis`.`enterprise_id`) and (`beis`.`item_id` = `seis`.`item_id`)))) where (`beis`.`enterprise_id` in (5,6)) group by `beis`.`enterprise_id`,`beis`.`item_id`;

-- --------------------------------------------------------

--
-- Structure for view `item_distribution_view`
--
DROP TABLE IF EXISTS `item_distribution_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `item_distribution_view` AS select `itd`.`id` AS `id`,`itd`.`group_id` AS `group_id`,`groups`.`group_name` AS `group_name`,`itd`.`item_id` AS `item_id`,`item`.`item_desc` AS `item_desc`,`itd`.`quantity` AS `quantity`,`item`.`unit` AS `unit`,`groups`.`enterprise_id` AS `enterprise_id`,`enterprise`.`enterprise_desc` AS `enterprise_desc`,`enterprise`.`dli_id` AS `dli_id`,`dli`.`dli_name` AS `dli_name`,`groups`.`fca_id` AS `fca_id`,`fca`.`fca_name` AS `fca_name`,`fca`.`lga_id` AS `lga_id`,`lga`.`lga_name` AS `lga_name`,`itd`.`username` AS `username`,`au`.`full_name` AS `full_name`,`au`.`lga` AS `lga_of_user`,`itd`.`date` AS `date`,`itd`.`verified_by` AS `verified_by`,`itd`.`verified_date` AS `verified_date` from (((((((`item_distribution` `itd` left join `groups` on((`itd`.`group_id` = `groups`.`id`))) left join `fca` on((`groups`.`fca_id` = `fca`.`id`))) left join `lga` on((`fca`.`lga_id` = `lga`.`id`))) left join `enterprise` on((`groups`.`enterprise_id` = `enterprise`.`id`))) left join `dli` on((`enterprise`.`dli_id` = `dli`.`id`))) left join `item` on((`itd`.`item_id` = `item`.`id`))) left join `application_user` `au` on((`itd`.`username` = `au`.`username`)));

-- --------------------------------------------------------

--
-- Structure for view `lgawise_groupasset_progress_report`
--
DROP TABLE IF EXISTS `lgawise_groupasset_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lgawise_groupasset_progress_report` AS select `liis`.`lga_id` AS `lga_id`,`liis`.`lga_name` AS `lga_name`,`liis`.`enterprise_id` AS `enterprise_id`,`liis`.`enterprise_desc` AS `enterprise_desc`,`liis`.`beneficiaries` AS `beneficiaries`,`liis`.`item_desc` AS `item_desc`,`liis`.`quantity` AS `quantity`,`liis`.`unit` AS `unit`,`liis`.`qty_approved` AS `qty_approved`,ifnull(`leis`.`qty_distributed`,0) AS `qty_procured`,(`liis`.`qty_approved` - ifnull(`leis`.`qty_distributed`,0)) AS `attrition`,ceiling(((ifnull(`leis`.`qty_distributed`,0) / `liis`.`qty_approved`) * 100)) AS `percentage` from (`lga_group_asset_summary` `liis` left join `lga_enterprise_item_supply` `leis` on(((`liis`.`lga_name` = `leis`.`lga_name`) and (`liis`.`enterprise_desc` = `leis`.`enterprise_desc`) and (`liis`.`item_desc` = `leis`.`item_desc`))));

-- --------------------------------------------------------

--
-- Structure for view `lgawise_individualasset_progress_report`
--
DROP TABLE IF EXISTS `lgawise_individualasset_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lgawise_individualasset_progress_report` AS select `liis`.`lga_id` AS `lga_id`,`liis`.`lga_name` AS `lga_name`,`liis`.`enterprise_id` AS `enterprise_id`,`liis`.`enterprise_desc` AS `enterprise_desc`,`liis`.`beneficiaries` AS `beneficiaries`,`liis`.`item_desc` AS `item_desc`,`liis`.`quantity` AS `quantity`,`liis`.`unit` AS `unit`,`liis`.`qty_approved` AS `qty_approved`,ifnull(`leis`.`qty_distributed`,0) AS `qty_procured`,(`liis`.`qty_approved` - ifnull(`leis`.`qty_distributed`,0)) AS `attrition`,ceiling(((ifnull(`leis`.`qty_distributed`,0) / `liis`.`qty_approved`) * 100)) AS `percentage` from (`lga_individual_asset_summary` `liis` left join `lga_enterprise_item_supply` `leis` on(((`liis`.`lga_name` = `leis`.`lga_name`) and (`liis`.`enterprise_desc` = `leis`.`enterprise_desc`) and (`liis`.`item_desc` = `leis`.`item_desc`))));

-- --------------------------------------------------------

--
-- Structure for view `lgawise_inputs_progress_report`
--
DROP TABLE IF EXISTS `lgawise_inputs_progress_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lgawise_inputs_progress_report` AS select `liis`.`lga_id` AS `lga_id`,`liis`.`lga_name` AS `lga_name`,`liis`.`enterprise_id` AS `enterprise_id`,`liis`.`enterprise_desc` AS `enterprise_desc`,`liis`.`beneficiaries` AS `beneficiaries`,`liis`.`item_desc` AS `item_desc`,`liis`.`quantity` AS `quantity`,`liis`.`unit` AS `unit`,`liis`.`qty_approved` AS `qty_approved`,ifnull(`leis`.`qty_distributed`,0) AS `qty_procured`,(`liis`.`qty_approved` - ifnull(`leis`.`qty_distributed`,0)) AS `attrition`,ceiling(((ifnull(`leis`.`qty_distributed`,0) / `liis`.`qty_approved`) * 100)) AS `percentage` from (`lga_inputs_item_summary` `liis` left join `lga_enterprise_item_supply` `leis` on(((`liis`.`lga_name` = `leis`.`lga_name`) and (`liis`.`enterprise_desc` = `leis`.`enterprise_desc`) and (`liis`.`item_desc` = `leis`.`item_desc`))));

-- --------------------------------------------------------

--
-- Structure for view `lga_enterprise_item_summary`
--
DROP TABLE IF EXISTS `lga_enterprise_item_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_enterprise_item_summary` AS select `bv`.`lga_name` AS `lga_name`,`bv`.`lga_id` AS `lga_id`,`bv`.`enterprise_id` AS `enterprise_id`,`bv`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `beneficiaries`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `quantity`,`ecs`.`unit` AS `unit`,(count(0) * `ecs`.`quantity`) AS `qty_approved` from (`beneficiary_view` `bv` join `enterprise_checklist_summary` `ecs` on((`bv`.`enterprise_id` = `ecs`.`enterprise_id`))) group by `bv`.`lga_id`,`bv`.`enterprise_id`,`ecs`.`item_desc`;

-- --------------------------------------------------------

--
-- Structure for view `lga_enterprise_item_supply`
--
DROP TABLE IF EXISTS `lga_enterprise_item_supply`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_enterprise_item_supply` AS select `idv`.`lga_name` AS `lga_name`,`idv`.`enterprise_desc` AS `enterprise_desc`,`idv`.`item_desc` AS `item_desc`,sum(`idv`.`quantity`) AS `qty_distributed` from `item_distribution_view` `idv` group by `idv`.`lga_id`,`idv`.`enterprise_id`,`idv`.`item_id`;

-- --------------------------------------------------------

--
-- Structure for view `lga_enterprise_summary`
--
DROP TABLE IF EXISTS `lga_enterprise_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_enterprise_summary` AS select `beneficiary_view`.`lga_name` AS `lga_name`,`beneficiary_view`.`enterprise_id` AS `enterprise_id`,`beneficiary_view`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `beneficiaries` from `beneficiary_view` group by `beneficiary_view`.`lga_id`,`beneficiary_view`.`enterprise_id`;

-- --------------------------------------------------------

--
-- Structure for view `lga_group_asset_summary`
--
DROP TABLE IF EXISTS `lga_group_asset_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_group_asset_summary` AS select `bv`.`lga_name` AS `lga_name`,`bv`.`lga_id` AS `lga_id`,`bv`.`enterprise_id` AS `enterprise_id`,`bv`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `beneficiaries`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `quantity`,`ecs`.`unit` AS `unit`,ceiling(((count(0) / 10) * `ecs`.`quantity`)) AS `qty_approved` from (`beneficiary_view` `bv` join `enterprise_checklist_summary` `ecs` on((`bv`.`enterprise_id` = `ecs`.`enterprise_id`))) where (`bv`.`enterprise_id` in (7,8,9,10)) group by `bv`.`lga_id`,`bv`.`enterprise_id`,`ecs`.`item_desc`;

-- --------------------------------------------------------

--
-- Structure for view `lga_individual_asset_summary`
--
DROP TABLE IF EXISTS `lga_individual_asset_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_individual_asset_summary` AS select `bv`.`lga_name` AS `lga_name`,`bv`.`lga_id` AS `lga_id`,`bv`.`enterprise_id` AS `enterprise_id`,`bv`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `beneficiaries`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `quantity`,`ecs`.`unit` AS `unit`,(count(0) * `ecs`.`quantity`) AS `qty_approved` from (`beneficiary_view` `bv` join `enterprise_checklist_summary` `ecs` on((`bv`.`enterprise_id` = `ecs`.`enterprise_id`))) where (`bv`.`enterprise_id` in (5,6)) group by `bv`.`lga_id`,`bv`.`enterprise_id`,`ecs`.`item_desc`;

-- --------------------------------------------------------

--
-- Structure for view `lga_inputs_item_summary`
--
DROP TABLE IF EXISTS `lga_inputs_item_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lga_inputs_item_summary` AS select `bv`.`lga_name` AS `lga_name`,`bv`.`lga_id` AS `lga_id`,`bv`.`enterprise_id` AS `enterprise_id`,`bv`.`enterprise_desc` AS `enterprise_desc`,count(0) AS `beneficiaries`,`ecs`.`item_desc` AS `item_desc`,`ecs`.`quantity` AS `quantity`,`ecs`.`unit` AS `unit`,(count(0) * `ecs`.`quantity`) AS `qty_approved` from (`beneficiary_view` `bv` join `enterprise_checklist_summary` `ecs` on((`bv`.`enterprise_id` = `ecs`.`enterprise_id`))) where (`bv`.`enterprise_id` in (1,2,3,4)) group by `bv`.`lga_id`,`bv`.`enterprise_id`,`ecs`.`item_desc`;

-- --------------------------------------------------------

--
-- Structure for view `service_provider_view`
--
DROP TABLE IF EXISTS `service_provider_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `service_provider_view` AS select `sp`.`id` AS `id`,`sp`.`supplier_name` AS `supplier_name`,`sp`.`email` AS `email`,`sp`.`phone` AS `phone`,`sp`.`item_id` AS `item_id`,`sp`.`supplier_status` AS `supplier_status`,`item`.`item_desc` AS `item_desc` from (`service_provider` `sp` left join `item` on((`item`.`id` = `sp`.`item_id`)));

-- --------------------------------------------------------

--
-- Structure for view `supply_enterprise_item_summary`
--
DROP TABLE IF EXISTS `supply_enterprise_item_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supply_enterprise_item_summary` AS select `ecv`.`enterprise_id` AS `enterprise_id`,`ecv`.`enterprise_desc` AS `enterprise_desc`,`ecv`.`item_id` AS `item_id`,`ecv`.`item_desc` AS `item_desc`,ifnull(sum(`idv`.`quantity`),0) AS `qty_dstr` from (`enterprise_checklist_view` `ecv` left join `item_distribution_view` `idv` on(((`idv`.`enterprise_id` = `ecv`.`enterprise_id`) and (`idv`.`item_id` = `ecv`.`item_id`)))) group by `ecv`.`enterprise_id`,`ecv`.`item_id`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
