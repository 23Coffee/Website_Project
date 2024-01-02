-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64) -- This line shows the version and architecture of MySQL that was used to create the dump file.

-- Host: localhost    Database: itcs212 -- This line shows the host name and the database name where this script is to be run.
-- ------------------------------------------------------
-- Server version	8.0.30 -- This line shows the server version of MySQL that this script is to be run on.

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; -- This line sets a variable to the current value of the client character set.
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; -- This line sets a variable to the current value of the results character set.
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; -- This line sets a variable to the current value of the connection collation.
/*!50503 SET NAMES utf8mb4 */; -- This line sets the character set to utf8mb4.
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */; -- This line sets a variable to the current time zone.
/*!40103 SET TIME_ZONE='+00:00' */; -- This line sets the time zone to UTC.
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */; -- This line sets a variable to the current value of unique checks.
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */; -- This line sets a variable to the current value of foreign key checks.
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */; -- This line sets a variable to the current value of SQL mode and sets it to 'NO_AUTO_VALUE_ON_ZERO'.
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */; -- This line sets a variable to the current value of SQL notes and sets it to 0.

DROP DATABASE IF EXISTS itcs212; -- This line drop the database "itcs212".
CREATE DATABASE IF NOT EXISTS itcs212; -- This line create the database "itcs212".
USE itcs212; -- This line switches to the database "itcs212".

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`; -- This line drops the table "product" if it already exists.
/*!40101 SET @saved_cs_client     = @@character_set_client */; -- This line sets a variable to the current value of the client character set.
/*!50503 SET character_set_client = utf8mb4 */; -- This line sets the character set to utf8mb4.
CREATE TABLE `product` ( -- This line creates a table called "product" with the following columns:
  `id` int NOT NULL AUTO_INCREMENT, -- an integer column called "id" which is the primary key and auto increments.
  `name` varchar(255) NOT NULL, -- a string column called "name" which can hold up to 255 characters and cannot be null.
  `price` decimal(10,2) NOT NULL, -- a decimal column called "price" which can hold up to 10 digits with 2 decimal places and cannot be null.
  `description` longtext NOT NULL, -- a text column called "description" which can hold a large amount of text and cannot be null.
  `singleplayer` tinyint(1) DEFAULT NULL, -- a boolean column called "singleplayer" which can be either true or false and has a default value of null.
  `multiplayer` tinyint(1) DEFAULT NULL, -- a boolean column called "multiplayer" which can be either true or false and has a default value of null.
  `open_world` tinyint(1) DEFAULT NULL,-- a boolean column called "open_world" which can be either true or false and has a default value of null.
  `sandbox` tinyint(1) DEFAULT NULL,-- a boolean column called "sandbox" which can be either true or false and has a default value of null.
  `simulator` tinyint(1) DEFAULT NULL,-- a boolean column called "simulator" which can be either true or false and has a default value of null.
  `team_based` tinyint(1) DEFAULT NULL,-- a boolean column called "team_based" which can be either true or false and has a default value of null.
  `fps` tinyint(1) DEFAULT NULL,-- a boolean column called "fps" which can be either true or false and has a default value of null.
  `horror` tinyint(1) DEFAULT NULL,-- a boolean column called "horror" which can be either true or false and has a default value of null.
  `puzzle` tinyint(1) DEFAULT NULL,-- a boolean column called "puzzle" which can be either true or false and has a default value of null.
  `other` tinyint(1) DEFAULT NULL,-- a boolean column called "other" which can be either true or false and has a default value of null.
  `publisher` varchar(255) NOT NULL,-- Creates a column named 'publisher' with the type 'varchar' and a maximum length of 255 characters. It cannot be 'NULL'.
  `img` JSON NOT NULL,-- Creates a column named 'img' with the type 'JSON'. It cannot be 'NULL'.
  PRIMARY KEY (`id`)-- Declares the primary key for the table to be the 'id' column.
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;-- Sets the storage engine to InnoDB and sets the default character set and collation.
/*!40101 SET character_set_client = @saved_cs_client */;-- MySQL directive to set the character set to the one previously saved in the client.

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE; -- Locks the table 'product' for write operations.
/*!40000 ALTER TABLE `product` DISABLE KEYS */;-- MySQL directive to disable the generation of keys or indexes for the table.
-- Insert into the table
INSERT INTO `product` VALUES (4,'Shadow of Darkness',3600.00,'Dive into the heart of darkness beyond the edges of Sol and face salvation in the end of all things.',1,1,1,0,0,0,1,1,0,0,'Cactus Inc.','{"image1": "4_0.jpg", "image2": "4_1.jpg", "image3": "4_2.jpg", "image4": "4_3.jpg", "image5": "4_4.jpg"}'),(5,'Destiny 2: Lightfall',2600.00,'OUR END BEGINS: \r\n\r\nThe Witness and its newest Disciple are here. Begin a journey that will reveal the hidden threads that bind us, the ability to unravel them, and the mastery to weave them anew. With this new power in hand, find strength in your fellow Guardians and triumph in the face of annihilation.',0,1,1,0,0,0,1,0,0,0,'Bungie','{"image1": "5_0.jpg", "image2": "5_1.jpg", "image3": "5_2.jpg", "image4": "5_3.jpg", "image5": "5_4.jpg"}'),(6,'Elden Ring',3500.00,'Rise, Tarnished',1,0,1,0,0,0,0,0,0,1,'Bandai Namco','{"image1": "6_0.jpg", "image2": "6_1.jpg", "image3": "6_2.jpg", "image4": "6_3.jpg", "image5": "6_4.jpg"}'),(7,'Corpse Party',315.00,'Following an intense earthquake, the group awakens to find themselves separated and trapped in an alternate reality version of Heavenly Host Elementary, a tragedy-stricken institution that once stood on the site of their own school but was torn down long ago. Here, the vengeful spirits of elementary-aged children threaten their lives and their sanity, and the only hope of escape – much less survival – is to uncover the chilling details surrounding the murders of those trapped before them.',1,0,0,0,0,0,0,1,1,0,'GrisGris','{"image1": "7_0.jpg", "image2": "7_1.jpg", "image3": "7_2.jpg", "image4": "7_3.jpg", "image5": "7_4.jpg"}'),(8,'GTA San Andreas',300.00,'Five years ago Carl Johnson escaped from the pressures of life in Los Santos, San Andreas — a city tearing itself apart with gang trouble, drugs, and corruption. Where film stars and millionaires do their best to avoid the dealers and gangsters.',1,0,1,0,0,0,0,0,0,1,'Rockstar','{"image1": "8_0.jpg", "image2": "8_1.jpg", "image3": "8_2.jpg", "image4": "8_3.jpg", "image5": "8_4.jpg"}'),(9,'Minecraft',1200.00,'Be resourceful:\r\nGet crafty and use the surrounding environment to gather building materials—see how breaking down trees can help you create something new.',1,1,1,1,0,0,0,0,0,1,'Mojang','{"image1": "9_0.jpg", "image2": "9_1.jpg", "image3": "9_2.jpg", "image4": "9_3.jpg", "image5": "9_4.jpg"}'),(11,'GTA Equestrian',1000.00,'Kill Stuff, Bust stuff, rise ganstas',0,0,0,0,0,0,0,0,0,1,'Rockhard Solid','{}');
/*!40000 ALTER TABLE `product` ENABLE KEYS */; -- This line enables the keys for the `product` table in the current database.
UNLOCK TABLES;-- This line unlocks all tables that have been locked explicitly with a `LOCK TABLES` statement.

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;-- This line drops the `users` table if it exists in the current database.
/*!40101 SET @saved_cs_client     = @@character_set_client */;-- This line sets the value of `@saved_cs_client` to the current `character_set_client` system variable.
/*!50503 SET character_set_client = utf8mb4 */;-- This line sets the `character_set_client` system variable to `utf8mb4`.
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;-- This line creates the `users` table in the current database with columns `id`, `username`, `password`, and `isAdmin`, and sets the primary key to be `id` and a unique key to be `username`.
/*!40101 SET character_set_client = @saved_cs_client */;-- This line sets the `character_set_client` system variable to the value that was saved in the `@saved_cs_client` variable.

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;-- This line locks the `users` table for write access.
/*!40000 ALTER TABLE `users` DISABLE KEYS */;-- This line disables the keys for the `users` table in the current database.
INSERT INTO `users` VALUES (1,'admin','$2b$10$gDY5jPBpuXX6f.8v/.SI2O61KNBLSV6yZ8rs1yKwXmXVS/q44Ww.e',1),(3,'asdasdas','$2b$10$2hrwbwVnJA1O5N1txdZgQe0GkQHGpp3k9h2eAa20fNEs953rdre4q',1),(4,'michael','$2b$10$YpEU/hCNXuFH2XhEPD6cDug5z4Uh9eBMhZFWV0ir586CpIgw500YO',0),(5,'cake','$2b$10$TAXLnVws26jHJMK/1egXlOesAVfSqJBSoX9rb0Ob8NBfpGpo8KIrK',0),(7,'jimmyNeutron','$2b$10$xNDoBInMpMpA0ZfkVOfzvOUBFCWOXgBvJF82D3ywJ4bHFn1c.18pa',0),(8,'testAdd','$2b$10$1ZMYVx3PLIzkeBEsRZrvVuzWeuC3TX5ipS02m0ZSadjTMnCeJi22q',0),(9,'testAdmin1','$2b$10$1HjZMqfQRA3gXfm5DD7fCupFucYgoErn8jU77OCk8NQtH0rsq8w32',1),(10,'testpostman','$2b$10$yEEYp.rOcK1GIBl5NRC4uuHeUBVYKDTQ7RhhXr/WzBhZt1xZk5rEK',1),(11,'testpostman1','$2b$10$N.i4thpGv9725NPlS9KO3.rt5IOdO1fTJ1/ZxQqQgCmnrFFc2Pse2',0),(12,'testpostman2','$2b$10$VZSVpr.b0THEqXxuWpGveujmkXzgnsf9assN4b5SZAK/Lz8thARAS',0),(13,'testpostman3','$2b$10$xwY4ZQ//5o4ZVe9W1hKEF.PYB1oyeMAJUX8w/Vshq2IUmxUAH5d3K',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;-- This is a MySQL statement to enable the keys on the `users` table.
UNLOCK TABLES;-- This MySQL statement unlocks all locked tables in the current session.
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;-- This is a MySQL statement to set the time zone to the old time zone value.

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;-- This is a MySQL statement to set the SQL mode to the old SQL mode value.
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;-- This is a MySQL statement to set the foreign key checks to the old foreign key check value.
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;-- This is a MySQL statement to set the unique checks to the old unique check value.
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;-- This is a MySQL statement to set the character set client to the old character set client value.
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;-- This is a MySQL statement to set the character set results to the old character set results value.
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;-- This is a MySQL statement to set the collation connection to the old collation connection value.
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;-- This is a MySQL statement to set the SQL notes to the old SQL notes value.


--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`; -- This MySQL statement drops the `cart` table if it exists.
/*!40101 SET @saved_cs_client     = @@character_set_client */; -- This is a MySQL statement to save the current value of the character set client.
/*!50503 SET character_set_client = utf8mb4 */;-- This is a MySQL statement to set the character set client to the UTF-8 multibyte 4-byte encoding.
CREATE TABLE `cart` (-- This MySQL statement creates a new `cart` table.
  `cart_id` int NOT NULL AUTO_INCREMENT,-- This defines an `int` column named `cart_id` that is not nullable and auto increments.
  `uid` int NOT NULL,-- This defines an `int` column named `uid` that is not nullable.
  `pid` int NOT NULL,-- This defines an `int` column named `uid` that is not nullable.
  `quantity` int DEFAULT NULL,-- This defines an `int` column named `quantity` that is nullable and has a default value of `NULL`.
  PRIMARY KEY (`cart_id`),-- This sets the `cart_id` column as the primary key.
  KEY `user_fk` (`uid`),-- This creates an index on the `uid` column named `user_fk`.
  KEY `product_fk` (`pid`),-- This creates an index on the `pid` column named `product_fk`.
  CONSTRAINT `product_fk` FOREIGN KEY (`pid`) REFERENCES `product` (`id`),-- This creates a foreign key constraint on the `pid` column referencing the `id` column of the `product` table.
  CONSTRAINT `user_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`)-- This creates a foreign key constraint on the `uid` column referencing the `id` column of the `users` table.
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;-- This sets the storage engine to InnoDB, the auto increment value to 79, and the character set and collation to UTF-8
/*!40101 SET character_set_client = @saved_cs_client */;-- This line is a MySQL-specific syntax that sets the character set for the client session.

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;-- This line locks the table `cart` for write operations, preventing other queries from modifying the table until the lock is released.
/*!40000 ALTER TABLE `cart` DISABLE KEYS */; -- This line disables non-unique indexes for the `cart` table, which can speed up bulk inserts.
INSERT INTO `cart` VALUES (77,4,5,1),(78,4,5,2); -- This line inserts two rows into the `cart` table.
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;-- This line enables non-unique indexes for the `cart` table, which were previously disabled.
UNLOCK TABLES; -- This line releases the lock on the `cart` table.

-- Dump completed on 2023-04-20 23:53:37
