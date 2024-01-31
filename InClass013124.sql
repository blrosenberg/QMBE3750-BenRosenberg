use world;

select *
from country
LEFT JOIN countrylanguage
on country.Code = countrylanguage.CountryCode
where Continent = 'North America'
order by reverse(GNP);

## In class 
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



