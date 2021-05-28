-- create and select the database
DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- Create user table
-- DROP TABLE IF EXISTS user;
Create table User (
ID 				integer 		primary key auto_increment,
Username 		varchar(20) 	not null,
Password 		varchar(20) 	not null,
FirstName 		varchar(20) 	not null,
LastName 		varchar(20) 	not null,
Phone 			varchar(12) 	not null,
Email 			varchar(75) 	not null,
Reviewer 		BIT			 	not null,
Admin			BIT			 	not null,
CONSTRAINT uName unique (Username)
);

-- create Vendor
-- DROP TABLE IF EXISTS Vendor;
Create table Vendor (
ID 				integer 			primary key auto_increment,
Code			varchar(10)			not null,
Name 			varchar(255) 		not null,
Address 		varchar(255) 		not null,
City 			varchar(255) 		not null,
State 			varchar(2) 			not null,
Zip 			varchar(5) 			not null,
Phone 			varchar(12) 		not null,
Email 			varchar(100) 		not null,
CONSTRAINT vcode unique (Code)
);

-- create Request table
-- DROP TABLE IF EXISTS Vendor;
Create table Request (
ID 						integer 			primary key auto_increment,
UserID					integer 			not null,
Description 			varchar(100) 		not null,
Justification 			varchar(255) 		not null,
DateNeeded 				date		 		not null,
DeliveryMode 			varchar(25) 		not null,
Status 					varchar(20) 		not null,
Total 					decimal(10.2)		not null,
SubmittedDate 			datetime	 		not null,
ReasonForRejection		varchar(100)		,
Foreign Key (UserId) references User(ID)
);

-- create Product table
-- DROP TABLE IF EXISTS Product;
Create table Product (
ID 				integer 			primary key auto_increment,
VendorID		integer 			not null,
PartNumber 		varchar(50) 		not null,
Name		 	varchar(150)		not null,
Price	 		decimal(10,2)		not null,
Unit	 		varchar(255)		,
PhotoPath	 	varchar(255)		,
Foreign Key (VendorID) references Vendor(ID),
CONSTRAINT uMenuItem unique (VendorID, PartNumber)
);

-- create LineItem table
-- DROP TABLE IF EXISTS LineItem;
Create table LineItem (
ID 				integer 		primary key auto_increment,
RequestID		integer 		not null,
ProductID 		integer			not null,
Quantity		integer			not null,
Foreign Key (RequestID) references Request(ID),
Foreign Key (ProductID) references Product(ID),
CONSTRAINT req_pdt unique (RequestID, ProductID)
);

-- Adding Some User Info
INSERT INTO User VALUES
(1, 'SYSTEM', 'xxxxxx', 'SYSTEM', 'SYSTEM', 'xxx-xxx-xxxx', 'system@test.com', 0, 1),
(2, 'mchilders', 'Matt123', 'Matthew', 'Childers', '513-703-0376', 'childersmatt4@gmail.com', 1, 1),
(3, 'sblessing', 'Sean123', 'Sean', 'Blessing', '513-600-7096', 'sblessing@gmail.com', 1, 0),
(4, 'bstiens', 'fruitloops22', 'Bray', 'Stiens', '513-835-4401', 'bstiens@gmail.com', 1, 0),
(5, 'kcraig', 'klc122219907', 'Kendelle', 'Craig', '513-505-4587', 'kendellecraig@icloud.com', 0, 0),
(6, 'aficker', 'basketball23', 'Andy', 'Ficker', '513-264-2541', 'fickerandy@gmail.com', 0, 1),
(7, 'cmitchell', 'bluetruck14', 'Caleb', 'Mitchell', '812-577-2900', 'zercmon@gmail.com', 0, 1),
(8, 'schilders', '1childersnoel', 'Suzanne', 'Childers', '513-869-9748', 'snoel@fuse.net', 0, 1),
(9, 'lmendenhall', 'lmfoodsource22', 'Lance', 'Mendenhall', '859-468-7055', 'mendenhalll@gmail.com', 0, 1),
(10, 'rwalker', 'rskywalker', 'Rose', 'Walker', '317-258-0152', 'rosiewalker@icloud.com', 0, 1),
(11, 'hchilders', 'harrys1229', 'Hannah', 'Childers', '513-609-6973', 'hchilders@gmail.com', 0, 1);


-- insert some rows into the Vendor table
INSERT into vendor (ID, code, name, address, city, state, zip, phone, email) VALUES
(1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
(2, 'AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'genius@apple.com'),
(3, 'AM-1001', 'Amazon', '410 Terry Ave. North', 'Seattle', 'WA', '98109','206-266-1000', 'amazon@amazon.com'),
(4, 'ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', '45040', '513-754-0235', 'support@orders.staples.com'),
(5, 'MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');

-- insert some rows into the Product table
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (1,1,'ME280LL','iPad Mini 2',296.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (3,3,'105810','Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap',8.99,'1 Ream / 500 Sheets',NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (4,4,'122374','HammerMill® Copy Plus Copy Paper, 8 1/2\" x 11\", Case',29.99,'1 Case, 10 Reams, 500 Sheets per ream',NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (5,4,'784551','Logitech M325 Wireless Optical Mouse, Ambidextrous, Black ',14.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (6,4,'382955','Staples Mouse Pad, Black',2.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (7,4,'2122178','AOC 24-Inch Class LED Monitor',99.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (8,4,'2460649','Laptop HP Notebook 15-AY163NR',529.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (9,4,'2256788','Laptop Dell i3552-3240BLK 15.6\"',239.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (10,4,'IM12M9520','Laptop Acer Acer™ Aspire One Cloudbook 14\"',224.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (11,4,'940600','Canon imageCLASS Copier (D530)',99.99,NULL,NULL);
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (12,5,'228148','Acer Aspire ATC-780A-UR12 Desktop Computer',399.99,'','/images/AcerAspireDesktop.jpg');
INSERT INTO `product` (`ID`,`VendorID`,`PartNumber`,`Name`,`Price`,`Unit`,`PhotoPath`) VALUES (13,5,'279364','Lenovo IdeaCentre All-In-One Desktop',349.99,'','/images/LenovoIdeaCenter.jpg');

-- create a user and grant privileges to that user
DROP USER IF EXISTS prs_user@localhost;
CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;
