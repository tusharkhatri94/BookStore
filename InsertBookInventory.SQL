USE bookstoreschema;

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
VALUES (1, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (2, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (3, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (4, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (5, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (6, 7);

INSERT INTO Inventory (bookID, availableQuantity) 
VALUES (7, 7);