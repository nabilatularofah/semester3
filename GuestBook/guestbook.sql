CREATE USER guestbook IDENTIFIED BY 'guestbook';
DROP DATABASE IF EXISTS dbguestbook;
CREATE DATABASE dbguestbook;
USE dbguestbook;
GRANT ALL ON dbguestbook.* TO guestbook;

CREATE TABLE GuestBook(
    id INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(60) NOT NULL,
    address VARCHAR(100) NOT NULL,
    company VARCHAR(60) NOT NULL,
    email VARCHAR(32) NOT NULL,
    PRIMARY KEY(id)
);