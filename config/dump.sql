-- MySQL dump 10.13  Distrib 8.4.2, for Win64 (x86_64)
--
-- Host: localhost    Database: majorproject
-- ------------------------------------------------------
-- Server version	8.4.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `total_price` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE,
  CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,1,2,25.98),(2,2,2,3,1,8.99),(3,4,3,6,1,0.00),(4,4,1,1,1,0.00),(5,5,1,1,2,0.00),(6,5,1,2,2,0.00),(7,5,3,5,2,0.00),(8,5,3,5,2,0.00),(9,5,1,1,2,0.00),(10,5,1,2,2,0.00),(11,5,1,1,2,0.00),(12,5,3,6,2,0.00),(13,5,3,5,2,0.00),(14,5,1,1,2,0.00),(15,5,2,3,5,0.00),(16,5,3,5,2,0.00),(17,5,2,3,5,0.00),(18,5,1,1,2,0.00),(19,5,1,1,2,0.00),(20,5,3,5,2,0.00),(21,5,3,6,2,0.00),(22,5,2,4,3,0.00),(23,5,2,3,5,0.00),(24,5,1,1,2,0.00),(25,5,1,1,2,0.00),(26,5,2,3,5,0.00),(27,5,2,4,3,0.00),(28,5,1,1,2,0.00),(29,5,1,1,2,0.00),(30,5,2,3,5,0.00),(31,5,3,5,2,0.00),(32,5,2,3,5,0.00),(33,5,1,1,2,0.00),(34,5,1,1,2,0.00),(35,5,1,1,2,0.00),(36,5,1,1,2,0.00),(37,5,1,1,2,0.00),(38,5,1,2,2,0.00),(39,5,2,4,3,0.00),(40,5,2,3,5,0.00),(41,5,3,5,2,0.00),(42,5,3,5,2,0.00),(43,5,3,6,2,0.00),(44,5,3,7,1,0.00),(45,5,2,3,1,0.00),(46,5,2,4,1,0.00),(47,5,3,6,1,0.00),(48,5,1,1,2,0.00),(49,5,1,2,2,0.00),(50,5,1,1,2,0.00),(51,5,1,2,2,0.00),(52,5,2,3,1,0.00),(53,5,1,1,2,0.00),(54,5,1,2,2,0.00),(55,5,1,1,2,0.00),(56,5,1,1,2,0.00),(57,6,1,1,2,0.00),(58,6,2,3,1,0.00),(59,6,2,4,2,0.00),(60,6,1,2,2,0.00),(61,6,2,3,1,0.00),(62,6,1,1,2,0.00),(63,6,1,2,2,0.00),(64,6,2,4,2,0.00),(65,5,2,3,1,0.00),(66,5,1,1,1,0.00),(67,5,1,2,1,0.00);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Pepperoni Pizza','Classic pepperoni with cheese',12.99,'Pizza',1),(2,1,'Veggie Pizza','Fresh veggies on a cheesy crust',10.99,'Pizza',1),(3,2,'Cheeseburger','Beef patty with melted cheese',8.99,'Burger',1),(4,2,'Veggie Burger','Plant-based burger with sauce',9.99,'Burger',1),(5,3,'Spaghetti Carbonara','Classic pasta with creamy sauce, pancetta, and cheese.',13.99,'Pasta',1),(6,3,'Margherita Pizza','Tomato, basil, and fresh mozzarella on a thin crust.',11.99,'Pizza',1),(7,3,'Tiramisu','Traditional Italian dessert with mascarpone and espresso.',6.99,'Dessert',1),(8,4,'BBQ Ribs','Slow-cooked ribs glazed with smoky barbecue sauce.',18.99,'BBQ',1),(9,4,'Grilled Chicken Wings','Spicy grilled wings served with house dip.',9.99,'Appetizer',1),(10,4,'Pulled Pork Sandwich','Tender pulled pork with coleslaw on a brioche bun.',10.99,'Sandwich',1),(11,5,'Salmon Sashimi','Freshly sliced raw salmon with soy sauce and wasabi.',12.99,'Sushi',1),(12,5,'Dragon Roll','Shrimp tempura roll topped with avocado and eel sauce.',14.99,'Sushi',1),(13,5,'Miso Soup','Traditional Japanese soup with tofu and seaweed.',4.99,'Soup',1),(14,5,'Matcha Cheesecake','Green tea-flavored cheesecake with a graham cracker crust.',7.99,'Dessert',1);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `super_admin_id` int NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `discount` tinyint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `expires_at` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `promocode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `super_admin_id` (`super_admin_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`super_admin_id`) REFERENCES `super_admin` (`super_admin_id`) ON DELETE CASCADE,
  CONSTRAINT `notifications_chk_1` CHECK ((`discount` between 1 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (13,3,'asdf',50,'2025-02-10 08:26:18','2025-02-10 04:56:18',0,'ever'),(14,3,'adf',12,'2025-02-10 08:39:31','2025-02-10 04:09:32',0,'qwe'),(15,3,'check',50,'2025-02-10 10:47:00','2025-02-10 05:17:00',0,'ever'),(16,3,'check',50,'2025-02-10 10:47:37','2025-02-10 06:17:38',0,'ever'),(17,3,'50% Off on Pizza',50,'2025-02-10 11:59:30','2025-02-10 12:02:30',0,'ert'),(18,3,'50% Off on Pizza',50,'2025-02-10 11:59:51','2025-02-10 12:00:51',0,'ert'),(19,3,'tcg',20,'2025-02-10 12:06:09','2025-02-10 12:07:09',0,'tcg'),(20,3,'tcg ',10,'2025-02-10 12:11:12','2025-02-10 12:41:12',0,'new'),(21,3,'tcg',10,'2025-02-10 12:49:32','2025-02-10 13:19:32',0,'new'),(22,3,'wjkf',12,'2025-02-10 12:49:56','2025-02-10 12:50:56',0,'wdf'),(23,3,'new year',20,'2025-02-10 13:25:20','2025-02-10 13:26:20',0,'new'),(24,3,'tcg',3,'2025-02-10 13:27:49','2025-02-10 13:57:49',0,'123'),(25,3,'qwefqwfq',50,'2025-02-10 13:28:33','2025-02-10 14:28:33',0,'afff'),(26,3,'aman ',50,'2025-02-10 15:21:25','2025-02-10 15:41:25',0,'new'),(27,3,'pranav',40,'2025-02-10 15:21:51','2025-02-10 15:46:51',0,'asdf'),(28,3,'nhgh',11,'2025-02-10 15:28:37','2025-02-10 15:30:37',0,'new12'),(29,3,'asafa',12,'2025-02-10 15:51:05','2025-02-10 15:54:05',0,'sdfs'),(30,3,'new year eve',20,'2025-02-10 15:55:57','2025-02-10 15:56:57',0,'eve'),(31,3,'New Year\'s EVE',30,'2025-02-11 08:53:33','2025-02-11 08:54:33',0,'NEW30'),(32,3,'FINGER LICKIN GOOD',20,'2025-02-11 08:54:37','2025-02-11 09:54:37',0,'KFC20');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `price_at_purchase` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,2,12.99),(2,2,3,1,8.99);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','preparing','ready','completed','canceled') DEFAULT 'pending',
  `delivery_status` enum('pending','dispatched','delivered') DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `idx_order_id` (`order_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2025-02-04 12:17:58','pending','pending',25.98),(2,2,2,'2025-02-04 12:17:58','preparing','pending',8.99);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('credit_card','cash','UPI') NOT NULL,
  `payment_status` enum('paid','pending','failed') DEFAULT 'pending',
  PRIMARY KEY (`payment_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,25.98,'credit_card','paid'),(2,2,8.99,'UPI','pending');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT '0.00',
  `status` enum('open','closed') DEFAULT 'open',
  PRIMARY KEY (`restaurant_id`),
  KEY `idx_restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'Pizza Palace','Best pizzas in town','123 Main St','1112223333',4.50,'open'),(2,'Burger House','Delicious burgers','456 Elm St','4445556666',4.20,'open'),(3,'The Italian Bistro','Cozy spot for homemade Italian dishes.','12 Pasta Lane, NY','123-456-7891',4.70,'open'),(4,'Grill & Chill','Barbecue and grilled specialties with smoky flavors.','45 BBQ St, TX','987-654-3211',4.60,'open'),(5,'Sushi Zen','Authentic Japanese sushi and sashimi.','99 Sushi Rd, CA','456-789-0124',4.80,'open'),(6,'cdac','cdac','nnew','12323',0.00,'open');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resto_signup`
--

DROP TABLE IF EXISTS `resto_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resto_signup` (
  `resto_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_id` int NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resto_id`),
  UNIQUE KEY `email` (`email`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `resto_signup_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resto_signup`
--

LOCK TABLES `resto_signup` WRITE;
/*!40000 ALTER TABLE `resto_signup` DISABLE KEYS */;
INSERT INTO `resto_signup` VALUES (1,1,'Alice Brown','alice@example.com','hashed_password3','3334445555','pending','2025-02-04 12:17:58'),(2,2,'Bob White','bob@example.com','hashed_password4','6667778888','pending','2025-02-04 12:17:58');
/*!40000 ALTER TABLE `resto_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin`
--

DROP TABLE IF EXISTS `super_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin` (
  `super_admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`super_admin_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin`
--

LOCK TABLES `super_admin` WRITE;
/*!40000 ALTER TABLE `super_admin` DISABLE KEYS */;
INSERT INTO `super_admin` VALUES (1,'admin','admin@example.com','hashed_admin_password'),(2,'svarun','svarun@gmail.com','1222'),(3,'varun','varun@gmail.com','$2a$10$iUD..ZmkXWcY5FpbfrF5g.kIWT.qHzsIVEBgcIwTnXTfBwpesU6Z.');
/*!40000 ALTER TABLE `super_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin_actions`
--

DROP TABLE IF EXISTS `super_admin_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin_actions` (
  `action_id` int NOT NULL AUTO_INCREMENT,
  `super_admin_id` int NOT NULL,
  `action_type` enum('add_restaurant','delete_restaurant','edit_restaurant','push_notification','offer_management') NOT NULL,
  `target_id` int NOT NULL,
  `details` text,
  `action_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`action_id`),
  KEY `super_admin_id` (`super_admin_id`),
  CONSTRAINT `super_admin_actions_ibfk_1` FOREIGN KEY (`super_admin_id`) REFERENCES `super_admin` (`super_admin_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin_actions`
--

LOCK TABLES `super_admin_actions` WRITE;
/*!40000 ALTER TABLE `super_admin_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `super_admin_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `extra_col1` varchar(255) DEFAULT NULL,
  `extra_col2` varchar(255) DEFAULT NULL,
  `extra_col3` int DEFAULT NULL,
  `extra_col4` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','hashed_password1','john@example.com','1234567890',NULL,NULL,NULL,NULL),(2,'jane_smith','hashed_password2','jane@example.com','0987654321',NULL,NULL,NULL,NULL),(3,'svarun','$2a$10$lhRgq.Y1hAxTZcFA0JFgv.tXRTztbFckjbXTV.MwLOgA868DCmx36','svarun@gmail.com',NULL,NULL,NULL,NULL,NULL),(4,'Saivarun ','$2a$10$74ZN930CBZPOU7kXe6IgXe15XC2XB59ctvC6QODnpISZ7ThC4pD6S','S8saivarun@gmail.com','1234567890',NULL,NULL,NULL,NULL),(5,'Rachana','$2a$10$30J7K8bi1kguSB02grYVYevLv3MIly0TK1rDTxZi8VgiseXox/xHq','R@gmail.com','1234567890',NULL,NULL,NULL,NULL),(6,'Saivarun','$2a$10$Ciqi/TjBb4pmrIMZOcChB.xe5Kufjgn6EoH1DLweXCAF14AzlknJu','S@gmail.com','1234567890',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04  2:33:56
