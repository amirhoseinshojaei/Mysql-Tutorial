-- Subqueries


SELECT *
FROM
	parks_and_recreation.employee_demographics;



SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	dept_id = 1
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	employee_id IN(
    SELECT employee_id
FROM
	parks_and_recreation.employee_salary
WHERE
	dept_id = 1)
;


SELECT 
	gender,
    AVG(age),
    MAX(age),
    MIN(age),
    COUNT(*)
FROM
	parks_and_recreation.employee_demographics
GROUP BY gender
;


SELECT 
	gender,
    avg(`MAX(age)`)
FROM
	(
    SELECT 
	gender,
    AVG(age),
    MAX(age),
    MIN(age),
    COUNT(*)
FROM
	parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_table
group by
	gender
;


SELECT 
	gender,
    AVG(`MAX(age)`)
FROM
	(SELECT 
	gender,
    AVG(age),
    MAX(age),
    MIN(age),
    COUNT(*)
FROM
	parks_and_recreation.employee_demographics
GROUP BY gender
) AS Agg_table
GROUP BY
	gender
;



SELECT 
	gender
FROM
	parks_and_recreation.employee_demographics
;



SELECT 
	AVG(salary)
FROM
	parks_and_recreation.employee_salary

;


SELECT 
	gender,
    avg(`AVG(salary)`)
FROM
	(SELECT 
	gender
FROM
	parks_and_recreation.employee_demographics
) AS emp,
(

SELECT 
	AVG(salary)
FROM
	parks_and_recreation.employee_salary

) AS sal
GROUP BY
	gender
;


SELECT 
	gender,
	avg(sal)
FROM
	(SELECT 
	gender
FROM
	parks_and_recreation.employee_demographics
) AS emp,
(

SELECT 
	salary as sal
FROM
	parks_and_recreation.employee_salary

) AS sal
GROUP BY
	gender
;


