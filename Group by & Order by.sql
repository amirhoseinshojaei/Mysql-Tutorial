-- Group by & Order by

SELECT *
FROM
	parks_and_recreation.employee_demographics
;


SELECT 
	gender,
    ROUND(AVG(age))
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
;


SELECT 
	birth_date,
    AVG(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	birth_date
;


SELECT 
	gender,
    SUM(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
ORDER BY
	1 DESC
;

SELECT 
	gender,
	MIN(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
ORDER BY
	2 DESC
;



SELECT 
	gender,
	MAX(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
ORDER BY
	2 DESC
;


SELECT 
	gender,
    COUNT(gender)
    
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
ORDER BY
	2 DESC
;



SELECT 
	gender,
    MIN(birth_date),
    MAX(birth_date)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
ORDER BY
	2,3 DESC
;


SELECT 
	occupation,
    AVG(salary)
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 DESC
;


SELECT 
	occupation,
    ROUND(AVG(salary))
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 DESC
;


SELECT 
	occupation,
    SUM(salary)
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 DESC
;


SELECT 
	occupation,
    SUM(salary)
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 ASC
;


SELECT 
	occupation,
    MIN(salary),
    MAX(salary)
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 DESC
;



SELECT 
	COUNT(*) AS count_employee
FROM
	parks_and_recreation.employee_salary
;



SELECT 
	dept_id,
    AVG(salary)
FROM
	parks_and_recreation.employee_salary
GROUP BY
	dept_id
ORDER BY
	2 DESC
;





