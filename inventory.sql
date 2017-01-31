-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 09:41 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `Admin_name` varchar(20) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Address1` varchar(40) NOT NULL,
  `Pincode` int(6) NOT NULL,
  PRIMARY KEY (`Admin_id`),
  UNIQUE KEY `Admin_name` (`Admin_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Admin_name`, `Contact`, `Email_id`, `Address1`, `Pincode`) VALUES
(1, 'Rajkumar', 8746829450, 'rj100@gmail.com', 'Orchid Road', 462536),
(2, 'Ram', 8745559451, 'ramad@gmail.com', 'Nagarvihar', 462536);

-- --------------------------------------------------------

--
-- Table structure for table `air_conditioner`
--

CREATE TABLE IF NOT EXISTS `air_conditioner` (
  `Serial_code` varchar(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Star Rating` varchar(20) NOT NULL,
  `Capacity` varchar(20) NOT NULL,
  `Colour` varchar(20) NOT NULL,
  `Compressor` varchar(20) NOT NULL,
  `Warranty` varchar(100) NOT NULL,
  `MRP` float NOT NULL,
  `Discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `air_conditioner`
--

INSERT INTO `air_conditioner` (`Serial_code`, `Name`, `Type`, `Star Rating`, `Capacity`, `Colour`, `Compressor`, `Warranty`, `MRP`, `Discount`) VALUES
('AC LS19A5LN', 'Lloyd LS19A5LN 1.5 Ton 5 Star Split AC', 'Split', '5', '1.5ton', 'Ivory', 'Rotary', '1 Year for the Product & 4 Years for the Compressor ', 39990, 5),
('ACGD12fr5', 'Godrej GSC 12FR5 WNT 1 Ton 5 Star Split AC', 'Split', '5', '1 ton', 'White', 'Rotary', '1 year for the Product & 5 Years for the Compressor', 36600, 18),
('ACON182flt', 'Onida S182FLT-L 1.5 Ton 2 Star Split AC\n', 'Split', '2', '1.5 ton', 'White', 'Rotary', '1 Year for the Product & 5 Years for the Compressor ', 32390, 13),
('ACSM12JC2U', 'Samsung AR12JC2USUQ 1 Ton 2 Star Split AC', 'Split', '2', '1 ton', 'Indian Green', 'Rotary', '1 Year for the Product & 4 Years for the Compressor ', 27100, 11);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Cust_id` int(8) NOT NULL,
  `Cust_name` varchar(20) NOT NULL,
  `Contact` bigint(11) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Address1` varchar(40) NOT NULL,
  `Pincode` int(6) NOT NULL,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_id`, `Cust_name`, `Contact`, `Email_id`, `Address1`, `Pincode`) VALUES
(1, 'Niketan', 9087654321, 'niketan@gmail.com', 'MG Road', 832764),
(2, 'JAJA', 900929120202, 'jaja@gmail.com', 'ab sagar', 890235),
(3, 'JAJAt', 900989120202, 'jajat@gmail.com', 'ab nagar', 890234);

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
  `Dealer_id` int(8) NOT NULL AUTO_INCREMENT,
  `Dealer_name` varchar(20) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Address1` varchar(40) NOT NULL,
  `Pincode` int(6) NOT NULL,
  PRIMARY KEY (`Dealer_id`),
  UNIQUE KEY `Dealer_id` (`Dealer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`Dealer_id`, `Dealer_name`, `Contact`, `Email_id`, `Address1`, `Pincode`) VALUES
(1, 'Wheeler Sons', 9090123456, 'wheelers@gmail.com', 'Tashkand Road', 211012),
(2, 'Afg & Group', 9090786478, 'afgag@gmail.com', 'Tashkand Road', 211012),
(3, 'juli', 0, 'juhi1kri@gmail.com', '', 0),
(5, 'juiet', 0, 'juliet1kri@gmail.com', '', 0),
(6, 'juieta', 0, 'julieta1kri@gmail.com', '', 0),
(7, 'raj112', 0, 'dfd', '', 0),
(8, 'raj112', 0, 'dfd', '', 0),
(9, 'raj112', 0, 'dfd', '', 0),
(10, 'raj1121', 0, 'dfd1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dealer_item_list`
--

CREATE TABLE IF NOT EXISTS `dealer_item_list` (
  `dealer_id` varchar(15) NOT NULL,
  `serial_code` varchar(15) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dealer_id`,`serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer_item_list`
--

INSERT INTO `dealer_item_list` (`dealer_id`, `serial_code`, `rate`) VALUES
('dl001', 'TVSYsn456', 10000),
('dl001', 'TVSYsn500', 15000),
('dl002', 'FRWHwc0167', 10000),
('dl003', 'FRPNpn092', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item`
--

CREATE TABLE IF NOT EXISTS `inventory_item` (
  `serial_code` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `model_no` varchar(20) NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_item`
--

INSERT INTO `inventory_item` (`serial_code`, `type`, `company`, `model_no`, `min`, `max`, `quantity`) VALUES
('ACGD12fr5', 'AC', 'Godrej', 'GSC 12FR5 WNT ', 0, 0, 0),
('ACON182flt', 'AC', 'Onida', 'S182FLT-L ', 0, 0, 0),
('FRPNpn092', 'refrigerator', 'Panasonic', 'pn092', 3, 8, 5),
('FRWHwc0167', 'refrigerator', 'Whirlpool', 'wc0167', 5, 10, 7),
('TVSYsn456', 'TV', 'SONY', 'sn456', 5, 20, 9),
('TVSYsn500', 'TV', 'SONY', 'sn500', 5, 18, 13);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_location`
--

CREATE TABLE IF NOT EXISTS `inventory_location` (
  `serial_code` varchar(15) NOT NULL,
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`serial_code`),
  UNIQUE KEY `serial_code` (`serial_code`),
  UNIQUE KEY `location` (`location`),
  UNIQUE KEY `location_2` (`location`),
  UNIQUE KEY `location_3` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_location`
--

INSERT INTO `inventory_location` (`serial_code`, `location`) VALUES
('FRWHwc0167', 'F'),
('FRPNpn092', 'FT'),
('tvsySN456', 'T1'),
('TVSYsn500', 'T2');

-- --------------------------------------------------------

--
-- Table structure for table `item_tracker`
--

CREATE TABLE IF NOT EXISTS `item_tracker` (
  `Product_id` varchar(15) NOT NULL,
  `Serial_code` varchar(12) NOT NULL,
  `Availability` tinyint(4) NOT NULL,
  `Supply_id` varchar(15) NOT NULL,
  PRIMARY KEY (`Product_id`),
  KEY `Product_id` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_tracker`
--

INSERT INTO `item_tracker` (`Product_id`, `Serial_code`, `Availability`, `Supply_id`) VALUES
('PI50001', 'TVSYsn456', 1, 'sup003'),
('PID0001', 'FRWHwc0167', 1, 'sup002'),
('PID0003', 'FRWHwc0167', 0, 'sup001'),
('PID9903', 'TYSYsn500', 0, 'sup003');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE IF NOT EXISTS `laptop` (
  `Serial_code` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Processor` varchar(20) NOT NULL,
  `RAM` varchar(20) NOT NULL,
  `Inbuilt HDD` varchar(20) NOT NULL,
  `OS` varchar(20) NOT NULL,
  `MRP` float NOT NULL,
  `Discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monetary_report`
--

CREATE TABLE IF NOT EXISTS `monetary_report` (
  `Date` date NOT NULL,
  `Total_income` float NOT NULL,
  `Total_expenditure` float NOT NULL,
  `Profit/loss` float NOT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `Order_id` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Delivery_date` date NOT NULL,
  `Delivery_address` text NOT NULL,
  `Total_bill` float NOT NULL,
  PRIMARY KEY (`Order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_description`
--

CREATE TABLE IF NOT EXISTS `order_description` (
  `Order_id` int(10) NOT NULL,
  `Serial_code` varchar(12) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` float NOT NULL,
  `MRP` float NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`Order_id`,`Serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `Order_id` int(10) NOT NULL,
  `Product_id` varchar(10) NOT NULL,
  `Serial_code` varchar(12) NOT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE IF NOT EXISTS `pincodes` (
  `Pincode` int(6) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(40) NOT NULL,
  `Locality` varchar(40) NOT NULL,
  PRIMARY KEY (`Pincode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`Pincode`, `City`, `State`, `Locality`) VALUES
(211012, 'Allahabad', 'Uttar Pradesh', ''),
(462536, 'Mumbai', 'Maharastra', ''),
(832764, 'MG Marg', 'Bangalore', '');

-- --------------------------------------------------------

--
-- Table structure for table `refrigerator`
--

CREATE TABLE IF NOT EXISTS `refrigerator` (
  `Serial_code` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Star Rating` varchar(20) NOT NULL,
  `Capacity` varchar(20) NOT NULL,
  `Colour` varchar(20) NOT NULL,
  `Net Height` varchar(20) NOT NULL,
  `Warranty` varchar(4) NOT NULL,
  `MRP` float NOT NULL,
  `Discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE IF NOT EXISTS `supply` (
  `supply_id` varchar(10) NOT NULL,
  `dealer_id` varchar(15) NOT NULL,
  `date_of_trans` datetime NOT NULL,
  `total_cost` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supply_id`, `dealer_id`, `date_of_trans`, `total_cost`) VALUES
('sup001', 'dl002', '2015-03-01 16:11:00', 0),
('sup002', 'dl001', '2015-03-01 18:13:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supply_details`
--

CREATE TABLE IF NOT EXISTS `supply_details` (
  `supply_id` varchar(10) NOT NULL,
  `serial_code` varchar(15) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `quantity` int(4) NOT NULL DEFAULT '0',
  `discount` decimal(4,0) NOT NULL DEFAULT '0',
  `subtotal` float NOT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply_details`
--

INSERT INTO `supply_details` (`supply_id`, `serial_code`, `rate`, `quantity`, `discount`, `subtotal`) VALUES
('sup001', 'FRWHwc0167', 10000, 4, '7', 37200),
('sup002', 'TVSYsn456', 10000, 5, '5', 47500);

-- --------------------------------------------------------

--
-- Table structure for table `television`
--

CREATE TABLE IF NOT EXISTS `television` (
  `Serial_code` varchar(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Screen_size` varchar(20) NOT NULL,
  `Display_type` varchar(20) NOT NULL,
  `HDTechnology` varchar(20) NOT NULL,
  `Resolution` varchar(20) NOT NULL,
  `USB` varchar(20) NOT NULL,
  `MRP` float NOT NULL,
  `Discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Serial_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `television`
--

INSERT INTO `television` (`Serial_code`, `Name`, `Screen_size`, `Display_type`, `HDTechnology`, `Resolution`, `USB`, `MRP`, `Discount`) VALUES
('A', 'LG 32LB550A 80 cm (32) LED TV (HD Ready)', '32 inch', 'LED', 'HD Ready', '1366 x 768', '2', 35900, 17),
('b', 'Samsung 32EH4003 81.28 cm (32) LED TV', '32 inch', 'LED', 'HD Ready', '1366 x 768', '1', 27900, 19),
('gf', 'Samsung 22F5100 55 cm (22) LED TV', '22 inch', 'LED', 'Full HD', '1920 x 1080', '2', 13900, 13),
('jj', 'Philips 32PFL3738 81 cm (32) LED TV\n', '32 inch', 'led', 'HD Ready', '1366 x 768', '1', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE IF NOT EXISTS `verification` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` varchar(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`username`, `password`, `id`, `type`) VALUES
('raj112', 'abc', '1', 'admin'),
('Niketan123', '5f85808b1d4a922b0d1206bc1420ff01030d96e7', 'cu001', 'customer'),
('joijoi', 'akak', 'cu010', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
