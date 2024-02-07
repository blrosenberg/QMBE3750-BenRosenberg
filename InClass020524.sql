USE bits_copy;

SELECT * FROM Client;

select * FROM Tasks;

#creating a new table from an existing table
CREATE TABLE category_drm AS
SELECT *
FROM Tasks
WHERE Category = "DRM";

SELECT * FROM category_drm;

ALTER TABLE category_drm
ADD COLUMN email VARCHAR(255);

ALTER TABLE Category_drm
MODIFY COLUMN email VARCHAR(320);

CREATE TABLE tasks_number AS
SELECT taskid, COUNT(*) AS task_count
FROM tasks
GROUP BY taskid;

SELECT * FROM tasks_number;

CREATE TABLE AVG_CL AS
SELECT City, AVG(CreditLimit) AS avg
FROM Client
GROUP BY City;

DROP TABLE AVG_CL;

Update category_drm
SET email = 'new@gmail.com'
WHERE TASKID = 'DA11';

ALTER TABLE category_drm ADD PRIMARY KEY(TASKID);


SELECT