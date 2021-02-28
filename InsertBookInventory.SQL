USE bookstoreschema;

INSERT INTO Customers (firstName, lastName, emailAddress, phoneNumber, Cpassword, username)
VALUES ('Tushar', 'Khatri', 'tushar@khatri.com', '111-222-3333','abc123','tushar');

INSERT INTO Customers (firstName, lastName, emailAddress, phoneNumber, Cpassword, username)
VALUES ('Kriti', 'Manchanda', 'kriti@manchanda.com', '222-333-4444','xyz789','kriti');

INSERT INTO Addresses (line1, line2, city, province,country,pincode,customerID)
VALUES ('Address Line1','','Kitchener','ON','Canada','A1B2C2',1);

INSERT INTO Addresses (line1, line2, city, province,country,pincode,customerID)
VALUES ('Address2 Line1','Line2','Kitchener','ON','Canada','D3E4F4',1);

INSERT INTO Authors (authorFirstName,authorLastName) 
VALUES ('J.K.','Rowling');

INSERT INTO Authors (authorFirstName,authorLastName) 
VALUES ('Sidney','Sheldon');

INSERT INTO Publishers (publisherName,country)
VALUES ('Bloomsbury publishing','United Kingdom');

INSERT INTO Publishers (publisherName,country)
VALUES ('HarperCollins','United States');

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Harry Potter and the Philosopher's Stone","Fiction","10","1997",1,1);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Harry Potter and the Chamber of Secrets","Fiction","11","1998",1,1);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Harry Potter and the Prisoner of Azkaban","Fiction","12","1999",1,1);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Harry Potter and the Goblet of Fire","Fiction","15","2000",1,1);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("If Tomorrow Comes","Thriller","15","1985",2,2);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Nothing Lasts Forever","Thriller","15","1994",2,2);

INSERT INTO Books (title,genre,price,yearPublished,authorID,publisherID) 
VALUES ("Are you afraid of the Dark?","Thriller","17","2004",2,2);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (1, 200);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (2, 250);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (3, 100);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (4, 150);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (5, 100);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (6, 220);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (7, 120);