-- create and select the database
DROP DATABASE IF EXISTS food_db;
CREATE DATABASE food_db;
USE food_db;

-- Create Category table
-- DROP TABLE IF EXISTS Category;
Create table Category (
ID 			integer 		primary key auto_increment,
Name 		varchar(255) 	not null unique
);

-- create Actor Customer
-- DROP TABLE IF EXISTS Customer;
Create table Customer (
ID 					integer 		primary key auto_increment,
CustomerNumber		varchar(5)		not null unique,
LastName 			varchar(255) 	not null,
FirstName 			varchar(255) 	not null,
Email 				varchar(75) 	not null,
Phone 				varchar(20)		not null
);

-- create MenuItem table
-- business rule - combo of CategoryId+Name must be unique
Create table MenuItem (
ID 				integer 			primary key auto_increment,
CategoryID		integer 			not null,
Name 			varchar(255) 		not null,
Price		 	decimal(10,2)		not null,
Calories	 	integer				not null,
Foreign Key (CategoryID) references Category(ID),
CONSTRAINT uMenuItem unique (CategoryId, Name)
);

-- create OrderTicket table
-- business rule - combo of CustomerID + OrderDate must be unique
Create table OrderTicket (
ID 				integer 			primary key auto_increment,
CustomerID		integer 			not null,
OrderDate 		timestamp 			not null,
Status		 	varchar(1)			not null,
Total	 		decimal(10,2)		not null,
Foreign Key (CustomerID) references Customer(ID),
CONSTRAINT uMenuItem unique (CustomerID, OrderDate)
);

-- create LineItem table
-- business rule - combo of OrderID + MenuItemID must be unique
Create table LineItem (
ID 				integer 		primary key auto_increment,
OrderID			integer 		not null,
MenuItemID 		integer			not null,
Qty		 		integer			not null,
Foreign Key (OrderID) references OrderTicket(ID),
Foreign Key (MenuItemID) references MenuItem(ID),
CONSTRAINT uMenuItem unique (OrderID, MenuItemID)
);

-- Add some food / menu items

-- create a user and grant privileges to that user
DROP USER IF EXISTS bmdb_user@localhost;
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
