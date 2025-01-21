-- Ctes


SELECT *
FROM
	parks_and_recreation.employee_demographics
;



SELECT *
FROM
	parks_and_recreation.employee_salary
;



WITH CTE_EXAMPLE
AS(
	SELECT 
		first_name,
        last_name,
        salary
    FROM
		parks_and_recreation.employee_salary
)
SELECT *
FROM
	CTE_EXAMPLE
;


SELECT 
    DEM.gender,
    AVG(SAL.salary),
    MAX(SAL.salary),
    MIN(SAL.salary),
    SUM(SAL.salary)
    
FROM
	parks_and_recreation.employee_demographics AS DEM
INNER JOIN
	parks_and_recreation.employee_salary AS SAL
    ON DEM.employee_id = SAL.employee_id
GROUP BY
	DEM.gender
;


WITH CTE_EXAMPLE (gender, average_salary, maximum_salary, minimum_salary, summarize_salary)
AS(
	SELECT 
    DEM.gender,
    AVG(SAL.salary),
    MAX(SAL.salary),
    MIN(SAL.salary),
    SUM(SAL.salary)
    
FROM
	parks_and_recreation.employee_demographics AS DEM
INNER JOIN
	parks_and_recreation.employee_salary AS SAL
    ON DEM.employee_id = SAL.employee_id
GROUP BY
	DEM.gender
) 
SELECT *
FROM
	CTE_EXAMPLE
;



SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1979-01-01'
;


SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
;


WITH CTE_EXAMPLE (EMPLOYEE_ID, BIRTH_DATE, GENDER)
AS
(
SELECT 
	employee_id,
    birth_date,
    gender
FROM
	parks_and_recreation.employee_demographics
WHERE
	birth_date > '1979-01-01'
),
CTE_EXAMPLE2
AS
(
SELECT 
	employee_id,
    salary
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
)
SELECT 
	CTE_EXAMPLE.employee_id,
    CTE_EXAMPLE.birth_date,
    CTE_EXAMPLE.gender
FROM
	CTE_EXAMPLE
INNER JOIN
	CTE_EXAMPLE2
    ON CTE_EXAMPLE.employee_id = CTE_EXAMPLE2.employee_id
;









