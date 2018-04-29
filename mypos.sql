-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 07:07 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_unit`
--

CREATE TABLE `base_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_unit`
--

INSERT INTO `base_unit` (`id`, `name`, `abbreviation`) VALUES
(1, 'each', 'ea'),
(5, 'centimeter', 'cm'),
(7, 'gram', 'gm');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'METALS'),
(2, 'WOODS'),
(3, 'SALT');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `customer_code` varchar(25) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_address` varchar(50) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `shipping_address` varchar(50) DEFAULT NULL,
  `customer_points` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `created_date`, `customer_code`, `customer_name`, `customer_address`, `shipping_date`, `shipping_address`, `customer_points`) VALUES
(1, '2018-02-18', '1', 'Pablo Apostle', 'Makati City', NULL, '', '35.74');

-- --------------------------------------------------------

--
-- Table structure for table `inventorymanagement_audit`
--

CREATE TABLE `inventorymanagement_audit` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `table` varchar(250) DEFAULT NULL,
  `action` varchar(250) NOT NULL,
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventorymanagement_audit`
--

INSERT INTO `inventorymanagement_audit` (`id`, `datetime`, `ip`, `user`, `table`, `action`, `description`) VALUES
(1, '2018-02-18 13:30:41', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 19\r\n---Fields\r\ninvoice_no [new]: 19\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 700\r\nitems_total_price [new]: 14300\r\ncustomer_name [new]: JUan\r\namount_tendered [new]: 15000\r\n'),
(2, '2018-02-18 13:30:47', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 22\r\n---Fields\r\nitem_code [new]: 4\r\nitem_description [new]: Copper 0001\r\nbase_unit [new]: 1\r\nuom [new]: 4\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 25\r\navailable_qty [new]: 375.00000\r\norder_qty [new]: 25\r\nunit_price [new]: 880.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 22000\r\nnet_price [new]: 22000\r\nbase_cost_price [new]: 780.00\r\ntotal_base_cost_price [new]: 19500\r\ntransaction_head_id [new]: 19\r\n'),
(3, '2018-02-18 13:36:00', '127.0.0.1', 'admin', 'purchase_order', 'add', '---Keys\r\nid : 3\r\n---Fields\r\ncreated_date [new]: 2018-02-18\r\nsupplier [new]: 1\r\nitem_category [new]: 1\r\nitem_type [new]: 2\r\nitem_code [new]: 4\r\nitem_description [new]: Copper 0001\r\nbase_unit [new]: 1\r\nuom_order [new]: 1\r\nrelated_unit_no [new]: 12.00000\r\norder_qty [new]: 1\r\ncost_price [new]: 152\r\ntotal_cost_price [new]: 152\r\ntotal_base_unit_qty [new]: 12\r\n'),
(4, '2018-02-18 13:56:02', '127.0.0.1', 'admin', 'customer', 'add', '---Keys\r\nid : 1\r\n---Fields\r\ncreated_date [new]: 2018-02-18\r\ncustomer_code [new]: cus-0001\r\ncustomer_name [new]: Pablo Apostle\r\ncustomer_address [new]: Makati City\r\n'),
(5, '2018-02-18 13:56:22', '127.0.0.1', 'admin', 'customer', 'edit', '---Keys\r\nid : 1\r\n---Fields\r\ncustomer_points [old]: \r\ncustomer_points [new]: 25\r\n'),
(6, '2018-02-18 15:36:18', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 20\r\n---Fields\r\ninvoice_no [new]: 20\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 46\r\nitems_total_price [new]: 254\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 25\r\namount_tendered [new]: 300\r\n'),
(7, '2018-02-18 15:36:19', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 23\r\n---Fields\r\nitem_code [new]: 9\r\nitem_description [new]: 2x2x216 0001\r\nbase_unit [new]: 5\r\nuom [new]: 13\r\nrelated_unit_no [new]: 2.54000\r\ntotal_base_unit_qty [new]: 25.4\r\navailable_qty [new]: 1192.04000\r\norder_qty [new]: 10\r\nunit_price [new]: 10.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 254\r\nnet_price [new]: 254\r\nbase_cost_price [new]: 7.00\r\ntotal_base_cost_price [new]: 177.79999999999998\r\ntransaction_head_id [new]: 20\r\n'),
(8, '2018-02-18 15:37:21', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 21\r\n---Fields\r\ninvoice_no [new]: 21\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 120\r\nitems_total_price [new]: 880\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 26\r\namount_tendered [new]: 1000\r\n'),
(9, '2018-02-18 15:37:21', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 24\r\n---Fields\r\nitem_code [new]: 4\r\nitem_description [new]: Copper 0001\r\nbase_unit [new]: 1\r\nuom [new]: 4\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 1\r\navailable_qty [new]: 362.00000\r\norder_qty [new]: 1\r\nunit_price [new]: 880.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 880\r\nnet_price [new]: 880\r\nbase_cost_price [new]: 780.00\r\ntotal_base_cost_price [new]: 780\r\ntransaction_head_id [new]: 21\r\n'),
(10, '2018-02-18 15:41:33', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 22\r\n---Fields\r\ninvoice_no [new]: 22\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 22714\r\nitems_total_price [new]: 2286\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 30.00\r\namount_tendered [new]: 25000\r\n'),
(11, '2018-02-18 15:43:03', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 23\r\n---Fields\r\ninvoice_no [new]: 23\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 120\r\nitems_total_price [new]: 880\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 30.00\r\namount_tendered [new]: 1000\r\n'),
(12, '2018-02-18 15:43:03', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 25\r\n---Fields\r\nitem_code [new]: 4\r\nitem_description [new]: Copper 0001\r\nbase_unit [new]: 1\r\nuom [new]: 4\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 1\r\navailable_qty [new]: 361.00000\r\norder_qty [new]: 1\r\nunit_price [new]: 880.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 880\r\nnet_price [new]: 880\r\nbase_cost_price [new]: 780.00\r\ntotal_base_cost_price [new]: 780\r\ntransaction_head_id [new]: 23\r\n'),
(13, '2018-02-18 15:45:25', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 24\r\n---Fields\r\ninvoice_no [new]: 24\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 50\r\nitems_total_price [new]: 200\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 33.52\r\namount_tendered [new]: 250\r\n'),
(14, '2018-02-18 15:45:25', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 26\r\n---Fields\r\nitem_code [new]: 9\r\nitem_description [new]: 2x2x216 0001\r\nbase_unit [new]: 5\r\nuom [new]: 12\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 20\r\navailable_qty [new]: 1166.64000\r\norder_qty [new]: 20\r\nunit_price [new]: 10.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 200\r\nnet_price [new]: 200\r\nbase_cost_price [new]: 7.00\r\ntotal_base_cost_price [new]: 140\r\ntransaction_head_id [new]: 24\r\n'),
(15, '2018-02-18 15:46:47', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 25\r\n---Fields\r\ninvoice_no [new]: 25\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 50\r\nitems_total_price [new]: 250\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 33.52\r\namount_tendered [new]: 300\r\n'),
(16, '2018-02-18 15:46:47', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 27\r\n---Fields\r\nitem_code [new]: 9\r\nitem_description [new]: 2x2x216 0001\r\nbase_unit [new]: 5\r\nuom [new]: 12\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 25\r\navailable_qty [new]: 1146.64000\r\norder_qty [new]: 25\r\nunit_price [new]: 10.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 250\r\nnet_price [new]: 250\r\nbase_cost_price [new]: 7.00\r\ntotal_base_cost_price [new]: 175\r\ntransaction_head_id [new]: 25\r\n'),
(17, '2018-02-18 15:47:34', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 26\r\n---Fields\r\ninvoice_no [new]: 26\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 0\r\nitems_total_price [new]: 250\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 33.52\r\namount_tendered [new]: 250\r\n'),
(18, '2018-02-18 15:47:34', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 28\r\n---Fields\r\nitem_code [new]: 9\r\nitem_description [new]: 2x2x216 0001\r\nbase_unit [new]: 5\r\nuom [new]: 12\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 25\r\navailable_qty [new]: 1121.64000\r\norder_qty [new]: 25\r\nunit_price [new]: 10.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 250\r\nnet_price [new]: 250\r\nbase_cost_price [new]: 7.00\r\ntotal_base_cost_price [new]: 175\r\ntransaction_head_id [new]: 26\r\n'),
(19, '2018-02-18 15:48:13', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 27\r\n---Fields\r\ninvoice_no [new]: 27\r\ncreate_date [new]: 2018-02-18\r\nchange_due [new]: 95.19999999999999\r\nitems_total_price [new]: 304.8\r\ncustomer_name [new]: 1\r\ncustomer_points [new]: 34.52\r\namount_tendered [new]: 400\r\n'),
(20, '2018-02-18 15:48:13', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 29\r\n---Fields\r\nitem_code [new]: 9\r\nitem_description [new]: 2x2x216 0001\r\nbase_unit [new]: 5\r\nuom [new]: 11\r\nrelated_unit_no [new]: 30.48000\r\ntotal_base_unit_qty [new]: 30.48\r\navailable_qty [new]: 1096.64000\r\norder_qty [new]: 1\r\nunit_price [new]: 10.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 304.8\r\nnet_price [new]: 304.8\r\nbase_cost_price [new]: 7.00\r\ntotal_base_cost_price [new]: 213.36\r\ntransaction_head_id [new]: 27\r\n'),
(21, '2018-02-18 15:53:28', '127.0.0.1', 'admin', 'customer', 'edit', '---Keys\r\nid : 1\r\n---Fields\r\ncustomer_code [old]: cus-0001\r\ncustomer_code [new]: 1\r\n'),
(22, '2018-02-18 18:01:33', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n'),
(23, '2018-02-18 18:01:33', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n'),
(24, '2018-02-18 18:01:33', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 5\r\n'),
(25, '2018-02-18 18:02:14', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 5\r\n'),
(26, '2018-02-18 18:02:14', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n'),
(27, '2018-02-18 18:02:14', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n'),
(28, '2018-02-18 18:02:15', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 1\r\n'),
(29, '2018-02-18 18:05:44', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n'),
(30, '2018-02-18 18:05:44', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n'),
(31, '2018-02-18 18:06:08', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 4\r\n'),
(32, '2018-02-18 18:06:08', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 2\r\n'),
(33, '2018-02-18 18:06:41', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 6\r\n'),
(34, '2018-02-18 18:07:08', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 10\r\n'),
(35, '2018-02-18 18:07:09', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 9\r\n'),
(36, '2018-02-18 18:08:24', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 9\r\n'),
(37, '2018-02-18 18:10:52', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 11\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: n-0001\r\nitem_description [new]: Narra Wood 0001\r\nbase_unit [new]: 5\r\nuom [new]: 11\r\nrelated_unit_no [new]: 30.48000\r\navailable_qty [new]: 1500\r\ntotal_base_unit_qty [new]: 45720\r\nbuying_price [new]: 2\r\nselling_price [new]: 3\r\nitem_type_id [new]: 6\r\n'),
(38, '2018-02-18 18:10:52', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 12\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: n-0002\r\nitem_description [new]: Narra Wood 0002\r\nbase_unit [new]: 5\r\nuom [new]: 11\r\nrelated_unit_no [new]: 30.48000\r\navailable_qty [new]: 500\r\ntotal_base_unit_qty [new]: 15240\r\nbuying_price [new]: 2\r\nselling_price [new]: 3\r\nitem_type_id [new]: 6\r\n'),
(39, '2018-02-18 18:10:52', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 6\r\n'),
(40, '2018-02-18 19:13:55', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 4\r\n'),
(41, '2018-02-18 19:13:55', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 13\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: cpr-0002\r\nitem_description [new]: Copper 0002\r\nbase_unit [new]: 1\r\nuom [new]: 1\r\nrelated_unit_no [new]: 12.00000\r\navailable_qty [new]: 150\r\ntotal_base_unit_qty [new]: 1800\r\nbuying_price [new]: 100\r\nselling_price [new]: 200\r\nitem_type_id [new]: 2\r\n'),
(42, '2018-02-18 19:15:52', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 4\r\n'),
(43, '2018-02-18 19:16:10', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 13\r\n'),
(44, '2018-02-18 19:16:13', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 2\r\n'),
(45, '2018-02-18 19:16:26', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 6\r\n'),
(46, '2018-02-18 19:16:51', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 9\r\n'),
(47, '2018-02-18 19:16:52', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 10\r\n'),
(48, '2018-02-18 19:17:10', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 11\r\n'),
(49, '2018-02-18 19:17:10', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 12\r\n'),
(50, '2018-02-18 19:17:11', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 6\r\n'),
(51, '2018-02-18 19:17:38', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 5\r\n'),
(52, '2018-02-18 19:17:39', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n'),
(53, '2018-02-18 19:17:39', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n'),
(54, '2018-02-18 19:33:02', '127.0.0.1', 'admin', 'transaction_head', 'add', '---Keys\r\nid : 28\r\n---Fields\r\ninvoice_no [new]: 28\r\ncreate_date [new]: 2018-02-18\r\nitems_total_price [new]: 6160\r\nchange_due [new]: 621\r\namount_tendered [new]: 1501\r\n'),
(55, '2018-02-18 19:33:02', '127.0.0.1', 'admin', 'transaction_details', 'add', '---Keys\r\nid : 30\r\n---Fields\r\nitem_code [new]: 4\r\nitem_description [new]: Copper 0001\r\nbase_unit [new]: 1\r\nuom [new]: 4\r\nrelated_unit_no [new]: 1.00000\r\ntotal_base_unit_qty [new]: 7\r\navailable_qty [new]: 360.00000\r\norder_qty [new]: 7\r\nunit_price [new]: 880.00\r\ndiscounted_price [new]: 0\r\ntotal_price [new]: 6160\r\nnet_price [new]: 6160\r\nbase_cost_price [new]: 780.00\r\ntotal_base_cost_price [new]: 5460\r\ntransaction_head_id [new]: 28\r\n'),
(56, '2018-02-18 19:33:21', '127.0.0.1', 'admin', 'transaction_head', 'delete', '---Keys\r\nid : 28\r\n---Fields\r\nitems_total_price [old]: 6160.00\r\namount_tendered [old]: 1501.00\r\nchange_due [old]: 621.00\r\ninvoice_no [old]: 28\r\ncreate_date [old]: 2018-02-18\r\nitem_description [old]: Copper 0001\r\nnet_price [old]: 6160.00000\r\ndiscounted_price1 [old]: 0.00\r\norder_qty [old]: 7\r\nname [old]: each\r\nitem_code [old]: cpr-0001\r\n'),
(58, '2018-02-18 20:29:49', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 14\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: n-0003\r\nitem_description [new]: Narra Wood 0003\r\nbase_unit [new]: 1\r\nuom [new]: 4\r\nrelated_unit_no [new]: 1.00000\r\navailable_qty [new]: 500\r\ntotal_base_unit_qty [new]: 500\r\nbuying_price [new]: 1500\r\nselling_price [new]: 2500\r\nitem_type_id [new]: 6\r\n'),
(59, '2018-02-18 20:29:49', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 6\r\n'),
(60, '2018-02-18 20:30:16', '127.0.0.1', 'admin', 'categories', 'add', '---Keys\r\nid : 3\r\n---Fields\r\ncategory_name [new]: SALT\r\n'),
(61, '2018-02-18 20:30:16', '127.0.0.1', 'admin', 'item_types', 'add', '---Keys\r\nid : 7\r\n---Fields\r\nitem_type [new]: Flake Salt\r\ncategory_id [new]: 3\r\n'),
(62, '2018-02-18 20:30:59', '127.0.0.1', 'admin', 'base_unit', 'delete', '---Keys\r\nid : 6\r\n'),
(63, '2018-02-18 20:31:17', '127.0.0.1', 'admin', 'base_unit', 'add', '---Keys\r\nid : 7\r\n---Fields\r\nname [new]: gram\r\nabbreviation [new]: gm\r\n'),
(64, '2018-02-18 20:31:17', '127.0.0.1', 'admin', 'related_units', 'add', '---Keys\r\nid : 15\r\n---Fields\r\nname [new]: kilogram\r\nabbreviation [new]: kg\r\nno_of_units [new]: 1000\r\nbase_unit_id [new]: 7\r\n'),
(65, '2018-02-18 20:31:51', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 15\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: flake-0001\r\nitem_description [new]: Flake Salt 0001\r\nbase_unit [new]: 7\r\nuom [new]: 15\r\nrelated_unit_no [new]: 1000.00000\r\navailable_qty [new]: 1000\r\ntotal_base_unit_qty [new]: 1000000\r\nbuying_price [new]: 0.5\r\nselling_price [new]: 1\r\nitem_type_id [new]: 7\r\n'),
(66, '2018-02-18 20:31:51', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 7\r\n'),
(67, '2018-02-18 20:35:15', '127.0.0.1', 'admin', 'items_list', 'delete', '---Keys\r\nid : 15\r\n---Fields\r\nitem_type_id [old]: 7\r\nitem_code [old]: flake-0001\r\nitem_description [old]: Flake Salt 0001\r\nbase_unit [old]: 7\r\navailable_qty [old]: 1000.00000\r\nbuying_price [old]: 0.50\r\nselling_price [old]: 1.00\r\nuom [old]: 15\r\nrelated_unit_no [old]: 1000.00000\r\ntotal_base_unit_qty [old]: 99999.99999\r\nimage [old]: <binary value>\r\n'),
(68, '2018-02-18 20:35:40', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 16\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: flake-0001\r\nitem_description [new]: Flake Salt 0001\r\nbase_unit [new]: 7\r\nuom [new]: 15\r\nrelated_unit_no [new]: 1000.00000\r\navailable_qty [new]: 1000\r\ntotal_base_unit_qty [new]: 1000000\r\nbuying_price [new]: 1\r\nselling_price [new]: 2\r\nitem_type_id [new]: 7\r\n'),
(69, '2018-02-18 20:35:41', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 7\r\n'),
(70, '2018-02-18 20:44:21', '127.0.0.1', 'admin', 'items_list', 'delete', '---Keys\r\nid : 16\r\n---Fields\r\nitem_type_id [old]: 7\r\nitem_code [old]: flake-0001\r\nitem_description [old]: Flake Salt 0001\r\nbase_unit [old]: 7\r\navailable_qty [old]: 1000.00000\r\nbuying_price [old]: 1.00\r\nselling_price [old]: 2.00\r\nuom [old]: 15\r\nrelated_unit_no [old]: 1000.00000\r\ntotal_base_unit_qty [old]: 99999.99999\r\nimage [old]: <binary value>\r\n'),
(71, '2018-02-18 20:44:39', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 17\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: flake-0001\r\nitem_description [new]: Flake Salt 0001\r\nbase_unit [new]: 7\r\nuom [new]: 15\r\nrelated_unit_no [new]: 1000.00000\r\navailable_qty [new]: 100\r\ntotal_base_unit_qty [new]: 100000\r\nbuying_price [new]: 1\r\nselling_price [new]: 1\r\nitem_type_id [new]: 7\r\n'),
(72, '2018-02-18 20:44:39', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 7\r\n'),
(73, '2018-02-18 20:52:42', '127.0.0.1', 'admin', 'items_list', 'delete', '---Keys\r\nid : 17\r\n---Fields\r\nitem_type_id [old]: 7\r\nitem_code [old]: flake-0001\r\nitem_description [old]: Flake Salt 0001\r\nbase_unit [old]: 7\r\navailable_qty [old]: 100.00000\r\nbuying_price [old]: 1.00\r\nselling_price [old]: 1.00\r\nuom [old]: 15\r\nrelated_unit_no [old]: 1000.00000\r\ntotal_base_unit_qty [old]: 99999.99999\r\nimage [old]: <binary value>\r\n'),
(74, '2018-02-18 20:53:03', '127.0.0.1', 'admin', 'items_list', 'add', '---Keys\r\nid : 18\r\n---Fields\r\nimage [new]: <binary value>\r\nitem_code [new]: flake-0001\r\nitem_description [new]: Flake Salt 0001\r\nbase_unit [new]: 7\r\nuom [new]: 15\r\nrelated_unit_no [new]: 1000.00000\r\navailable_qty [new]: 100\r\ntotal_base_unit_qty [new]: 100000\r\nbuying_price [new]: 1\r\nselling_price [new]: 2\r\nitem_type_id [new]: 7\r\n'),
(75, '2018-02-18 20:53:03', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 7\r\n'),
(76, '2018-03-08 18:37:48', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 5\r\n---Fields\r\nitem_code [old]: sil-0001\r\nitem_code [new]: 201708300026\r\n'),
(77, '2018-03-08 18:37:48', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n---Fields\r\nitem_code [old]: sil-0002\r\nitem_code [new]: 4800011121536\r\n'),
(78, '2018-03-08 18:37:49', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n---Fields\r\nitem_code [old]: sil-0003\r\nitem_code [new]: 004211214041\r\n'),
(79, '2018-03-08 18:40:28', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 5\r\n---Fields\r\nitem_code [old]: 201708300026\r\nitem_code [new]: \r\n'),
(80, '2018-03-08 18:40:29', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 7\r\n---Fields\r\nitem_code [old]: 4800011121536\r\nitem_code [new]: \r\n'),
(81, '2018-03-08 18:40:29', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 8\r\n---Fields\r\nitem_code [old]: 004211214041\r\nitem_code [new]: \r\n'),
(82, '2018-03-08 18:40:44', '127.0.0.1', 'admin', 'items_list', 'edit', '---Keys\r\nid : 6\r\n---Fields\r\nitem_code [old]: alum-0001\r\nitem_code [new]: 004211214041\r\n'),
(83, '2018-03-08 18:40:45', '127.0.0.1', 'admin', 'Item Type List', 'edit', '---Keys\r\nid : 3\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `inventorymanagement_locking`
--

CREATE TABLE `inventorymanagement_locking` (
  `id` int(11) NOT NULL,
  `table` varchar(250) NOT NULL,
  `startdatetime` datetime NOT NULL,
  `confirmdatetime` datetime NOT NULL,
  `keys` varchar(250) NOT NULL,
  `sessionid` varchar(100) NOT NULL,
  `userid` varchar(250) NOT NULL,
  `action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_adjustment`
--

CREATE TABLE `inventory_adjustment` (
  `id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_description` varchar(50) NOT NULL,
  `available_qty` int(11) DEFAULT NULL,
  `additional_quantity` int(11) DEFAULT NULL,
  `uom_order` varchar(50) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `related_unit_no` decimal(50,5) DEFAULT NULL,
  `total_base_unit_qty` decimal(50,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_adjustment`
--

INSERT INTO `inventory_adjustment` (`id`, `create_date`, `item_type_id`, `item_code`, `item_description`, `available_qty`, `additional_quantity`, `uom_order`, `base_unit`, `related_unit_no`, `total_base_unit_qty`) VALUES
(1, '2018-01-27', 0, '6', 'Aluminum 0001', 1, 50, '3', '1', '50.00000', '2500.00000'),
(2, '2018-01-27', 0, '6', 'Aluminum 0001', 1, 1, '1', '1', '12.00000', '12.00000'),
(3, '2018-01-27', 0, '7', 'Silver 0002', 0, 11, '11', '5', '30.48000', '335.28000'),
(4, '2018-01-27', 0, '5', 'Silver 0001', 4, 20, '3', '1', '50.00000', '1000.00000');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_deficit`
--

CREATE TABLE `inventory_deficit` (
  `id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_description` varchar(50) NOT NULL,
  `available_qty` int(11) DEFAULT NULL,
  `deficit_quantity` int(11) DEFAULT NULL,
  `uom_order` varchar(50) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `related_unit_no` decimal(50,5) DEFAULT NULL,
  `total_base_unit_qty` decimal(50,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_deficit`
--

INSERT INTO `inventory_deficit` (`id`, `create_date`, `item_type_id`, `item_code`, `item_description`, `available_qty`, `deficit_quantity`, `uom_order`, `base_unit`, `related_unit_no`, `total_base_unit_qty`) VALUES
(3, '2018-01-27', 0, '6', 'Aluminum 0001', 1, 1, '3', '1', '50.00000', '50.00000');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_description` varchar(50) NOT NULL,
  `base_unit` varchar(25) DEFAULT NULL,
  `available_qty` decimal(10,5) DEFAULT NULL,
  `buying_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `list_item_quantity` int(11) NOT NULL,
  `related_unit_no` decimal(10,5) DEFAULT NULL,
  `total_base_unit_qty` decimal(10,5) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_type_id`, `item_code`, `item_description`, `base_unit`, `available_qty`, `buying_price`, `selling_price`, `uom`, `list_item_quantity`, `related_unit_no`, `total_base_unit_qty`, `image`) VALUES
(4, 2, 'cpr-0001', 'Copper 0001', '1', '-200.00000', '780.00', '880.00', '2', 1, '2.00000', '353.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080063009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00ec749d223f0fc0b14571e6654e482aaa4e739db927278f5e9515c4492969a59d7cc3d04913b63f0e9f954122bcf0b4b1da47201d509298fa820ff5ace7fb58076d8daa7b79adfd12bc8a93e6773dca54f95591cbf882457bc78dae03ece3262718fc0d66dac625180aaec3a339c01fa55bd62d6fbed52ce2d7cb53824eec827dbe415862f65864cbb4608f524fe9c542d56874dbb9d458ddcb61bb6cd1efcf3f3163ff00d6ae9b49f143b3ac733c431d031da47d326bcf2c2e66d57528ed21513cd21c2a84cfeb938fc6bd4346f091b3823b9b8b923773b50751ec78fcc8a4a33bdc9a92a49599d1d9dd79c158965dc38dca7f4cf1f9561f89ad74bd565b7fb45eb452c6acbb83804f43c92081ff00d7a4d5e730c3b62658d7b6e6e4fe6463f0cd70b7cfe6484c81e43ea49e3f1216b4f6ce3a18470bed35e826a3a7c56bf347e2179e2248f299b6b2fbf1c1acefb2e9d210cf23cc7fda7a74a8bb78553f874fe750db83bf0378fa256ab12ec43c0c5b2e25bd9281b2cc4a7d0106bba4b7b1b44b0fecbb3894953f69de40dc703d4d73da5dbb93ccb758f45503f99ae9acedd3214b6e5ee2440c7f4ff1a8957f68acc16155297323621959a378e58dc4657276371c7d39ae5b51d5045149b0425724156c923f3ae8d956000c73b5b11d33cafe3e9f9d54bd5b7b9b69db50b28a558d0b3385e48046486fc45652a6e5b3d8d29d4517aadcf2bbdb96b99de40f1607185400fea2b3e2795158f94f927ef1c1fe59ae8b56f0d799335ce9328963c64c4e46f5fa7aff009fc39b55b8b69d91c3a4a3b491f23f4cd5c5686ce49935bbac92e188183939ce7f33c0af43f0ec26f1a24132f18e0166cfe5d6b80b49635ba592ea20c72096c1fe4735ea3e1ff13e930aac30a3070382b18fe671fcab392f786db50f746f8beea5d32d2d208e4649198927cc319c01eddb9e9454baee8fa678af5049eeeeaf59618f6c715bb202b9ea4939ce7fa515b34dfc32d0c213828da70bb38c1e279d4982e9a2700e0179139ffc78d6a5bdfdb4b18905869a8a7ac8653fd16b9382eee12731ca904983d2490c63f23c56b6e9ee20ff0051618ec3ccc7eab5328ab1a5efd0875abeb5f3084fece231d5612dfad60d9d97f6ade8b5b448e4958ff0a9181ea73d056de9de1dbdd5f50f2185bc5028df34a18b6d5fcfad77569a7d9e8b6522dac290008305c677672b96fd7afe9cd38a491329db428785bc3d65a29799ee775c326cf35061573c9dbdcf6e78e0d75e5e68e34491098947caca776476fafe3ffd7ac5b06f9a58a50cae4e5b78e47607e87d7a7247a56b44f35a43b1a0668f1c14cb0c7e1c8fca8e6d0ca51d6e635f35c4c18ac6231df60dcc7f11c0fa7cd5e7fac5eb5b5d3c6992c3ef3953fd303f4af4a9ee2da763b43161fc2b83b7ea064fe95ce6a62560c23ba9001db6918fd4564f96e74d272b58f38b8d62e08f964751f863f952594f2caf9374173fecd6e5dc7397c9b903b6323ff8aa8a18d89f9a61c7a31ffe2ead4e36d06e32b9bba2b4c304ea512a8ebbb24fe59ae8d2f90b04135bcac3a08f7267f9ff004ae337b82accc8bb4603052bfae4d6be957d6f6c726518f540323f1507f5a86d038b7b9ddd8dadc4c9fbc95844463e6500febc7e955fc590ad9787a1d3ad0ec9e79804850fcd2739607be31cf61d2a1b3d6d9901b38c293c09a51bbf2e793f43f854855adee56e364f777930c195865f68ea063851ec00e7ae2b4528d8e76a6a49bd9182fa245a4205bf266df0932c64e1704a851f50558e6b2759f0fddd93c5e7c3f6ed3654124126e2d3c408cf4c7cc067a67a735dbcba3beb3aaa4f7ee0db444110467e5c818f9dba600e30393c9e334cd666925d4d45c830e991c276cc7e533cc785118f62071e83dead2b2bdb4239f9b4ebd4f0cd56f24d3b516b592d582af2aca4ed65ec47b559b5d6af953769b676a66ed248e5f1f407bd7a5ebde198b595fde203791464928a0a9203641feee76123ddbdebcd2e74105bccb67d8ddbb1fceba614e9c9276396a56ab06e37192ebfe3056db7324e53f856ddbca51f828fe745352fb57b01e5c8be6af62ebfd4515b592e87336df51d71198750657b87b620f2ce368fc4e462ba2b358e5b709fdad193d77246c7f5e95caea3e26b2d4ee84c5258cfaba9c8fa329cff004f6ad9d0b4c3afb916976cd127fac76c384ffbe93f4fa571ce0edef687a90ac9bf74ec341bd4b3d1f53482e0dcce3e6271f301dbf507f1c55d875f8a7d42089d9447725bca2c77003a0520f046303d89a9f46d1d34c89fecf120565e59c7327bb1ec3a8f4faf5316a5e14b49d44b023c4f9dcb8ce6327a803bf41c0cfaf1585d3dba1aab45da4b737aded63825df0b48aa467ca24b2a9f55cf287f9d49f69b887388d3cbecd1bed07fe02dc13efcd67da4b2ad9ac13badc491f048e48c7a8ff3f4351c9752c40be6ea21da455f397f9161f8a8a4dbb12a2afb97e7b9f31099add987632479c7f31fa5731ac5dc447cb24b91d8671f96dab725e4d267c9bab39ce3abaed3f8e587f2ae6f55b8d41b3e645130edb19b1fcab1ddee75d3835d0c8bcdf231048dbe98dbfc945520ae1b0020fa6e27f954924b76d9dd19fcdbfc2a14b828df3851fef48c3f90ade3a2dc9945f62f42853e6da55bfbe17611f89156a39bcb9011827fbcee18fe80d525d52251833c3d3eeef63fcc53d35180fcaa588ee15095fe749ea28c5a674967aade093091877e877b1c91effc46ba8b0bad4ae11485b7c7a6c6d9f96e03f302b8bd3af1a3dac20c28e8d21000fcf18aea2cf539a403320191ced3d47d7807f126b35cc138c774753f6aba8a13e7dd88d57aaa00307b76c8f6fd335836be1d9b55d5a1d6b5c692182da3c450bc9976e492ce7b0c9e3bf1cf5c19a1d66d2dc028c2575e015c1dbea32785fa55efed173244f7084ab7ccb1f4ce07de39e71ee7b91db9ade32ee7238b8ecac544bdb7d3eda59dd2349aea478ede10b80d18c0dd83ec08e7ae4d71de2cd14683a8c7e48716d75109a2c8cedcf55cfb1fd08ab36929f1a78c9a5b60ff0065493ca67038554c60fe7d3ebf5ae87e2b5d2c765a6dba1032ecd9ee0280303f3fe55bd06eefb1862a318c63dd9e7893a1c86249f6e68aa42653c2939efc1a2ba4e13888adc12170727a62bdafc3d6f6ba46976f68170b972f8182e57764fe3b48fc7dabc86ced9a6b98e35fbcec00af5b8145ecaf6fe706055658a41d62948e55bfd961c8fc6b9f1376ac8ecc2593bb3a1b8be12db30840601fcbce31ba41d71ec318fc3db96586aef358331649844de5381dfa72327dfb9193dfb57377b2ea363652472a1c97c89546e50a40dc7ebc67df9aafe14d40a6a1756732e0ca33b4904e4678f43c13f976edc316d1e9ca1171bad4ea669adeef0a863322f58a7182bec0e320fd01fad56769a163bedef533de1952507f073bbff1dab22dad6ed060290320039c7d0771f4e3e86a096c1ed73e54d3c6bdc64b2ff3007e34b9da17245942ea249149695973ce26b37cfe800ae7af4b4790972bb7be094fe64d6fde17442cd2aaa8fe22abfcc85fe75cf5d4e5c9c481c7aacadfd09a9526d9b460ac63cde4b9f9ee149ff7c1a8522b32dcec7fccff002ab729047ccf2afaf2e7fa8aa2f3c4871e613f50dffc5d6f17d887034523b48c7cb6ce4faac6587eb4af76912fcb0a281d4bca131f80e7f4ac9672cc3cb895d7bb08777fe844d4ecd6b1a6f9cf9431c178b667e8037f4aab3643496e5e8aea69b0c8c807f7910feac71fcab62ca18a45f32e260c3bf9b20db9fafdd3f966b9783519a5936d969f2dcaff007dd028fe5fccd6d69e2f66944d70d6706ce4796a6765ff00be9b62d2941f51a92e86f9d562b69123b6b279262c16165c2973ec4e703dc03f85691d3354bbcc4ee2ca290664989df24a474545cf0a3ae588c9ebc1354ac6283cf172a3ce9fa9b9988623dc70147e00fd6ba4b005e6cb12ec7820e493f5cff2e071dfad282d4cead44b6343c3da65a787f4b4b4b18b6af5c93cb9eecc7d3dff0001efc9fc4c54b88eda556669ed900987fb2e4ed3edf77f223d2bbc876c58f33973cedea4ff00f5bfc8f5ae0fc5f60e969adea8d2b3add4317cadd5595d4003db15d5076679d52f2bb679b8739246e1f8e28a8c33019dc013d4515d273d8a5a23e758b6538cb3151ee4838fd715d978644f3e9c93b304be8f74510df8f36307a1ec4839c67a8fa579bc77122cf19858acaac0a30eb9cf1fad77dacc13dcdbdb35b6cd8ec3cd09d2273c90476048247a8c8ae7afd0eac224db3b217ad7302ca03da48bfeba36e761ee18755fa83cf7e6a116d6d2dc890da4334bda483871ff000105587d4eeae720f10dfd8dec72c28b7162d00960f39776d6ce0a03d571c803dab5a0d5ec2f99a358550b758bc90e33ea36907f215c93563be3a9bacd1b485e3924b79f00331e09c76656001fe63b62adff006aec8d008a491f1cf9633fc89c7e759b1a6ae90e6de2b36b651f7cbcd071f56c0fd6aa4bab4472b7d369ca1783b1cdc91ff7ceefd6a1a6356dae5ebabc82501ded9933c6492847f227f3ae53528ada7c9678cb0ff9e8039fd573fad6a1d4e05f9e00251e8563887e4327f9562ea5aa5d4848578ad87fd31da3f539350a3a9b26d2d8c99b4981937b6c45fef6d283f5c567ff0065daeec012cc7d23c8fd6a6959598b4978eeddd9a424ff00e8350e6294958c5c4e7d155b1fa9c574c2eb66653bf52dc290da2605b4509fef4938c9fcf9fca9a2e2d6390b0f2cbf526384b13f8bff004a8a1b6048cdbc680f624c87ff001dc28fc6b4956154091f96ce392b851ff8eaf14daee67cc915cdddccca0c71aa479c092e18be0fb0e9f860d588219a5756b8977e0fdfb83855ff007631803f1a85cee939767623181f29c7a1032c47e352c17915bc81048a8fd962197fd32df9e28db60bb676364d6d6eb1fda6591d8e36976db9f4da073f90e7be6ba5b1b92a8bb505ac39dab91f3b1f455edf8e48f415cae8b69733a1962852de36e1a693058fe00ffe84df8576ba5c3656cf905eea5c60be77640f7e140f60703d2b3e664ce29235ed6ddbc86902957704804ee66e38e7ebfe7b9e4bc6b203e0bbc0c412924302907867072c7df815adaf6a77861934fb143f6ab852bbc1e230460b3371800127b761c935c97c429d2cfc3763a4c6005fb46e27bb6d41cffe3c07e06b6a6f9a6ac734e3cb4ddfa9e6bb80fbdb89ff0064d14ec6400ac47e345769c673ba3b79bab4208fba19c7d554b0fe55dfea115f695f63beb40cf1fd9c2c8179ced2339faaf3f813dabce746ba8ecf58b59e527ca0f893fdd3c1fd09af71d1204bed01ad256227b7223dea7ba8f91d4f7caed23f1f5ac6bad99d386968d182d71ab6a25ee34cd57cf8187313e1b61faf51f46fc334c8b5fbb85becf7c9750bf1f72e9e3191d46d3919fc6b9fd5b4afb3eadf688255b1be56c82722dee00fa7dc3eaa78f702b66def2eec208e59119e03c8591bccf289f46f4f71c1f63584d2b5d33aa9b7ccd345f86e6df225479a4ddf311242b2b0fa1dc187d7a54d34369a826f582e6527a18ed3cd3f931269b0eab3dda6d82f25b793a811ed24fd01c1ff00c78fd6a692e6f162db7ce2624632fbf1fa92b9fa0ae77e674a6d6c4234cb081733adc439ff009eae96e7fef9df9fc8554b93a35a8fbb7b707afeede471f8960bfa66ac9d5d36946b711a9e37210d9fc7159b752d9be4858d8ffb4c7fc297c8a4df733aef538db8b6b058b1de44690ff4159b25c5c5c0db3cae107f0988a2fe59c568398d4f16f11fa5557979f92003e8dffd6ad632b6c8ca6afbb1d6f1ab630a78e8d8527f419fd6adb5b4aea36b961e850ffece4ff2a82192f18623b657f72d8c7e82a62ba8120c9e445eee791f89a6db27401a7a48b89669244fee89095fc94002aed859246c16de358c13fc207f3ffebfe155773e479b7d08fa8c93f80cff00315721bcb4b61ba6695c7f7a6710a9fc0659aa5f332a363b2d2e3b6b6224949967e80b31661edcf4fa707eb5d18b95b68ccb7122c0aa32c33ca0fe9ff02c7b0cd7992f8be4f305b693686498f036a945fe7bc8fa95adfd2b4fbcba749b569c4ae0e5605e228cfbe3a9f6151c8d6e549267650dcc97ee7eceab1c2c06091cff00bec4f6f415e51e3bd4d6fbc513c51926decd441128ed8fbc7ebb89aedbc45e298b42d198c2479d2e561047323776ff00757d7b9c01c64d78f3dc3b3b3336f67393ea49ea49aeda10b2bb3ccc44eef956c4e18038ebf5145552f3962de5f07a05e3145741ce72fdc57aa782afae5bc3b6a4cac4add98013d7cbda0edfccd145457f84d30ff11bba8dbc32990bc618b38c93d7f8b9faf039af397bfbad2f5b1059ca63864fbd160321c9fee9c8fd28a2b9a9753b2ae891dfdfd8db5a6976371042a924e47998fbad9ff67a7e95ad192b3f9039895410adc81c7bd1457354dceb87c242ba5d95d191e5b75dc09fb84a7f2c572dab431dacfb215dabf9ff003a28a51636b53299d80241e6982e662c079ae07b1c51455a13456b99e6e7f7ae7ea735634b823b824cabb8e33d48fe54515aad8cd956feee7b790c70bf96bd3e4001fcc7355631bae620493bc658e793f8f5a28ad16c33d2b40b1b58a5b68a38555244cbe3ab1faf5adcb1633cf6092729287debd0101b0063b0f6e868a2b997c4c2a743ca75dbdb9d43c497cf772b4ac93b46b9fe150c40007a71508036138e40a28af4a3b1e34b764f1a8d838ed4514531a3ffd9),
(5, 1, '', 'Silver 0001', '1', '-93.00000', '800.00', '1000.00', '1', 1, '12.00000', '1004.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080070009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a8a79e3b685a49582a8ef4012d15c95cf8cbc8ba0ab6e1e107e6c1c30fe95bda76ad67a9c7beda60c47de43c32fd45005fa28a867ba82d937cd22a0f73d68026a2b9e9fc4bb64c4306e40792e704d68d8eb1697d8557d927fcf37e0fe1eb401a14526696800a28a2800a28a2800a28a2800a28a2800a28aa3ab6ab6ba358497976fb510703bb1ec050026ababda68f6a27bb9428270aa392c7d00ae5350d465d408937828465427402b81d63c4da8ea7acfdbda468590fee517a463d3fcf5abda7f886194e2e0ada4c7ac88b989cff00b4bfc3f51f95006acd164d56512dbcc2586468e45e8ca7045680911f6890042ff7086dc8ff00eeb743f4eb44907b500685b78cef120f26e510b0ff0096ea39fc47f87e548f746eff007cd2f999fe2ce6b20db67b5225bc9136e898a93e9d0fd450069b3544ab24d2aa448cee7a051cd1692c0ce45ebb42a3a6c5ddbcfa0f4fc6b696f63b58f6dbc62153d429dcc7eadfe14017f4d92fec20ff004eb9465ff9e6dcb28ff7bffd75bcac194303907a1ae1a5ba794f2dc7a5745a0df89ed7ecec7e78ba7baf6a00d9a29296800a28a2800a28a2800a28a42caa0962001d49ed4005723e21d2dae3565bbbe7325a4600823c7c88ddc9f7fad6b5f6bf04194b7fdf3fa8fba3f1ae6352beb9bc05ae24ca0fe11c28fc28028ea1e19b3bc0591763fb5725a8f872eec49655debea2b7a2d726b298a850f6c3f849e47d0d6ed9eab61aa444c322b11c3236323f0a00f3ab2d4eef4e2d1290d113f3c320dc8df8763ee39ae9f4cd621bcc470b11274fb2cadcff00c01cf5fa1e6b4753f0cdadea968c08dfdab8dd4342bcd3d892a5907218500775034531655c875386461865fa8a97c806b8bd3fc44cbb21d52392644e1274389a2fa1fe21ec6badb6bd3f67170b22de599ff978847cc9ecebd41a009feccac3a547f63741fb96c0fee1e9f87a55e85a39a2592275746e4303c1a9766680306e2e85aa16b8cc607af7fa7ad6878627b9b8bf1702178edf04067e0b7e1e95724b74954ac8a181ec454d69349664295f3621dbf887d3d6803aa8db2a29f54ad2ea1b88f744e180e08ee3ea3b55c072280168a28a0028a28a002b8af8897932e902d2d89cbb86931dd7d0d7652c82289a463855193f4ae42ef6df3c86650439e41a00f3dd33c412da111c837c63aa31e9f43dbe95d2492aeab6dbace45257efc4dc11f5ac6d7bc38d0969add72bd78acdd084cdaa241e6345200c51876206707da80351b4dbbbb778c4322ed1f3f655f724d61dc5ac363234f6978de74671be23c13e80f7fe55b173fdadae47e65d4be5d983b96241b548f5c77fc6b0351f324c41021d8be831401d068de3f8032daeaa3cb6e8271d0ffbde95daab41790075649627190c0e4115e2bfd92492d266b4f4cd62ef40702de5ca1eb09e437e1401ddea7e15b6bbcbc03cb7f4ae5cdaeade1ebaf3ed9e48d871b90f047a11dc7b575da37896d754894329b79c8ff54e7afd0f7ad79228e74daea181f51401c969de21b4ba93f78eba65e1eb228fdc487fda5fe1fad74b0ea7e5ba437d188246fb8e0e63907aab5636a7e13b7b905edfe47eb8ed5848faae81ba092313d993f34128dc87e9e87dc5007a4a80467b51b335c8e93acacb81a74a7777b1b86f9bfed9b7f17d3ad74b61aa5b5e1318263987de8a4e187f8d0059319590491b32483a329c1fff0057b5685b6acd1e16e978ff009e8a38fc476ff3d2ab05cd38c7401bc8eb2207460ca46410720d2d60429341266d9b696392a4654fd456d4129914ab8024538600e40340135145140105dc5e7db491671b948ae32579ac67f26f5366785947dd6fafa1aee6a0bab486ee268e58d5d48c104500724caae983820f515cbebd0c5a3cd0dec09f3b96403dc8aeb2f345bad30992d3335bf789baafd0ff004ac1d6601aac76423e7cbb953229182a39ce7d2802591425a47001c22053f80c5625d430c485d82a8f526b465b992ea53158c467933cb7f02fd4ff00855cb4f0b977135f399a4eca7855fa0a00e37ecb737c7fd1e3291ffcf475fe42a48f42587e620bbf766e4d7a27f65228c0503e955e5d301fe1a00e0dec997903915a7a7ebf756588ee019a11c73f787e35b53e97d78acbb8d348fe1a00e8acefedef63df04a18775ee3ea2a79628a752b2a0607d6b846827b497cd819a371dd6b674ff00130dc22d41421ff9e8a38fc7d2800d4bc2704f992d8f96fd71ef596f737d62cb16a903cf1a709709c4a9f43dc7b1fcc576c922ba06460ca7a10720d24b0c53a15911581f5a00c8d37c4af0a0f31c5edaf4f3546244ff0078575965796d7f1092da55914fa751f5ae32fbc2f1963359398a4f63d7dab374f8f57d3b578c440a4a73b1c7dd240fe21e9401e9f753a69b6dbc806771f28f4aade1eb832c9721db2c487c9ef58b7f7af73334ae7af41e82acf86a62da8c98076ecc13f8d007614514500145145002100e41ef59979a069d7afbe5b71b8f52bc66b528a00cfb7d26d6d502411aaa8ec2a5fb228e82add140144dafb544d663d2b4e9300d00633d883fc22aa4ba606fe1ae8ca034c30a9a00e36e3440d9c2d61def87db07e5fd2bd25ad94d41258ab7f0d0079544ba868f266dd898f3931b72a7fc2b7b4fd72def888dcf933ffcf37eff0043debaab8d162954e507e55837fe108e6194183d88e2802c86e291f6e37e0646706b2120d5f493b658daeadc719cfcca3fad5c17b14d6e4c6d96e9b0f0c0fa62802abf99713ac310cbb1c0aec747d356cedd55473d4b7a9f5aa7a168e604f3e71fbd7ebec3d2ba2550a302801d45145001451450014514500145145001451450014514500145145002521507b0a7514011b448dd501a8d6cad564f305bc5bffbdb066ac5140098a5a28a0028a28a00ffd9),
(6, 3, 'PHLZD00027611', 'Aluminum 0001', '1', '1.00000', '150.00', '250.00', '3', 1, '50.00000', '2438.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080054009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f008b4eb7b66db3dd5c8b721c18cc91178df1c90d8e7d3b1ea6ab6b5a9593d8cb369762d1eaa8c361b59194609e4804647d41a0add35badb40b2df24194899536fca493f9649e79354350b2bdd2f538b51ba8265b778b66d31905c85038ce33d6a46ca56faf6b70db4569f689b74d201244ec5f6a0046703d3271f85587f11b6a464ba6d49e47c62491e43b801ea38fe55d0e9779a069d6706a2196fafee4ec8a0db811b038c3e7a907b74ef5cbea7e1ed6aff52b9d760b468998c92ce163c8c6393c704919e280343c29add9bdf08751b290a92c4c8a84151ce0827827bfe15d6da46748bfbc9ec6e6db52ba31afd924926cc8a0e49f94f2481f95733a3db25dd935e5c25c2f95f24cd0c5901b8caf1d09a8bedba5eb575fd996b6f2c4203e6bcc72afb948c60f51f7bdbad3034b4d58ef35426f66613190b92e7963e82ab59789ac34dd46e3c393249a869a929f2c3306308cfcdb5b3918e79efe9eb9fe2e9a4babbb792476ded1152a8a3e6c7f113eb8ea4fa549a4f86f4a9edaf4e9f34c2f900d90cd8ce1460e3d791400cb38ad6f354171a8df5c45e4126d58067112f64c0233f53d7a74e2a3f11408f75613e88ff6aba497f79fbb68ca8e301be6e8727f2aa315e2857599f13339408a8c727a71818ae9b41b87d0a1b9bdfb109249941b39dd4fcb8c86382003c8ca9cf43eb492024b5b4974abd167e2b093437d08f2e68c0f32c73fc253fba7d3ae3159f2f862c2daee7d35b52b38ed8804481b7024fcc071d88c11c7f4a6c8afab335d9927575932cd7041958fa951f707a0e4e3bd5193c36926aec2e219218c6f2c239b699243ea7a01c7b503b962f3c2d71a658492d95e5a5c44b824472866c138cedebdfae2b02cef6154b932329c4808755243f18fc7a5747696b159431ddc514fb7710b205da320e0f3dc83c1a73f896c74b8ade3bff0bdab34d92928958799cf5daae307d40a01916a6bfdbfa74133ea20bc8fb459c50fdd8c742589c2f3c018e067f1a96f14da34421b1bc9c4e9f3031ca51d0ffbc3823d8834e92e22d7bc5b1c1a24b67a79688c527df2a0e7d1b9c824f07d2a7f0d44f61231d66d7cf99097d9bf6e38c8ddebdba50d086c36da969ea6e67b422def1dd92ec93927396dd9eac739cfd6b33508f4f5df7170e859b1bd5ce5dfa000773f4f6af4286d65f1146f7fa8c860d3a23b49031f77f811476183c7e2de95c26af3d9dcf8b7ced0ace34f2202191bf79b57a6ff00f7b9edfa5303221d4e49d7cb7cc6ebfc3b58903a7381d7eb456d451db2ee9ae9d03c879cf1450074f7579e298265b78351861632ac062872880b1ed80338c1e71482d2fa4b994eab77f6816ac77c9e617543dcf2060d4635dd22eaf66b6d61dadbed1b658e4888611b8df9cf7c10ddab3757f0bc31dd308b500f1dcc1b8cf6d293bd3b6ec1e791d0fa5311b3e28d16f74eb9b5d5f4fb9f32dc80d6f7518fba7dc7af1d0d32cb51bfbe95dee7549e78c47f76593383c1cfb565785f5dd62cb4abfd25268af1198c5b678d884240c38ecdf4f5ab91787ed7c396ada8eb3785257218452be5a4f4057b2d26074f7b726dfc356368b22c7717ade7c9f36088fa2fe1b466bce1daf74fb78bc4b0a437115c335a142db0e3792bdb9ce0f7ed5e8de25d3e0d77448f58b040af1af95711c4718e319e3a0238ac1b9f173269963a068f6c8b294df3e06d048e83a1c28000028198117da35bba86fa5b658218f741b598365c8e40f4ea7eb5a0b762dee516c02b5c40ea7cccf0bcf23e98ff003e9b33f871f58b1b766d3a2b08513f7b7134db448dd4b0ce31f87e95cd4f631697737a901896212e23995b870003919e7bd2b01a177a1dd5fcf73a95ac62d6525a688052554edec33ce7aff4ed5577cd6f0dac724eede5a8500bf18ef81e9505c5f4fa95a225fdf31b1b561218d1b9917a1ce3191d4739c7b52dfeb1a65f3179237580b058e523039f4ec3b5302a5b6b57dac5f5c5f69f1436d6c1163683059430cfcff9e7f0c549692ea978f3116b722507fd6f9ebb5cfb02b9e4fd6aee896136966e62b5457b595b2a93a631fed707ef7d2ad7dae5b1b8b81049e54663fdf0620a8e320fe1eb400ff0cde368b68da478aee54db5f48cf0e73989f277153db04f2bdc1f622b12d66d3eff00c5ca8b72a9696c8ed6f752ae43738c85c74e4e335d8f87348b7d6bc1b73aa6b6a70142215017791d8fae0607e159da1f83f47bdbbbd924b62a8abb04c5c9db81d0678f4edc6314584249e1fd1fccfb725eef9d54b0963831dbd6b90d335eb89eda769f4fb901d0b1b8077649e493c56b685e1289755ba6b9d504b044c4c6d2b009b3d719393edfceb4e6d734fba49349d32cd4a3654dc4982cff00ee81d3dbafe143431b7d6ed069d65616d05fad8f335c07729f682f82703aaaf53d413dfdb505869503daea3a7c11c7038f25d53836effe07af3efe959b73e25d6b4fb38d23b88ae994ed36f300fe60ee141e87af4a82eb58bdbd89dad923b0b6ba855248c42771c3139f989da7b7f850063dee9577aeeb5751cb2c6905ab34686da23876cf24f279ec71c668adb4d7f55d2e08ecb41b08a2d8a3ceb8795434a7eadfc87e668a7a08b3e1af0e697a9e9db7ed51c9aaa9211674c46e3aed1bbbf3d6a8cd697f61aa4b632c6eb01e0897efc78e76e7b8cf7ac4b6d3755d66e925d23ce89b7a98f193df9c7ad76de23d1f571041a96a37f18beb78d6382da4930cca4e1ce0743839c93db1401cfaebb3e80524b6291379843bb203b54f71df20f35d17f63fee4ddeb376b1ac9872ef86925ee0fd3f215c4ea57b657026531be327007d6b0e5d5f54b361148af25ac1885650b9da38dbc9e01c5203b5d63c473dacff0064f0f4ef682e63304aac3734abd770c8c0efcf5f4e69fa6f87f53f0a4b0df4e642d73b661337cc47a7393d3bd64eabe1dd4a1b3b4d474f8a4cc83cc124a70cd9008ebdfa8c576de1bb9d6ac7c3aefaed9472c1280cb6c245e9d376003b4fd280391b7f16dd5df886ee1bd8d967fba97370c5ca7baaf039ec73c54575e1abe02467d416e32ed265861b9c6471f4fd6a2f14dc5a6a0e6f34256115b32ab0651e6ee607207b0200e9c9edc5745e1c9ae3c4966d3416cc8d12fef5253b4ee1d40f5a00e7f4510cb23d828659243d2e23da49e46003d2b7b50834fd0f4d90ea112bc6c85763602b678da077acab1b32af3b5d443ed5e79756191c1e983e9d38f6aabe21f0eeab76a3549e77b885582ca931215413c10073e83b9e451618cf0f5f6afe239a0d1b4f7fde84daacce17207727d718ad1d63c3d7da589b4ebdb80d3ca4072ab950072476fccd50d0ecce89e28b1bed39888d5d4379bd4678c03e9dba57ae78b747875cb8b7bc0ca904b6dbb7e7186e83f9d1611c46ade30b33a3697e1fb23e4db2c7b18b73e63f7e99e2b39b5cb9b6b6b9b4376a2d5c65c2a63e627e99ee735b33782cc2f6f70f169f3a5bff00abc955039cff000b03597fd9315ecb35c238552433c014b29c1cf049c81f5cd00549ee2ded2c159dc1594e07cd8cf7ebf87f3ab9a5a59cfa84b3d903e46e0a8cd8cf41939fa93f80152f8cf444b7d2f48d484d11b49fe57531e386c707dc7f43590d2c71591786e008b6f0ab9518c7a714580dfbbd16eb4ed4e0d66cf478cc222705dd57cb6c9eca48f9b033903a375ae7aeb5776bf789ede4f2ca6f8e355f980249c7b8e7afb57a87862fc78a3e17a83ccb6e028c9e4e0633fad7956acc747f10da6b2f0f9d6d1ee86543d064679fa6e1f950c03cdd46ed062d04217a1df963f5e28ad4b4d7af2fa312dad8986161952551778f5193c8fc28a2c058f0eeb1acd85aea7636aa2cc4522f9aaa9865723900f704007f1fc6aac7e251a535cdc5eda2dd4b8cc6ee49c1f71deaa8d5fec7aa2bbc3288e4dc92a1e0c8c338ff000fcab9c9f56bbd4a70628170cdf2c4ab9fd7ad0f7036ac2decb52dd76b01808c6f8a656ce4f7038047a75f7a351d7a2d1ace48ad2dd4cd210c85c6e6ebcb11d307a74aaf75f6bb4b39ee2169e285ce2362fc7d7dbb8cf439f7a341d052ecc97b3192ede552a4a8de33df2debfe73401e99e10d57fe122f0779572a3ed36a72b91d4743f4c706b67c37059dc477d6575123dc470b9b62c3388c83c0f719af2ff065cdc58bcd64f70fa55b169160b830f98598e06df43d0f627af15b171a26ab62c350b3d7659ace57fde5cc7386cfa80c395ff7460d3b30285b5a59e99e21bcb5668e39dc07453c161939fae33f97d2baaf0dda5c5f6a60d95cc0b1c2ae6646ce6418e831fceb9d82150ad244e252b872c304a0c8e7d8735b96bafc565aedb5d4080c091c61dc10b93821b83cf181db9dc7d284173012fd7c2f34ba7b58c97f3e775b49237dd5270439e3a1c0c9f502b0f58f126bbaab8b29adda1b4393232212180e4283d81c63f1aedbc45268f79e21b2d46de3fb5431c9b9d3691f2fa720734e9eeb449219265d06ee344192df69000ffc74d16031ad6db4bb8b2b7df771c73b2a96571801b03a706a9ea563acc50bc9657d2cd0e55192495a48913923009f94671c7ad67f8a6ff449b51d1c58b5cdba0320b8577ef85da3200e33fceba2d02eb44469a0d523753228f2de2232a0673c77ed401cc68c2e6eb5173717372a2318586495be73dced27a7e7d7dabb19a64d174b7988ccadf2c6beac7fcf353dcf83ad7528ccfa45ec1788a776d076c89efb4ff4ae466b3d47c4af3c0b29782ce3032e0b0c67a9c11e99c93da90137896e6e759f06dbe8d6f730cd25adc3ccee1c6d098ce38ea7716fc3150422ce3d3e2b48e1dea142eeea5bdcfae6b0d6d6ff00c35e6863149bc85f97a01ce723b7ff005eba6d0353d3dada4ba914acf1637231c9e7a63fc695fb00cfed7d4fc111ccba64c96567763ee4a9bca9ee3be07f9fa63dd1d575bb596237f118e7612487cb041c7be06074e95a3731eb7e2b8e46b0d3c49671925a59785e99e33d78f4cd53b7375631de5bcaacf2c6a3618d386efd87229b606fe9135d4fa1dbc7a888a49e3665574ebb01c007b1e9f9628ae5478a2ef48ba9a192de2b889f1222be46c2472320fae68a00e8b599535cf0fe9f15aaa4d70afb1660db2543d72cbfd47f854dff0008d0d0db4eb9b9bc983dc37ef36c4bb6551827e9dbd73deb43c191d9ea3a6477164c27ba76f2fca0a7f76dc6723d3f9d5ef1ee8d696496491dfccbab42bbe51bf744abd7e607bfd3ad5bee226d62c209145d4004b6938ce368e3d88f51fe3595a3ddd95ac2964658a1921509e59382c7fd91d4e7daaaf873c5769f639adef24022ea40e71f4ee7f99aa7e76a8da9b6b5a6da2a1b70cd1413a65a6183f7bfba7d3f5a9d86747e20bd1a5785a7b79ad524bdbf3816db031504e467dfa1f6ae46c7525b158c3db964562d99096de7be73dfeb562da6d4eee13a86ad1ca93cea6450c46483c8fa0f6eb5cedd5d5d47e20b77b983f742451f264a81fe345f503d1ecb5ad1f46b9bdbb4b2fb45beb1046460602ec6ced623eef53f90a4ff0084afc3f3b111f8795bfda170e00acebee2490eddc0a9f97d462b1b49d127bab38d96ced232675471f664660b9009c904f727ad1b86c7649e280b0ffa0e9fa7431a0c66428ec3f16358fa8f8dafef6da7d3da4125bc836c82040463f2e2aacfa36956d1ab3d8c6db98e5b000cff004ae9b4cd3b4fd07c1735d5cdaa17be24c11c83255001cf4ff3f8d3d448e45bc376971a74f7174d1473b63c989b8332818040ea381c1f6ae723d26fb53d462b44926daaff002740ff00427b639e7bd6dea1ac2e6de345843a828367deda0f434ebe4d9622f6151348a01902fde41cfe639e6968329eba97be0bd5a0805dc7796f750862f03eedaffc4b9ee7e9c73ec6ba5f097872e6fe0134ac36b8f376370231fde73f4edffd7af359b59d42e7548269dc318d9595481b481e807b0c57a55f78f6c2ef4058b4c3f67822e278ba3b3fbfb7a7f8d006a789a7d212c5ed61b25bb8a088acb38501f8e720f7c7a1cfb76ae52d3c1d14fe00bdd7edeee56999091081b7ca2ad860dfdee08f4fa556f0e5cc3ae6b90c5aa5d49142aefbad11189401490d8e8dce3dfdabba3e0cb731ba69faa40ab20c18e5dd0b11e9861408e7fe1f788156316eae152501955b9da41e9f81c8ff007581aabe3ab5b7b3d72cf6c05a0bb01a2239c64e369fa1c8a5d73c2975e178a1b98ec532f380ad0c98ddeb820e3a0accf175d6ad77a5d809bec6ad14f931249be742d819ec3048e401c1ef45866edf78035cb92a67d3a6665e0308ce71e9c515cb3f8dafe262b1cb7118f46989a2803dafc23a75ae83e0eb9bab085565b78498cb7383ebf5af03f176af7d71a85c3cb3bb337ccc73f789f5a28a6c48f40d2ace3169656f96291c2a8a49e71d6a9f8e355b9d1f4d1058958849218d980cb631eb4514302f6a44c96b6b239cb3c0ac4fb919ae4eff00275071920001b03d41a28a97b8cd6d6b579ec3520b147130047df04f6fad6d2de4d69e1bd4ef2021268eda574207dd201c51455444cc04bfb9bff17695612cacb6f7263f315188ce4fe55d57c43ba945fbc0a42c56f1ec8900e1405e28a2863380f095bc7797b76f3649545c60faf3fceb765b486d6e7cc8970fd3238cfe58cd145401a9e19d134dbbd32fe49ecd1d92625792369db9c8c1e2b97974bb6d335485edd07ef58a90cabc7b820673f8d14535b8d9cb69f02ea3af14b82d876c92a707ad75dacdc4fa7ad9ad9cf2c003f97f2b93918279ce7278ef4514c4508758beb9991259d99518e076fcba569c16d1ddab24c37000b7d78a28a00e7b5fb5846aac8130ae8b2100e304819c7b73d28a28a607ffd9),
(7, 1, '', 'Silver 0002', '5', '0.00000', '0.00', '0.00', '12', 1, '1.00000', '335.28000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080059009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00b12bc515acce7f788369dabf7bef0c1e71deac40aeb20e1882083b3e6c8c7fb39a864d335286395a2586e408d98f54181ee49e7f0a67937b6ce8d2da12772802370724f40376280174fb8f2f4fb411ceaf0ac61632c4104018e01ab10e6deeaee5daa527903ed1903ee283c0c77159d6576d15b46912ddc48a3680d138c63839e31daa586eadbfb4669619a09279513cc1c13903f3e98a00bb77279a6d1163d903ca44cb192372ed2472724738a922d1b40924cf917b1487f884caff00fa12e7f5aa976f2b9b2923ca05b9c4a012432146e30723a81d2af44f1b3f1bc139c138600fd001401634a8f4b92ce0b8827303ba873e743bdbfefacf1f8015b905f4115d476bf6a8249a446707715e0119c938f515c8e8f299f47b592531c72b46095e428fd09a7bc8835fb7b7da5a57b6664752a13018646588c751401ddc627f3d9caee88a6098a507a7d0e6a37951ad91ada17688b870ca802120fa81cfd6b9797cd8ad6697648022125821206075c818a8348d516c748b34b7d4d7ca112aa32ce086e3d8d00770443328691d0aaf3e5ae5157f2e7f3ae4bcb9ed352ba92caee7549a42fe4dbb948f3ea4f7e9d81a65deab7f73aae9c45d7990c65a4607055b03001f5fbd9fc2b5bfb5839fdf595ab9fef04da7f4a00e6b5e6bd9046f70f1cb22e5943420a8e305723e623be49c8ed55744f11e957c7ecd3422da70768390d1c87fd86c0cfd3ad6bdadc5b6b573a8c7aadb3b5a47388e08a27dabb422925bfbc7713d7d2a0d43c35e1d6b6924135e448a3251915c11fa5007a158cecba65ae5c64c4a7b7a573de2ed4a6b5b449910dc15206cdf8c566685a27873598ec756d48941e5030596f60a8a471bd89cb363dc0f63d6b53c4363e1bb4d33ed118b0b38633991e051b88e00181c9fa500720be259cf5b06cfa09066a45d7ee3fb416ce5d3254765dc0f9b1e00ff006896014fb1e6b662f0bdedc0df1dab58db919ce43cee3dc8e107b0e7d4f6a6cbe12b7b781a79e5fb3c31ae5e49be50a07a9340107daee8f29a7dd38f58cc6e3ff1d734553b4d1a7d57326956c05981f2ddde29fdf7fb89d97fda3d7b51401a696b2b87586378d7691f31cf3ef9e3f4a2dccf06cc48923f19006467dcff0085642ebba8a794cb76655f2c021b0fdcfae7b62acaf88e4481d9ac2d9a41b40654db8cb019c038ef9e940172d1e5649924859a212303f36d1d4f534d921d39af4a0b1b70ad0a28564006013d481c8e78fc69e9ae69b390668eea26ff006595d47d0715661bdd32e6f2658aee35921db1969c1507203718e3b8ea68032ef740d2996099249114dc2ee4b6fdcaa0c1c938e71d33927db153ff00c23924ecbfd9d7170a83bc8caa00f50595989fcab52f2c926b51234b0c91ac8ac6413290067d074ab22d483fbb89e3c7fcb4972bf92f5fcf1401ca69da36a034886ea5beb265db9ff5663cfd096c7d78ae8745f0ee9fa8cd14d7376e2ed1194c0800c82413863d471ed4d8b4c8ed34d925924508808dc54008be83d2b174ebf6bdba682d64837237ca19f6b103b8ff00eb1a00ed6f7c296d3dbb0b546b7936918672c1feb9e4579f5fcf7de16b0b6d21cec748c2aa4841460063201e08af40b4d727b78d61bf607770255392bf5f5fad684da7db6a96852e1d6e6ddc7001fd41a00f1b59adaeafb4dbcb8b38add60328985ba79424c85c13b319ebfa575096b673a6fb496655eb98ee198ffe3fbaab7883c013d9de5add69d99ada2326f5e8e0305c640fbc060d6222cb62e5961618ea639594feb91fa50068685f6b916f8cb701516edd61260dc4a8c75c32e4e723f0ab1acc925be897d2b34332a42cd81b918e01ed823f5ac6d335996217315cdc79605d4a233f670c0aee3d70c0e739abdabdec1ff08edf5c34d0cf12c2dbd61dc1f18e7861e9ef401afa68f3f4bb592289915a252a8ec99518e07decfe9597e23f205b410de3182392e2305a5464538756c64803b56a42bbed6196346daea08451b99723b85cd656b70472cda74370eb166e91d5643b492bf36003cf61401b51dd307c41392dff004cdf3fc8d65ebd25e6a171a6dacb348f0addc723a392410a19b907af2a2b4e496e4afef4b32fa48bb87eb5cfea2269fc49a43233451c4d23c8b1318c3285c60edc7722803af5f126a0bc168dbfde41456419632c58ac833fdd607ff42068a00b53f8574eca5d33186e36b29937177209cf00eefd07159f37866f6e62996cee1ad804cc66753248ec0ff10ce02fb0fd3b6d44b295f35d8c684e77b9ebfe35662bf587e4898b923ef3ff00850072f3e8b7b6b019de35922fe1d87e63f5ce39f60a7e954041771dd5c09f4fb8830ca7cc3c211b460ee6dbd873c57791dc3c8dbe44040fbcec7a0a9dae2033078d406231bd8103f2ef401e6f7b2462c24df3848cc91e646caa021c1c163c76ad8b5d6b528220d0ddca62ec43965fd78ae9e6d134bd4219dee218eea4700334c81ba72001d00cfa573dad4da0d9e443be6bdeed1b6e553f56cfe428030fc4fadb4f2426f2e3a27dd276ae72790a3bd7370ead25cb05d3e28d48ff0096ee718f71fe7f2ad1961d3f50d645cea1646f6dc59c68b1c923a61fcc9031c83d46cc7a73d2af5b689e1896e54c0351b3909c6cdeb321fcc023f3a00d0d2e7d56f2d02de2993ca1ff001f4000ac3dc7f5ff00f5d743a5dedfd8e1e1915e26eab9ca9ae5f4bb4b9f10582cd36ab6e90e4f93a7b3344a0670a58818248c1ebdeaf5eb6bba1691e73595aada5b0cb491cc9b02fe06803b7b8f100f2a374b2b892620e2388163c7af418f724571bad59eb5abde4661d2e7b3964c84f2d95bcce993213f2a003bf24e71cd6d787b52d46ef4c8a68f4b9add9d7731bc1e595e49e9c935ad24136c6ba9eff9d8dfead76a8fa77fd6803ceecfc1fad5e593cab79673a99e5501636dd90e4119e1739cf3c7d2b3358b0baf0fd8ddc5aa5b8d8d11dd1c6e1db6f009e381d7a135da5b5d5ee85a68b4482f92276695a58e1207cc73f2b1e3bf5ae6bc4fe2bd3ee2c86950e933cb2b488eea8e1e471b8673d724fbd006e5adb5e0b78cc96575182a08263dd918ff0067355751b08eeb5dd1606b98959673380efb48daadd8fb915bd078d6e750096b16913c5311f71f1f28f53d80f7a66a6da7def8b3458aee18a668e294b4ac388db0318fd79a009ae2cefacd4c842107f8b6024fe3d6b929e6ba9bc616eeb2c8b6f1dacbe728218372a07de0d8f5e3d2ba6d6349f0fe8b6335e5c5d1b4400902ddf697f6e393f9d72fa3787f54d4757b976be96ccfd9925fb1b02cd8666da5890c54e0723f974a00d912dbed019189eecfc93ff7ced1fa514d1e1bd67715135b103b953fe39fd28a00ec27d1839cba2cadfdf59191bf5dc3f41599f67b68f5036a8b319c217226525507039d9927ad5fb1d52f0da44649209e42a37e7e439c734c4d52ce0f11ec9e3912e6e6db72617700aa406e47d56802abd9de4ae363c53e3a089c71ff0001e08fcaab5cdf43a79d9724bce3a5bc7cbfe3d97f1ae9e66b3bc85d55e377da700fde06bcff0055bed334799da53beea56c88d465d8fa0028026ba9352d4d0f98eb696c7fe59a771ee7bd72b7f0c4f706cf4e792eee87def2f1b533dd8f4ff1ed57561d575c71f6a77b3b43ff002c236fde30ff0069bb7e1cfb8aea34bf0d4515b858d63b785793c600f72680388b2f066b5733c43fb62292631e4c0fb923e5db186f98e3f0ef57cf87351d1ef21fb70024272a2299594e064f5c376feed6a5eeab6fa65eb3e8cb2dddd6cf2cca3889467b7aff002ae4357d5af6de5fb5ddacaf70cc0ae5896639e00c76a00d2d0a72f630cf0361482a118a82bb4edee79e9dbf4ad5d584d79a57953c6510cb172ea57700e0919fa0ae2ec752961b78ada5b3781946024a704fb807d79ad1b87967d3a5827528aed19552d9dd87078f7c03401ea565a85cf94a52e25e0742770fd7357e1b4bcd76f21fb4ba2d85bb6f902260ccdd949f4e84fd00ee6b98f0e497fa85cc502b0672017665ce17d4d7a1b59cb04291dab0d8a305738fa9cfad00589639d9b31ca146785db5e73e35d52caf3c4d61e1eb54b45be9489e59dc050888c0e4b75ea3005757ad6af2685a5c8657569a4e221b8939ff003fd6bc61e7b54f1835edccedf687b6daa7631cfcd92781db8fcc5007b54703f95ba354989e4f972023f0ae57c417969a35f36a3a842d1c491ed542bf33b93c281dcd57d23518ae542875623a1079ff001aab7d14d79e38d1e4795de3b349a750e77057c2283839f534013e8da0dceab769aeeba821917e6b2b0ea2d87677f593ff0041faf496cad25875cd52fa19c8976aab39e4b01c8fe75d01d4666189a1b79877ca6d27f115cceb9ab269b79a7c16ba7b6ebebb58645131e4156e41c76c66803a28bc4f6c89b64b1933dcab06c9fc714564c96f6fbc81e601ef83fcf1450073d6536b10431b4fa7bb96058cb68fbd3af0304eee9eb529d7e28b53b496494a4f86b78cc8a41258825718ebf2d682db5e436c2dad85c436c3fe5a4a7f7ae0fa0e8bf8e4fd0d473db5ba47676e9a4c72a198ef0d16f3c8fbc49e49e3ad006bc7ac06c19e153fed01fd6b2bc29058eed4ae6ee2865b89ef65daf32062230d8500f5038e80d437363630b0b2d12178eec1c154976c50f39cb9e79f61cfd2a38743d66caeee16d2e6caf222e0ac526632b9c963b803bb24e793401d89b6d35236952d8aed19c452641fc0ff008d715aa6ab75a9b185dcc76ea78823cedfa9f5fc6afc973756431736d34049c0e432377201e3b563e89a45df8d14cf0dd456da68723c98a502e26009193fdd5c8fa9f6a00c96b9bdb9bb7b3d1d44f2a712498fddc3fef37afb0c9ab7a6f86af2d3528efde617570ad977957f451d857a05b68034cb74b3b7b1f22241f22aae17ff00d7552f35836f2be95a4451de6a38c484ff00aab71eaec3bffb239340197a6eb0fa0f87e08b58b6f3ee5cb470db8c379dc9c00b8cf4ef8acdd574bb6bad37ed3ab5bc48d75750c69a759ae0202e3a95fbcdcf6e07bd75ba1f87eded6492faf646bbd4e5187ba938207f7507445f61f8e69fadfd8b4cb65bfbb953642dbc071cb11ce07a9f61401d0687a241a058388564919cee20edc81d946001815a4f7b14564f75306891012dbc608c5735e1cb5d5a5d312f352b996dee67cc82de3c62253d14f1c9c75aa5e3492f934868cca648f018a6dc123201ce3af51401c078afc6697d753debb1f222f9625e80ff00faf8af32bdd5a7bcd284fbdbedd2ca48c764dd9e0fa6514715a9e28d5bed97223f2d56287911e3863fde6fe8bdfaf4eb6fc2b6167a9dddbaea76e363ab860c4ae496c8c918fafd68036bc23aedfbc08970d22903f8ba1fceb7d350bc6f17c72f9c7c9166e254c0c13b805fa1e0d69dd7873c3fa169125f7dbe7b11182481309037b027e6fd6b9fd2747d5f53d525b8b792358cdb249f65998a390ccdb4f209c1009c646783c66803af8f568b00481f8ee307fc2b2750d4ac5fc49a2a48257669256848518dc108e79e386eb4c9b4dd42d47ef6ca60bd77a0debf86dddfa91582da85bff6ddb445646b98d2678942649dc101e99c6029ce6803d09275906573f9515c725ccad9db9f70a73fca8a00efee85ada4426bc95a3573f24606e773e8abd4d56686f353898386b2b3ed6f137ef641fed30e9f41f9d56bff00f91fa4ff00af63ff00a1d6ec7f768032a1d1600638ade0f29070a146315135e41a6dd49696118d43527232a0feee1e3abb76fa75f6ae9a3ff8f2b8ff00ae66b8af057fc80dff00ebea6ffd08d006f5868a016bbbfb9fb55fb0fbecb88e3f645edf5ebef447a5d95917bb9a3b7b78e25c99c7c9b477c9ab569feb25fad73df13ffe4508ff00ebbc7ffa10a00d16d42f35ed22ee1d2aea6b7b6990a437928ea4e46e55f4f43fcead787ec62d2b4c8ec64b3b67f2861a583219cf766ee58f7356d7fe3c53fdd1fd29da6fdffc6802a6bdaae97e1bd1aeb5493cdc449bbc93d58f61ed9ac4d3fc2b7bafecd77c40d15dccc01b7b289f7436ca4fa7f13e3a9fcbd6aeeabff218d53fdd8fff004192ad7833fd53ff00bc680245b49a07658dae2d36f41bfe53f85713e23d6b56d7b571e1dd16e229a6452b757663f96dd4e3af62dc0c0af57d53fe4152fd2bc8be157fc786a3ff005ff37f31401a3a5fc33d32c601b8bdcdc1f99a6979258f53f5ad793c39a6e956325ede4b1456f02966675c002ba9b5fe2fad70ff001abfe49d4dff005d93f98a00c3d1f45b8f1b5f8d6e6b568740b76ff41b771cdcb03feb181fe11d877ad8b5d2eeacbc417baa09fcd7b95546590740b9c7d3a9aee342ff0091734eff00af68bff401493ff17d280384f12f8b2f344b54b5b6b457d46f1bcbb7855b9663dc0f4e793d0563e8305a5bf881ac354820bc9459969ee664cabcacf92149ec3a0fc68d53fe4b568dff005eb37fe80d5a937fc84ee7fdd1401a4fe1ed1eece76346a3a08a6cafe4d9028acf83ee51401fffd9),
(8, 1, '', 'Silver 003', '1', '0.00000', '100.00', '700.00', '1', 1, '12.00000', '0.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080054009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00d78ef85a218e46530e01652723dbea3bd675ee8f17892c9f178f1dabe517006e6c7f219ae7f48d2356b58624d6afd63575cc71b296da318eb9c03d3b7e35d968534114b6d6c1a378e2e180183d7a9a8dd976b181abf87b54f0d784a6b6d2eea6986ddc3cf0098d707704c74ce7a1ab32cfa7e81e18b204dc431f96aac5b0adbf0339ec3f3aea7c4dabdb477b13f0ea5c02abe9591753d96a9a7de585c0490ce985193b4b678143b5c2fdce6673a86ab6f07d80996db72900b602ae7279ee4d6fc17624bb922955956200b0c76270318ff3c52c56d2dad87d9a2789c0e224573f2fd78fd6b9ff00b5eb1a5ebc9f6ed39dec661b1678c799b5b3904e3a0eb490cee07908e1b385e98ad93f645d1a77799210632c1fa906b8cb8b9903a96920f2b1fc24939ec318acf49f50d655ec6db061850b5d5d392aaabe833df9e94ee4d883c2da80bab691a4b9794895b323361b24e79fd2bb3b6d4a3b7b77dcb6f2c450eedeb93599a2e93a7dbc291c16b12efe0975197f73ef563c47a3450d90ba8ee24b781582b45d093d7fce31424d0dd9905a4a3ec02e61cac53dd3cbb14f521719c7a7f8d6bddea640b64594af9f1ee68f38e9d87a57326f1ad6d58c2a1936efc2e3f1159ba5eac35d9e3490bacaac4206390a3d452e6b0b94e9f4db57b2d425bfb4b79e68e53be5452d22138c739c91fad670d36f1f5e96fa5dbf637f99620304b7e5dab5ec6d66cec8aee5b772c3f781f1f5e3a525aebf24f05dc6ab35c5d423cbdecbd46eea38ee3ad376ea3d4c3964bc875682eedda3232c2449323729ff00f576ad8d5f5cb4d27c3d717d31116e18588b06f35fb051d7358b2cb75737c9043b96e5dc318c7dd407af1dff00956fc3a5c32c24dcc69232b0c6f50dd284dec2b238ff000f78d74cbc96686edc46c80342af950dc72b8ee47eb562ed754bbd79353578e1b28c05548c7054e09c8f5ae8af2c6c5ee232d65099558ed758c16e7af239a2dad4b01b91523085b207046383434ed61dd740b7bcfecf219e63820f2ddf2734561ebf7da65ace2cd6496e264c33c7021631f1d09e9de8a77405ebcb96f14b425512186d542960b82fcf419fe7525b69f6105d24be63865e0e3bfaf38a9b40b18a6d3e558615862c0c30e36e7be3f3a8e6b38e2b968a27691b27a0e0638eb4add4436e3484591af6ce4592288ee7131c919f5fff005551920b9d4f635a3a4455f7995972323d3a76a5d7f4c9e6d1152d6792295dd12409f2ee05b0d9c7620d6e699716ba7cd6f04806436c193824723207e14b96e3b91e98a1b4f9269a542cb3795b47e233f98fd6b762b488d9fcaaaf81c87ee6b836fb5e9faf6a1650013da09cb861c8424e41cfe59adefed4d534ed30cd1b79cd2024854e131fae4f614ee2b166ee0b4b1b7b89ee631128190c70723d41ea0d67c32bcd6452c846b6adfbc01875f73ea7eb9a8a0d4eea7b4867ba22469d4172470148ed5a50c30c96b9b52215e9b557e5a3d02c664926a0a8d22db8608a4878fe6f9b1c715ad65aac57f6b04172f2152e3861cee2b83c7e358175a7ebf6d7ff0068b4bb7b981c61e0c8dc0f5c8ec7e98fc6addc5d2dbc56f7006d92400a86183cf518f5f6a13d02c41e2dd0638842fa3de323e332464f18079fc0e6934ed32ded55e6b6b711ee1b43918dd9eb8c638e2b5ad6250cb7176801914f97b876ef4d581ef3503246b2c85860939c003b0a496b70be9622378424c772ba94f2c020649fef7e1ed56b4e996e9220cea1c0084918fa73deb0b54b98bede8914723b2233092319ce4f7fcba1a2caf2fa49d208ac6e3ca503f784018efc29e4d3bea16d0d9d76c62d3f5bb299ae079855b0c3a918c81f4c815369da96cdc25c39618dddb35c7f8af58b0bdc59334af7d002bf3923e98cf414cf0ddf492d8a5bde9749549cbaf2a4678e7ad2bea3e5d0ee91633731b345bf9e474dd4b730bdf4b3fd9a3548f7140b192a000d8e39c8e735cf5e5fa22e3cf090a004872439f4e41e39aaba6eb914d75249f6899de4e084cb0603d08ebdff005a7ccb61246de97e1d8ed1a736968559db3275724fd589a291f51bdd3c34f6c4159768c839e79eb9fc3f5a2aac26c61d4a1d36cef95bf771cf1ed8b3c61b3c607e74834c9aeee63649e7865d83cc58d800c47734eb6b3f2915a67698a60e5c648c77f6ad7ba5863b6865b5932d9fbdd08f514b7dc7b189acc7736da2deac51bde5ca2ee5941cb2b0e9903fcf15c7ddebbabc3a759df4ba64224b87da4ab16da4719233c75aefa3763210bc93c337ad5b8f4a85ee11a5f2e3660c738e7a673fa75a561dce5b46bc924b66495d65914ef6d83a83d78f6aeca2b3274392e4b22c2809009c291debc735db6d53fe122b88f46936a28120232393d7fcfbd74d60d7a6de137579bcb282124c805bb8eb8cf1e9493b0344d61770dc6ab756b05c663b7553b7683b4b67807d87f3adeb5655b1ca125d81c102abd8e85670b4b2c5015926f99955ba935663920d0ee1a79e337167b70f0328de0f62a720119eb9a15d6e27a9ada55dd9dda496978479bbb74443e0e7b7f515caeaba7d9cfe273746e0caf6e85d90b673d87d7ffad56d6217d29b8b4885ba728ac873f2f5e0f61efcfe14d8f49b18ae018944736396c96cfa839eb9a6c6848b504bfb8631ab08a14200e7bd7491c535bf87a7920f92775c29039e7bfea2b3a58122b0611451aafddde00c93f875a7c9e21d274ff0ea992e76b47181f364866dc3a76eb544d8cdb4b4b5b2896d26756f2b191d067038a745f655be8d05b2f96ea47c830d8ee41ed50de4a9fda2d24cdbe09b0d951db1d71ed4d5863b5bb9ae6349a5d8be5c40b614e79a84d75299575dd06d2e0dbea4c8649edb08f22afccc8481961f9569c1058d9c691fd95a72e08e3a8c63a81f5a4f3255b092c0c8d87c1b8c77e73b7fcf6aa70a35feab2cb64fbe2897cb68f1b831fe2fcb03f5a2c061f893c3136b9716ea336f06e05833751cf03dff00c6ba9d334cb4d36c120b68d005006ec0248fafa7d292caea6bab3bd6fb51686dee15763c654ab6393cff003f7aa771753c7143f64b7de8e4796fbc2a8079e69a417e86d490dcc57b1992e2530c91b3000e36b6471cf4eb45635b6ac4e544e27c336524e361ce0e31f4a29dd0ac6c3dedb1d3a375da27ce1d49cff2aa89ab2dc2f9433bbb289339fd2b86bcd4ce9b6e200976e492c8a58051ebc8ebf955bb2905c5ac9797114f6f2449959239012c71c8c11fad2ba0b1e8fa135b399666fbf183b5091c9acfd7ef1f51bb8e080f9772d9e7180833cf1dff001ae434dbb13d989ed25bccb0e1e6001fad3fc38ba9c1afcf25f36f0b112a7fbdbbee8fa0c1fce95fa058dab4d3e28563823cbcee4ef91bab126b95d4751934af192c0272aa70a63c640e7a8aee2de52b751bb7011c1c7e358d71e1fb6bbf8827529586c8e1dc848f9739ebf5c67f1a7cbd8133a4890c70c52202015ca8232557fdafad516b893ccf2a7977dbb91b830e3f2adf13a7d9e538182bb5777f7474ac7beb069f4f92e62950807694cf39a1822e59ddc7a709b4c9add12c924220645e3079047e7597a8a35b5e4721ff00565810ddb14ad73bece1b3631bc9e5ee76627298e38ed55b57b0d562f0fdc5ce9e04ae885809fe652476e0e738a1319a7245e75bca02072885e2c9c0dc07f5ae71b43f0fdf7ee758d5bcc9514b25b5b1caae07525bfae3f5ae8fc3d7be7d864c659e5891839fba32074fceb85d3f4cbdb5f1a6a4b7f64cd60c098e53d3390477fad0f6123a0d36f6385cc33d94ada6c23f75739cbaa8f5f6ef5ab677769a9bc4d6c8238770dbbc9f988e326a64fecd9ade5496e96d278d3252450a0afad64683736d2d928b5027892475122bf1c138c1fc452b6a1722f103df787b4abff3d5a695b322ca23c1453d738273f5f4aabe08bb782dd03202f1b6e6f9b3bb272735dcc062d674d29395574070580e47420fb7b7f8d715068571e1dd71cdab2cd632655e327e6887b67a81f9d0d5b5434efa1bb7fa47d935c9a589cf93346a7ca2721b19e7b64e300d6078bf4bd46f34596df4e727cfd9f2aa1409b7a0ef81f4adb6d46e6f0c570aaa51536202bd00fe59a769fa9985996565457381b977283ee3d298af6303448a1d3b44b617cd058ce06d7fb4311b8fd4673d28ad8bfd52da67dbfd9c972c0e5961e80faf2401f4a29683dce62e6eae5af2dadeef4c85639633325c29243018c8c74e79fcab624b7b4d4b4e6b5850c321564218e43648c15fa8c8fc6a2b47fed8d06d8c91bc1344cd98c9e6360707aff860e6af69d0c9b9a499155958840a3008f5c763fe14c45ab986d45c08822831a80405fbbc600fd2b1a0d4264be984509301c85982e718e297c41a8193544d1addf172555e771ff2cc1e40fae39f6cd4f05c240a12e408e144183c7ae3047d33eb4d6a0cb70ce6e37bcac8a4771c525c194de5b881b7a08c8765e42e79c7e63f5abd7de18d365865b986fc340cbb8f2431e3b62b1edc25bc7693cf722d6de15c4a85b39c74f9ba7346c099d05bdd5beab6c2349e28e54251e26386151fd94b7ca255428bf7873fa77ae153c536fa978905ad85849344b912dc052a57d39c8cfe22bbbd372d68de4c8ab2b7442393f5340181a9ea36d6bac2406775b99a12c23542d84078ce38eddeb6ec45d0b194497127d9a4c2911a75fa573977a55c0d61af6688ca47126dea5474dbf9f4abf6be228b4eb71358ceb7d1a7324519dc6303fbc0e307b63ad4a60cafa9cf3689a384b094436c8db4798b9755cf41dbd6b7d7c8bd822903abaa283b33cb0ffebd60f88f5993c43a497d374748c8705cccca8a7bf033c9ac4f02deea63cdb4d4232bb499227dc3d7903fc28bea1d0e83c41a545aae9b2db2ef404121189c1fad73be04b7bbd3ec351d3ae620bf65937ae4e339e847af4af50d3c41ac5bb432e038c8c91820fa8ae4f5b67d13585ba5c3daadb11738e428f703bf5e94daea09f424d342b31925bacb950362b1c2f7c71d6af2dc5bcf1caecfe63ab6d3c8001f727bf3d2b9b8afadb52b59ae34d9435b2be2574050feb83d2b474ff2ee0c6400625c15007f2f4a770b134cd35b6b66d20890d9ecdc65ce1b71edb4f6f7f7ac5d4f50b88af65d261b368aef61922925fb98f5fc2ba916b08325d49bcaa8dd2caedf740fad4367a7cb77a12ddc933493236013d10119fd3fc6934c7739df0fd95c58daf94f379b2e4b4b29e4b3139ef456fe85136ada1c734d1a4770923248a17e6041239fc8d1428dd039191a8dccb61af2244f94b9b7f39d580c06c81c63a707f415ab7529b4449620371209cf20f6e9f85145084cf2bf08ea97779e313753cbbe6b9919a566e724835ec5a3e9767a95a5cdd5c45fbd84b042a481c1e38a28a711c8c1d22d043717572b34a592e0a84246dc103b63deae5f5ba4f6b346e58a904119ed4514ba08a9a269f6f69a6462253f316624f52735bb66a3040e3dc75a28a680791b8907dbf9d73169a4da8d7353445644de242a8d80c700e0fb7268a294b6046fc71a88b60e10f55ed54e7d32d119648a111481b3ba3e39c75c74a28a1822aeb5aa5e687359bd8ca51a7e1f23e9c8ab5e219246f87daa3b3966450e09e4e48c13fad1453e81d4f31f036a13c33ddd902ad04a9bd91877191fd6bd1ecdd92d52507e6751c761c5145422a5b98fe279656682d44ceb0cacbe62a9c6efafad769e1b51fd91760f238c03d07247f2345154b713d8c2d3754b8b1d4752483600650791ed4514535b09ee7fffd9);
INSERT INTO `items` (`id`, `item_type_id`, `item_code`, `item_description`, `base_unit`, `available_qty`, `buying_price`, `selling_price`, `uom`, `list_item_quantity`, `related_unit_no`, `total_base_unit_qty`, `image`) VALUES
(9, 5, '2x2x16-0001', '2x2x216 0001', '5', '50.00000', '7.00', '10.00', '11', 1, '30.48000', '1066.16000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080064009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f23d06e8985ade4fbd19c00473835d359cf34322f9726c6ec73fa549ab7855d6fd351b050ccdc4d1138de3d41e99a802bc2e125051d7d460d704da93ba3d5a29c572be86da4f6f784fda23d927fcf44feb4e974b99544a87ce87fbe9cd50b790ba83c938e9d33576096eacd8c96ec539f990f208f7159f334692827aa19128f5c11d08e39ab48d246460839ec462a4373a7de381703ec53374707e463f5edf8fe66a49acaead189c0950f42286ee4a5624b7b9de36330f70d505df85f41d50133e9d12c87f8e2f90e7d78c67f1a745206011c6d3e878abf00d806cc15ee0d4a6d6c3694b7471d7ff000a237cb69ba9153d92e1723fefa1fe15cb6a3e02f11e9a0b369ed7118fe3b63e60fc873fa57b542d9e84e3d3d2afc65b8c1c8ada3889adce79e1e0f6d0f98dd1e3729223230e0ab0c114dafa66f748d3b548c25f58dbdc2f63246091f43d45723ab7c2bf0fcea5ed269ec1cf401b7a7e479fd6b78e222f739e58792d8f14a2b4b5ed1e4d0f579ac5dcca23236cbb0a870403d3f1acdadd3baba306acecc28a28a620a28a2800a28a2803df0dbc907dc6df19e40ce7350490dbdec789230c3a7d3e86a64254ed6ce0fad4d2db89104910e7d87f9cd7927b2633e82ea7ccb49370fee3f07f03d2a285de126399192407957eb5b8ac47046d3ebeb56584170823bb40c33f29feeff8517ee34ec73be4c6e092a369edd454901bdb15c5a32bc43adb4a7e5ff809eabfa8f6ad87d1f606fb2c9b94f3b5b83f9d5736c623f36463b1edff00d6a2e376655b6d42d6f653014305c8196b79861bea3b11ee2afc713463721dc3bae6a1b8d22df548024f18254e5581c321f507a8acf71ab685f3c81f50b25eaea3f7d18ff687f10f7a7bec43d373a3830c41538f506b4626da3938ac5d1afec7567431cead19ce4a9c329c679f4fc6aaeb7e2cb4b567b5d3d7ed128e3e43f28fa9aa51b90deb646fdd6a51c1133065503ef3b1c05ae0f5bf1ccb1ca61b080cd26799a5076fe03bd4315bea7ad4bbae58b26721070abf85751a7f84a278c09a3575ee08a69a4fb8dc34bb67276dacc5ab2ecd42ccee6fbd91b94d4179e0dd26f016855add8f4688fcbf883fd315e82fe0ab745df664061d6373c7e06a9c9a7c96ede5cb118dbd31d68e7717eee81cb09ad753ca6fbc07aa5be5ad9a3ba41d81dadf91e3f5ae72eacaeaca4d9756f2c2de8ea466bdf22836e31c8efdaa536305c234724692a1ea922820fe06b58e265d4e79e1a3f6743e77a2bdab52f871a1df6e68e27b490f46b76f97fef939fd315c76a7f0bf57b6dcd613437a839db9f2dff23c7eb5d11ad06734a8cd1c35156af74dbdd3a5f2ef6d2681fd244233f4f5a2b5323de768006fc32b72187f3a511ba1cc2d9c9e84f3595a45eb2c7f6598e573f213dbdab5964d8d86078e856bc93d9250892a91211e60ec7ad5768248187523a60d5b0e251cae7fdac74a9c5b5c4d1011a34aa463e55c9140af6294529e30718ec6b463315c47b24404fbf6a71d12f25c05b59391d48db8fceacc5e1ed4b702446a3fda7ff0aa5097625ce3dca4b6654031b63d01fe552a2024654027835a0da6496c999a68ce3fbb9aaaecab920e48e73d28e462f688e6757f08da5e3c935b6eb6b97c8731f0affef0aa9a678645abe255058719eb5da4615d4391c9151491ed3907207e94eef60f322b1d3e28d8045009ed5ad1831f51c63b0acd0dd08ce7b5598eedf1b5fe63ef42b09dcb46e36f5c1a8e49e39232b2a2b29fef0c8aacf328259c8d9f5ae6b56f10aa4a6dad90c841f9b07e51edf5a624aef435e5580cbb62438ee734f8e103dff1aa3637a93a2ee88a37e55a89b300ee3f88a82ddd0edbb79151cbe5a233390a0024b13c01dc9a9893b78208fcebcb7e2578bcfcfa0d8c833ff2f522ff00e803fafe5eb5a420e4ec8ca7351576731e37f149d7f52f26d988d3edd888c7f7cf773fd3dbeb4572b457a118a8ab23cf949c9dd9ecd1c5bb23a5751e1bbed3d2e193567b74458f2ad704004e47af7ac9b7d36fa56568ecae1837711b62af3f85354bb5dbf6338edb980fe75e6c53bdec7ab369ab5ce964f18f85acf88eee127b0861273f8818aad27c49d240020b6bc948ff0061541fccd62a7c3bbe750336f11ce46e6271f90ad1b7f87a518196f117d923cff322b7bcba239b961d5956e7e264e495b7d1c023a1926cfe807f5acc7f1ef89eeb2914567029e852324fea4d7473783b4db6c192e2663ed81fe359d71656162a7c8527071f3366939c96e35083d8c09aebc4b7fccda8ca067a2284fe42a15d32f95c4925d5c3303905a4279ae960b88d4105727a62ae2c51ccb95ac9cdb3654d229586adb1163ba183d3781fd2b6d313c6195867db915837d6b852517a7a75cd52b6bdb9b672164dae0f43d0d4a653474d2445391f8e2a323201a8acf558af0f972a18a5fd1be86a67529ce323bd324a5a859b5edb346b3344deab58f068ff006660b2283ee2bac86d55a0373712ac16abc999ff0090f53546eaead6f24416231020c02df798f72686b4b8e32d6c886dedd147ca055c5e303a7b53225da07154b5dd6ad340d265bfba3c28c220eb237651492be8824edab313c75e2c5f0f69be4dbb0fed0b8522203f807773fd3dfe86bc35dda4767762cec496627249f5ab7ab6a973acea735fddbee96539c0e8a3b01ec2a957a14e9f223cea9539d8514515a199f4c47f153459aca29e082f27f317f850000f43d4fa8f4aa13fc56607fd1b463c1eb24f8fd00af32f0242750d3ae6004936f2072075dac3fa15fd6ba7974674624af031cd7154a8e3268f4a95284e0a46cdcfc49d7e58f7db5ad9c4bdfe46623f5c567b78bbc4fa8c6c175231363eec71a2feb8cd320b1d9fbb75f958e3da95f4f16b367b75e2b275246deca9ae8669d6f5cd3a7fb7cf753dec51ff00af825909dc9dcae7a11d6bb182dac35cd39355d1dc48ae3257b83dc7b11e959525a232accaa1bd41ef5ccd9497fe0df10b4da765f4eb93b8c19e08ee3d88ec7d29af7d7999cbdc775b1daf913051c63d9b8c55a8a79a2183b437f3ae79fc45a9de38fb3d84708ec6425cff004a963b7d52edb33dcb007b4636e3f2a5c96dc9e76cdf9ae02aef77555238278cd64cf7962640c922393d946e23fc290f865702477666fef39ce6b634ed0e0991a44558d63199247c05403a9269a8ae826df52a698cd35d2158dc0cf031c9abde22f14689e0f895b5394cf78e018ec6220b63d5bd07f9e6b8ef157c51b3d263934df0a6d96e30564d4997207b460f5faf4faf5af20b8b89aeee24b8b895e69a46dcf248c5998fa926ba29d0eace7a95fa44f715d7dfc54e972d74a62ff967127089ec07afd79ad6b781a3fbc80fd2bc074dd56ef49b9135ac9b7fbc879561ee2bd5fc2fe3ab6d455619fe4980e518fcc3dc1fe21fad655694a2efba36a5563256d99d935cc76b13cb2c8b1c7182cecfc00075af0df19f8a64f136ac5d329650e5608fdbbb1f735d07c45f1926a2ff00d8fa6ca1ad94833caa7fd6376507d07f3fa579dd6d429dbde6615eaddf2a0a28a2ba0e70a28a2803aef8757ff63f130889f92e226420f4247cc3f91af5f65578ce138edf4f4af02d0ee459ebd613b36d449d0b9f45cf3fa66bea13a158d9441e49a57207f13002b92bd36e5747661eaa8c6cce3658f6be1d405ed51cc8648bd585696a7ae7876c9ca4b7764840e8d28247e19ae62e7c7de1cb70c12e5e56c748a26ebf5381582a52e86eebc4d3b35939464217b7153ff67a4cc5594327dee7b1ae367f8a3691b136d617127fd74709fcb359177f13b5599644b7b5b7815c15c9dccc323b1c8e7f0ab5427733962627aa47691aa00aa011dea58fe5e08ac8f086b235fd0a1b8c8fb42feee703fbe3bfe3c1fc6aa789fc79a6f870bdbd988efb551c63398e13fed11d4fb0fc71495393762a5522a373a6d4352d37c3fa71bed66710c073b211cc921f455ff3ef5e3be30f889a978a375a423ec3a503f2dac67eff00bb9fe23edd3f9d737aaeaf7faddfbdeea372f713b7f131e00f403a01ec2a8d76429a89c552a398514515a198528254e41208ee2928a0028a28a0028a28a0028a28a002ae5deaba8ea073797f7571ff005da667fe668a28029d14514005145140162dafaeecf77d96ea78370c3795215c8f7c557a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fffd9),
(10, 5, '2x2x16-0002', '2x2x216 0002', '5', '70.00000', '8.00', '15.00', '13', 1, '2.54000', '66.04000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080064009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e43c5e41bb832841311e4fd6b938d197cc901db9181efdebd2f52b5d3a5d93ea0bf2a44768c9e4f1c715c9eb3616f676b107648669ce52053f320f7cf4eb5cee0f9ae7a10c443d92a6d3f312092c9ac6cad64691a45e66c30db8ae8bcdd39ed6e62b6866576b6940667c8fb87b560da69715ad93799e5c9747076b37cb9f7fc2ba0b4934fb78d566b92cbe594655403823079a8f69493bb68c654314eca316d1c7db42078516e19fa6a1b71ff0006a8dd5b22eade6c33472465b395eddabab6b4d2468c9a6c72304fb589e425baa818c0f434cbcd2b4292cde3d3d5a2b86c05964977639e78a6f1349752960310fec9c341746d35d4b940730cc1bf235f4158f89bc3971a624cda9dba28009121c6d3f8d7905b784103bbc97cb216e980073f9d5aff84559acfc849b71562dbb1cf4e959bc6524f734597621ad89fc75e215bfd7228f4dd49e4b3118deb1cacc9bf27b138e98acc8b5dbf6d463b30c26c636640149ff0008b496f26584a403d40ffeb53dac205b949ca30950f1b640a7f5153f5a85f4d8d7fb3aaf2f9966e2594c8cb249701c7550c0567c93a7cc1bce0e3a6f735a9888ce279239f7631ea31f85579ed6d2e707cc7f946006ea3f954bc4c7cca580a9d6c636f54b98ee6ea349a289b71881c6ff00c6a8cd706e1ddb62a073bb0074cd6ec9a7a81f2c714cbe85b07f9d577b6443cd83affbbc8ab8e217414f02df97de62fd9e127258fd05588e3581094ce0d59916dd94808c8dea56ab892387e566cad68a4e4ae8c1d28c25cb2b7a9b7e1a8e479a6b9646f2f1b4363bf7ae90327675e3d7ad52f0edc456fa5228538662c1b1d6af5fc90cf6dc14273dbad44a49b1c62d2b1cfcee8d3312dd4fad1523c7021c6dcfe1452b946efdb61b25b6d43589165dc3f750f509ef8ee6b91f106a29abdd3dfc6bb54c981c6380319fd2b5750d195f4017d72cd24e64031bb845c91b4560b206b2980c7cb8207e35b4e566911429a70733bf8a1d3255495e4c6f50d8de39c8cd453dae9aa7890741cee079a97459925d06cdcc61898c26ef97b6477fa54b712ed198e3b7248c82ccbcd78b3d24d1f434df345332fc9d373f34e464f6e78fca810e96531e7c9bb38ce0ff008559fb4cf80c5ecd07b124fe951896e55c917506d3fdd46347ccb772bbdb58100a5d94cff7b23fa5466d9149316a0bcffb5579a590464f9a8c476f218d52177963ba3839f5b7342b8c506fd1484ba571db3552ee5bc2374b6e1fdd4d5b69adc1c95809ff0070ad42d241c6c5c1f58e539fd69adef625992f708a705258cfa66a6896e264df1b0957d188cd3eea7da08662c3d268f3fa8aa8aaa7e648dd4ff7a16cfe95bad55cc5dd31d31653fbcb62a7d56ab1ba5538134a87f1a9c5ccabc0bc1c7f0cab834d692676fb96f271d411569773293ec431e2f245b7373b848704639ad18fc3302025c9c1f5aa116f8ef21736c88c1c1dcbdb9ae85dde4c97663f4ad94f956870d7a6a52bc874223b781215c6c418155eeae624cec273de91a395812308bea4d51956319dd267e942d4cde9a10cb7bf370b9a2a07922538028ad2c4d99dade58a3786e7b6b75d9187cc6339c2ee0457312e94f676b33b306f31718c74201aeca19e0782586160c84f38ed5cdea97e970a62841f2d4f2ddc9aaa92bbd0ca8ae5b5cb7e17d415743111b6f30a48c33cfb1fea6b5fedca41c69a7af1806b94f0cf9ecb75044e540656209c0ee3fa56fac374467cf6cfb1af331114aa33dec2eb49170dcb9395b1600ffb58a47958e0fd9c6474dd2671f95574b5b8da332b73c018356e2b198e7333641e9803f9d72bb23a922b34f78a3f756b183eb8cff3acf92f756dc586debd368adffb3bc632f2b71db755475d80e44807d42ff5a2335d86d1886fb57c731a9038fba3fc2a95c6a33e47da2d90fd5056e34b073bc3123b16cd53bb9acc8c3875f7c9fea2b68c95fe133717dcc917b0c8b81ba3f60723f2350c81090ca173d7746769fcaa49eda2930626571edc1aaad095e8ff00835754547a184b9ba8e77940c799b87a48b559c06eb0c79ff65b1521132f41f91a63c929eaa7f2ad63e4633235dab2a36c704303f7b35d04975339f950ff002ae68bbe7943f957444964196c0c7414e6f96d733852551edfa104af330f9e4007a75aa8cabd4966faf4ab2fb47419355e5e6a14db3474147720623380157f0a298d9cf4a2b4bb31718df63d36dec60b68bcb86358d3d145713a9585c69576566e6de463e5c9dbe86bd11793800126a3bbb08efed9edee230c8e3af707d4528cec7038dede4703e1bba4b2d66ea399772b4671ce39041fe59aea5354b42462341efb8d7296f008fc530c4e387ca1e3be08fe62ba86d26241bbe503fda183fcab9715cbcc9bea8f6304df235e64cdaac0aabb4a2fe19a8e4d4c13cb927b6055196de143ca2919a920ba8ad8ee102b3760466b99c63d0ef4da2cc572cedfbb89df3d78c67f1a94c9743a59c49ee5371fd78aa971af5c32e218b671fc202d673ddea13904a9fc5e854dbd5a07511a2cb72cfbbcb01bd58051f90a8d9279770b95b7da3d462b265b8ba8c6d793667d2a15ba88021b748ddcb1e2b454df4339324bbb2b6dc4c72846f63c55496d2e80f95d641f5cd3e4224e5446a3d8d5393ce539130e2b78a7dcc24d0863997ef40d9f6cd44c25ce7ca7c7d6a759ee41ff005a0d0d7139186945689bb99b49945a4753ca30fc6b615b3021f55159529463f3499addb185a6b68443192c54638c9a752cd21526d37a955a32464f02a22873c0e057451787ee1f994f963bf735763d2ad61e89bc8ee6a53b1152aa38e5b2b89d894889f734575e632ac766081c74a2ab98e67519bfe4c6cc24e5641c641ab0b24883e75debea2a18378e0fe556954839ede95128eb74eccc54b4b3573cd75a3f65f13accbc2c7701fe8090dfd4d758b2a4b21532753cfb77ae7fc736e23d544806d1222b7f31fd29f0b5cb223970bb806c93ed53888f3422d9dd8397bd24bc8d7b9403a2827bd5231cacc48da17a74a6f9523265aea3c7bb543e4ee3cdcafeb5cab43d0d490c1216fbe80531e061c095695ad501e6e2a19218b3ff001f048a77f31ea29b3493979d7df26a27b4b58f399d41f614d78adc0cf98ec7d2aacab1f50adf89aa8ddf525d8255b35ff968eff41551dedff86290fd4548c0ff000a542fbf1c120fd2b78a31932368e23d108a89a345fe1cfd69cc2e0ff1b7e749b1bf8b9fab56cb4ea62ddfa10b1f40a2bd2bc32aa7c3f6aeaa8ac54e5bb9e4d79c15ff0076bd17c3102cbe1cb712291cb0c8183d4d2a9aa39ea688d29271b1b736e61c715557618cbb38cfbd3a7b636f9955cca9fdc6ebf9d5391d1e3c08c807f4acd183686492c111c03c7b514c31138ce1876cd1544dcebe3855474e29ca8a1b7e783da9b2799b30bc67f3aade5bc92c667894e0e4139e0ff5a6c94731f10adc7916d301d03293f8823fad73b6937fa242ddcae3f2aec7c69199f4456c7dc90673d81045713a510d69cb01b588a256f6675e15fef3e45e174f8c6588f4c537cd7cf490fd291c8071bff2a032ed0327f115cda763d35ea23339624abe0fa9a40323a1fce9f98c9c9cf14998c8e149c7ad0324540473b471eb48d1c7fde07f0a1581538518f7e6a48d19c80aa493d028cd485caeea817853f53c556900cf2062bbad1be1cebdac2876816d203ff2d2e7e5cfd075ab177f0cd2c35078aeb5333460020431ec2df5249ef9e95b469cadccf639678aa69f2a77679b940ec1515999b80aa324fe15a96be14d42721a706d508c8f37ef1ff808feb8af43b6d26cf4a731d9dbc6991f31c6493ee4d5a10a157ca6580cfcc734dcadb1cd2ace4733a7f85b4eb24591d3ed328e7749d07e1d2b6242c0ed588a81c0e98ab326cf240380738c28acdd4758b4d342c6f203213808a72dff00d6a13948c25611da4642ac067dab1af6fad6cc11912483f8474fc6a9ea3adcb70c511844a47dd5ebf89ac16937f460cc7a9ec2ad44924bfd5a79dc12fb17b2af028a823291e4a9dcc7ab515afc89b1eb572c562623b74a6404ca006ec0514562f71f4337c4a37787aef273c03f930af32d3d8a89d474041a28ab5f0335a1fc445f505fab3539a20a47ccc79ee68a2b167a629c2e38ed9e69f8c9c741ed4515996380fdfc29d43b007db35ef9e1cf0e697a65a40f6f6cbe69504cadcb138f5edf851456d4923cfc649a56b9d2a8db22819e41ef5cbeb96e8ba94a72c770dc7268a2baaaff000cf3297c66048a1e5e7b1fcea26eca06067b5145729d7d0e63c4d7f716f2476d0b08d5c649039ae3ee3e56df925c9c163c93ef45156894457f1886c55909cb3e18e7a8c566976d8ea385031814515a47614b70b41ba1dc49c934514553dc83ffd9),
(11, 6, 'n-0001', 'Narra Wood 0001', '5', '1500.00000', '2.00', '3.00', '11', 1, '30.48000', '45720.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080055009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a4a005a28acfd535ad374580cfa95ec36d1f6323804fd0753f850ddb71a4dbb22fd21200c93c57956bbf1aac200d168966d74e3a4f3e523fc0753f8e2bcb3c43e3bf107884b25e5fc8216eb045f247f90ebf8e6b9e58882d16a75d3c0d496b2d11ef3e20f899e19f0f968e4bd1757238f22d70e73ee7a0fcebcbf5cf8d3addec9b34c862d3a1cfca702490fd4918fd2bce204924ea495fa5491dab4b2fc8a588e700572cf1327a6c7a147034e1ab573d8bc39f199b6a45afd9f5e3ed16c3f9aff87e55ea1a4eb9a66b96fe7e9b7b15cc7df6372bf51d47e35f32c36802fefdb68ec8a727f3e9fcebb7f85d6a87c61188a3dab144eecdd49e3039fa9a543172e65096b733c560e9a839c74b1ee94503a515e99e38b4514500145145001451450014567ea7ad69ba35bf9fa8dec36d1f6323609fa0ea7f0af38d77e34d941ba2d12c9ee586409e7ca27e0bd4fe959ceac21bb36a742a55f811eac5828c9200f7ae475df891e1dd0b746f75f6bb91c7936bf39cfb9e83f3af0cd6fc6faff880b2df6a12792dff002c23f9131e981d7f1cd73af267807f0f5ae59e2dbd208f469658b7a8fe48f47d7fe30eb57e1e3d3238f4f84f1b87cf21ff00811e07e03f1af37bfbfbabeb879eeee259e67e77cae589fc4d319b0324f34d481a43bc8c03dcd73b9ca4ef267a30a34e92b4158480990ed2d935622b09a66f950ed1dcf4fcea6b5b640dbb193fde3c0fcab6163675c31c0f7fe82b0a95395e80a255834f8a2c09242c7a6d4e87f1ad04842a0544089df14b120c6029fad69e99a55eead71e4d8dabcf2f7c0e17dc9e83f1ae67294dd914da8abb6670882b735e8df0a2d73a9ea175b30238963ddee4e7fa569683f0ce1876cfaccde73f5f2222420fa9ea7f4aef6d6d2deca0582da18e18947088b802bd0c260e71929cf43cac5e36128ba70d49a8a28af58f285a28acfd4b59d3b4883ced42f21b64ede63609fa0ea7f0a4da5ab1a4dbb2342919828c9200f5af2fd6fe305ac3ba3d1acda761c09e7f953ea17a9fc715e6fae78c75dd74b7db6fe4f24ffcb14f913f21d7f1cd72cf194e3b6a76d2c0559eaf447b5eb7f11bc3ba28646bb17538ff009656df39fc4f41f9d799ebff001735abedd1e9ea9a7407bafcf211f53c0fc0579eb48776507b67d2a37381924e4fe75cb3c4d49f91e952c0d2a7ab577e64d7577717d70d3dd4f35c4edc9691cb1fccd5576e78033ebd85217c1e3a1ed5148e07de38f61c9ac926cebd12d042c4375dc3d69cd900162101e99ea7f0a60739f94055f7e4d39222ed820e4f6abd11377d0236f98054249eedcfe957e0b632b067cb1f4a5b6b23919054776adcd3b4eb9be992dac6092473d1635c96ff00eb5633a9d223d12bb2bc506cc6130476f4ad4d3f4dbbd46e85b58db3cf31ec83a7f41f5aef340f858f26c9b5a98c69d7ecd13649ff0079bfc3f3af49d3b4bb2d2adc41636d1c110ec8b8cfd4f73f5ad2960673d67a2382b66108690d59c0681f0bc0649f5b9f71ebf6784f1f42dfe1f9d7a159585ae9d6e20b38238621d151702ad515e9d2a10a4bdd479356bd4aaef36252f7a28ef5b1909451450071ff0012757bed13c2bf6cb099a293ce54665c676907b91c738af0792f0ea1399ee2e649677e4b4ac493f9d7ba7c55804df0fef89ff966f13ffe3ea3fad7cedb700cb92083d48ae0c553e796e7a582a9c91ba46894e4e064531a02473c9a8e1ba97015ce40e2aadd6b914395813ce707059b803faff2ae0f63513b23d68d68b57276849ce3b75f6aa171770c430ade638feeff008fff00aea8cd7b717671339c7f757803f0a8c29cd6f1a36f8899546f6246b8965eb845ee16a48901c01c8a624449c6302b474fb0b8bb9d2286377918e15114927e805549ae80bcc8562dcf8c7d4d6f697a54d733a43040f34ee7858d4927e95dff00863e135e5ca24fac39b38ba885706423dfb2febf4af57d2340d3742b7f2b4fb548b23e67c659bea7a9a71c34ea6fa2392b63a9d3d23ab3cd740f8533dc149b5998dbc5d7ecf19cb9fa9e83f5af4ed2f46d3f46b7f22c2d638531ced1cb7d4f5357e96bba9508535eea3cbad88a957e27a09da969296b6300a28a2800a3bd1477a004a28a28039bf1fc06e7c0bac460127ece58003fba437f4af9b658c848d338c0f5afad88cd79c78c7e175aeaa5ef746d96d7679787a472fd3fba7f4fe75cf5a9b7aa3ab0d5630f765d4f11886c52c4f38ce7f90ae6be6334bbc7f11c115d8df69973a75d3db5edbbc5711fdf47e08f7f7ac016be6360292c4e001fcab939edb9eaa8f994d22dc0103156a381e661146acd2336d545192c7d00ee6bd03c2bf08f5bd5f64f7e3fb32ccf3fbc5ccae3d97b7e38fa1af68f0e782342f0bc43fb3ed14dc630d732fcd237e3dbe8302b48d194f7d0ceae329d3d16acf20f0afc1fd5f53549f5763a75a9e763006561feeff0fe3cfb57b3683e13d1fc37084d3ad1524c61a67f9a46fab1fe5d2b70515d50a318ebd4f2eae26a55d1bd041452d15a9805145140094b494b4005145140051de8a3bd00251451400b4514500627887c31a77896ccc37b101201fbb9d47ce87d8fa7b74aa5e1af01689e19457b683cfbb039ba9806727dbfbbf8514547245bbdb52fda4d4796fa1d476a28a2ac80a28a2800a28a2800a28a28012968a2800a28a2800a3bd14500251451401fffd9),
(12, 6, 'n-0002', 'Narra Wood 0002', '5', '500.00000', '2.00', '3.00', '11', 1, '30.48000', '15240.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080064009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa2b03c51adcda1d9433c68ac2493cb24ff0f04f4efd2b949bc4ba8dda065ba210f4f2f8ae5ad8b8527668de9e1e5515d1e8cf2a4632ec147a938ac693c57a50198e6337fb8b5c14b7134ad99e4773eacc4d557b70cc648db639efd8fd4570cf319bf8158e9860e3f699dccde33887fa9b563eeed8fe5550f8d2e563622d6277edf311c5722b2953b665d87d73f29fc7fc6ac051c62b9e58daefa9b2c3535d0d3b8f1a6a9282aad1c3feea723f3aad6be2fd4ede60f2dc1957a10ebc7ff5aaabc71ca3120c91deaac9652292572ebe84d62f1159bbf333554695adca7a069de32b0bada973fe8ce78049ca9fc7b7e35d1248b2286460ca7a10720d78aed0ad93bd5876cff4ad2d3f58bdd35c3412ba03fc27943f8576d1cc64b4a8ae7354c0a7ac19eb74b5c969be35b79484bf8fc87ce37ae4a9fea2ba786e22b88c490c8b221e8ca722bd4a75a1515e2ce09d3941da48968a28ad48168a28a004a5a4a5a004a2968a00e1fe276c7d06d627ce1ee460838208538c5798db6a13d84aab31cc6ff764c7cac3dfd0d7a87c4b895fc3d0c8464c770a703af208af33dd198424e164889e32383f5f7f7af1f1bfc53d5c1b5ecec7416f711dcc794c7bae6a654c720fe06b955136972f991977b6f63f3c5fe23fcf15bf637c974b92c32dd08e87ebe86b85c7b1d2e362e955914a919cf63501825b7ff547720fe063d3e86ad84c8e7f434f0991fde15985ec568e45978ce187507823eb536c2075a73da2c986e723a303861510692dfe5957728fe303a7d476faf4a2c03da08e5501860d5792c993253247eb5715959739c8f5a72b1dc40048f7a2c17664327cdc9c7e1562d2feef4e97ccb59d93d769e0fd455f92d62b8ea003ea2a8c960d037ca0b77ce3a7d684e517788ef192b33abd2fc6aae152fd00ede647fd47f857596d776f790acb6f2ac887a1539af2353bb865156adeeae2ce512dbcacadeaa707f2aefa3984e3a4d5ce4ab828bd61a1eb03914b5c6e9fe32600477b1eec705d073f88aea2d2fedaf63df6f32b8ef83c8fad7ab4b114ea2f759c1528ce9fc48b5452034b5b190514514018de26d19b5cd1a4b48e4f2e5dc1e363d370f5f6af1bbbb19ec2ee4b6b984c52afdf888e08f51ed5efb8ac6d7bc3d69ae5b6255d970a3f75301ca1fea3dab931386555732dce8a15dd3d1ec78cc64c5f321dd18e9dcaff00f5a86b660de7d800b275783b38f6f7f6ff00f55686a5a55e6917661b98c2c9d46395907a8aa8a323745c1ee3b83ed5e4ca0d3b3dcf52134d5d17b4ad604c9b24078e195baad7411912282ad907a572924115ec8afbc4375fc330e15fd9bfc6a7b1d465b5b836d72be5c8bd431e1be959b572ac9ec74db682ab819523dc75a5b69e3b94ca1e9d41ea2a709d9b007a543422935a3213242001d48238fcbb7d452c72293b5c1493fbbebfe3f855b18539049a73dbc7711905554fae38a0572229dd7a91406c0c3e0ad44c971667f799963f61c8ff001ab3118a74dd19078e7d4500d1525b28a6cb28c37d6a8c96b2c1d5723f5ad67571f700fe94c2a5ce24a4526cca04375c93ee714f8679ada512432b2b0ec09e2b425b15939039f7aa32c5344d829c7bff008d3575aa0ba7a1d0e9fe31960223be8f7af4debd6baab1d56d3504dd6f3ab7aaf423f0af2f7507ef0dbeedd2a359e2b4955a3999651c831923f5e95dd471b523a3d51cd570b4e5aad19ec19a2b95f09eb777a94d716f70438890307ee327a1a2bd784b9e2a48f325171766757494b45592676ada3daeb16861b94c91ca38fbc87d41af2ad6743bbd12f76c89953f724030b20fe87dabd9aaadf585bea36af6f7512c91375047f9e6b0ad42355799b52ace9bf23c5a32b38253193f794fb7f23523ac53c060ba5668d4e15b1868eb4fc45e18b9d16ebcf898bc2df7653d0ffb2fefe86b361956e0b232f973af0cadfe7915e4ce0e0f9647a709a92e688d8e79f4c96312485a13feaee13b7d6ba5b2bd8ae02ac842bb71907e56fe80d6221215e368c10d8dc87bfb8351790f6a0cb68de7dae72d1f75ff000fe558b89aa699d718981ff3c522aed6dd9ebdfa8aced3b570caa0932c238c9fbc87deb72328e81d0a953d1bff00ad50e3625ab116fe02baf1e86a096cd49f360255fafcbfe79ab6c8bd0a9fc7a7e14d00c40ef60107393c6284848ad1c9bc849d4249d8e783fe1531b6207f4acdbef11e9b02b228fb54a06311723f13d3f9d604fa9ea37c3cb84ba443ac71eec0f6269a8df61fa9d2dcea167607f7d3ae7fb8796fcab0affc59e62b476b6c319c1328e7f003fc6b3ce981079d7770b0c60f3cf27f135556ead24bb48f4f88cae8c097192179ee6b550b09589dee2e1e0c4caf3673c37cbb4fd050a6498e3783c01800601a7c8ebb806ea3a679c1a88f9efc431b2f39dc7e5cfe3d6b4565a2159bdcf44f87d66d1595ddd313892411a7a614727f327f2a2b53c1b6e6dfc2d640b062ea64241c8f98e68af669ab4523c79bbc9b37e8a28ab2428a28a008a7823b885a29a3578d86195864115e71e26f07bd913756c59adc72197efc3fe2b5e9948ca18608c8acaad28d45691a53a8e9bba3c520b8cca2deef02423e471d1fdc1fe9564092194157dadd989f9587bd74fe26f07af96f7167117889cbc03aa9f55ff0ae456492cc793767cd80f0b26391f5af22ad29527691ea52a91a8af1261179d2092db305da8f9a31cabfd3d7e9d7d335734dd44ab1507cb981f9a36e437d2abba0010921a3ea922f55a7158a75dd76db645394b851c1c7f7bdfdff003cd60d1b264fa8f89e78a4305ac0aa7a191cee0a6b166bd92f1834f70d3b67a16f956abdcbb09a570449b8ee195c0c7d2a092f60051235467ce4b2c78fc87f5a5a752ada683e53b4b31954229e020ab51b6a10c0b0db46b0c648632b903a8fc49fc2b34c4d35d2995c1dc470579c7a0e6ba0702491a57ddcf237f403e95ac1266751d95999ad631487cc999ae5fbb484eda9e16d885142c68fc12178fc00e2ac4ce88b9240f7638a8a1b6bcd72510e950f9ee382d92a8a3ddab78d372d228c5d44be263656861c9660dc74073ffd6aad1c779aacc61d36de5b873c7c83207d5ba0aee349f86e80acdacdc99ce73f678be54cfb9ea6bb8b5b2b6b184436d0471463a2a2e2ba6960edacd9cd5317d2286e9f6ff64d3ededf0079712a903a7028ab345779c42d1451400514514005145140086b97f1178645e07bab45512e32f17693e9ef5d4d2544e119ab48a84dc1dd1e3389b4c76da8cd06ec3c4c3054fd2ac3cf18d3e79e09331329c8c6707e9eb5e81ae787a3d441b8b7db1dd018c91c38f46ff1af39d434e9adfed11c2be5ca062485f8039ebee3debc7ad879527e47ab46b46aaeccc295c4b201142f249d43676e29f15a1597f7f2a4791fea6dd77337e34f33dbdbc7fbe7129cf0146d8c1f61d58d6969be1cd7fc43fea2dbec76adc99a71b411ecbd4ff9e6b38519cdfba8d655e34d6accc8e7b6b59d5a35f2f046e919b27f16e83f03f856f59c37faab6dd2b4f92e33ff002f120d918f7c9e4fe15d668bf0e74ad3d966bd2d7f720e774bf747d16bb14458d42a28551d0018af468e1397e33cfad8ae67ee9c4e9bf0fa16db36b739ba9739f2a3ca463d8f76fc6bb2b7b582d21586de248a35e8a8b802a6a2bb545476391b6f70a2928a62168a4a280168a28a0028a28a0028a28a0028a28a002b9ff14e936b7fa54d248192555204919c363d28a2a26938ea541b4f42b787fc21a369b143731db19ae368c4b39de47d3b0fcaba75e071451551492d04db6f51d494514c42d25145002d145140051451401fffd9),
(13, 2, 'cpr-0002', 'Copper 0002', '1', '150.00000', '100.00', '200.00', '1', 1, '12.00000', '1800.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108005f009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f21d4ff7768c3272c40aada247e66a11fb1a9358660b1a371939c55ef0bdb97ba0f8c8ace9ad0baaf53a5d7eda392ded048e550e5b6272ee7d00feb45a4306976a2e1e348b3f722eb93ea7d71f8d5c92046bc134c47eed3f20067f5e3f31eb507d8fedfaadb5b9ff0056b1abbf7e5be6ff001fcabcdaf539a4d1eae1a928a4d972cf52fecf68af6387ccbb95bf70add73fdf3efc8fcc73c56cbdfdddcc3259a4e21546cdede1eaeffdc5c7271d001d79278c633ac6d4cb732de1db1ec40226ea232493bff0ad14d27edd0a25b4120b08f0b127f14c4f73f5c67df1d70057236b63d18b495dee4166b1970d691c8fcf12be0b1fa1c103d7e507dc8aea34bd3659240e728cdcb3ab7ce7fe0472dfcc561b1ce60b49518a7caf2443773e809c2e3dff0020b5a1a625e412e0bc6841c932b199c0f5009fe42a79ba235941b8ddbd4ee2c92c2c703ecc436321ddb24fb819cfe42b416ed038f2433b763f6764ff00c79ab9f86f6dda261e7ccea796915b0bf885c32fe59aab3eada0467f7f2c7291d96e4487fef9762457542f63cb9d3bbd6f73a4bad563b68cbcc515fdf731fcd401fad60dd789f4f395dd233ff7963897f572c6b9cbdf18f866d9f6456969239e8ad6c031fca3feb55d751b9d5466c3c2a1d7fbcb6c71faa8a539cba1a53a115ab46a49e2658f7086cef5dbb1134241fc17159b2f892e643fbeb3bb88f6602603ff001c73fca99fd97a8b82d2e8ba6a8eeafe5647e1c9a6259479282ca08dfbac1049ff00b2a62b16e56d5337b416c49ff0915f3102dafad87aadc97c7e4c01350ddeaba9bc4c64b9d3e3ff0068d8009ff7db0feb5686850ccb9934cbc0dda458643fa1154e5d13ca70f0cf776aebd0cb6d215fc30062b26e4b70bd37b230ae1b5458da41a869971193cac1827f402b43c2505fcbad5a132a384600230ed9c751df9fd2aa4f1ffa410db1dd783285396fa9249fd6babf08db88f59b0888fde3c81cfb01cd71622a29479175d0ceacb4bf63d076b63ee3601c74a2b624c0e48cf3457992c969276e6679eab3ec7c53aabb3de05273815d37851046859bf0ae4ee18497ee4f4ce2bbaf0ec6bf65857018961c1e33cd7e849f2c1b381ae69a46ddfc6a9a1cb20203cc8a0b7d4ee27f2da3fe03556d2e56316d38232ca1491dcac6abfcc567dfde95b3862f337c3b80120e8c857683ec7819f7cd652dcba2987a327cebf5cf3fcabc8e46cf6a324b43a9d1ee3cc4b881cb0059770cfde183951f50bfafbd741a86af2c205b5a8c622624a73925bcb007d705bd80503d2bcfb4fd44c37914f1302db86031e01e0ae7f203f3aea74d495c35cc5ff2ce07939e305551149cf400904e7d0d675216675d09465abe84571a87d9cadbc2dbe41f2b34637127baa9e98ec481cfb0eb59f5db958cc7132a2a9e4200e41f766f950fd2a2f254dabcacc56dc8e58e434dd813dc2f070a3938e718cad784199971fba41f77006efc3b2fe1cfa93d6a6c96a772f7b4253f6ed49ff7d3c8c473ba66de57ebbf38fa85abfa769f6acffe90f717e57a8dff0022fd4f03f4fc2a8dbc32ea121b7b5711c084062a32589e83278c9f7cd7696623d3ed5e28a1496380ac6aac7735c4ec4804e7f8061b1c73b6a6536673491269f7b1e9e43d868b61112389193713efb8803f25ade8358d6f52608d72777f08802c6a3fe04c39fc0573babea3168e52dd2644bc6199ae19f9dddf19ce71d3d3e94cd1f539c4c6489aeee33c3492dc1862cfb28c29fc455c26deece39d38b5cca277261d32de30d7f359bdc753e6fef589f6f3085cfd05559b5970fe558db6ab201fc0a36a7fe4253c567c9abce479975e22d3f4e45e0243302c4fb83819fcc563ea7a8595e44cd7575ab6a6a3a2aa42a9f8101aba1b696872c61ccf5d7fafeba9ab3ebfa8432664d2b4c45eff006ad45633ff008fb0fe554aff00c4f34968c23834e889f9775a5e89883f41c0ae3a6bcd19641145a4466563851737641cfd142e6ad2440c8a91431c40ff000c7bb683ea37127f335c9899c631f3febc8da304bfaff82cb5636de74a5dfee2f26ba4f05c9f6bf1ac671f2c68e7f4c5635c30b3b1d83038c9ad5f8643ccf114d21e76c27f98af2a8ae79a974bafcc8acfdc67ab4c00e71cd1449da8aee9c5b936798b63e2187e79cb7a9ae92df5410858d572100cd73501da735a9a7b1682f9891e5ed5073eb9e31efd7f0cd7d2d4d2061495ea5cbf3dca9dc992d0cdc919ced3c723e87b7b7b54536f4856507257eeb8e847f902a87da1524405728739edcff927f0abd0cc20c91fbc81fef291d0fb8ff3fe3c8e363d08cae3633f28954653a3afa7b7f85751a06a71fef6cee41922b94740dbb19dd8247d4945fa1cf5cd739f67f2dbcfb325a3232633c903ff006614e42b8628a767de741d53fda5f5159cd29a37a727066eeb5a86ebaf246d6487030bd19881fa74c7b63d08a8a595adf4fb992571e61261dc3f831f78fe5c566cc5a630c87e765ea47fcb419fe601355751b97974fdac73b802c3d70c49fe7fa564a92ba476fd61f2b6757a0ddc7143a4b22fcaf234a73fde19db9fc81aded0aea3b57d4ccb317bb9a4f3e34639c793c05f6e1ff4ae36c259234840654585d9587a0e707f1ce7fe035761bc8e384b2a1133b31df9e50f07f53cfe15cf286aec6ada9455cda9246b9d62ee499cc5893cb598050cc7380373648ce3b0c1e6b66fa3b7d82de0459238818cb4ac151cf723cc4c1c9f7f4ae2c6a9299a07f29620cc65938392e7a9e08c0c63d6a0bdd62217b3191e365de46d5b28f7039eec7afeb5a420f439eac8deb958e08597fe121b3b4ffa602f1971f82385ae5af5f4a7726e6ee39d87f106dd9fc7cf34d6d5806cada5fbafa8608a7f04453fad551a8fdb2e562161b4b1e49b894e07af2c6ba945a5ff0004e3734dff00c035b46b3d35a41796f68aa54908fbcb67b138c915d9698b806693b74ae66c86e748a31851c7d056cdc5d082df6a9c715e262e52a92b77fc8e98d946c866b77864f9237c64f6aecbe13a96bebd90f41081fad793dd6a25f5248179e09739e9e95ebbf08f1e4ea0e7fd81fceabd97b28c6fe473d69270763d2e439c714533cc07bd15329a6ce248f8923c0539abb653afd8e4854e24de2403fbd8e9fccfe7544fcb11352c615046ea410e99c7a1ce08fd3f5afa9a8aeac73d17695cb3222b3383c63aff008d3eddde26c123dfb823fa8a6acaaccad9c12383ebed56162ddd0123b63a8ff3e95837656676455ddd17a32147eececc9ced63f2e7d9bb7f2ad3b78629c8fb42c96f32f2b2a0e47d47423dfa7bf6acab4610e04b831370b2632a3d8f7fc3a8adbb469a11b213ba2fbde5361b1fed2ff88c7d45724f43b69aba244d29f0dbfcb0bd7ce8c1319ff787543ee463e9552fb4395d82eddb20c919e43823d7b8f715d45818a645652227071bb270a4fb8c32ff0033ea4569359bc5105b8b656858e5650ca173fef0f933ff007c1f7358a9c96c6965b33cce512db4ac932b2ee419cf7f7a78b9036617e6048639e1fdfdbdff00fd75dddf6956f3218643b1c8c88ae936923d55ba1fe5fed1ae5af7c32e876c12943d447271ff007cb743f5ad14e2fe2d06dcba153cd0e3799080396248e83d33dfd477a65dccee5d92eae1fa05549d82f4e981fd299259cf66e1678a601b8dfb3299ff0078714db995d3637d9c3ae7f7a1588c8fa0e9f855a4aeac6337cc9dcccf3ae9c9d9632487fbdfbd27f9d6869dbe38cbcc8164638c15c103d3d69e862ba99bcfb68bca2032cf6e32cbfef06249fcff001ed56e2b2646136565b75e8e87233d81ee3f1a7566b96c73c20d3b9af627c888bb637373f4154b55d484513bb1f9547e74d7b93b4f35cd6a9762ea730ab7c8879f735c9430fcf52ecd6a55e58e849a73b49319e4397918b1fc3ffd75eebf0ae4f2f47bc7ee65033f85785dafc8c89fdd5af5bf026a02cb437c9fbd213d6b3cd25cb0e65dcce92bc5a3d4a5ba0c71457133f88177f0d45785ed67d8b548f9b243c05a982803319e3b7b1aad29f9ea681b6f5e87ad7deccf2a9685a54f949db953f797be7d6ac40f2401581f3606e3ff00adec696dd4ab29e3e86aead9925a5b2e24ff0096903f471fcbfcf6ae59cd6ccee841ee8904914604a652a8fc798572a7d9c7f5ebf5adbb08a355474202673b19be5cfaa3ff0009fafe758d69079cecb00d931e1ade55c86f6c77fa751db35a3a5472c7332581db20e5ec66f9b8f54cfdf5cf6e08fceb9a6b4d0ea84acf53ad5b7558fcecb3281cb001644cff00787420fe47fda3446d32379892322671e7479dbf460391ef8fc8541a55d5b89d20f9ece663c41312d1be7aec6ebcfa0c9f6ae98686a60fb569b722da7fbad1be1e273fddc8e3fe03ce3ba8ae6507737f68918f34b22418668844dce1f0636f70c3e5cffbc01ed59b3471ae766f8b3d50f4fc8e41fc38ab77cdf6790add42f6331e3721dd13fd0e7fa9fa567152010a463bec381f9631fa0fad0cd2211484360e0f6dca707f5fe8454afa525ce190c6c4ff00048bb5bf0e84fd013557ecd2122457d99e037407f1ce3f5ab2aba85b0ca44e73d93a37fc07b8fceb36dad99a38a6655d698d6f2159ac248f1cf99093f2fb91d47e34c8563888f29e6597b6dc027f0e8df8574b69abcae0452c2ac01fba46d20ffba7e5fc854b73069d2f17109819b901815c9fa9c93f828a3dabda462e958e56e52ce78591bce8ee08ff009650fcdf5f2fbfe158d6de17b5990cd06a32dc053f32c506e71f55ddb87e55df0d262970b6f7c248ff00e78caa1d0fd10e5b3f4db5664d1ace4651756c9e681c49b5b763b6ddac5c7e7f85691c4722b26613a0a4f5479ec16da2a4adbb50ba27a102d80c7fe3d5d6e9b73a65b58c688f76e879070ab9fe7566ef432d21f3e28ef633d373ab4a07b13e5c9f87cd51368d6eb1c691adeda281802ea13b7f161d3f23595792a895d8429b8ec87b6a7a70e3ec52bfbbdc7f80a2a06f0dea4798d62901e844ca323e8c41fd28ae754e0177d8f1f2773126acc630473807bfa1aab82a79ab91608507a3715f533678d491a566167530b128d9c023aa376abd03488e21bacc528fb92a743ee3fce3d875aceb6566750a479c3e5527a38f43fe7ffadbb63247a9c2633c3a9e437383fd47ebf8f2786abb7a1e8d2572cb327920dfdb9962c656eedc7cca3d48ee3dc7bf5ad4b5863be8d19e517310398aee1389233d893d8fb1e0f407b5654715dd84fbed1b0777ef2ddce51ce32483d8e3bf1f9d743a6695697cc97762cf617a4807cbe55c9e304700e791dbbf35cf292b687424faa2591ee238248756b54bcb33d6e6218da7a64ff71bb60fca718c81c52da4f7716e31dc3dd5baaedf350b09e15f4603e6c7b10ea7b0ae827b0bb86cc5ccacb6b3c40ffa4c272840e0ee03071db206474008acad422858225e5a0b4bd450f15c5ab6dc83d080318cfa71d7902945b4b51a49ec529f53051964b81247d0920607b301f2fe38159921b6cfcbba2ee1a2e57f2ebf88a4d4258e65637b1ee9223b3ed509d8e0fa301dfe991ed58cd6d7064d96b3798e790846c63ffb29fc706af9132b9dc4e96ce4bb5cc9094b9503e664ce71ee4723fe055a76f72854b7952c23f89a31f2fe3b415fcd49af3c8b559a0b9224056588f2f19dac87f0fe86ba7d3fc593ef417245c8c655dd00900f50debee735855c3496a8b8d64ceb6275ba4f924b5b9078c6763e3d1719cffdf2b4e6f3edc34616684778a5844b1a8f7d991ff7d0ace8f57b1bde5c42c4f0de7c6d9fa798bcff00e3a2addc466c11326fac548ca88e6596323d761ff1ae370b3d4d14afa2299b4d3eed89164073febf4db839fa94e47e82a682d67b6cc76faa2c8bd7c99f08e3ea54ff0032298fa948ec1aee3b4bf5e8b24b06d75fa0191fad5909a65e208cfdaa01e9e697c9f656dca055d9b5a306daf891247777b683f79687c93fc71c9b63fcb073f81ab89a8dd060d1e911cc847de819431fc893fcab345945673661d5a4b661d16485b3f9a363f4ad2874dd56e54308ec2f14f43bcab37e2533ff008f54f2cb7dc5274c1b54b263fe95a45ec6de922799ff00a15153bdb6ab6a02be89729e9e4df281fab9a28db712e5e9f99fffd9),
(14, 6, 'n-0003', 'Narra Wood 0003', '1', '500.00000', '1500.00', '2500.00', '4', 1, '1.00000', '500.00000', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080096009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f69b6b992f2ca3742a8b2460973c9c91ce07f8d43a6786f4dd3d54aa19e55248926c161939e30077aa305fec001208abf0df6ec1dc315b3a6cc14cd9a2abc53861f787e753ee190323359356354ee6278c177784b51f68b77e441af0a81f31dcae010633dfdebe84d6231368b7d1119df6ee318ff64d7cef68e1a695304b3c6c0019faf6fa573d5f891b53d999ecc36636f20f5a8d6192604ab2afcc3009c67069e70c7183c9a72e778c1e16bcf5ab3b52b97ad2dee23915b6c72af7532633f956a4d7172d0ba0b28867a159338fcc9aa7683763e9562518078eb5a2ba5a325a4799dde81ab896590d84db4b939519ea7daa3d0d1a2f11592ba1574b852430c1520e7fa57a3c9829c9e71593e479fa8599558c79736f73b46e202b0033f53d2bb638c6d723473cb0d67cc996afa5967758f8dcd20f9bf1cff4a8e6531c43839e801f6a27651a8421feefcd819ef8c549745bece5cf20118ae7beac7d82d6142a5c7de383f5e2a8340b7f34ab95cc736ec1f50001fd6b42dc28b58cae433673f9d56b38962727702f28dfd0e79ae797c4d9aad922c794caa00c600c5412ab2f2460138eb56c923d2a36c91d33585997733dace4ba936c71876032467b515d0f87adff00793cc106400a0e07d4ff0021457752a1cd14db309d57176477b0df9523208ff81569c1a845b73e6673d8572e84b0fbb52a320cf3b71d4915eca679cd1d645a8338db1b38cf19cf15ab6ce6dd3ed3772019e2351d58fad73ba32a483cf9ddbecd18cf3d1bdaa6b8d51b50bf41106c1f9423afdcfa1a4ddf404ada9d3db3c8e1a5925578b9380c0d7cf1e36b5bbf0feb91c7a3432c9114dc4cdc907918e315ed3ab6a2b63691c16db4aa9cb9ee4f6af33d6ee5eeeeda4719f4cf38ae7ac95aef737a4ddf4380b0b9d51a563776eb1c6070718c9ad6b57f35c93db9349aa4fe64c507dd418e3d69f6311581980ce4802bcaa8d2d8f56945db535ad48da08e98eb525c4a4646074acf79cc4c39ec690dc1943fb2d34f4138ea58239539e33546e879322b60039ce6a4790b5b020e0e3b7b553999e44cb16623f9567d4d12d064d721efa31e5925958861eb91576672d03c04852795627033f5aa56e918bb8d99c8c0217d39ff00f555a982cb1283c8e54fe1d2b683ba392ac79641bb65aed8f0311e07d714d5ff008fb62ac32000463a5399a3c054e0e401eb50db796f34ae8c73b88391deb17d4a2d16623a8fd6a3666009edf534e233d1aa298101464e33508658b5d627b08da38d2260cdb8924e68aa2dfef30fc0d15baa924ac999b8459dd4576ec31bd147a62aed8a0bab8d84a88d7991ab1629831002b73d38ae834fb8b6309b420abb039ed9af5b9ce1e524bed5048c2085f16c9d30df7aaed8dfc36f6cf29001fe1ce39ac6b9b692d243b937267861fca9269ccb128fba57dea94ada872dcb73dd35d872ec32791c818ae5f527489647ddb957dab4242f9233df1c9c573dafcac04702b64b7ccdcfe55c95ea7ba7451a7792461331924cf24939abd6974aaa63da4e0f3ef5463189558f41cfe5535a267e73ea4fe5fe4d79b2b58f55226bb6f9c0f45fea68b4399194f20a1a498177e149c20cfeb4db66fde8233b76b0cd17d03949e28e4d8e98caf3dfa540ad820fa75abb04eabb49ce09eb5424ca4a076c91f4a94ee34ac24a04726320719156e186e675f32181e546233b7a06aa179f2ac2f8ce3e5ff0ad5f0ddf0b5bd16af2110dc9c1dc3a376ff0a399c55d11521cc863e99a8a3002c642e14b951c9f6a8adecae9200ef67347b8f2307aff00faebb878a495f6aca56484e547aafa67fcf6a1e25550e19fc973f373c835ceebcadb1972ab9c64903c40165914e790c3150c9b4e0fccdf4c574ba85bb4370c656f32393e6573dfdbeb5996fa136a3741239228b23389339fc2b5a72e676443d37318b0cf08ff00a7f8d15d80d12d6da116b2c6b2321c963c64d15d3ece465ce88a390dbc5b80f99ba67b52c5239c31650e390703355b7963924f3ef4bb4b104b118f435df14d6e733b33a3b4d572be4ccc32c3193dfeb55ef2cdd07989fbc84f2181e9f5ac7464193cfe75ada76ac8a05bdc0c27627f95573770b14dd804e31b80ec38c5727a85c196ea463d00e2baff00110b7b281a785f01f8d98efed5c03a96c9dec771c9e7b571626779289df8485939046de63841db249ad548b647b3d0019aad669ce481c1ce3f5ff0ad0450541f539ff3f9d714e5a9da914649de09e51b014c004e791c0ff1a4b0840547dc727a8278efdaa6bb8434b273d4f349a70f914f380686f41a411f12b15e84f4a9afd17f78c00e70c0544aa44ee0d5cbd88f971b0c6d31b024d4b7aa1a467e3cfb368f1f3af4fe9540b12cb8078192c3b1abb07eed81c9c1fd299711f9739c7dd7f980aa4ecec292ea771a55f1d434d8aed4e678be4947a91fe35a47629dfd609b86ff0065bd7f1e95c5f87af9ac6f026018e7c230278cf63fe7d6bafc4d1fee36a1593b374fa572d45cace7946cc64b6e922358dc64c6dcc6ddc7ff005eb2648e5b49fcb6387439523b8ec456ca5a4ae8629a62645e54f50476355ded9af51a37908b88b3b41ff3d2a632716434992c1731ea0bfbd709320f98f4dd4562bc64314752194e08f4a2bb5625db53074914c339006ee94e232324927a5441810482282f85c938af5ae72d87a0507d08a9d5801deaaa15c0c1a496411a163c81cd26ca4b5b22aeb57d2dc3456ed2332a7404f4acc7c120671ce31448cf2b34c7963d067a53554997e619da2bcd93e6773d78454229179015b52d8e5ce2af5aa929183d79a80c658431fe26addaa9c479f7ac59650baddbe420f7350dacca83cb5605d7048cf6cd4c4f98ac71ce7bd32d6055b8ddb461c8c9aae8345d9e30978dc7735666512e9a33fc2707e949743f7c1f1d706a78177db4f171cae4563719cea5b98247895b284e533d47b53ae416b7cff146777e1dff00a54cea4104f041a3e5f346ee54839cf707ad697d6e36b4b15e1395009e08eb5e85a2c875bb086327fd2118231ef9ec7fad79e2c6626646ea8c47d6b7fc39addde8da8acd68d1664c46c255ca9f4fa7d689c53dce79a6d69b9e817da3de59a07701ca74913a1fafa66b2e78c49b6e61cef5ea3d47706ba88fc5225d1667ba805bdeafc9e50e4367f897dbfc2b9d6c47279831e5c9f7bd8f63fe7dab2ab1a69ae4773960e4fe2451b8b24d442cd1308e5e8d9ef454d3c524321784121baa8f5a2b33438954407681814aeaaf8e781431246318e3b52a28c82722be82e700e00280074f4aa5a8c85621183cb1e6af118c8cd625d4de75cb907e54e05615e568dbb9d1868734efd861dc01fee815359447cc058727935542b48caa0f7c9ad6d2e32f3393d3a0fceb8dec7a2cbf141f33b11d140ab1147b62ce3a2935304018277639ab0f014824c75d847e753ca4f3186f0858ce3da92141184cfb1ad596d4ece9502dbed450c3a0aa710531b791fca08f4a5b3c89769fe252a6ae5d45ba107bf22a9c3f2c8a7d0835cecd1333ae1732b8c773f877a81544911e99538ad0d4a1f26f338c2b7354635d970413c30c5527a1686c8bb911f1ce369fa8ff00eb7f2a62e08f6353755751d7ef0fa8ff0026abbb02323a76aa465256677da1de7f69e91e548d99a2f918ff0023fe7deaedbe4298251c11c03dfd45709a06a474dd511dc9f224f924f61ebf8576f34b0cae1a27f9fae715cf563cb2b9838d99346c558c2e72579527bad150cce9708bbe393239caff008d153722c71aad8ca7014fb5340cb127b74a5deef186d8632dd89e450011c9afa0380afa84820b779323a607d6b9d572b10c9ebc9ad0d5a5f3265814e40e4fd6b0ef6ed7cd8e34cf0d8661d8572cfdf9d91e8504a14eefa9a76a5963724f7c574fa3daed55fceb02d620ca8c3ee16ce4f7aecec62da026391807fad60dddd8d9bd08e1b4926d581c1da0fe42b6a7b5fdd31c752a3ff1e153da5b059cb63926b51ad77b44b8cee940fc813fd2b64af639dbb18f2597ca46daa335a109d3a0f4aed5b4f255b8acdbab108878ed552813199cbc8be65a2b0ec6b2154acdcf4c915d29847d8e5017eeb11fa03fd6b9cb91b27247a835c53566cec83ba25d48036d14b8cf63ed58b291b830eb5b771997499703253e61588489235231c8ace26b1095b64aae2abc8be5cacb8f9072bf43d2a4dc644dac3eef14d73ba3576182bf237d0f4fd6ad0a7dc726d63e80d76be1a920bcb0d8eb99a0f95b9ea3b1ff003e95c329da01e7729ad3d1b523a76a51ca4fee5be5907fb27fc3ad29c79918c95d1da483ecd2b2ed0cbd541e7028ab92c4b3aafcdc7507d68ae669dcc2e79cc52b84fde364fad3dee00899c9f95464d56560580038159bae5e18a28e05e0c8727e83ff00affcabe81bd0e28c6f24881a412b3c8e7927b552fb1acf72bb33c9a9ad8799077c9ab591676e64380c7a13d8570ddc5e87ab65636aded4092181781951cfa679fd2ba9d3f6b65f3d5b35c6e857f2dfc93ca4fcb0c7c374e5b803f9d75165388e141bb2ccd5924d3b326566b43a9b72a654ad84c79d6a0818f30b7e4a7fc6b99b494f9a1bfbab9ad637612e2cc67829237eaa3fad75c19cd24ce8c3800e7d6b3aecab267daa117a304e6a9cd781e36c1e41ad1bd0cd2d4cf600a4e00fe2fe98fe95ca5e292c3d7915d25acfe64f771e3380bffb3573da82ed91c75c357054f88eda7b0eb260eaf1b7f12e2b9e7536ec437dddc40f6c1adab27db3a8f5e2b135e8678afa4f29c0563bb69e958c3e2b1ba7608dd4cc5474618a5452e5e26fe3041ff3f95518a690b6645dac3ae3a55f661be3901fbc39fa8ab6acca7aa2bc672bc919fba7ea2a48f9e0f5eb4970bb6e19863127cc3ebdeaa5e34d1449710aee11b65c03fc35695ce7db73d17c33a88bad3fecd23665b7c2f3dd7b1fe9f8515c52cd246566b67285d4723d0f345612836f421c350de15327a0e95cbea129b9bc7983657eeafd2b6eee5db6cc09ebc03e99ac23b36f18eb5eb5495b439b0f0bde45cb19c44406e9526b0ead02fcd92c7e55159c3739017f1357ed2d84ee1e724c6a7f3ae69249f31d71775627d183db69939190659403ee00cff5ae92da4205ba83ce335944a7d846dc02599b03b0e82af452849a3e7a567cd7771b8d958e962bc0256553d38ab57177fe956cb92364249fc5bffad5c3c1a818e68e6f33764fcd9e832715b82f1a7bd66620011a8183ee6b4bb8995936745f6c22266cd4115d1911b9ef541a602d47cd5513504b7b567ce49381439dd0d4353634e206a17387c928323e87ff00af59baa809707df06a0d0f50966d724595764660207a677035635be5c32e0f15cd3bf36a69128c5feb01f4a4d7d732c52a81b5e3ebee39fea68b7c173938c0cd4da8289b4d4191ba27c11fa7f5acfa9a9cdba8d99f4e3fcfe95242de644548fbbc8a93602ccbebd0543037952f3d075f715aee8b259c6602c07cc9861fc8d470be3ee8c83fa8a986d8e4c31ca03f9a9ffeb1aabb0c73491673e59e0fb76a71574633d19234a37638007403b5151483bfad14d24495eee1fb7da342ac51d7e656ce39f7acbfec4bef20c8258c055dc46f27ff0065a28af4d9e645b1c74eb8b52a1dc36e191893ff00b1a57b6b9db857db9ffa6bff00d8d1454752655249d931b2417f13fcd75965e321bffad44afa93e19ee8838cfca71fd28a28b212a93ee44a970c36995b3d3ef7ff005aac24f7f136d8eee41d01cb03ff00b2d14536914aa4bb938bbd5d81537ce557b6f1ff00c4d359b539178bafbbcf2c3ff89a28a9b2ec3f6b3ee2c0baa894c9f6d60deaafb4ff00e83568b6af2805efa561d399ce7ff41a28a4d2ec4aab3ee112ea8ae76de3f231ccb9ff00d96a768f549db6b5f48ca793ba4ea7f05a28a97617b59f72bb6917c1b3f6ae7b7ef1bfc2a23a4de9193723fefe31a28a5725d7a9dc6ff63ddc91e7ed0338e0ef6a46d26f7926e4120633bda8a29dd93eda6fa88fa55daf5b8cff00c0da8a28a2ec1569f73fffd9);
INSERT INTO `items` (`id`, `item_type_id`, `item_code`, `item_description`, `base_unit`, `available_qty`, `buying_price`, `selling_price`, `uom`, `list_item_quantity`, `related_unit_no`, `total_base_unit_qty`, `image`) VALUES
(18, 7, 'flake-0001', 'Flake Salt 0001', '7', '100.00000', '1.00', '2.00', '15', 1, '1000.00000', '99999.99999', 0xffd8ffe000104a46494600010100000100010000fffe003e43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c2064656661756c74207175616c6974790affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080096009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a427154356d674fd0ec5ef753bb8ad6dd7abc87193e807527d8578cf89fe3acd2bbdbf86ed4449ff3f772b963feea741f8e7e949bb0d2b9ee171756f690b4f733470c4a32d248c1547d49ae4f50f8abe0bd3895935a8e671fc36f1b4bfaa8c7eb5f3c5d0f12f8a2e56e350377784b64492e762e7d3b0fc315635bf03ea5a1adb19364cf73831ac2a493c648fc2a39cae447af5c7c75f0e46716f65a84e3b1d8aa3f53553fe17e68f8cff62ea1b7fde4ff001ae3fc37f0c2ea6bc12eb96c52d163de6312619988e01c74c55db6f8536b3aed7bbb942b29dca546597fcf7a5ccc7689d8d9fc75f0b4cc05c437f6c0f56688301f91cfe95d5695f10bc27ad10b65addb339fe094989bf2700d7896b9f09a7b4bc99acee8180806056c163d3209e057137da0ea3a6cfe5cd03039ea01c1aae626c7d90181e94b5f22e85e2ff11785a60961a84f1419c0864f9e3fa6d6c81f857b1f84fe34596a091c1afc2b6331e3cf4c9898fb8eabfa8fa51ceba8723e87abd151c134771124b148b246e032ba9c823d41a92ac90a28a2800a28a2800a28a280109c0c9ae33c75f10b4df065b046ff0048d4a55cc56aa7071fde63d87f3ed47c42f1dc1e0bd1c322acda95c645b427a71d59bd867f13c57cd463d5bc497b717f209ef279650659b6e4963d07e9c7a0152dd8691b37a7c59e3ed54dedd4735d2ff01202451a9ecb9c01fccf7aeb3c37f0a2179436a774c5c8c858780a7d41ef5d478634bb9b0b786cde7fb4daa443648f1ed61edffebaec11228620410a71f954163134db586d45bc51aaaa9c8cf249f5e7bd3e10240c258c028dd4f21bdea68e4124464319f51ee29b192bc81853d8f7a009d7685043536408e77272fe9eb4d50f800e31ed569110265546ef5a622b79670a643cf4c0e9597a868104f6cc912046ebc8c86f635b6e0aae48ce6950c6393c9f7a06709a8f82ed352d0a7b02a9011f3062a59439fe2033fcabccb5af03dfe86a3122dca15dc0a29047d7f9d7d0171859d4021811865ed55ee34f8afe62922f5209352e37438caccf04f0578ef5bf07df7948ad71a6337ef2d24381f553fc27a9f43debe91f0ff8874ef11e9697da74c248d8e197a32377561d8d78cf8efc192c723dd69f6e1e29321b60c6d6ec3f1ae0bc2be2dd47c15af1b8b7dc06ed9716ac70b2a8ec7d08ec7b7d38a2127b309456e8fae68accd075db2f11e8f6fa9e9f2efb7997233d548e0823b106b4eb6320a28a2800acfd6755b6d134ab9d4af1f65bdba1773fc80f72703f1abe4e057867c74f14b35cdb787209311c63cfbac7763f717f0193f88f4a4dd8695d9e7f7b73ab7c43f17c97182d713b7cabfc30c63a0fa0fd7f1af5cf0c78393c3d6a628d8c924ca0c8c7d47ffaeb03e1f69f3e89a719da3857ed4a8c241192e4927e5393c01c74ebcd7a2c067dc4ba9738c124e2b32c72db0851113248ea49a6416de63ee73ec33eb533ee69080483e98ab691a6031c065ea6801d6f1ac7198d9cb600c76a8da058db72920fbd49b572406fbc38a52485d83e66ec28023049edc0ec2a6811b39ce3dbd698b85193d69de63750298124adbbe455cfbd45e585fad4aae49ddd0d3f2ae78eb4019f246c58ed6e73d48a9edbf74079a479801e7d8d4d2438f997f1a801e4f3d7ad0047736cb75148ac7e59300e3dabc6fc63f0cae5efefaf619ede1b544f310be72463eef00f71d6bd9ddd615de48118eb599ae2c3a9e97342e222ac42af9a3233d8e0f71d47d2901e27f0a7c6d27853c402caf243fd977ac1260dd227e81c7a7a1f6fa57d40bc8cfad7c9de32f0d4fa0df47113e62ba9657db8dd8ebfcc57b77c1ff159f10f8416d2e1f37ba69104b93cb273b1bf218ff809aa84ae2946db1e894514559043733c76b6b25c4ce122894bbb1e8001926be43bbd464f1478c24bdb842e6eeeb795271f292005c8f41815f49fc4fbd6b1f879ab146c49322c0bff000360a7f426be74f0b7d92dfc51a7f9f2a470093e6924e84e0e07b738ace4f5b1715a5cf7bb65580600c1e9b4f43ef5a79daa03119f6aa31955400a67fda07ad5f8cace9e61c2aad2192ab7c832339ee6859392bb7815198d5d83e7e94a7014e3bd0049e6fcd902a2598fda0f3d062a3dc63f957e62690a18e1666ea78a00b2b20273daada952056743854c939a99261ca8ea7a5005ce179c8a6999579ebf8d41bb8e4d4321d8319029817a39c31391c5453a2b440a1da41aa86531c4587f1702a48ae03c410f5a008e34328c3b6fe73c532e0e11a22aaabd77138c559cac1d073da92e625beb521fa771401e7de3ab2835db180a065b880b3464ae51c1c020b0f703f2ae43e126aaba3fc444b50fb60bf4682443d9b1b90fe631ff0002aefb52b078f4eb885db84ced23824e72303eb8af1379e6f0fea715ef94cb770ce24653c1dca738f6acf69685ad56a7d879a2990ca93c31cb19ca48a194fa834574181e65f1c6f0db7846ce21ff002d2f17f4526b82f85f7b66d737ba73428269009524c6491dc74fa7e75d6fc7f24787b4919e0dd367fef835e53e0396787c5568d01419dde61704fcbb4e7a564d6b7344fddb1eeb6eb3c511463c038e9daac5af9864d849311ea0f634cf30cb6cac01200ce6a7b49031519c1ebb69016d995430279aa5e63ef2558815334819c863c54f0ac3b4a9c6091d680228d8b3ef3d718a495f7ab77fa54cfb51f6ed1cd44d01552c1b19a60427ce75c01803a0cd45e63c47e6a708e412024e69b700866046413c5005e5b8594205c74e6adc71a49190c067f9561405a39481c568accd1af980fcbdf34011bc72097cbdbcf5a96184ab8dc719eb8a866ba225dd8e081827d2a486e50fcc7b530096426468e4f907622a26bd16276333b938036afdea7cf307757da700639aa3703cb413c7f3c8086da475a009afaca0bc90bb3e0918dbefd8d787f8eac47fc241a843bfa3860deb95073fcebd87fb4638d5a562c1c0c9f949dbf5af1cf1c40f1ebab10bf79964877f2b8ee78ace69dae8a86f63e8df05ccd3f82b45918e4fd8a204fd140fe94543e0252be03d101ebf644cfe5456eb6317b9c9fc73b36b8f04dbce07fa8bc424fa06047f322bc6fc16d347e21b7f26132400912b638039e73f5afa33e22696758f00eb1688b993c832a0ff00690871ff00a0d7cf7e06d722b19c58deb22dacc77076206c6c7f238a896e5c7547b559df43c5b72ad8ced20838ab890edb857c8db8e0d7307c4096e460adc463a803271ec7b9ada8ef461b786c7f5a919764501ce4d34bb27208f94e6ab19ca1196dc0f635231f3a2c28c1a00924b8f31d4839c9ad28a41b429ac88143267196070295ee1d0f3c11eb40172f1803f2fcb91cd46c0cb6ed8272bca9a81ef154abca3f2e7348d7a666db1a9553f9d301235df32153c138abac635f94b65bd055381b62b3edc141c7e35556792362dd77f5a00d94856e2350480157938accc9fb400bcc60e02fad5db37df692056c13c1cf6150a26662c4aa1180a99e40a604cbb2562198ee1ebdcd666ad0996458d03171d7e6c0153c9b964f56aa46d2e23be7ba91f74520048cf4ed8a00826867b6b4292b13085f3195509ce3b67bd78f78bf5386e758729161e08551cf60dd7ff6615ed9aaea024d34c502e243c17906405efdebc274cb76f13f8d21d3445b16f2e911a30738518ddfa02693575608bb33ea8f0cdabd9785f4ab671878ed63561e8768cd15aa063a515aa330700a904647a57c8be2dd20f84fc6b7da79855e2866df12baf0d19f9947d3071f857d7879af1ff8e7e126bed2a0f115aa666b11e5dc003ef4448c1ff809fd09f4a9686994743b98354d263f215551943a631f291d056bc3701a168c7facce08f6af28f026a6b6370de6dd009d161da58927bf1dabd205ea248ce32ecc40dcb8c56659a426391192723a0ad009b6207713c678ac9815a6753221018edc83c8a92e3ed56cab0bb1d9d88a00d7f396144518000e0d3640b28fdd105ba81ed54a4b9495465086db9cf634413f96cb943edcd003a4765428dcae739f4a457da383c54b7538762d228c11c62a172b8e0600e84f7a605c866f32392327d0d5b9ad14a178b0091c0ed5996c996f30e028e4e2a6b6667631a190eeea73d2801f139420e795e0e3b8a73882570f82ac7ae0d596b4416c40fbc064fbd51316de7bd3116f633c836fa1fceb3f515b9bab33e50dcc849e0f3f8555bfd65ac66b38ce079ceca4fe15496f67944a12531c38f998753401c36ade3bbc8166861f3e1ba8d805f3221b71df39e6b4fe0668726a5e2abef10dcae56d14aa36300cb26738fa2e7fefa15c06ab753ea5e22b98915a79649bc8854725b9c01f5afa83c09e184f09784acf4bf95a700bdc38fe291b93f9741ec0538dee12d8e968a28ab202a29e08ee61921991648a452ae8c32181e08352d1401f28fc43f074fe09f1162056fecf98efb39bd077527d467f11cd4fe0ed790ceb0de4ff003e7e4c9c6eff00ebd7d1de26f0de9fe28d0e6d33508f31c9cab8fbd1b76653ea2be57f15f84b54f076b2d657c9942730dc28f9655f51e9ee3b7ea61a2d3b9ebb2cc242a3cd750072335b1048b776ca73b97d1abc8bc39e23d968a350bd8d9518aaab8f98719ce715dd787f5813ce6db72b2e3e53d08fad48ce91ec8f9476364a93818cf1514cca96a09c7980f033d054e25f2c64b00077cd64dd6a91ddcc100ca025724726802ca4cb3801980dbdb3d6aeec46b723767d1877ac39a258cef00020e78ad1b6ba5922c0f4e7da801fe61b7520a16efd715a505d476d6fe6b2808c067dab2ae1bcd8ce48fc28d459e3d2933fbb0dcf4a00d1975ab778dd6dcb33e380453a29c4b6c6423a019ae2e1d620b5976be727ae056ec5e21b0bad125769962862392edc6e1eb408c1f13dc19aeadbcac12bbb9233b4fa9ae635fd7e7b3b34b785cacaebd71c818e4e3b5539bc7bf67bbd416d6d84cacd8b7673c0038248ebef5aff000dbe1cddf8bef4eb7adab8d2cbef25b86ba3e83d178e4fe028b5c69d99d07c1af01992e13c577f1e235cfd82361d49c8693fa0fcfd0d7b881814d8a18e08923891511142aaa8c003d053eb44ac43770a28a298828a28a002b2b5ff000f69be25d324d3f53b659a07e9d990f6653d8d6ad1401f2d78d7e166b1e11964bbb70f7da5039fb422fcd18f4751d3ea38e3b74ae3ec753b8d3e6f32166ce73d719f7afb4ca03d6bcf7c57f07bc3be21692e2d50e977afc996dc6518ff00b51f4fcb152d1499e39a7f8ee611f9574e19074de3fa8ade8a59afa6824b645f2643b8153c63bd636bbf06bc5ba3b192d6d9353817fe5a5ab00d8f746e7f2cd725729a9e9717d96fe3b8b5f2d8b4692a942ac7ae3352d586b53d4f53d4a689236753e4c78f348ea7fc6ac40d35d591b8b460dbc6e508f8cfe35e32750b9919b7dc48771e4935a1a7f89751d2ad26b4b69389082ae7929eb81ef4ac07b0b473c3a44576eae5ce4302d90847f3f5a8b51f115b4ba18379730c7285cb2670c39ecbd6bccb49f1c6b1a65c3b49209e29148785c00a4f63c0e306a25d3759f15ea52dcd86977170d29ddfb8466553dfe6e9fe1487cb727d5bc48be695b4c30e9bc8e9f4fd6b1a0bfd46e2fbca8249a692e94c26351b8b83d8015e91a07c09d6f509164d6aea2d360ef1a112ca47a70768fccd7b1f857c05e1ff0008c23fb32c87da3186ba94ef95bf1ec3d86055a8dc96ec7997813e0ab492c7a978a502c63e64d3b3cb7bc8c0ff00e3a3f1f4af718a2482248a24548d00555518000ec053828078a5aa4ac26ee1451453105145140051451400514514005145140054734115c46639a34910f5575041fc0d1450060dcf813c2b76dba7f0f69ac7d45ba8fe42ab8f86fe0dce7fe11cb0cfbc7451401a36be14f0fd8b06b6d16c2261d196dd723f1c56b8000c00001d3145142431d45145020a28a2800a28a2800a28a2803fffd9);

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

CREATE TABLE `item_types` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`id`, `category_id`, `item_type`) VALUES
(1, 1, 'Silver'),
(2, 1, 'Copper'),
(3, 1, 'Aluminum'),
(5, 2, 'MAHOGANY'),
(6, 2, 'NARRA'),
(7, 3, 'Flake Salt');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `item_category` varchar(50) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_description` varchar(99) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `total_cost_price` decimal(10,2) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `uom_order` varchar(50) DEFAULT NULL,
  `related_unit_no` decimal(10,5) DEFAULT NULL,
  `total_base_unit_qty` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `created_date`, `supplier`, `item_category`, `item_type`, `item_code`, `item_description`, `cost_price`, `order_qty`, `total_cost_price`, `base_unit`, `uom_order`, `related_unit_no`, `total_base_unit_qty`) VALUES
(1, '2018-01-21', NULL, '1', '1', '5', 'Silver 0001', '1500.00', 4, '6000.00', '1', '1', '12.00000', '48.00000'),
(2, '2018-01-23', NULL, '1', '2', '4', 'Copper 0001', '15000.00', 2, '30000.00', '1', '3', '50.00000', '100.00000'),
(3, '2018-02-18', '1', '1', '2', '4', 'Copper 0001', '152.00', 1, '152.00', '1', '1', '12.00000', '12.00000');

-- --------------------------------------------------------

--
-- Table structure for table `related_units`
--

CREATE TABLE `related_units` (
  `id` int(11) NOT NULL,
  `base_unit_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(50) DEFAULT NULL,
  `no_of_units` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `related_units`
--

INSERT INTO `related_units` (`id`, `base_unit_id`, `name`, `abbreviation`, `no_of_units`) VALUES
(1, 1, 'dozen', 'dz', '12.00000'),
(2, 1, 'pair', 'pair', '2.00000'),
(3, 1, 'box', 'bx', '50.00000'),
(4, 1, 'each', 'ea', '1.00000'),
(11, 5, 'Feet', 'ft', '30.48000'),
(12, 5, 'centimeter', 'cm', '1.00000'),
(13, 5, 'Inches', 'Inc', '2.54000'),
(14, 6, '', '', '1.00000'),
(15, 7, 'kilogram', 'kg', '1000.00000'),
(16, 7, 'gram', 'gm', '1.00000');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `supplier_code` varchar(25) DEFAULT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `supplier_address` varchar(50) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `shipping_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `created_date`, `supplier_code`, `supplier_name`, `supplier_address`, `shipping_date`, `shipping_address`) VALUES
(1, '2018-01-27', 'ace-hw-027102', 'Ace Hardware', 'SM Southmall, Las Pinas', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_transac_details`
--

CREATE TABLE `temporary_transac_details` (
  `id` int(11) NOT NULL,
  `transaction_head_id` int(11) DEFAULT NULL,
  `list_item_code` varchar(255) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `list_price` int(11) NOT NULL,
  `list_qty` int(11) NOT NULL,
  `list_item_qty_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temporary_transac_details`
--

INSERT INTO `temporary_transac_details` (`id`, `transaction_head_id`, `list_item_code`, `list_name`, `list_price`, `list_qty`, `list_item_qty_total`) VALUES
(35, NULL, 'PHLZD00027611', 'Aluminum 0001', 250, 13, 3250),
(36, NULL, 'cpr-0001', 'Copper 0001', 880, 33, 29040),
(40, NULL, 'n-0003', 'Narra Wood 0003', 2500, 7, 17500);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_transac_head`
--

CREATE TABLE `temporary_transac_head` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_points` double DEFAULT NULL,
  `customer_subtotal` double NOT NULL,
  `customer_total` double NOT NULL,
  `customer_amount_tendered` double NOT NULL,
  `customer_change` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_category` varchar(50) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `transaction_head_id` int(100) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_description` varchar(99) DEFAULT NULL,
  `available_qty` int(100) DEFAULT NULL,
  `unit_price` decimal(50,2) DEFAULT NULL,
  `order_qty` int(100) DEFAULT NULL,
  `total_price` decimal(50,5) DEFAULT NULL,
  `net_price` decimal(50,5) DEFAULT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `related_unit_no` int(100) DEFAULT NULL,
  `total_base_unit_qty` decimal(50,5) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discounted_price` decimal(50,2) DEFAULT NULL,
  `base_cost_price` decimal(50,5) DEFAULT NULL,
  `total_base_cost_price` decimal(50,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `created_date`, `item_category`, `item_type`, `transaction_head_id`, `item_code`, `item_description`, `available_qty`, `unit_price`, `order_qty`, `total_price`, `net_price`, `uom`, `base_unit`, `related_unit_no`, `total_base_unit_qty`, `discount`, `discounted_price`, `base_cost_price`, `total_base_cost_price`) VALUES
(2, '2018-04-14 22:28:49', NULL, NULL, 1, 'cpr-0001', '', NULL, '0.00', 0, '2223.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-04-14 23:13:04', NULL, NULL, 2, '004211214041', '', NULL, '0.00', 0, '0.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-04-14 23:16:52', NULL, NULL, 3, 'PHLZD00027611', '', NULL, '0.00', 0, '9150.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-04-14 23:25:04', NULL, NULL, 5, '2x2x16-0001', '', NULL, '0.00', 0, '2895.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-04-15 00:25:38', NULL, NULL, 6, 'PHLZD00027611', '', NULL, '0.00', 0, '1129.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-04-15 00:26:50', NULL, NULL, 7, 'PHLZD00027611', '', NULL, '0.00', 0, '2009.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-04-15 00:38:40', NULL, NULL, 8, 'Array', '', NULL, '0.00', 0, '1379.00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_head`
--

CREATE TABLE `transaction_head` (
  `id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `mode_of_payment` varchar(50) DEFAULT NULL,
  `items_total_price` decimal(10,2) DEFAULT NULL,
  `cumulative_amount` decimal(10,2) DEFAULT NULL,
  `amount_tendered` decimal(10,2) DEFAULT NULL,
  `change_due` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_head`
--

INSERT INTO `transaction_head` (`id`, `create_date`, `invoice_no`, `vat`, `discount`, `discounted_price`, `mode_of_payment`, `items_total_price`, `cumulative_amount`, `amount_tendered`, `change_due`, `customer_name`, `customer_points`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, '2223.00', NULL, '2500.00', '277.00', NULL, 7),
(2, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, '0.00', '0.00', NULL, 0),
(3, NULL, NULL, NULL, NULL, NULL, NULL, '9150.00', NULL, '10000.00', '850.00', NULL, 10),
(4, NULL, NULL, NULL, NULL, NULL, NULL, '1975.00', NULL, '2500.00', '525.00', NULL, 36),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '2895.00', NULL, '3000.00', '105.00', NULL, 5),
(6, NULL, NULL, NULL, NULL, NULL, NULL, '1129.00', NULL, '1500.00', '371.00', NULL, 1),
(7, NULL, NULL, NULL, NULL, NULL, NULL, '2009.00', NULL, '3000.00', '991.00', NULL, 1),
(8, NULL, NULL, NULL, NULL, NULL, NULL, '1379.00', NULL, '1500.00', '121.00', NULL, 1),
(9, NULL, NULL, NULL, NULL, NULL, NULL, '1379.00', NULL, '1500.00', '121.00', NULL, 1),
(10, NULL, NULL, NULL, NULL, NULL, NULL, '1379.00', NULL, '1500.00', '121.00', NULL, 1),
(11, NULL, NULL, NULL, NULL, NULL, NULL, '1129.00', NULL, '2500.00', '1371.00', NULL, 1),
(12, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, '0.00', '0.00', NULL, 0),
(13, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, '0.00', '0.00', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `user_name`, `fullname`, `password`, `role`) VALUES
(1, 'admin', 'Super Admin', 'admin', 'Admin'),
(2, 'cashier', 'Cashier', 'cashier', 'Cashier'),
(3, 'user01', 'User', '12345', 'Cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_unit`
--
ALTER TABLE `base_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorymanagement_audit`
--
ALTER TABLE `inventorymanagement_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorymanagement_locking`
--
ALTER TABLE `inventorymanagement_locking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_adjustment`
--
ALTER TABLE `inventory_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_deficit`
--
ALTER TABLE `inventory_deficit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_units`
--
ALTER TABLE `related_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporary_transac_details`
--
ALTER TABLE `temporary_transac_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_head_id` (`transaction_head_id`);

--
-- Indexes for table `temporary_transac_head`
--
ALTER TABLE `temporary_transac_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_head`
--
ALTER TABLE `transaction_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base_unit`
--
ALTER TABLE `base_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventorymanagement_audit`
--
ALTER TABLE `inventorymanagement_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `inventorymanagement_locking`
--
ALTER TABLE `inventorymanagement_locking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_adjustment`
--
ALTER TABLE `inventory_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory_deficit`
--
ALTER TABLE `inventory_deficit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `item_types`
--
ALTER TABLE `item_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `related_units`
--
ALTER TABLE `related_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temporary_transac_details`
--
ALTER TABLE `temporary_transac_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `temporary_transac_head`
--
ALTER TABLE `temporary_transac_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_head`
--
ALTER TABLE `transaction_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
