-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(
	first_name varchar(50),
    last_name varchar(50),
    favorite_movie varchar(100)
);


select *
from
	temp_table
;

INSERT INTO temp_table
VALUES
(
'AMIR',
'SHOJAEI',
'THE WALKING DEAD'
)
;


SELECT *
FROM
	temp_table
;



CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary >= 50000
;



SELECT *
FROM
	salary_over_50k
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
;


CREATE TEMPORARY TABLE retired
SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	age >= 40
;


SELECT *
FROM
	retired
;










