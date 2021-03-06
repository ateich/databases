CREATE DATABASE chat;
USE chat;

CREATE TABLE messages (
  id INT AUTO_INCREMENT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP,
  message MEDIUMTEXT,
  roomName varchar(20),
  userID INT,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id INT AUTO_INCREMENT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP,
  roomName VARCHAR(20) UNIQUE,
  PRIMARY KEY (id),
  INDEX (roomName)
);

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP,
  name VARCHAR(30) NOT NULL,
  friends INT,
  PRIMARY KEY (id)
);

-- SELECT * FROM users WHERE friends = whatever

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/




