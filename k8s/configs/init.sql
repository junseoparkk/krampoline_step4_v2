CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

-- GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
-- GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;

CREATE TABLE `places`
(
    `place_id`      bigint AUTO_INCREMENT PRIMARY KEY,
    `title`         varchar(255) NOT NULL,
    `address`       varchar(255) NOT NULL,
    `tag`           varchar(255) NOT NULL,
    `thumbnail_url` varchar(255) NOT NULL
);

CREATE TABLE `tickets`
(
    `ticket_id`     bigint AUTO_INCREMENT PRIMARY KEY,
    `category`      varchar(255) NOT NULL,
    `is_closed`     boolean NOT NULL,
    `title`         varchar(255) NOT NULL,
    `description`   varchar(255) NOT NULL,
    `created_at`    varchar(255) NOT NULL,
    `is_limited`    varchar(255) NOT NULL,
    `capacity`      int NULL,
    `laundry_color` varchar(255) NULL,
    `is_dry`        boolean NULL,
    `start_time`    datetime NULL,
    `end_time`      datetime NULL,
    `destination`   varchar(255) NULL
);

CREATE TABLE `users`
(
    `user_id`  bigint AUTO_INCREMENT PRIMARY KEY,
    `nickname` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL
);


CREATE TABLE `users_tickets`
(
    `user_ticket_id` bigint AUTO_INCREMENT PRIMARY KEY,
    `user_id` bigint NOT NULL,
    `ticket_id` bigint NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY (`ticket_id`) REFERENCES `tickets`(`ticket_id`)
);

INSERT INTO users (user_id, nickname, password) VALUES (1, 'jikky', '1234');
INSERT INTO users (user_id, nickname, password) VALUES (2, 'kanuda', '1234');
INSERT INTO users (user_id, nickname, password) VALUES (3, 'senny', '1234');
INSERT INTO users (user_id, nickname, password) VALUES (4, 'erica', '1234');
INSERT INTO users (user_id, nickname, password) VALUES (5, 'jun', '1234');

