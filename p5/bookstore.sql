CREATE TABLE `admins`  (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
);

CREATE TABLE `books`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NULL,
  `year` year NULL,
  `price` int NULL,
  `qt` smallint NULL,
  `is_active` tinyint NULL DEFAULT 1,
  `image` varchar(255) NULL,
  `pages` smallint NULL,
  `category` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `price` int NULL,
  `status` varchar(50) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NULL,
  `register_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL ON UPDATE CURRENT_TIMESTAMP,
  `address` text NULL,
  `postal_code` int NULL,
  `phone` varchar(14) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX(`username`),
  UNIQUE INDEX(`email`)
);

ALTER TABLE `orders` ADD CONSTRAINT `fk_orders_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
ALTER TABLE `orders` ADD CONSTRAINT `fk_orders_books_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

