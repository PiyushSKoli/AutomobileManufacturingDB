CREATE DATABASE IF NOT EXISTS `automobile_db`;
USE `automobile_db`;

CREATE TABLE IF NOT EXISTS `companies_details` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


INSERT INTO `companies_details` (`company_id`, `company_name`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
	(1, 'Bajaj Auto', 'Piyush', NULL, 'Piyush', NULL),
	(2, 'Hero Motocorp', 'Piyush', NULL, 'Piyush', NULL),
	(3, 'Mahindra', 'Piyush', NULL, 'Piyush', NULL),
	(4, 'Royal Enfield', 'Piyush', NULL, 'Piyush', NULL),
	(5, 'TVS Motors', 'Piyush', NULL, 'Piyush', NULL),
	(6, 'TATA MOTORS LIMITED', 'Piyush', '2021-01-21 08:57:42', 'Piyush', NULL),
	(7, 'MARUTI SUZUKI LIMITED', 'Piyush', '2021-01-21 08:57:42', 'Piyush', NULL),
	(8, 'HINDUSTAN MOTOR LIMITED', 'Piyush', '2021-01-21 08:57:42', 'Piyush', NULL),
	(9, 'ASHOK LEYLAND LIMITED', 'Piyush', '2021-01-21 08:57:42', 'Piyush', NULL),
	(10, 'MAHINDRA & MAHINDRA ', 'Piyush', '2021-01-21 08:57:42', 'Piyush', NULL);

CREATE TABLE IF NOT EXISTS `vehicle_details` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `model_no` varchar(50) DEFAULT NULL,
  `brake_horse_power` varchar(50) DEFAULT NULL,
  `no_of_wheels` int(11) DEFAULT NULL,
  `max_acceleration` int(11) DEFAULT NULL,
  `torque` varchar(50) DEFAULT NULL,
  `max_speed` int(11) DEFAULT NULL,
  `manufactured_date` date DEFAULT NULL,
  `run` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`) USING BTREE,
  KEY `FK__vehicle_role` (`role_id`),
  KEY `FK_vehicle_company_info` (`company_id`),
  CONSTRAINT `FK__vehicle_role` FOREIGN KEY (`role_id`) REFERENCES `vehicle_role` (`role_id`),
  CONSTRAINT `FK_vehicle_companies_details` FOREIGN KEY (`company_id`) REFERENCES `companies_details` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;


INSERT INTO `vehicle_details` (`vehicle_id`, `company_id`, `role_id`, `name`, `model_no`, `brake_horse_power`, `no_of_wheels`, `max_acceleration`, `torque`, `max_speed`, `manufactured_date`, `run`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
	(1, 1, 1, 'Pulsar', 'NS200', 'Y', 2, NULL, '18.5 @ 8000', 180, '2015-01-21', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(2, 1, 1, 'Discover', '125', 'N', 2, NULL, '18.5 @ 8000', 150, '2014-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(3, 2, 1, 'Splendor', 'Plus', 'N', 2, NULL, '18.5 @ 8000', 150, '2011-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(4, 4, 1, 'Bullet', '350', 'Y', 2, NULL, '18.5 @ 8000', 200, '2018-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(5, 6, 2, 'Safari', 'inspiration', 'Y', 4, NULL, '28.5 @ 8000', 350, '2016-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(6, 10, 2, 'Scorpio', 'sss', 'Y', 4, NULL, '26.5 @ 8000', 300, '2012-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(7, 7, 2, 'Swift', 'Desire', 'Y', 4, NULL, '29.5 @ 8000', 320, '2019-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(8, 6, 3, 'Singha', '4018s', 'Y', 3, NULL, '68.5 @ 8000', 200, '2017-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(9, 9, 3, 'Partner', 'Partner', 'Y', 3, NULL, '58.5 @ 8000', 200, '2020-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(10, 9, 4, 'Dost', 'pluse', 'Y', 4, NULL, '38.5 @ 8000', 220, '2018-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL),
	(11, 10, 4, 'Jeeto', 'Jeeto', 'Y', 4, NULL, '38.5 @ 8000', 200, '2018-02-11', NULL, 'Piyush', '2021-01-21 09:15:53', NULL, NULL);

CREATE TABLE IF NOT EXISTS `vehicle_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO `vehicle_role` (`role_id`, `role_type`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
	(1, 'Light Weight Passenger Carrier', 'Piyush', '2021-01-20 20:50:44', 'Piyush', '2021-01-20 20:50:49'),
	(2, 'Heavy Weight Passenger Carrier', 'Piyush', '2021-01-20 20:50:44', 'Piyush', '2021-01-20 20:50:49'),
	(3, 'Heavy weight goods carrier', 'Piyush', '2021-01-20 20:50:44', 'Piyush', '2021-01-20 20:50:49'),
	(4, 'Light Weight goods carrier', 'Piyush', '2021-01-20 20:50:44', 'Piyush', '2021-01-20 20:50:49');