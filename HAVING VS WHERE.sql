-- HAVING VS WHERE


SELECT 
	gender,
    AVG(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
HAVING
	AVG(age) > 40
    
ORDER BY
	2 DESC

;


SELECT 
	gender,
    SUM(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
HAVING
	SUM(age) > 40
ORDER BY
	2 DESC
;


SELECT 
	gender,
    COUNT(gender)
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender = 'Female'
GROUP BY
	gender

;


SELECT 
	gender,
    MAX(age),
    MIN(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender
HAVING
	MAX(age) > 46 OR
    MIN(age) > 30
;


SELECT 
	occupation,
    AVG(salary)
FROM
	parks_and_recreation.employee_salary
WHERE
	occupation LIKE '%Manager%'
group by
	occupation
HAVING
	AVG(salary) > 75000
ORDER BY
	2 DESC
;


