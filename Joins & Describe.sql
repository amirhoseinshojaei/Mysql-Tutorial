-- JOINS

SELECT *
FROM
	parks_and_recreation.employee_demographics
;

DESCRIBE employee_demographics;

DESCRIBE employee_salary;


SELECT *
FROM
	parks_and_recreation.employee_salary
;

SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem
INNER JOIN
	parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;



SELECT *
FROM
	parks_departments
;



DESCRIBE employee_salary;

SHOW CREATE TABLE employee_salary;


SELECT 
    TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE 
    TABLE_SCHEMA = 'parks_and_recreation'
    AND TABLE_NAME = 'employee_salary'
    AND REFERENCED_TABLE_NAME IS NOT NULL;


SELECT *
FROM
	parks_departments
;


SELECT *
FROM
	parks_and_recreation.employee_salary AS sal
INNER JOIN
	parks_and_recreation.parks_departments dep
	ON sal.dept_id = dep.department_id
WHERE
	sal.salary > 75000
;



SELECT 
	dem.employee_id,
	dem.first_name,
    dem.last_name,
    sal.occupation,
    sal.salary
FROM
	parks_and_recreation.employee_demographics AS dem
INNER JOIN
	parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
ORDER BY
	salary DESC
;


-- OUTER JOIN

SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem
LEFT JOIN
	parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem
RIGHT JOIN
	parks_and_recreation.employee_salary AS sal
    ON sal.employee_id = dem.employee_id
;



SELECT *
FROM
	parks_departments AS dep
LEFT JOIN
	parks_and_recreation.employee_salary sal
    ON sal.dept_id = dep.department_id
;


-- self join


SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem1
INNER JOIN
	parks_and_recreation.employee_demographics AS dem2
    ON dem1.employee_id = dem2.employee_id
;



SELECT *
FROM
	parks_and_recreation.employee_salary AS sal
INNER JOIN 
	parks_and_recreation.employee_salary AS sal2
    ON sal.employee_id = sal2.employee_id
;







