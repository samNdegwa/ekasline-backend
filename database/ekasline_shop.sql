-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2021 at 06:41 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekasline_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) DEFAULT NULL,
  `county_to_send` varchar(255) DEFAULT NULL,
  `sub_county` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_address` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `order_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `phone_number`, `county_to_send`, `sub_county`, `city`, `postal_address`, `description`, `order_id`) VALUES
(97, '0726159307', 'Nyeri', 'Mukurweini', 'Ngamwa', '2242-10101', 'This order must be delivered within time', 266),
(98, '', 'Nyeri', 'Mukurweini', 'ngamwa', '3245-10101', 'Deliver this order on time', 267),
(99, '0726159307', 'Nyeri', 'Mukurweini', 'ngamwa', '64554-10101', 'This is a test', 268),
(100, '', 'Nyeri', 'Mukurweini', 'Mogotio', 'mukurweini', 'testing testing', 269),
(101, '07232324', 'Nyeri', 'Mukurweini', 'ngamwa', '4232-10101', 'Test test test', 270),
(102, '0734322443', 'Nyeri', 'tetu', 'ngamwa', '13131-10101', 'test test test', 271),
(103, '0734322443', 'Samburu', '---Select---', 'ngamwa', 'mukurweini', 'asdfghj', 272),
(104, '', '', 'asdfhjk', 'asdfghjk', 'asdfghj', 'sdfghjkl;', 4),
(105, '', '', '', '', '', '', 5),
(106, '', '', '', '', '', '', 6),
(107, '', '', '', '', '', '', 7),
(108, '', '', '', '', '', '', 8),
(109, '', '', '', '', '', '', 9),
(110, '', '', '', '', '', '', 10),
(111, '', '', '', '', '', '', 11),
(112, '', '', '', '', '', '', 12),
(113, '', '', '', '', '', '', 13),
(114, '', '', '', '', '', '', 14),
(115, '', '', '', '', '', '', 15),
(116, '', '', '', '', '', '', 16),
(117, '', '', '', '', '', '', 17),
(118, '', '', '', '', '', '', 18),
(119, '', '', '', '', '', '', 19),
(120, '', '', '', '', '', '', 20),
(121, '', '', '', '', '', '', 21),
(122, '', '', '', '', '', '', 22),
(123, '', '', '', '', '', '', 23),
(124, '', '', '', '', '', '', 24),
(125, '', '', '', '', '', '', 25),
(126, '', '', '', '', '', '', 26),
(127, '', '', '', '', '', '', 27),
(128, '', '', '', '', '', '', 28),
(129, '', '', '', '', '', '', 29),
(130, '', '', '', '', '', '', 30),
(131, '', '', '', '', '', '', 31),
(132, '', '', '', '', '', '', 32),
(133, '', '', '', '', '', '', 33),
(134, '', '', '', '', '', '', 34),
(135, '', '', '', '', '', '', 35),
(136, '', '', '', '', '', '', 36),
(137, '', '', '', '', '', '', 37),
(138, '', '', '', '', '', '', 38),
(139, '', '', '', '', '', '', 39),
(140, '', '', '', '', '', '', 40),
(141, '', '', '', '', '', '', 41),
(142, '', '', '', '', '', '', 42),
(143, '', '', '', '', '', '', 43),
(144, '', '', '', '', '', '', 44),
(145, '', '', '', '', '', '', 45),
(146, '', '', '', '', '', '', 46),
(147, '', '', '', '', '', '', 47),
(148, '', '', '', '', '', '', 48),
(149, '', '', '', '', '', '', 49),
(150, '', '', '', '', '', '', 50),
(151, '', '', '', '', '', '', 51),
(152, '', '', '', '', '', '', 52),
(153, '', '', '', '', '', '', 53),
(154, '', '', '', '', '', '', 54),
(155, '', '', '', '', '', '', 55),
(156, '', '', '', '', '', '', 56),
(157, '', '', '', '', '', '', 57),
(158, '', '', '', '', '', '', 58),
(159, '', '', '', '', '', '', 59),
(160, '', '', '', '', '', '', 60),
(161, '', '', '', '', '', '', 61),
(162, '', '', '', '', '', '', 62),
(163, '', '', '', '', '', '', 63),
(164, '', '', '', '', '', '', 64),
(165, '', '', '', '', '', '', 65),
(166, '', '', '', '', '', '', 66),
(167, '0726159307', '', 'Kipipiri', 'Othaya', '55655-10100', 'asdfghjkl', 67),
(168, '0726159307', '', 'Kipipiri', 'Oljorok', '55655-10100', 'ASDFGHJKL SDFGHJ', 68),
(169, '0726159307', '', 'Kipipiri', 'Oljorok', '55655-10100', 'ASDFGHJ SDFGHJK', 69),
(170, '', '', 'Mukurweini', 'Kabuta', '55655-10100', 'Please deliver on time', 70),
(171, '0726159307', '', 'Kangema', 'Kangema', '55655-10100', 'Please deliver this order on time', 71),
(172, '0726159307', '', 'Nyeri', 'Mukurweini', '343', 'test rtyy 6yy6 ', 72),
(173, '0726159307', '', 'Nyeri', 'Mukurweini', '343', 'qawsdfghj eee', 73);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Auto spare parts'),
(2, 'Cables & Wires'),
(6, 'Speed Governor and their Accessories'),
(7, 'Capacitors'),
(10, 'Resistors'),
(14, 'Connectors'),
(15, 'Diodes');

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
CREATE TABLE IF NOT EXISTS `counties` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `name`) VALUES
('1', 'Mombasa'),
('10', 'Marsabit'),
('11', 'Isiolo'),
('12', 'Meru'),
('13', 'Tharaka Nithi'),
('14', 'Embu'),
('15', 'Kitui'),
('16', 'Machakos'),
('17', 'Makueni'),
('18', 'Nyandarua'),
('19', 'Nyeri'),
('2', 'Kwale'),
('20', 'Kirinyaga'),
('21', 'Muranga'),
('22', 'Kiambu'),
('23', 'Turkana'),
('24', 'West Pokot'),
('25', 'Samburu'),
('26', 'Uasin-Gishu'),
('27', 'Trans-Nzoia'),
('28', 'Elgeyo Marakwet'),
('29', 'Nandi'),
('3', 'Kilifi'),
('30', 'Baringo'),
('31', 'Laikipia'),
('32', 'Nakuru'),
('33', 'Narok'),
('34', 'Kajiado'),
('35', 'Kericho'),
('36', 'Bomet'),
('37', 'Kakamega'),
('38', 'Vihiga'),
('39', 'Bungoma'),
('4', 'Tana River'),
('40', 'Busia'),
('41', 'Siaya'),
('42', 'Kisumu'),
('43', 'Homa Bay'),
('44', 'Migori'),
('45', 'Kisii'),
('46', 'Nyamira'),
('47', 'Nairobi'),
('5', 'Lamu'),
('6', 'Taita Taveta'),
('7', 'Garisa'),
('8', 'Wajir'),
('9', 'Mandera');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_request`
--

DROP TABLE IF EXISTS `mpesa_request`;
CREATE TABLE IF NOT EXISTS `mpesa_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `machant_id` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `request_data` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_response`
--

DROP TABLE IF EXISTS `mpesa_response`;
CREATE TABLE IF NOT EXISTS `mpesa_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machant_id` varchar(100) NOT NULL,
  `response_data` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_placed` varchar(200) DEFAULT NULL,
  `date_served` varchar(200) NOT NULL DEFAULT 'Not Served',
  `amount_due` float NOT NULL DEFAULT '0',
  `amount_paid` int(10) NOT NULL DEFAULT '0',
  `stage_status` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_orders_users1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date_placed`, `date_served`, `amount_due`, `amount_paid`, `stage_status`, `status`) VALUES
(266, 41, '2021-02-22  10:02:48', 'Not Served', 17900, 0, 0, 1),
(267, 41, '2021-02-22  10:28:01', 'Not Served', 8700, 0, 0, 1),
(268, 41, '2021-02-22  10:38:52', 'Not Served', 3400, 0, 0, 0),
(269, 41, '2021-02-22  10:47:50', 'Not Served', 6050, 0, 0, 0),
(270, 41, '2021-02-22  11:09:55', 'Not Served', 6602, 0, 0, 0),
(271, 41, '2021-02-22  11:18:02', 'Not Served', 5300, 0, 0, 0),
(272, 41, '2021-02-22  11:49:56', 'Not Served', 6700, 0, 0, 1),
(273, 41, 'testing this', 'Not Served', 400, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_orders_has_products_products1_idx` (`product_id`),
  KEY `fk_orders_has_products_orders1_idx` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(440, 266, 1, 1),
(441, 266, 2, 1),
(442, 267, 5, 1),
(443, 267, 2, 1),
(444, 267, 3, 1),
(445, 268, 3, 1),
(446, 268, 8, 1),
(447, 268, 9, 1),
(448, 269, 10, 1),
(449, 269, 11, 1),
(450, 270, 13, 1),
(451, 270, 14, 1),
(452, 270, 15, 1),
(453, 270, 16, 1),
(454, 271, 4, 1),
(455, 271, 5, 1),
(456, 271, 3, 1),
(457, 272, 2, 1),
(458, 272, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `reference` varchar(250) NOT NULL,
  `payment_mode` varchar(250) NOT NULL,
  `created_date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `userId`, `order_id`, `amount`, `reference`, `payment_mode`, `created_date`) VALUES
(17, 0, 272, 5000, 'gdr6r377373gx', '4ew562125', '15/03/2021'),
(16, 0, 272, 5000, 'gdr6r377373gx', '4ew562125', '15/03/2021'),
(15, 0, 272, 5000, 'gdr6r377373gx', '4ew562125', '15/03/2021'),
(14, 0, 272, 6700, 'xrex2345g ', 'Mpesa', '2021-03-16  09:30:56'),
(13, 0, 270, 6602, 'qwerty67', 'Mpesa', '2021-03-15  05:55:25'),
(12, 0, 270, 6602, 'qwerty67', 'Mpesa', '2021-03-15  05:50:44'),
(11, 41, 270, 1000, 'TX2556363DA', 'Mpesa', '2021-03-15  04:00:09'),
(18, 41, 71, 5000, 'gdr6r377373gx', '4ew562125', '15/03/2021');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'non',
  `images` varchar(300) DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `mfr_part` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `package` varchar(250) NOT NULL,
  `packaging` varchar(250) NOT NULL,
  `resistance` varchar(250) NOT NULL DEFAULT 'N/A',
  `capacitance` varchar(250) DEFAULT NULL,
  `tolerance` varchar(250) DEFAULT NULL,
  `power_watt` varchar(250) DEFAULT NULL,
  `temperature_efficient` varchar(250) DEFAULT NULL,
  `voltage` varchar(250) DEFAULT NULL,
  `size` varchar(250) DEFAULT NULL,
  `operating_temperature` varchar(250) DEFAULT NULL,
  `conductors_number` varchar(250) DEFAULT NULL,
  `total_length` varchar(250) DEFAULT NULL,
  `fcb_thickness` varchar(250) DEFAULT NULL,
  `contact_location` varchar(250) DEFAULT NULL,
  `connect_type` varchar(250) DEFAULT NULL,
  `contact_type` varchar(250) DEFAULT NULL,
  `pitch` varchar(250) DEFAULT NULL,
  `position_numbers` varchar(250) DEFAULT NULL,
  `row_numbers` varchar(250) DEFAULT NULL,
  `row_spacing` varchar(250) DEFAULT NULL,
  `mounting_type` varchar(250) DEFAULT NULL,
  `contact_material` varchar(250) DEFAULT NULL,
  `numers_of_pins` varchar(250) DEFAULT NULL,
  `frequency` varchar(250) DEFAULT NULL,
  `polarity` varchar(250) DEFAULT NULL,
  `voltage_breakdown` varchar(250) DEFAULT NULL,
  `voltage_clamping` varchar(250) DEFAULT NULL,
  `current` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `sub_id`, `mfr_part`, `manufacturer`, `package`, `packaging`, `resistance`, `capacitance`, `tolerance`, `power_watt`, `temperature_efficient`, `voltage`, `size`, `operating_temperature`, `conductors_number`, `total_length`, `fcb_thickness`, `contact_location`, `connect_type`, `contact_type`, `pitch`, `position_numbers`, `row_numbers`, `row_spacing`, `mounting_type`, `contact_material`, `numers_of_pins`, `frequency`, `polarity`, `voltage_breakdown`, `voltage_clamping`, `current`) VALUES
(1, 'FK 2017 Digital Speed Governor', 'images/governor.jpg', 'assets/img/governor.jpg', 'Ekas Fleet King is a transducer based, data transmitting digital speed governor. it is a hardy speed governor that fits in all known types of buses, trucks, matatus, private cars, and motorcycles\n\nIt is able to store data in an internal non-erasable memory for 72hrs and also monitors the vehicle global positioning by longitude and latitude. It also comes with a free online tracking platform and mobile app.', 13000, 100, 'Digital Speed Governor', 7, 'FK 2017', 'Ekas Tech', 'FK 2017', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Blue tooth thermal mini printer', 'images/thermalPrinter.jpg', 'assets/img/thermalPrinter.jpg', 'Reliable printer mechanism\r\n\r\nUltra big roll diameter max 50 mm\r\n\r\nStrong power 2600 mAh\r\n\r\nEasy paper loading\r\n\r\nLabel printing supported\r\n\r\nWireless blutooth connection\r\n\r\nDiagram/logo printing\r\n\r\nLong standby time\r\n\r\nCustomized case color\r\n\r\nSupporting Android/windows/Mac OS', 5900, 100, '58mm portable ticket blue tooth thermal mini printer pocket printer ', 8, 'POS-5802DD', 'Thermal', '', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Generic Blue 3 meters Printer cable', 'images/printer cable.jpg', 'assets/img/printer cable.jpg', 'Generic Blue 3 meters USB 2.0 A Male M to A Female F USB Extension Cable 10FT For Computers/USB Flash Disk/Printers For MP4', 800, 37, 'Generic Blue 3 meters USB 2.0 A Male M to A Female F USB Extension Cable 10FT For Computers/USB Flash Disk/Printers For MP4', 8, '', 'Ekas Tech', '', 'USB Cable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Generic 3inch 75mm Car Air Filter Clean Intake High Flow Short RAM/COLD Round Cone White', 'images/Generic 3inch 75mm Car Air Filter.jpg', 'assets/img/Generic 3inch 75mm Car Air Filter.jpg', 'Name: 3inch 75mm Car Air Filter Clean Intake High Flow Short RAM/COLD Round Cone\r\nModel: 509933\r\nSpecifications\r\nMaterial: heavy metal alloy\r\nSize:75x120x150mm\r\n\r\nFeatures\r\n-100% new and high quality.\r\n-It is durable and convenient.\r\n-Simple design and easy to use.\r\n-A high efficiency air cleaner system\r\n-Easy to install, just remove your stock one and screw this on\r\n-Enhance the engine performance of your bike\r\n-Efficiently filter the glow intake air\r\n-Suitable for any types of car motorbike\r\n-Increasing inlet flow rate, and filtering air impurities\r\n-With half sphere shape honeycomb structure, straggling airflow can be distributed evenly in the six direction, to form a smooth flow of air', 2500, 46, 'Generic 3inch 75mm Car Air Filter Clean Intake High Flow Short RAM/COLD Round Cone White', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Generic 5.0 Tonnes Hydraulic Car Jack - Red', 'images/Generic 5.0 Tonnes Hydraulic Car Jack - Red.jpg', 'assets/img/Generic 5.0 Tonnes Hydraulic Car Jack - Red.jpg', 'great quality car jacks..lifts any type of car upto  5 TONNES per axle..very effifient and easy to operate.made with hardened metal to make sureit withstand the vehicle weight comfortably..great tool to lift your car during repairs or wheel changes.order online on jumia kenya for fast quality and efficient deliveryScope: Suitable for small and medium sized vehicles. Such as: cars, Buick, Santana, Vietnam and other vehicles. \r\n\r\n*Packing include: \r\n jack * 1\r\nHandle * 1\r\n\r\nBefore Use\r\n1. Check before each use for abnormal conditions such as cracked welds, leaks, damaged, loose or missing parts. \r\n2. Inspect the jack immediately if lift is believed to have been subjected to an abnormal load or shock. \r\n3. If the jack is found to be damaged, it should be removed from service until properly repaired. \r\n\r\nOPERATING INSTRUCTIONS\r\n1. Insert the jack handle into the hole of the handle socket. \r\n2. Make sure that the saddle is correctly positioned. To prevent damage to the jack, do not move the jack while the handle is intact in the socket. \r\n3. To raise load, use one hand to hold the front part of the handle and use the other hand to turn at the rear and of the handle clockwise. \r\n4. To lower load, use one hand to hold the front part of the handle and use the other hand to turn at the rear and of the handle counterclockwise slowly. ', 2000, 27, 'Generic 5.0 Tonnes Hydraulic Car Jack - Red', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Generic In-car PDA Power Supply Extension 1 USB Port & 3 Sockets Splitter 12V/24V Car Charger High Quality Olesson', 'images/car PDA Power.jpg', 'assets/img/car PDA Power.jpg', 'Features:\r\n100% new and high quality!\r\nHigh quality vehicle lighter adapter\r\nConvenient to charge your device while driving\r\nShort-circuit protection\r\nKeep voltage steady to prevent devices from overcharging\r\nA modern, economical and practical device which is suitable for iPod,for iPad, Smart phone, GPS and PDA\r\nIt converts and increases your car cigarette lighter from 1 to 2 sockets with an additional USB port\r\n\r\nSpecifications:\r\nCondition: new\r\nColor: black\r\nInput voltage: DC12V~DC24V;\r\nOutput Current: DC:5V (except USB)\r\nTotal Output Power:60W(except USB port);\r\nCigar socket: 2 sockets\r\nCable: around 63cm\r\nWeight: 101g\r\n\r\nPackage Included:\r\n1 x vehicle lighter adapter', 900, 0, 'Generic In-car PDA Power Supply Extension 1 USB Port & 3 Sockets Splitter 12V/24V Car Charger High Quality Olesson', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Cables and Wires', 'images/cables.jpg', 'assets/img/cables.jpg', 'Cables and Wires', 120, 93, 'Cables and Wires', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'AmazonBasics 14AWG_OFC_100 14-Gauge Speaker Wire - 99.9% Oxygen Free Copper - 100 Feet', 'images/gauge speaker cable.jpg', 'assets/img/gauge speaker cable.jpg', '100 feet of 14gauge speaker wire for connecting speakers to an A/V receiver or amplifier\r\n99.9% oxygenfree copper (OFC); delivers highquality undistorted signals to and from audio equipment\r\nColorcoded (red and black) for clear polarity; durable yet flexible white insulated exterior jacket\r\nCL2 rated for inwall use; comes wrapped around a hard plastic spool for convenient dispensing\r\n1 year limited warranty', 2500, 97, 'AmazonBasics 14AWG_OFC_100 14-Gauge Speaker Wire - 99.9% Oxygen Free Copper - 100 Feet', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'AUTOKITE Car Heavy Duty Auto Jumper Cable Battery Booster Wire Clamp with Alligator Wire (7ft, 500 AMP)', 'images/AUTOKITE Car Heavy Duty.jpg', 'assets/img/AUTOKITE Car Heavy Duty.jpg', 'Mutli-stranded copper for high conductivity\r\n500 amp jumper cables to start car, truck and other vehicle in case of a dead battery or cold diesel vehicle battery in winter\r\nReviving a dead battery\r\nOptimum working temperature of the cables is below 60 Deg C to get the desired results.', 100, 98, 'AUTOKITE Car Heavy Duty Auto Jumper Cable Battery Booster Wire Clamp with Alligator Wire (7ft, 500 AMP)', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Multi Charging Cable, 3 in 1 Nylon Braided Fast Charging Cord', 'images/mult charger.jpg', 'assets/img/mult charger.jpg', 'Multi Charging Cable, 3 in 1 Nylon Braided Fast Charging Cord Magnetic Charger USB Cable for iPhone Micro USB Type C Mobile Phone Cable Fast Charging Magnet Charger USB Wire Cord - Black', 5900, 99, 'Multi Charging Cable, 3 in 1 Nylon Braided Fast Charging Cord', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'MAPOUT Slim OBD2 Female Connector', 'images/female.jpg', 'assets/img/female.jpg', 'MAPOUT Slim OBD2 Female Connector with Wire OBD2 16Pin Female Connector with Wire OBDII Connector J1962F OBD2 Female Connector with Wire 30cm', 150, 100, 'MAPOUT Slim OBD2 Female Connector', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '6000uF 315V Capacitor', 'images/6000u capacitor.jpg', 'assets/img/product_13754_58280_0x0.jpg', '6000uF 315V ±20% 76.9x221.2 Screw,76.9x221.2mm Aluminum Electrolytic Capacitors (Can - Screw', 150, 15, '6000uF 315V ±20% 76.9x221.2 Screw,76.9x221.2mm Aluminum Electrolytic Capacitors (Can - Screw)', 9, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'Screw,35×80mm Aluminum Electrolytic Capacitor', 'images/85 centigrade.jpg', 'assets/img/HTB1EuQUKFXXXXaPXFXXq6xXFXXXq.jpg', 'Screw,35×80mm Aluminum Electrolytic Capacitors (Can - Screw Terminals) ', 1400, 52, 'Screw,35×80mm Aluminum Electrolytic Capacitors (Can - Screw Terminals) ', 9, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '1000uF 400V ±20% 51x80 Capacitor.', 'images/1000uf Capacitor.jpg', 'assets/img/1000uf Capacitor.jpg', '1000uF 400V ±20% 51x80 Screw,51x80mm Aluminum Electrolytic Capacitors (Can - Screw Terminals)', 1300, 1000, '1000uF 400V ±20% 51x80 Screw,51x80mm Aluminum Electrolytic Capacitors (Can - Screw Terminals)', 9, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '225uF 475V -10%~+50% Capacitors', 'images/HTB1Zf8nXv5TBuNjSspm761DRVXan.png', 'assets/img/HTB1Zf8nXv5TBuNjSspm761DRVXan.png', '225uF 475V -10%~+50% 50x110 Screw Aluminum Electrolytic Capacitors (Can - Screw Terminals)', 3900, 100, '225uF 475V -10%~+50% 50x110 Screw Aluminum Electrolytic Capacitors (Can - Screw Terminals)', 9, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'Axial Carbon Film Resistors', 'images/36-1.jpg', 'assets/img/41RfND0SwbL._SX342_.jpg', 'Axial Carbon Film Resistors', 2, 10000, 'Axial Carbon Film Resistors', 51, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '10kΩ ±5% 1/6W Axial Carbon Film Resistors ', 'images/31kkm6lsT1L._SX425_.jpg', 'assets/img/31kkm6lsT1L._SX425_.jpg', '10kΩ ±5% 1/6W Axial Carbon Film Resistors ', 1, 100000, '10kΩ ±5% 1/6W Axial Carbon Film Resistors ', 51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '470Ω ±5% 1/4W ±450ppm/°C Axial Carbon Film Resistors', 'images/51qz6EVtAOL._SL1100_.jpg', 'assets/img/51qz6EVtAOL._SL1100_.jpg', '470Ω ±5% 1/4W ±450ppm/°C Axial Carbon Film Resistors', 1.5, 70000, '470Ω ±5% 1/4W ±450ppm/°C Axial Carbon Film Resistors', 51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '4.7kΩ ±5% 1/4W Axial Carbon Film Resistor', 'images/47a25809fed7b4765bc52cd410dbc912.jpg', 'assets/img/47a25809fed7b4765bc52cd410dbc912.jpg', '4.7kΩ ±5% 1/4W Axial Carbon Film Resistors', 1.5, 10000, '4.7kΩ ±5% 1/4W Axial Carbon Film Resistors', 51, 'N/A', 'N/A', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '1kΩ ±5% 1/4W -1500ppm/℃~+300ppm/℃ Axial Carbon Film Resistors', 'images/1k ohm.jpg', 'assets/img/1k ohm.jpg', '1kΩ ±5% 1/4W -1500ppm/℃~+300ppm/℃ Axial Carbon Film Resistors', 1, 10000, '1kΩ ±5% 1/4W -1500ppm/℃~+300ppm/℃ Axial Carbon Film Resistors', 51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'SMD,3.0x3.0x0.6mm Pre-ordered Connectors', 'images/20201208_G-Switch-GT-TC024F-H0060-L1_C963196_package.jpg', 'assets/img/20201208_G-Switch-GT-TC024F-H0060-L1_C963196_package.jpg', 'SMD,3.0x3.0x0.6mm Pre-ordered Connectors', 7, 10000, 'SMD,3.0x3.0x0.6mm Pre-ordered Connectors', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 'SMD,3*2*0.6 Pre-ordered Connectors', 'images/20201208_G-Switch-GT-TC024S-H0060-L1_C963197_package.jpg', 'assets/img/20201208_G-Switch-GT-TC024S-H0060-L1_C963197_package.jpg', 'SMD,3*2*0.6 Pre-ordered Connectors', 7, 10000, 'SMD,3*2*0.6 Pre-ordered Connectors', 52, 'KHB80-37(11)-28', 'Shenzhen Kinghelm Elec', '80mm', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'SMD,3x2.7x1.4mm Pre-ordered Connectors', 'images/35711_1.jpg', 'assets/img/35711_1.jpg', 'SMD,3x2.7x1.4mm Pre-ordered Connectors', 14, 10000, 'SMD,3x2.7x1.4mm Pre-ordered Connectors', 52, 'CKMTWBZP013', 'Shenzhen Kinghelm Elec', '1000mm', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'SMD,6PIN Pre-ordered Connectors', 'images/312s83WzQrL._AC_SY400_.jpg', 'assets/img/312s83WzQrL._AC_SY400_.jpg', 'SMD,6PIN Pre-ordered Connectors', 10, 10000, 'SMD,6PIN Pre-ordered Connectors', 52, 'S097220001', 'Shenzhen Kinghelm Elec', '1000mm', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'SMD,16PIN Pre-ordered Connectors', 'images/USB-Type-C-16pin-DIP-SMT-Type-PCB-Spile-Female-Connector.jpg', 'assets/img/USB-Type-C-16pin-DIP-SMT-Type-PCB-Spile-Female-Connector.jpg', 'SMD,16PIN Pre-ordered Connectors', 20, 10000, 'SMD,16PIN Pre-ordered Connectors', 52, 'KH-IPEX-SMAKWE-Q80H', 'Shenzhen Kinghelm Elec', 'L=80mm', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '47nF ±10% 63V 5 -55℃~125℃ Through Hole,P=5mm CL21 Capacitor', 'images/yellowcap-4-300.jpg', 'assets/img/yellowcap-4-300.jpg', '47nF ±10% 63V 5 -55℃~125℃ Through Hole,P=5mm CL21 Capacitor', 10, 100000, '47nF ±10% 63V 5 -55℃~125℃ Through Hole,P=5mm CL21 Capacitor', 15, '', 'TDK', 'Through Hole,P=5mm', 'Box-packed', '', '47nF', '±10%', '', '', '63V', '', '-55℃~125℃', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', '', ''),
(55, '4.7nF ±2.5% 63V Capacitor', 'images/cap-film-4700pf.jpg', 'assets/img/cap-film-4700pf.jpg', '4.7nF ±2.5% 63V 5 -55℃ ~ +100℃ Through Hole,P=5mm CL21 Capacitor', 40, 10000, '4.7nF ±2.5% 63V 5 -55℃ ~ +100℃ Through Hole,P=5mm CL21 Capacitor', 15, 'FKP2C014701D00HSSD', 'WIMA', 'Through Hole,P=5mm', 'Bag-packed', '', '4.7nF', '	\r\n±2.5%', '', '', '63V', '', '-55℃ ~ +100℃', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', '', ''),
(56, '100nF ±10% 250V 10 -55℃~125℃ Capacitor', 'images/s-l300.jpg', 'assets/img/s-l300.jpg', '100nF ±10% 250V 10 -55℃~125℃ Through Hole,P=10mm CL21 Capacitor', 35, 100000, '100nF ±10% 250V 10 -55℃~125℃ Capacitor', 15, '\r\nInstock\r\nB32521C3104K189', 'TDK', 'Through Hole,P=10mm', 'Tape & Reel (TR)', '', '100nF', '±10%', '', '', '250V', '', '-55℃ ~ +100℃', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', '', ''),
(57, '100nF ±10% 63V 5 -55℃ ~ +100℃ Capacitor', 'images/H63749306203048d389dd47aafb93f3c3Q.jpg', 'assets/img/H63749306203048d389dd47aafb93f3c3Q.jpg', '100nF ±10% 63V 5 -55℃ ~ +100℃ Through Hole,P=5mm CL21 Capacitor', 20, 10000, '100nF ±10% 63V 5 -55℃ ~ +100℃ Capacitor', 15, 'MKS2C031001A00KSSD', 'WIMA', 'Through Hole,P=5mm', 'Bag-packed', '', '', '	\r\n±10%', '', '100nF', '63V', '', '	\r\n-55℃ ~ +100℃', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', '', ''),
(58, '100nF ±10% 63V 5 -55℃ ~ +100℃ Capacitor', 'images/s-l640.jpg', 'assets/img/s-l640.jpg', '100nF ±10% 63V 5 -55℃ ~ +100℃ Through Hole,P=5mm CL21 Capacitor', 40, 10000, '100nF ±10% 63V 5 -55℃ ~ +100℃  Capacitor', 15, 'MKS2C031001A00KSSD', 'WIMA', 'Through Hole,P=5mm', 'Bag-packed', '', '100nF', '±10%', '', '', '', '', '	\r\n-55℃ ~ +100℃', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', '', ''),
(59, 'Through Hole,P=15mm CL21 Capacitor', 'images/Hef114e4dd6af4fcbb9f4a4f092c808deF.png_350x350.png', 'assets/img/Hef114e4dd6af4fcbb9f4a4f092c808deF.png_350x350.png', 'Through Hole,P=15mm CL21 Capacitor', 10, 10000, 'Through Hole,P=15mm CL21 Capacitor ', 15, 'MPE105J2E15NN22801', 'KNSCHA', '	\r\nThrough Hole,P=15mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'Through Hole,P=7.5mm CL21 Capacitor', 'images/yellowcap-4-300.jpg', 'assets/img/yellowcap-4-300.jpg', 'Through Hole,P=7.5mm CL21 Capacitor', 10, 100000, 'Through Hole,P=7.5mm CL21 Capacitor', 15, 'MPE154J2G07AJ22600', 'KNSCHA', 'Through Hole,P=7.5mm', 'Bag-packed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '2.2uF ±10% 50V 5 -55℃ ~ +100℃ Capacitor', 'images/s-l400.jpg', 'assets/img/s-l400.jpg', '2.2uF ±10% 50V 5 -55℃ ~ +100℃ Through Hole CL21 Capacitor ', 110, 10000, '2.2uF ±10% 50V 5 -55℃ ~ +100℃ Capacitor ', 15, '\r\nMKS2B042201F00KSSD', 'WIMA', 'Through Hole', 'Bag-packed', '', '2.2uF', '	\r\n±10%', '', '', '50V', '', '-55℃ ~ +100℃', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '680nF ±5% 4.6kV -40℃~85℃ 72x62mm CBB Capacitors', 'images/20190408_AVX-FPX86Y0684J_C382103_blank.jpg', 'assets/img/20190408_AVX-FPX86Y0684J_C382103_blank.jpg', '680nF ±5% 4.6kV -40℃~85℃ 72x62mm CBB Capacitors(polypropylene film)', 3500, 1000, '680nF ±5% 4.6kV -40℃~85℃ 72x62mm CBB Capacitors(polypropylene film)', 10, 'FPX86Y0684J', 'AVX', '72x62mm', '', '', '680nF', '±5%', '', '', '4.6kV', '', '-40℃~85℃', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '360nF ±5% 400V 10 Through Hole Capacitors', 'images/H59d6fdf2e31947448dee26c4448afd.png', 'assets/img/H59d6fdf2e31947448dee26c4448afd.png', '360nF ±5% 400V 10 Through Hole CBB Capacitors(polypropylene film) ', 15, 1000, '360nF ±5% 400V 10 Through Hole CBB Capacitors(polypropylene film) ', 10, 'CBB21-0.36uF400V 5%', 'Tongfeng', 'Through Hole', 'Bag-packed', '', '360nF', '	\r\n±5%', '', '', '400V', '', '', '', '', '', '', '', '', '', '', '', '10', '', '', '', '', '', '', '', ''),
(64, '2.2uF ±10% 400V Capacitor', 'images/400v capacitor.jpg', 'assets/img/400v capacitor.jpg', '2.2uF ±10% 400V 27.5 -40℃~105℃ Through Hole,P=27.5mm CBB Capacitors(polypropylene film)', 35, 10000, '2.2uF ±10% 400V 27.5 -40℃~105℃ Through Hole,P=27.5mm Capacitors', 10, 'SMPC_225K0400DB2815', 'Winday Elec', 'Through Hole,P=27.5mm', 'Bag-packed', '', '2.2uF', '	\r\n±10%', '', '', '400V', '27.5', '-40℃~105℃', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products_details`
--

DROP TABLE IF EXISTS `products_details`;
CREATE TABLE IF NOT EXISTS `products_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `mfr_part` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `package` varchar(250) NOT NULL,
  `packaging` varchar(250) NOT NULL,
  `resistance` varchar(250) NOT NULL,
  `tolerance` varchar(250) NOT NULL,
  `power_watt` varchar(250) NOT NULL,
  `temperature_cofficient` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_details`
--

INSERT INTO `products_details` (`id`, `product_id`, `mfr_part`, `manufacturer`, `package`, `packaging`, `resistance`, `tolerance`, `power_watt`, `temperature_cofficient`) VALUES
(1, 1, '001', 'Ekas Technologies', '0001', '', '', '', '', ''),
(2, 2, 'N/A', 'BLMI', '0001', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `name`) VALUES
(1, 1, 'Motor Vehicle'),
(2, 1, 'Motor Bike'),
(3, 2, 'Cables & Accessories'),
(4, 2, 'FFC/FPC Connectors'),
(5, 2, 'Power cable'),
(6, 2, 'Soldering Wires'),
(7, 6, 'Ekas Digital Speed Governor'),
(8, 6, 'Speed Governor Peripherals'),
(9, 7, 'Aluminum Electrolytic Capacitors (Can - Screw Terminals)'),
(10, 7, 'CBB Capacitors(polypropylene film)'),
(11, 7, 'Ceramic Disc Capacitors'),
(12, 7, 'Multilayer Ceramic Capacitors MLCC - SMD/SMT'),
(13, 7, 'Polyester Film Capacitors'),
(14, 7, 'Tantalum Capacitors'),
(15, 7, '\r\nCL21 Capacitor'),
(16, 7, '\r\nMetallized Polyester Film Capacitor'),
(17, 7, 'Mylar Capacitor'),
(18, 7, '\r\nSolid Polymer Electrolytic Capacitor'),
(19, 7, 'Trimmers, Variable Capacitors'),
(20, 7, 'Aluminum Electrolytic Capacitors - SMD'),
(21, 7, '\r\nCapacitor Networks, Arrays'),
(22, 7, '\r\nMultilayer Ceramic Capacitors MLCC - Leaded'),
(23, 7, '\r\nNiobium Oxide Capacitors'),
(24, 7, '\r\nSuppression Capacitors'),
(25, 7, '\r\nhorn-type electrolytic capacitor'),
(26, 10, 'Carbon Film Resistors'),
(27, 10, 'Chip Resistor - Surface Mount'),
(28, 10, 'High Voltage Resistor'),
(29, 10, 'Low Resistors & Current Sense Resistors (TH)'),
(30, 10, 'Metal Film Resistor (TH)'),
(31, 10, 'NTC Thermistors'),
(32, 10, 'Potentiometers & Variable Resistors'),
(33, 10, 'Shunt'),
(34, 10, 'Varistors'),
(35, 10, '\r\nCement Resistors'),
(36, 10, '\r\nFusible Chip Resistor'),
(37, 10, 'High power surface mount resistance'),
(38, 10, '\r\nLow Resistors & Current Sense Resistors - Surface Mount'),
(39, 10, 'Metal Glaze Resistors'),
(40, 10, 'PTC Thermistors'),
(41, 10, 'Precision Potentiometer'),
(42, 10, 'TO Package Planar Power Resistor'),
(43, 10, 'Wirewound Resistors'),
(44, 10, 'Chassis Mount Resistors'),
(45, 10, 'High Precision & Low TCR SMD Resistors'),
(46, 10, '\r\nLED Strip Resistors'),
(47, 10, 'MELF Resistor'),
(48, 10, '\r\nMetal Oxide Resistors'),
(49, 10, '\r\nPhotoresistors'),
(50, 10, '\r\nResistor Networks & Arrays'),
(51, 10, 'Variable Resistors'),
(52, 14, 'Pre-ordered Connectors'),
(53, 14, 'Banana and Tip Connectors'),
(54, 14, 'Circular Connectors'),
(55, 14, 'Ethernet Connectors/Modular Connectors'),
(56, 14, 'LED Light Pipes'),
(57, 14, 'Pluggable System Terminal Block'),
(58, 14, 'Rectangular Connectors Housings'),
(59, 14, 'Terminals'),
(60, 14, 'Wire To Board / Wire To Wire Connector'),
(61, 14, '\r\nAC/DC Power Plugs & Receptacles '),
(62, 14, '\r\nBarrier Terminal Blocks'),
(63, 14, '\r\nConnectors - Accessories'),
(64, 14, ' (480)\r\nFFC, FPC Connectors'),
(65, 14, '\r\nLighting Connectors'),
(66, 14, '\r\nPower Connectors'),
(67, 2, 'Submersible Cables'),
(68, 2, 'Housewires - Singles'),
(69, 2, 'Welding Cables'),
(70, 2, 'Housewires - Twin/Earth'),
(71, 2, 'Housewires - Twin Flat'),
(72, 2, 'Housewires - Flexibles'),
(73, 2, 'Copper Armoured Cables'),
(74, 2, 'Drop Wires - Telecommunication'),
(75, 2, 'Nose-bridge wire(CU)'),
(76, 2, 'Fencing Wire'),
(77, 2, 'Arial Bundle Cable (ABC) Al'),
(78, 2, 'Drop Cable (CNC) Al'),
(79, 2, 'Booster Cable');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
CREATE TABLE IF NOT EXISTS `tb_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_placed` varchar(200) NOT NULL,
  `date_served` varchar(200) NOT NULL DEFAULT 'Not Served',
  `amount_due` int(10) NOT NULL DEFAULT '0',
  `amount_paid` int(10) NOT NULL DEFAULT '0',
  `stage_status` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `user_id`, `date_placed`, `date_served`, `amount_due`, `amount_paid`, `stage_status`, `status`) VALUES
(1, 41, 'testing this', 'Not Served', 400, 0, 0, 0),
(2, 41, 'testing this', 'Not Served', 400, 0, 0, 1),
(3, 41, 'testing this', 'Not Served', 400, 0, 0, 0),
(4, 41, '2021-03-25  09:46:05', 'Not Served', 6700, 0, 0, 0),
(5, 41, '2021-03-25  10:10:22', 'Not Served', 17900, 0, 0, 0),
(6, 41, '2021-03-25  10:17:40', 'Not Served', 2120, 0, 0, 0),
(7, 41, '2021-03-25  10:19:10', 'Not Served', 3300, 0, 0, 0),
(8, 41, '2021-03-25  10:38:22', 'Not Served', 3300, 0, 0, 0),
(9, 41, '2021-03-25  10:40:30', 'Not Served', 2620, 0, 0, 0),
(10, 41, '2021-03-25  10:41:45', 'Not Served', 6600, 0, 0, 0),
(11, 41, '2021-03-25  10:45:58', 'Not Served', 5204, 0, 0, 0),
(12, 41, '2021-03-25  10:48:56', 'Not Served', 4510, 0, 0, 0),
(13, 41, '2021-03-25  11:05:06', 'Not Served', 4900, 0, 0, 0),
(14, 41, '2021-03-25  11:06:25', 'Not Served', 18700, 0, 0, 0),
(15, 41, '2021-03-25  11:10:27', 'Not Served', 12600, 0, 0, 0),
(16, 41, '2021-03-25  11:12:20', 'Not Served', 18700, 0, 0, 0),
(17, 41, '2021-03-25  11:20:47', 'Not Served', 2620, 0, 0, 0),
(18, 41, '2021-03-25  11:34:57', 'Not Served', 3500, 0, 0, 0),
(19, 41, '2021-03-25  11:35:53', 'Not Served', 2620, 0, 0, 0),
(20, 41, '2021-03-25  11:37:59', 'Not Served', 7550, 0, 0, 0),
(21, 41, '2021-03-25  11:40:36', 'Not Served', 6600, 0, 0, 0),
(22, 41, '2021-03-25  11:41:38', 'Not Served', 19, 0, 0, 0),
(23, 41, '2021-03-25  02:36:10', 'Not Served', 5800, 0, 0, 0),
(24, 41, '2021-03-25  02:45:09', 'Not Served', 23800, 0, 0, 0),
(25, 41, '2021-03-25  03:00:23', 'Not Served', 13400, 0, 0, 0),
(26, 41, '2021-03-25  03:04:50', 'Not Served', 17900, 0, 0, 0),
(27, 41, '2021-03-25  03:06:19', 'Not Served', 17900, 0, 0, 0),
(28, 41, '2021-03-25  03:21:05', 'Not Served', 17900, 0, 0, 0),
(29, 41, '2021-03-25  03:24:21', 'Not Served', 5520, 0, 0, 0),
(30, 41, '2021-03-25  03:25:55', 'Not Served', 17900, 0, 0, 0),
(31, 41, '2021-03-25  03:38:43', 'Not Served', 14000, 0, 0, 0),
(32, 41, '2021-03-25  03:47:57', 'Not Served', 7500, 0, 0, 0),
(33, 41, '2021-03-25  04:04:39', 'Not Served', 2120, 0, 0, 0),
(34, 41, '2021-03-25  04:07:36', 'Not Served', 6700, 0, 0, 0),
(35, 41, '2021-03-25  04:11:22', 'Not Served', 2620, 0, 0, 0),
(36, 41, '2021-03-25  04:13:27', 'Not Served', 17900, 0, 0, 0),
(37, 41, '2021-03-25  04:23:56', 'Not Served', 17900, 0, 0, 0),
(38, 41, '2021-03-25  04:31:33', 'Not Served', 6000, 0, 0, 0),
(39, 41, '2021-03-25  04:38:13', 'Not Served', 2620, 0, 0, 0),
(40, 41, '2021-03-26  08:37:19', 'Not Served', 3300, 0, 0, 0),
(41, 41, '2021-03-26  08:41:03', 'Not Served', 17900, 0, 0, 0),
(42, 41, '2021-03-26  08:45:01', 'Not Served', 23800, 0, 0, 0),
(43, 41, '2021-03-26  08:55:39', 'Not Served', 6600, 0, 0, 0),
(44, 41, '2021-03-26  09:03:09', 'Not Served', 6000, 0, 0, 0),
(45, 41, '2021-03-26  09:05:48', 'Not Served', 18700, 0, 0, 0),
(46, 41, '2021-03-26  09:25:46', 'Not Served', 3300, 0, 0, 0),
(47, 41, '2021-03-29  12:56:07', 'Not Served', 18700, 0, 0, 0),
(48, 41, '2021-03-29  12:58:56', 'Not Served', 20150, 0, 1, 0),
(49, 41, '2021-03-29  01:07:23', 'Not Served', 9200, 0, 1, 0),
(50, 41, '2021-03-29  02:51:39', 'Not Served', 3300, 0, 0, 0),
(51, 41, '2021-03-29  02:54:33', 'Not Served', 2900, 0, 0, 0),
(52, 41, '2021-03-29  03:06:56', 'Not Served', 21200, 0, 0, 0),
(53, 41, '2021-03-29  03:10:04', 'Not Served', 12170, 0, 0, 0),
(54, 41, '2021-03-29  03:16:05', 'Not Served', 8150, 0, 1, 0),
(55, 41, '2021-03-29  03:17:52', 'Not Served', 25820, 0, 0, 0),
(56, 41, '2021-03-29  03:24:16', 'Not Served', 25820, 0, 0, 0),
(57, 41, '2021-03-29  03:25:12', 'Not Served', 31700, 0, 0, 0),
(58, 41, '2021-03-29  03:49:27', 'Not Served', 23320, 0, 0, 0),
(59, 41, '2021-03-29  03:52:02', 'Not Served', 31470, 0, 0, 0),
(60, 41, '2021-03-29  04:23:18', 'Not Served', 16252, 0, 1, 0),
(61, 41, '2021-03-29  04:23:39', 'Not Served', 16252, 0, 0, 0),
(62, 41, '2021-03-29  04:24:39', 'Not Served', 16252, 0, 0, 0),
(63, 41, '2021-03-29  04:25:51', 'Not Served', 16252, 0, 0, 0),
(64, 41, '2021-03-29  04:29:22', 'Not Served', 21200, 0, 0, 0),
(65, 41, '2021-03-29  04:36:49', 'Not Served', 21200, 0, 1, 0),
(66, 41, '2021-03-29  04:37:34', 'Not Served', 25820, 0, 1, 0),
(67, 41, '2021-04-05  08:00:19', 'Not Served', 3300, 0, 1, 0),
(68, 41, '2021-04-05  08:02:42', 'Not Served', 12000, 0, 1, 0),
(69, 41, '2021-04-05  08:05:06', 'Not Served', 15903, 0, 1, 0),
(70, 41, '2021-04-05  08:42:23', 'Not Served', 9200, 0, 1, 1),
(71, 44, '2021-04-06  07:59:21', 'Not Served', 20700, 0, 2, 1),
(72, 41, '2021-04-22  12:58:08', 'Not Served', 5200, 0, 1, 1),
(73, 41, '2021-04-28  04:55:44', 'Not Served', 6600, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_details`
--

DROP TABLE IF EXISTS `tb_order_details`;
CREATE TABLE IF NOT EXISTS `tb_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 69, 1, 3),
(2, 70, 2, 1),
(3, 70, 3, 1),
(4, 70, 4, 1),
(5, 71, 1, 1),
(6, 71, 2, 1),
(7, 71, 3, 1),
(8, 71, 5, 1),
(9, 72, 15, 1),
(10, 72, 14, 1),
(11, 73, 14, 1),
(12, 73, 15, 1),
(13, 73, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_image`
--

DROP TABLE IF EXISTS `test_image`;
CREATE TABLE IF NOT EXISTS `test_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_image`
--

INSERT INTO `test_image` (`id`, `Title`) VALUES
(1, 'Laptops'),
(2, ''),
(3, ''),
(4, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `phoneNumber` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `county` varchar(250) NOT NULL,
  `sub_county` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `postal_address` varchar(250) NOT NULL,
  `role` int(10) DEFAULT '555',
  `photoUrl` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `activation_code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `fname`, `lname`, `phoneNumber`, `country`, `county`, `sub_county`, `city`, `postal_address`, `role`, `photoUrl`, `status`, `activation_code`) VALUES
(37, '81dc9bdb52d04dc20036dbd8313ed055', 'sdghj', 'Samuel', 'Ndegwa', '726159307', 'Kenya', 'Nyeri', 'Mukurweini', 'Ngamwa', '3435-10101', 555, NULL, 0, 0),
(40, 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '', '', 555, NULL, 0, 0),
(41, '81dc9bdb52d04dc20036dbd8313ed055', 'mwanikisamuel91@gmail.com', 'Eliud', 'Mathu', '72345678', 'Kenya', 'Nyeri', 'Kieni', 'Chaka', '14233-10101', 555, NULL, 0, 0),
(42, 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '', '', 555, NULL, 0, 0),
(43, 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '', '', 555, NULL, 0, 0),
(44, '81dc9bdb52d04dc20036dbd8313ed055', 'peter@gmail.com', 'Peter', 'Mwangi', '726159307', 'Kenya', 'Muranga', 'Kangema', 'Kangema', '345-10101', 555, NULL, 0, 0),
(45, 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '', '', 555, NULL, 0, 0),
(46, '81dc9bdb52d04dc20036dbd8313ed055', 'eliza@gmail.com', 'Elizabeth', 'Muthoni', '254726159307', 'Kenya', 'Kiambu', 'Limuru', 'Kimense', '343-10103', 555, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
