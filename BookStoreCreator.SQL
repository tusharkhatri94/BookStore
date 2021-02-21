CREATE TABLE Customers (
    customerID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT NULL,
    lastName varchar(255) NOT NULL,
    emailAddress varchar(255) NOT NULL,
    phoneNumber varchar(255) NOT NULL
);

CREATE TABLE Addresses (
    addressID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    line1 VARCHAR(255) NOT NULL,
    line2 VARCHAR(255),
    city VARCHAR(40) NOT NULL,
    province VARCHAR(20) NOT NULL,
    country VARCHAR(45) NOT NULL,
    pincode VARCHAR(7) NOT NULL,
    CONSTRAINT FK_customerID FOREIGN KEY (customerID)
    REFERENCES Customers(customerID)
);

CREATE TABLE Orders (
    orderID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    orderDate DATETIME NOT NULL,
    subTotal DECIMAL(10,2) NOT NULL,
    shipAmount DECIMAL(10,2) NOT NULL,
    taxAmount DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_customerID FOREIGN KEY (customerID)
    REFERENCES Customers(customerID)
);

CREATE TABLE Inventory (
    inventoryID int NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    CONSTRAINT fk_bookID FOREIGN KEY (bookID)
    REFERENCES Books(bookID),
    availableQuantity int NOT NULL
);

CREATE TABLE Authors (
    authorID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    authorFirstName varchar(255) NOT NULL,
    authorLastName varchar(255) NOT NULL
);

CREATE TABLE Publishers (
    publisherID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    publisherName varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
);

CREATE TABLE Books (
    bookID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
    yearPublished varchar(4) NOT NULL,
    CONSTRAINT FK_authorID FOREIGN KEY (authorID)
    REFERENCES Authors(authorID),
    CONSTRAINT FK_publisherID FOREIGN KEY (publisherID)
    REFERENCES Publishers(publisherID)
);