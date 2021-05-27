-- Drop and Create the Database, DDL

drop database if exists school_db;
create database school_db;
use school_db;

-- DDL - Create Tables
create table student (
	id 				int 			primary key auto_increment,
	ssnLastFour 	int 			not null,
	firstName 		varchar(25) 	not null,
	lastName 		varchar(25) 	not null,
	middleInitial 	varchar(1), 		
	address			varchar(50) 	not null,
	city 			varchar(40) 	not null,
	state 			varchar(2) 		not null,
	zip 			varchar(5) 		not null,
	birthday 		Date 			not null,
	primaryPhone 	varchar(12) 	not null,
	secondaryPhone 	varchar(12),
	email 			varchar(50) 	not null
	);

create table course (
	id 				int 			not null primary key auto_increment,
	subject 		varchar(50)		not null,
	name 			varchar(20)		not null unique,
	credits 		int 			not null,
	quarter 		int 			not null
	);


create table enrolled (
	id 				int 			not null primary key auto_increment,
	studentID		int 			not null,
	courseID		int 			not null,
	grade			varchar(1),
	FOREIGN KEY (studentID) REFERENCES student(id),
	FOREIGN KEY (courseID) REFERENCES course(id),
    CONSTRAINT std_course unique (studentID, courseID)
    );
    
-- DML Insert Student Data

insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (1, 8017, 'Octavia', 'C', 'Riding', '7749 Warrior Plaza', 'Saint Cloud', 'MN', 32886, '1987-04-21', '320-443-7723', '505-764-2898', 'oriding0@booking.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (2, 7992, 'Bentley', 'T', 'Gauntlett', '5015 Morning Hill', 'Madison', 'WI', 23809, '1986-07-02', '608-766-7207', '919-392-4818', 'bgauntlett1@quantcast.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (3, 8317, 'Kassia', 'C', 'Proughten', '1 Pankratz Court', 'Washington', 'DC', 16694, '1984-09-20', '202-305-1442', '208-100-5833', 'kproughten2@alibaba.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (4, 9732, 'Aeriela', null, 'Dulake', '99712 Sauthoff Circle', 'Bronx', 'NY', 32291, '1986-12-28', '917-232-6770', '214-808-5463', 'adulake3@tinyurl.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (5, 7975, 'Drusy', 'U', 'Sleeman', '64 Algoma Drive', 'Topeka', 'KS', 34885, '1983-12-03', '785-897-3136', '216-941-3445', 'dsleeman4@reddit.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (6, 7784, 'Dulcea', 'O', 'Winspire', '0 Gina Avenue', 'San Diego', 'CA', 39209, '1990-03-10', '619-737-8016', '404-797-9369', 'dwinspire5@tiny.cc');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (7, 9039, 'Hanna', 'K', 'Ficken', '34867 North Terrace', 'Pittsburgh', 'PA', 8712, '1986-07-01', '412-423-5579', '209-417-6400', 'hficken6@nba.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (8, 9014, 'Sharleen', 'Q', 'Kullmann', '5 Gateway Avenue', 'Little Rock', 'AR', 22903, '1991-06-26', '501-446-8407', '330-788-8265', 'skullmann7@illinois.edu');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (9, 8603, 'Berny', 'E', 'McColgan', '216 Anthes Road', 'Topeka', 'KS', 6863, '1985-03-11', '785-883-3542', '337-793-1600', 'bmccolgan8@webnode.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (10, 9777, 'Linzy', 'M', 'Croke', '0871 Moulton Alley', 'Omaha', 'NE', 29961, '1992-02-03', '402-253-1468', '412-633-1916', 'lcroke9@1688.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (11, 9591, 'Cheri', 'K', 'Russen', '834 Susan Center', 'Washington', 'DC', 11047, '1988-07-12', '202-660-2069', '410-841-3725', 'crussena@wikipedia.org');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (12, 8725, 'Car', 'Z', 'Saffle', '67 Scofield Junction', 'Albany', 'NY', 39557, '1983-02-01', '518-853-4640', '608-373-7086', 'csaffleb@t.co');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (13, 8284, 'Pincas', 'A', 'Bubbings', '5 Alpine Drive', 'Cleveland', 'OH', 23312, '1987-10-18', '440-774-0929', '202-278-0532', 'pbubbingsc@printfriendly.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (14, 7821, 'Kelsi', 'F', 'Duffit', '529 Wayridge Pass', 'Fresno', 'CA', 11659, '1984-06-27', '209-542-5780', '720-777-1805', 'kduffitd@redcross.org');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (15, 7949, 'Brina', 'U', 'Jillis', '9037 Carioca Road', 'Charlotte', 'NC', 22537, '1985-07-10', '704-702-0022', '309-569-2049', 'bjillise@hao123.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
values (16, 7993, 'Arluene', 'X', 'Corballis', '2 Di Loreto Center', 'El Paso', 'TX', 20750, '1983-05-25', '915-780-2577', '812-381-5470', 'acorballisf@hc360.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (17, 9645, 'Wolfgang', 'U', 'Guy', '93717 Bartillon Street', 'Charlotte', 'NC', 31215, '1990-02-22', '704-779-1724', '561-887-9276', 'wguyg@vkontakte.ru');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (18, 9314, 'Kirk', 'T', 'Walter', '8 Claremont Avenue', 'Evanston', 'IL', 16513, '1983-07-16', '847-698-9281', '917-819-8060', 'kwalterh@1688.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (19, 9302, 'Brose', 'E', 'Killwick', '95 Iowa Center', 'Huntsville', 'AL', 35042, '1988-09-20', '256-763-9518', '203-815-6704', 'bkillwicki@reuters.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (20, 8709, 'Morton', 'R', 'Bulfit', '51557 Fieldstone Plaza', 'Augusta', 'GA', 28735, '1983-09-18', '706-456-6696', '612-843-4645', 'mbulfitj@is.gd');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (21, 9319, 'Afton', 'W', 'McMakin', '08987 Mcguire Street', 'Atlanta', 'GA', 6891, '1991-05-06', '770-726-6535', '757-629-1620', 'amcmakink@newyorker.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (22, 8594, 'Everard', 'K', 'Tofano', '4 Trailsway Parkway', 'Memphis', 'TN', 39414, '1990-01-28', '901-867-2726', '202-882-8336', 'etofanol@e-recht24.de');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (23, 8108, 'Sophey', 'U', 'Godbehere', '04 Fisk Street', 'Roanoke', 'VA', 39921, '1984-03-13', '540-497-9496', '309-408-9925', 'sgodbeherem@cbc.ca');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (24, 7996, 'Quinta', 'D', 'Musico', '31236 Kensington Alley', 'Frederick', 'MD', 14960, '1984-10-11', '240-540-6797', '310-626-9354', 'qmusicon@hud.gov');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (25, 9046, 'Tymon', null, 'McGilmartin', '38 Hoard Terrace', 'New Orleans', 'LA', 20441, '1992-06-08', '504-170-6764', '513-674-6774', 'tmcgilmartino@dailymotion.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (26, 8924, 'Carmina', 'F', 'Prandi', '50 Oxford Junction', 'Lafayette', 'LA', 36013, '1988-10-19', '337-294-5466', '706-844-1369', 'cprandip@pbs.org');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (27, 9459, 'Demetri', 'O', 'Muress', '3 Duke Park', 'San Bernardino', 'CA', 34184, '1987-04-30', '909-184-5136', '210-509-1790', 'dmuressq@berkeley.edu');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (28, 8097, 'Helaina', 'O', 'Goare', '9779 Columbus Plaza', 'Baltimore', 'MD', 23599, '1984-01-06', '410-470-4694', '971-851-8468', 'hgoarer@biblegateway.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (29, 8251, 'Cleo', 'Q', 'Dufaur', '6 Dexter Hill', 'Ann Arbor', 'MI', 16096, '1991-08-31', '734-380-2233', '203-127-7599', 'cdufaurs@loc.gov');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (30, 8856, 'Robby', 'J', 'Stratz', '7278 Sauthoff Road', 'Lansing', 'MI', 27813, '1988-09-09', '517-509-7953', '816-331-5908', 'rstratzt@gmpg.org');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (31, 7888, 'Nanete', 'G', 'Lauthian', '056 Merrick Terrace', 'Atlanta', 'GA', 31070, '1992-06-06', '404-569-4727', '260-431-3744', 'nlauthianu@cbc.ca');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (32, 8773, 'Eileen', 'T', 'Wagenen', '4 Division Circle', 'Washington', 'DC', 21322, '1983-06-16', '202-216-7760', '334-607-4854', 'ewagenenv@macromedia.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (33, 8818, 'Haleigh', 'V', 'Dwire', '5 Grayhawk Avenue', 'Wilkes Barre', 'PA', 8037, '1989-12-25', '570-458-8048', '713-631-1695', 'hdwirew@cisco.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (34, 8578, 'Rhonda', null, 'Luebbert', '0164 Gulseth Drive', 'Dallas', 'TX', 26903, '1988-05-14', '214-816-8159', '404-531-3965', 'rluebbertx@sbwire.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (35, 9587, 'Anita', 'X', 'Gerold', '26 Talisman Terrace', 'Washington', 'DC', 31361, '1986-11-03', '202-166-0165', '954-201-1003', 'ageroldy@mail.ru');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (36, 9261, 'Manda', null, 'Attwooll', '89782 Larry Road', 'Chattanooga', 'TN', 8642, '1985-05-20', '423-585-5796', '217-662-2171', 'mattwoollz@nhs.uk');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (37, 8361, 'Marigold', 'I', 'Forsyth', '91 Bellgrove Avenue', 'Louisville', 'KY', 38045, '1983-03-28', '502-777-5255', '314-643-4620', 'mforsyth10@bizjournals.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (38, 8556, 'Carline', 'R', 'Minney', '0395 Welch Junction', 'Monroe', 'LA', 23049, '1986-11-16', '318-986-3883', '414-341-1682', 'cminney11@youtu.be');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (39, 9700, 'Fina', null, 'Skally', '4174 Monument Parkway', 'Brockton', 'MA', 25097, '1986-03-01', '508-623-6146', '417-124-3205', 'fskally12@a8.net');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (40, 9645, 'Lauri', 'B', 'Lainge', '8 Schmedeman Circle', 'Honolulu', 'HI', 13189, '1992-04-02', '808-338-1092', '312-505-3706', 'llainge13@upenn.edu');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (41, 8538, 'Elisa', 'R', 'Hatley', '80 Holmberg Point', 'Los Angeles', 'CA', 35843, '1989-09-07', '818-584-7557', '305-361-6920', 'ehatley14@cocolog-nifty.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (42, 9249, 'Marcel', 'S', 'Dimitriou', '6 Tomscot Court', 'Tampa', 'FL', 35093, '1990-12-13', '813-793-9081', '806-854-0241', 'mdimitriou15@smugmug.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (43, 9514, 'Annabal', 'X', 'McFeate', '0826 Nevada Avenue', 'Van Nuys', 'CA', 19856, '1987-09-26', '626-623-7989', '425-317-6191', 'amcfeate16@xing.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (44, 8290, 'Rani', 'B', 'Westcar', '176 Mifflin Plaza', 'Chicago', 'IL', 15801, '1992-07-24', '312-238-8426', '408-208-4118', 'rwestcar17@examiner.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (45, 8964, 'Esme', null, 'Pearsall', '30 Veith Street', 'Dallas', 'TX', 36205, '1986-03-03', '214-946-6647', '907-389-0025', 'epearsall18@nhs.uk');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (46, 7915, 'Melissa', 'J', 'Leyfield', '873 Del Mar Drive', 'Macon', 'GA', 19729, '1986-04-30', '478-229-1604', '479-610-9163', 'mleyfield19@symantec.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (47, 8542, 'Kimmie', 'Y', 'Tilbury', '1 Arkansas Junction', 'Sacramento', 'CA', 23491, '1983-07-13', '916-501-3682', '915-588-4096', 'ktilbury1a@jigsy.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (48, 9675, 'Pearl', 'S', 'Kencott', '163 Badeau Trail', 'Charlotte', 'NC', 15790, '1988-12-06', '704-826-3133', '901-395-1765', 'pkencott1b@chron.com');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (49, 9262, 'Vicki', 'G', 'Deroche', '366 Bunting Trail', 'Austin', 'TX', 36256, '1991-04-09', '512-103-4838', '352-547-2971', 'vderoche1c@amazon.co.uk');
insert into student (id, ssnLastFour, firstName, middleInitial, lastName, address, city, state, zip, birthday, primaryPhone, secondaryPhone, email) 
	values (50, 8951, 'Arnaldo', 'E', 'Brandon', '26130 Boyd Road', 'Brooklyn', 'NY', 29465, '1986-03-13', '718-390-5633', '602-187-2368', 'abrandon1d@seesaa.net');


-- DDL Insert Course Data

insert into course (id, subject, name, credits, quarter)
	values (1000, 'math', 'mt101', 2, 1);
insert into course (id, subject, name, credits, quarter)
	values (1001, 'math', 'mt102', 2, 2);  
insert into course (id, subject, name, credits, quarter)
	values (1002, 'english', 'en101', 4, 2); 
insert into course (id, subject, name, credits, quarter)
	values (1003, 'english', 'en102', 4, 3); 
insert into course (id, subject, name, credits, quarter)
	values (1004, 'civics', 'cv101', 4, 4); 
insert into course (id, subject, name, credits, quarter)
	values (1005, 'civics', 'cv102', 4, 1); 
insert into course (id, subject, name, credits, quarter)
	values (1006, 'socialStudies', 'ss101', 4, 2); 
insert into course (id, subject, name, credits, quarter)
	values (1007, 'socialStudies', 'ss102', 6, 4); 
insert into course (id, subject, name, credits, quarter)
	values (1008, 'history', 'hs101', 2, 2); 
insert into course (id, subject, name, credits, quarter)
	values (1009, 'history', 'hs102', 2, 3); 
insert into course (id, subject, name, credits, quarter)
	values (1010, 'history', 'hs201', 4, 2);
insert into course (id, subject, name, credits, quarter)
	values (1011, 'music', 'ms101', 2, 2);
insert into course (id, subject, name, credits, quarter)
	values (1012, 'music', 'ms201', 4, 2);   
    
-- DML Insert Enrollment Data

insert into enrolled (id, studentID, CourseID, grade)
	values (1, 1, 1000, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (2, 2, 1000, 'B');
insert into enrolled (id, studentID, CourseID, grade)
	values (3, 2, 1009, 'C');
insert into enrolled (id, studentID, CourseID, grade)
	values (4, 4, 1002, 'C');
insert into enrolled (id, studentID, CourseID, grade)
	values (5, 4, 1007, 'D');
insert into enrolled (id, studentID, CourseID, grade)
	values (6, 4, 1005, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (7, 5, 1003, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (8, 5, 1005, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (9, 6, 1012, 'C');
insert into enrolled (id, studentID, CourseID, grade)
	values (10, 7, 1010, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (11, 7, 1002, 'C');
insert into enrolled (id, studentID, CourseID, grade)
	values (12, 8, 1012, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (13, 9, 1008, 'B');
insert into enrolled (id, studentID, CourseID, grade)
	values (14, 9, 1005, 'B');
insert into enrolled (id, studentID, CourseID, grade)
	values (15, 10, 1003, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (16, 11, 1003, 'F');
insert into enrolled (id, studentID, CourseID, grade)
	values (17, 11, 1009, 'C');
insert into enrolled (id, studentID, CourseID, grade)
	values (18, 11, 1011, 'D');
insert into enrolled (id, studentID, CourseID, grade)
	values (19, 12, 1009, 'A');
insert into enrolled (id, studentID, CourseID, grade)
	values (20, 13, 1012, 'A');

