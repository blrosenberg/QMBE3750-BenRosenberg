## Ben Rosenberg -- QMBE 3750-1 -- 2/5/24
## Assignment 2

USE BITS; # 1,2

#1
SELECT ClientNum, ClientName 
FROM Client;

#2
SELECT *
FROM Tasks;

USE COLONIAL; #3,4

#3
SELECT TripName
FROM Trip
WHERE Type = 'Hiking' AND Distance > 6;

#4
SELECT 
FROM Trip
WHERE Type = 'Paddling' OR State = 'VT';

USE Sports; #3,4,5,11,21,22

#3
SELECT FirstName, LastName
FROM Therapist
WHERE City = 'Palm Rivers';

#4
SELECT FirstName, LastName
FROM Therapist
WHERE City <> 'Palm Rivers';

#5
SELECT * 
FROM Patient
WHERE Balance >= 3000;

#11
SELECT *
FROM Patient
WHERE City IN ('Palm Rivers', 'Waterville', 'Munster');

#21
SELECT *
FROM Patient
WHERE City = 'Palm Rivers' OR City = 'Waterville' OR City = 'Munster';

#22
SELECT *
FROM Therapies
WHERE Description LIKE '%training%';

