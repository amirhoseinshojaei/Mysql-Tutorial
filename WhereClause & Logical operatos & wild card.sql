-- WHERE Clause & Logical Operators & Like Statement or Wild Clause

SELECT *
FROM
	parks_and_recreation.employee_demographics
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	first_name = 'Leslie'
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	age = 40
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE 
	gender = 'Female'
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date < '1986-09-25'
;


SELECT *
FROM
	parks_and_recreation.employee_salary
;

SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	occupation = 'Office Manager'
    
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 60000
;



SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	dept_id = 1
;


SELECT *
FROM
	parks_and_recreation.employee_salary

WHERE
	salary >= 50000
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary <= 50000
;

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender != 'Female'
;

-- Logical Operators

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Male'
AND
	birth_date > '1980-11-11'
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Male'
OR
	birth_date > '1980-11-11'
;
	

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Male'
OR NOT
	age < 25
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Female'
AND NOT
	age > 40
;


SELECT *
FROM
	parks_and_recreation.employee_salary
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
AND
	dept_id = 1
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary <= 50000
OR
	dept_id =1
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 70000
AND NOT
	occupation = 'Deputy Director of Parks and Recreation'
AND NOT
	occupation = 'Director of Parks and Recreation'
;
	

SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
AND NOT
	(occupation = 'Deputy Director of Parks and Recreation'
    OR occupation = 'Director of Parks and Recreation')
;


-- Like Statement

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	first_name LIKE 'Jean%'
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	last_name LIKE '%er'
;

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date LIKE '1989%'
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	first_name LIKE '__S%'
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	occupation LIKE '__P%'
;


