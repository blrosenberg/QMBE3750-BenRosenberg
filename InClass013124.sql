use world;

select *
from country
LEFT JOIN countrylanguage
on country.Code = countrylanguage.CountryCode
where Continent = 'North America'
order by reverse(GNP);

#### In class -- new schema
USE ben;

SHOW TABLES;

CREATE TABLE  students (
	studentId int,
	age tinyint,
    height float,
    studentName varchar (30)
);

CREATE TABLE grades (
	studentId int,
	gradePt float
);

CREATE TABLE homes (
	studentId int,
    houseNum int,
    streetName varchar(255),
    zipCode int,
    city varchar (255),
    state varchar (2)
);


insert into students #(studentId, age, height, studentName)
values (1009, 8, 3.1, "Jerry"),
 (1010, 9, 9.7, "Thomas"),
 (1011, 7, 5.55, "Susan");

insert into grades
values (1009, 85.3),
 (1010, 0.07),
 (1011, 101.2);

drop table homes;

insert into homes
values (1009, 1915, "Madison", 52601, "Burlington", "IA"),
 (1010, 3132, "Lyndale", 55408, "Minneapolis", "MN"),
 (1011, 3856, "Quarry", 21211, "Baltimore", "MD");

select * from students
left join grades on students.studentId = grades.studentId;

select * from students
left join homes on students.studentId = homes.studentId;

####### Switching Schema
create schema bits;

use bits;

CREATE DATABASE BITS;

USE BITS;

CREATE TABLE Consultant (
    ConsltNum CHAR(2) PRIMARY KEY,
    LastName CHAR(15),
    FirstName CHAR(15),
    Street CHAR(15),
    City CHAR(15),
    State CHAR(2),
    ZipCode CHAR(5),
	Hours DECIMAL(4, 2 ),
	Rate DECIMAL(5, 2 )
);

CREATE TABLE Client (
    ClientNum CHAR(3) PRIMARY KEY,
    ClientName CHAR(35) NOT NULL,
    Street CHAR(20),
    City CHAR(15),
    State CHAR(2),
    ZipCode CHAR(5),
    Balance DECIMAL(8 , 2 ),
    CreditLimit DECIMAL(8 , 2 ),
    ConsltNum CHAR(2)
);

CREATE TABLE WorkOrders (
    OrderNum CHAR(5) PRIMARY KEY,
    OrderDate DATE,
    ClientNum CHAR(3)
);

CREATE TABLE Tasks (
    TaskID CHAR(4) PRIMARY KEY,
    Description CHAR(30),

    Category CHAR(3),
    Price DECIMAL(6 , 2 )
);

CREATE TABLE OrderLine (
    OrderNum CHAR(5),
    TaskID CHAR(4),
    ScheduledDate DATE,
    QuotedPrice DECIMAL(6 , 2 ),
    PRIMARY KEY (OrderNum , TaskID)
);

INSERT INTO Consultant
VALUES
('19', 'Turner', 'Christopher', '554 Brown Dr.', 'Tri City', 'FL', '32889', 40, 22.50),
('22', 'Jordan', 'Patrick', '2287 Port Rd.', 'Easton', 'FL', '33998', 40, 22.50),
('35', 'Allen', 'Sarah', '82 Elliott St.', 'Lizton', 'FL', '34344', 35, 20.00),
('51', 'Shields', 'Tom', '373 Lincoln Ln.', 'Sunland', 'FL', '39876', 10, 15.00)
;


INSERT INTO Client
VALUES
('143','Hershey, Jarrod','135 E. Mill Street','Easton','FL','33998',1904.55,2500.00,'19'),
('75','Goduto, Sean','12 Saratoga Parkway','Tri City','FL','32889',2814.55,5000.00,'19'),
('299','Two Crafty Cousins','9787 NCR 350 West','Sunland','FL','39876',8354.00,10000.00,'22'),
 ('322','Prichards Pizza & Pasta','501 Air Parkway','Lizton','FL','34344',7335.55,10000.00,'35'),
 ('363','Salazar, Jason','56473 Cherry Tree Dr','Easton','FL','33998',900.75,2500.00,'35'),
 ('405','Fishermans Spot Shop','49 Elwood Ave.','Harpersburg','FL','31234',4113.40,7500.00,'19'),
 ('449','Seymour, Lindsey','4091 Brentwood Ln','Amo','FL','34466',557.70,5000.00,'22'),
('458','Bonnies Beautiful Boutique','9565 Ridge Rd.','Tri City','FL','32889',4053.80,7500.00,'22'),
 ('677','Yates, Nick','231 Day Rd.','Sunland','FL','39876',2523.80,2500.00,'35'),
 ('733','Howler, Laura','1368 E. 1000 S.','Lizton','FL','34344',3658.05,5000.00,'22'),
 ('826','Harpersburg Bank','65 Forrest Blvd.','Harpersburg','FL','31234',6824.55,10000.00,'19'),
 ('867','MarketPoint Sales','826 Host St.','Easton','FL','33998',3089.00,5000.00,'19')
;

INSERT INTO WORKORDERS
VALUES
('67101','2018-09-06','733'),
 ('67313','2018-09-07','458'),
 ('67424','2018-09-10','322'),
 ('67838','2018-09-10','867'),
 ('67949','2018-09-10','322'),
 ('68252','2018-09-12','363'),
 ('68868','2018-09-14','867'),
 ('68979','2018-09-17','826')
;

INSERT INTO TASKS
VALUES
('AC65','Accessories','ACC',80.00),
('DA11','Data recovery major','DRM',175.00),
('DI85','Data recovery minor','DRM',50.00),
('HA63','Hardware major','HAM',225.00),
('HI31','Hardware minor','HAM',165.00),
('LA81','Local area networking (LAN)','LAN',104.00),
('MO49','Mobility','MOB',65.00),
('OT99','Other work','OTH',99.99),
('PI54','Printing issues','PRI',50.00),
('SA44','Software major','SOM',200.00),
('SI77','Software minor','SOM',144.00),
('SI91','Security install/repair','SIR',126.00),
('UP38','Upgrades','UPG',185.00),
('VR39','Virus removal','VIR',90.00),
('WA33','Wide area networking (WAN)','WAN',130.00),
('WC19','Web connectivity','WEC',75.00)
;

INSERT INTO OrderLine
VALUES
('67101','SI77','2018-09-10',144.00),
('67313','LA81','2018-09-12',104.00),
('67424','MO49','2018-09-14',65.00),
('67424','UP38','2018-09-14',185.00),
('67838','LA81','2018-09-14',104.00),
('67949','PI54','2018-09-21',50.00),
('67949','VR39','2018-09-21',88.00),
('67949','WA33','2018-09-21',126.00),
('68252','DI85','2018-09-24',50.00),
('68868','SA44','2018-09-24',200.00),
('68979','AC65','2018-09-27',77.00),
('68979','DA11','2018-09-27',970.00)
;


