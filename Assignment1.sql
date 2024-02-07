use BITS;

SELECT ClientName FROM Client WHERE CreditLimit < 10000;

SELECT * FROM WorkOrders WHERE ClientNum=322;

SELECT * 
FROM OrderLine as a
JOIN WorkOrders as b ON a.OrderNum = b.OrderNum
WHERE TaskID = 'SA44';

SELECT SUM(Balance) as S FROM Client WHERE ConsltNum=19;

SELECT * FROM Client;

use COLONIAL;

SELECT TripName FROM Trip WHERE Distance > 20;

SELECT TripName FROM Trip WHERE State = 'VT' OR MaxGrpSize > 10;

SELECT TripName FROM Trip 
LEFT JOIN TripGuides
ON Trip.TripID = TripGuides.TripID
LEFT JOIN Guide
ON TripGuides.GuideNum = Guide.GuideNum
WHERE Type = 'Biking' AND Guide.GuideNum = 'BR01';

SELECT FirstName, LastName, TripName, Type #COUNT(DISTINCT Reservation.CustomerNum) AS 'NumTrips'
FROM Reservation a
LEFT JOIN Customer
ON a.CustomerNum = Customer.CustomerNum
join (select CustomerNum, count(*) as cnt
          from Reservation
         group by CustomerNum) b
ON a.CustomerNum = b.CustomerNum
JOIN Trip c
ON a.TripID = c.TripID
WHERE cnt > 1
ORDER BY LastName;

USE Sports;

SELECT Description 
FROM Session a
JOIN Therapist b
ON a.TherapistID = b.TherapistID
JOIN Therapies c
ON a.TherapyCode = c.TherapyCode
WHERE LastName = 'Wilder';

SELECT c.FirstName, c.LastName
FROM Patient a
JOIN Session b
ON a.PatientNum = b.PatientNum
JOIN Therapist c
ON b.TherapistID = c.TherapistID
WHERE a.FirstName = 'Ben';

SELECT Description
FROM (SELECT PatientNum
	FROM Patient
    WHERE LastName = 'Baptist') a
JOIN Session b
ON a.PatientNum = b.PatientNum
JOIN Therapies c
ON b.TherapyCode = c.TherapyCode;

SELECT * FROM Session;
