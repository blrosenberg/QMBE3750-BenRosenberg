USE bits_copy;

SHOW TABLES;

SELECT *
FROM Client
ORDER BY balance DESC, CreditLimit ASC;

SELECT *
FROM Client
ORDER BY Street;

SELECT *
FROM Client
ORDER BY balance DESC, city;

SELECT Street, City
FROM Client
ORDER BY 1 DESC, 2 DESC; #orders by index of /selected/ columns

SELECT ClientNum
FROM Client
JOIN WorkOrders 
ON 1 = WorkOrders.ClientNum
ORDER BY Street;