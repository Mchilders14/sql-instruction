-- create and select the database
DROP DATABASE IF EXISTS food_db;
CREATE DATABASE food_db;
USE food_db;

-- Create Category table
-- DROP TABLE IF EXISTS Category;
Create table Category (
ID 			integer 		primary key auto_increment,
Name 		varchar(255) 	not null unique,
CONSTRAINT uName unique (Name)
);

-- create Actor Customer
-- DROP TABLE IF EXISTS Customer;
Create table Customer (
ID 					integer 		primary key auto_increment,
CustomerNumber		varchar(5)		not null,
LastName 			varchar(255) 	not null,
FirstName 			varchar(255) 	not null,
Email 				varchar(255) 	not null,
Phone 				varchar(20),
CONSTRAINT uCustomer unique (CustomerNumber)
);

-- create MenuItem table
-- business rule - combo of CategoryId+Name must be unique
Create table MenuItem (
ID 				integer 			primary key auto_increment,
CategoryID		integer 			not null,
Name 			varchar(255) 		not null,
Price		 	decimal				not null,
Calories	 	integer				not null,
Foreign Key (CategoryID) references Category(ID),
CONSTRAINT uMenuItem unique (CategoryId, Name)
);

-- create OrderTicket table
-- business rule - combo of CustomerID + OrderDate must be unique
Create table OrderTicket (
ID 				integer 			primary key auto_increment,
CustomerID		integer 			not null,
OrderDate 		timestamp 			not null default current_timestamp,
Status		 	varchar(1)			not null default 'O',
Total	 		decimal				not null default 0,
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

-- Add some food categories
INSERT INTO Category VALUES
(1, 'Appetizers'),
(2, 'Salads'),
(3, 'Entree'),
(4, 'Sides'),
(5, 'Drinks'),
(6, 'Dessert');

-- Adding some delicious choices to the menu
INSERT INTO MenuItem VALUES
(1, 1, 'Cheese Stick', 8.99, 800),
(2, 1, 'Fried Pickles', 5.99, 600),
(3, 1, 'Bread Sticks', 7.99, 700),
(4, 1, 'Ultimate Nachos', 11.99, 1200),
(5, 1, 'Potato Skins', 9.99, 850),
(6, 1, 'Loaded French Fries', 9.99, 1000),
(7, 2, 'House Salad', 4.99, 400),
(8, 2, 'Caesar Salad', 6.99, 600),
(9, 3, 'Filet Mignon', 28.99, 1100),
(10, 3, 'Pizza', 13.99, 1400),
(11, 4, 'Fruit', 1.99, 140),
(12, 4, 'Fries', 2.99, 620),
(13, 4, 'Saratoga Chips', 3.99, 450),
(14, 4, 'Slaw', 1.99, 370),
(15, 1, 'Fish N'' Chips', 9.99, 1000),
(16, 2, 'Wings', 9.99, 890),
(17, 2, 'Matty''s Double Cheese', 2.99, 1230),
(18, 3, 'Matty''s Single Cheese', 1.99, 620),
(19, 4, 'Sweet Potato Fries', 3.99, 290),
(20, 4, 'Onion Rings', 4.99, 800),
(21, 5, 'Dasani Bottled Water', 1.59, 0),
(22, 5, 'Coke', 0.99, 140),
(23, 5, 'Sprite', 1.99, 140),
(24, 5, 'MinuteMaid Lemonade', 1.99, 150),
(25, 5, 'Gold Peaks Tea', 1.99, 190),
(26, 5, 'Cherry Coke', 1.99, 190),
(27, 5, 'Mellow Yellow', 1.99, 200),
(28, 5, 'Bud Light 32oz', 3.99, 230),
(29, 5, 'Trotwood 12oz', 2.99, 120),
(30, 5, 'Coorslight 32oz', 3.99, 220),
(31, 6, 'Not Your Father''s Rootbeer 12oz', 2.99, 170),
(32, 6, 'Modelo 32oz', 5.99, 210),
(33, 6, 'Yuengling Lager 32oz', 4.99, 230),
(34, 6, 'Cookies 2pk (Soft Kind)', 1.99, 400),
(35, 6, 'Brownie', 1.99, 440),
(36, 6, 'Cheesecake Slice', 3.99, 350),
(37, 6, 'Chef''s Choice Icecream Cone', 0.99, 300),
(38, 6, 'Dippin Dots 8oz', 5.99, 420),
(39, 3, 'MeatTornado', 4.99, 1890),
(40, 6, 'Single Donuts', 0.99, 550);

-- Inserting customers into the database
INSERT INTO Customer (id, customernumber, lastname, firstname, email, phone) VALUES
(1, 'MC001', 'Childers', 'Matthew', 'childersmatt4@gmail.com', '513-703-0376'),
(2, 'KW002', 'Kanye', 'West', 'Yeezus@ye.com', '441-378-2345'),
(3, 'EC003', 'Elijah', 'Childers', 'EBC@gmail.com', '604-833-0099'),
(4, 'YC004', 'YoYo', 'Childers', 'Yoyo@yahoo.com', '513-555-3563'),
(5, 'KC005', 'Kendelle', 'Craig', 'kendellecraig@icloud.com', '513-774-2190'),
(6, 'BR001', 'Bob', 'Ross', 'bobross@gmail.com', '907-221-0990'),
(7, 'BS002', 'Bray', 'Stiens', 'bstiens@gmail.com.com', '513-833-7112'),
(8, 'TA003', 'Tim', 'Allen', 'timthetoolman@outlook.com', '317-833-3125'),
(9, 'ZW004', 'Zach', 'Wright', 'wrightzz@icloud.com', '502-833-2298'),
(10, 'XD005', 'Xaviar', 'Davis', 'XavDav@gmail.com', '513-090-4467');

-- Creating some sample order tickets
INSERT INTO OrderTicket (id, customerid)VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Matt's Order
INSERT INTO LineItem (orderid, menuitemid, qty)VALUES
(1, 9, 2),
(1, 4, 2),
(1, 7, 1);

-- Kanye's Order
INSERT INTO LineItem (orderid, menuitemid, qty)VALUES
(2, 22, 1),
(2, 17, 1),
(2, 26, 1),
(2, 31, 1),
(2, 37, 1);

-- Kendelle's Order
INSERT INTO LineItem (orderid, menuitemid, qty)VALUES
(3, 1, 1),
(3, 7, 1),
(3, 12, 1),
(3, 36, 1),
(3, 40, 3);

-- Elijahs's Order
INSERT INTO LineItem (orderid, menuitemid, qty)VALUES
(4, 1, 1),
(4, 24, 1);

-- YoYo's Order
INSERT INTO LineItem (orderid, menuitemid, qty)VALUES
(5, 2, 1),
(5, 24, 1),
(5, 11, 1);

-- create a user and grant privileges to that user
DROP USER IF EXISTS bmdb_user@localhost;
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
