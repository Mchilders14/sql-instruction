use master;
go
alter database SalesDb set single_user with rollback immediate
go
drop database if exists SalesDb;
go
create database SalesDb;
go
use SalesDb;
go
create table Customers (
	Id int primary key identity(1,1),
	Name nvarchar(30) not null,
	City nvarchar(30) not null,
	State nchar(2) not null,
	Sales decimal(9,2) not null default 0,
	Active bit not null default 1
);
go
create table Orders (
	Id int primary key identity(1,1),
	CustomerId int foreign key references Customers(Id),
	Date DateTime not null default getdate(),
	Description nvarchar(80),
);
go
create table OrderLines (
	Id int primary key identity(1,1),
	OrdersId int not null foreign key references Orders(Id),
	Product nvarchar(30) not null,
	Description nvarchar(80),
	Quantity int not null default 1,
	Price decimal(9,2) not null default 10,
);
go
Insert into Customers (Name, City, State, Sales, Active) values ('Kroger', 'Cincinnati', 'OH', 97230, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Macy''s', 'Cincinnati', 'OH', 34762, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Convergys', 'Cincinnati', 'OH', 70887, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('P&G', 'Cincinnati', 'OH', 37179, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Mitsubishi Automotive', 'Cincinnati', 'OH', 16175, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Ford', 'Cincinnati', 'OH', 89300, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cincinnati Financial', 'Cincinnati', 'OH', 81688, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Fifth Third Bank', 'Cincinnati', 'OH', 35074, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Citigroup', 'Cincinnati', 'OH', 24546, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Huntington', 'Cincinnati', 'OH', 5974, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('PNC Bank', 'Cincinnati', 'OH', 36307, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('US Bank', 'Cincinnati', 'OH', 15880, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('LyondellBasell', 'Cincinnati', 'OH', 63383, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Rohm and Haas', 'Cincinnati', 'OH', 47756, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cintas', 'Cincinnati', 'OH', 7707, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cleveland Clinic', 'Cleveland', 'OH', 78038, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Progressive', 'Cleveland', 'OH', 91395, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('KeyCorp', 'Cleveland', 'OH', 64434, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Case Western Reserve', 'Cleveland', 'OH', 89528, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Giant Eagle', 'Cleveland', 'OH', 16297, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Eaton Corp', 'Cleveland', 'OH', 90828, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Swagelok', 'Cleveland', 'OH', 23579, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Sherwin-Williams', 'Cleveland', 'OH', 67370, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Lincoln Electric', 'Cleveland', 'OH', 19778, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Nestle USA', 'Cleveland', 'OH', 51223, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('JP Morgan Chase', 'Columbus', 'OH', 50892, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Nationwide', 'Columbus', 'OH', 94452, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Honda America', 'Columbus', 'OH', 72730, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('L Brands', 'Columbus', 'OH', 30834, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Cardinal Health', 'Columbus', 'OH', 83620, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('American Electric Power', 'Columbus', 'OH', 71096, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Verizon', 'Columbus', 'OH', 77086, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Whirlpool', 'Columbus', 'OH', 84494, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Abercrombie Fitch', 'Columbus', 'OH', 92311, 1);
Insert into Customers (Name, City, State, Sales, Active) values ('Spectrum', 'Columbus', 'OH', 79482, 1);
go
Insert into Orders (CustomerId, Date, Description) values (1, '2019-01-22', 'My 1st order');
Insert into Orders (CustomerId, Date, Description) values (8, '2018-11-22', 'My 2nd order');
Insert into Orders (CustomerId, Date, Description) values (4, '2018-03-22', 'My 3rd order');
Insert into Orders (CustomerId, Date, Description) values (9, '2019-01-02', 'My 4st order');
Insert into Orders (CustomerId, Date, Description) values (11, '2018-07-04', 'My 5st order');
Insert into Orders (CustomerId, Date, Description) values (22, '2019-01-22', 'My 6st order');
Insert into Orders (CustomerId, Date, Description) values (25, '2018-12-11', 'My 7th order');
Insert into Orders (CustomerId, Date, Description) values (4, '2018-01-11', 'My 8th order');
Insert into Orders (CustomerId, Date, Description) values (8, '2018-05-11', 'My 9th order');
Insert into Orders (CustomerId, Date, Description) values (9, '2018-07-11', 'My 19th order');
Insert into Orders (CustomerId, Date, Description) values (7, '2018-12-11', 'My 18th order');
Insert into Orders (CustomerId, Date, Description) values (7, '2017-06-11', 'My 17th order');
Insert into Orders (CustomerId, Date, Description) values (9, '2017-09-21', 'My 16th order');
Insert into Orders (CustomerId, Date, Description) values (11, '2017-06-21', 'My 15th order');
Insert into Orders (CustomerId, Date, Description) values (31, '2017-08-21', 'My 14th order');
Insert into Orders (CustomerId, Date, Description) values (12, '2017-06-21', 'My 13th order');
Insert into Orders (CustomerId, Date, Description) values (5, '2017-10-21', 'My 12th order');
Insert into Orders (CustomerId, Date, Description) values (2, '2017-06-21', 'My 11th order');
Insert into Orders (CustomerId, Date, Description) values (32, '2019-01-22', 'My 20th order');
Insert into Orders (CustomerId, Date, Description) values (35, '2018-12-11', 'My 21st order');
Insert into Orders (CustomerId, Date, Description) values (34, '2018-01-11', 'My 22nd order');
Insert into Orders (CustomerId, Date, Description) values (28, '2018-05-11', 'My 23nd order');
Insert into Orders (CustomerId, Date, Description) values (29, '2018-07-11', 'My 24th order');
Insert into Orders (CustomerId, Date, Description) values (27, '2018-12-11', 'My 25th order');
Insert into Orders (CustomerId, Date, Description) values (27, '2017-06-11', 'My 26th order');
Insert into Orders (CustomerId, Date, Description) values (29, '2017-09-21', 'My 27th order');
go
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Watch', 'Rolex', 1, 1999.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (2, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (2, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (2, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (3, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (3, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (3, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (4, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (4, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (4, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (5, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (5, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (5, 'Book', 'Dress for Success', 1, 9.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (6, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (6, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (6, 'Watch', 'Rolex', 1, 1999.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (8, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (8, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (8, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (9, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (9, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (9, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (10, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (10, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (10, 'Book', 'Dress for Success', 1, 9.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (1, 'Watch', 'Rolex', 1, 1999.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (11, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (11, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (11, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (12, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (12, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (12, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (13, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (13, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (13, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (14, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (14, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (14, 'Book', 'Dress for Success', 1, 9.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (15, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (15, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (15, 'Watch', 'Rolex', 1, 1999.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (16, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (16, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (16, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (7, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (18, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (18, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (18, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (19, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (19, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (19, 'Book', 'Dress for Success', 1, 9.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (20, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (20, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (20, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (21, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (21, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (21, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (22, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (22, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (22, 'Tablet', 'Apple iPad', 1, 499.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (23, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (23, 'Watch', 'Timex', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (23, 'Book', 'Dress for Success', 1, 9.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (24, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (24, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (24, 'Watch', 'Rolex', 1, 1999.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (25, 'Echo', 'Amazon Echo', 1, 99.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (25, 'Book', 'Dress for Success', 1, 9.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (25, 'Watch', 'Timex', 1, 19.99);

Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (26, 'Echo Dot', 'Amazon Echo Dot', 1, 39.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (26, 'Book', 'Millionarie Next Door', 1, 19.99);
Insert into OrderLines (OrdersId, Product, Description, Quantity, Price) values (26, 'Tablet', 'Apple iPad', 1, 499.99);
go