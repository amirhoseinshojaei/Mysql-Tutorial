-- SELECT , DISTINCT


SELECT *
FROM
	employee_demographics
;


SELECT *
FROM
	employee_salary
;


SELECT *
FROM
	parks_departments
;


SELECT 
	employee_id,
    first_name,
    last_name,
    gender
FROM
	employee_demographics
;


SELECT DISTINCT 
	gender
FROM
	employee_demographics
;


SELECT DISTINCT 
	first_name,
    last_name,
    gender
FROM
	employee_demographics
;


SELECT *
FROM
	employee_salary
;


SELECT 
	occupation,
    salary,
    dept_id
FROM
	employee_salary
;



SELECT DISTINCT  
	occupation,
    salary,
    dept_id
FROM
	employee_salary
;


SELECT *
FROM
	parks_departments
;



SELECT DISTINCT 
	department_name
FROM
	parks_departments
;


SELECT 
	first_name,
    last_name,
    age,
    (age + 10) AS after_10_years
FROM
	parks_and_recreation.employee_demographics
;


