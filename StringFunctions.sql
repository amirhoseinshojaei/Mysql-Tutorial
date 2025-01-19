-- String Functions

SELECT 
	LENGTH('SKY FALL') AS Length
;


SELECT 
	first_name,
    LENGTH(first_name)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	last_name,
    LENGTH(last_name)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	UPPER('sky')
;


SELECT 
	first_name,
    UPPER(first_name)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	last_name,
    UPPER(last_name)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	LOWER('SKY')
;


SELECT 
	first_name,
    LOWER(first_name)
FROM
	parks_and_recreation.employee_salary
;


SELECT 
	last_name,
    LOWER(last_name)
FROM
	parks_and_recreation.employee_salary
;


SELECT 
	('          TRIM              '),
    TRIM('        TRIM          '),
    LTRIM('         TRIM          '),
    RTRIM('           TRIM    ')
;


SELECT 
	first_name,
    TRIM(first_name)
FROM
	parks_and_recreation.employee_demographics
;

SELECT 
	last_name,
    TRIM(last_name)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	first_name,
    LEFT(first_name, 4),
    RIGHT(first_name, 4),
    birth_date,
    SUBSTRING(birth_date, 6,2)
FROM
	parks_and_recreation.employee_demographics

;


SELECT *,
	SUBSTRING(birth_date, 1, 7)
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	first_name,
    REPLACE(first_name, 'a', 'Z')
FROM
	parks_and_recreation.employee_demographics
;



SELECT 
	LOCATE('X', 'ALEXANDER')
;


SELECT *,
	LOCATE('an', first_name)
FROM
	parks_and_recreation.employee_demographics
;


select 	
	first_name,
    locate('a', first_name)
from
	parks_and_recreation.employee_demographics
;


SELECT *,
	CONCAT(first_name,"  ", last_name) AS full_name
FROM
	parks_and_recreation.employee_demographics
;




