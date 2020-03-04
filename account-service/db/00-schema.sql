# Account
DROP SCHEMA IF EXISTS db_account;
CREATE SCHEMA db_account;
USE db_account;

CREATE TABLE `account_tbl`
(
    `id`      INT(11) NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(255) DEFAULT NULL,
    `money`   INT(11)      DEFAULT 0,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
