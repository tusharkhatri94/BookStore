CREATE DATABASE bookstoreschema;

USE bookstoreschema;

CREATE TABLE Authors (
    authorID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    authorFirstName varchar(255) NOT NULL,
    authorLastName varchar(255) NOT NULL
);

CREATE TABLE Publishers (
    publisherID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    publisherName varchar(255) NOT NULL,
    country varchar(255) NOT NULL
);

CREATE TABLE Books (
    bookID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
    yearPublished varchar(4) NOT NULL,
    authorID INT NOT NULL,
    publisherID INT NOT NULL,
    CONSTRAINT FK_authorID FOREIGN KEY (authorID)
    REFERENCES Authors(authorID),
    CONSTRAINT FK_publisherID FOREIGN KEY (publisherID)
    REFERENCES Publishers(publisherID)
);

CREATE TABLE Inventory (
    inventoryID int NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    bookID INT NOT NULL,
    CONSTRAINT fk_bookID FOREIGN KEY (bookID)
    REFERENCES Books(bookID),
    availableQuantity int NOT NULL
);

CREATE TABLE Orders (
    orderID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    orderDate varchar(255) NOT NULL,
    totalPrice DECIMAL(10,2) NOT NULL,
    firstName varchar(255) NOT NULL,
    lastName varchar(255) NOT NULL,
    emailAddress varchar(255) NOT NULL,
    phoneNumber varchar(255) NOT NULL,
    bookID INT NOT NULL,
    CONSTRAINT FK1_bookID FOREIGN KEY (bookID)
    REFERENCES Books(bookID)
);

