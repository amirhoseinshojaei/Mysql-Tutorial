-- LIMIT & ALIASING



SELECT *
FROM
	parks_and_recreation.employee_demographics
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
LIMIT 3
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
LIMIT 3 OFFSET 2
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
LIMIT 3 OFFSET 3
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
LIMIT 4 OFFSET 5
;


SELECT 
	occupation,
    AVG(salary) AS average_salary_by_occupation
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation
ORDER BY
	2 DESC
LIMIT 3
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
LIMIT 3,3
;




