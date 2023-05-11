-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table arkatama_store.carousels
DROP TABLE IF EXISTS `carousels`;
CREATE TABLE IF NOT EXISTS `carousels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table arkatama_store.carousels: ~10 rows (approximately)
REPLACE INTO `carousels` (`id`, `name`, `url`, `banner`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Banner Januari', 'https://arkatama.id/1', '1.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(2, 'Banner Februari', 'https://arkatama.id/1', '2.jpg', 0, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(3, 'Banner Maret', 'https://arkatama.id/1', '3.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(4, 'Banner April', 'https://arkatama.id/1', '4.jpg', 0, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(5, 'Banner Mei', NULL, '5.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(6, 'Banner Juni', 'https://arkatama.id/1', '6.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(7, 'Banner Juli', NULL, '7.jpg', 0, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(8, 'Banner Agustus', 'https://arkatama.id/1', '8.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(9, 'Banner September', 'https://arkatama.id/1', '9.jpg', 0, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
	(10, 'Banner Oktober', NULL, '10.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23');

-- Dumping structure for table arkatama_store.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table arkatama_store.categories: ~12 rows (approximately)
REPLACE INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Kategori 1', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(2, 'Kategori 2', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(3, 'Kategori 3', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(4, 'Kategori 4', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(5, 'Kategori 5', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(6, 'Kategori 6', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(7, 'Kategori 7', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(8, 'Kategori 8', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(9, 'Kategori 9', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(10, 'Kategori 10', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
	(16, 'Kategori Tugas 18', '2023-05-07 11:13:59', '2023-05-07 11:13:59'),
	(17, 'Kategori Tugas 18', '2023-05-07 11:16:51', '2023-05-07 11:16:51');

-- Dumping structure for table arkatama_store.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `size` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_created_by` (`created_by`),
  CONSTRAINT `FK_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table arkatama_store.items: ~17 rows (approximately)
REPLACE INTO `items` (`id`, `NAME`, `DESCRIPTION`, `size`, `created_at`, `updated_at`, `created_by`) VALUES
	(1, 'Produk 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, 1),
	(2, 'Item 2', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(3, 'Item 3', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(4, 'Item 4', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(5, 'Produk 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, 1),
	(6, 'Item 6', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(7, 'Item 7', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(8, 'Item 8', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(9, 'Produk 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, 1),
	(10, 'Item 10', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(11, 'Item 11', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(12, 'Item 12', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(13, 'Item 13', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(14, 'Produk 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, 1),
	(15, 'Item 15', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(16, 'Item 16', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(17, 'Item 17', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(18, 'Item 18', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(19, 'Item 19', 'Deskripsi item.', NULL, NULL, NULL, 1),
	(20, 'Produk 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, 1);

-- Dumping structure for table arkatama_store.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('accepted','rejected','waiting') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_category` (`category_id`),
  KEY `FK_created_user` (`created_by`),
  KEY `FK_verified_user` (`verified_by`),
  CONSTRAINT `FK_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_created_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_verified_user` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table arkatama_store.products: ~32 rows (approximately)
REPLACE INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `verified_at`, `verified_by`) VALUES
	(1, 9, 'Produk 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(2, 5, 'Produk 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 35000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(3, 6, 'Produk 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(4, 10, 'Produk 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(5, 4, 'Produk 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(6, 2, 'Produk 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(7, 10, 'Produk 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(8, 1, 'Produk 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(9, 1, 'Produk 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(10, 4, 'Produk 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(11, 2, 'Produk 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(12, 4, 'Produk 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(13, 10, 'Produk 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(14, 4, 'Produk 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(15, 5, 'Produk 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(16, 7, 'Produk 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(17, 6, 'Produk 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(18, 3, 'Produk 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(19, 10, 'Produk 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(20, 9, 'Produk 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(21, 5, 'Produk 21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(22, 8, 'Produk 22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 40000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(23, 7, 'Produk 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(24, 7, 'Produk 24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(25, 8, 'Produk 25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(26, 2, 'Produk 26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(27, 4, 'Produk 27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(28, 4, 'Produk 28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(29, 3, 'Produk 29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(30, 9, 'Produk 30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
	(45, 1, 'Produk Tugas 18', 'Lorem ipsum', 20000.00, 'waiting', '2023-05-07 11:13:59', '2023-05-07 11:13:59', 1, NULL, NULL),
	(46, 1, 'Produk Tugas 18', 'Lorem ipsum', 20000.00, 'waiting', '2023-05-07 11:16:51', '2023-05-07 11:16:51', 1, NULL, NULL);

-- Dumping structure for table arkatama_store.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table arkatama_store.users: ~10 rows (approximately)
REPLACE INTO `users` (`id`, `email`, `name`, `role`, `avatar`, `phone`, `address`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'user1@example.com', 'User One', 'staff', 'images/avatar_man.jpg', '+6281111111111', 'Jl. Raya 1', 'password1', NULL, NULL),
	(2, 'user2@example.com', 'User Two', 'staff', 'images/avatar_man.jpg', '+6282222222222', 'Jl. Raya 2', 'password2', NULL, NULL),
	(3, 'user3@example.com', 'User Three', 'staff', 'images/avatar_man.jpg', '+6283333333333', 'Jl. Raya 3', 'password3', NULL, NULL),
	(4, 'user4@example.com', 'User Four', 'staff', 'images/avatar_man.jpg', '+6284444444444', 'Jl. Raya 4', 'password4', NULL, NULL),
	(5, 'user5@example.com', 'User Five', 'admin', 'images/avatar_man.jpg', '+6285555555555', 'Jl. Raya 5', 'password5', NULL, NULL),
	(6, 'user6@example.com', 'User Six', 'staff', 'images/avatar_man.jpg', '+6286666666666', 'Jl. Raya 6', 'password6', NULL, NULL),
	(7, 'user7@example.com', 'User Seven', 'admin', 'images/avatar_man.jpg', '+6287777777777', 'Jl. Raya 7', 'password7', NULL, NULL),
	(8, 'user8@example.com', 'User Eight', 'staff', 'images/avatar_man.jpg', '+6288888888888', 'Jl. Raya 8', 'password8', NULL, NULL),
	(9, 'user9@example.com', 'User Nine', 'admin', 'images/avatar_man.jpg', '+6289999999999', 'Jl. Raya 9', 'password9', NULL, NULL),
	(10, 'user10@example.com', 'User Ten', 'staff', 'images/avatar_man.jpg', '+6281010101010', 'Jl. Raya 10', 'password10', NULL, '2023-05-11 09:44:20');

-- Dumping structure for view arkatama_store.view_jumlah_barang
DROP VIEW IF EXISTS `view_jumlah_barang`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jumlah_barang` (
	`category_id` INT(10) NOT NULL,
	`name` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`jumlah_barang` BIGINT(19) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view arkatama_store.view_nama_kategori
DROP VIEW IF EXISTS `view_nama_kategori`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_nama_kategori` (
	`id` INT(10) NOT NULL,
	`category_id` INT(10) NOT NULL,
	`nama_kategori` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`nama_produk` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`description` TEXT NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`price` DECIMAL(10,2) NOT NULL,
	`status` ENUM('accepted','rejected','waiting') NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Dumping structure for view arkatama_store.view_not_accepted
DROP VIEW IF EXISTS `view_not_accepted`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_not_accepted` (
	`id` INT(10) NOT NULL,
	`category_id` INT(10) NOT NULL,
	`nama_kategori` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`nama_produk` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`description` TEXT NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`price` DECIMAL(10,2) NOT NULL,
	`status` ENUM('accepted','rejected','waiting') NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Dumping structure for view arkatama_store.view_jumlah_barang
DROP VIEW IF EXISTS `view_jumlah_barang`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jumlah_barang`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_jumlah_barang` AS select `p`.`category_id` AS `category_id`,`c`.`name` AS `name`,count(0) AS `jumlah_barang` from (`products` `p` join `categories` `c` on((`p`.`category_id` = `c`.`id`))) group by `p`.`category_id`;

-- Dumping structure for view arkatama_store.view_nama_kategori
DROP VIEW IF EXISTS `view_nama_kategori`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_nama_kategori`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_nama_kategori` AS select `p`.`id` AS `id`,`p`.`category_id` AS `category_id`,`c`.`name` AS `nama_kategori`,`p`.`name` AS `nama_produk`,`p`.`description` AS `description`,`p`.`price` AS `price`,`p`.`status` AS `status` from (`products` `p` join `categories` `c` on((`p`.`category_id` = `c`.`id`))) order by `p`.`id`;

-- Dumping structure for view arkatama_store.view_not_accepted
DROP VIEW IF EXISTS `view_not_accepted`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_not_accepted`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_not_accepted` AS select `view_nama_kategori`.`id` AS `id`,`view_nama_kategori`.`category_id` AS `category_id`,`view_nama_kategori`.`nama_kategori` AS `nama_kategori`,`view_nama_kategori`.`nama_produk` AS `nama_produk`,`view_nama_kategori`.`description` AS `description`,`view_nama_kategori`.`price` AS `price`,`view_nama_kategori`.`status` AS `status` from `view_nama_kategori` where (`view_nama_kategori`.`status` <> 'accepted');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
