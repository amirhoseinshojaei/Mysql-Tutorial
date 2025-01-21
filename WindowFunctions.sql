-- Window Functions

SELECT 
	gender,
    first_name,
    AVG(age) OVER(PARTITION BY gender ORDER BY first_name)
FROM
	parks_and_recreation.employee_demographics
;



SELECT 
	CONCAT(DEM.first_name, ' ', DEM.last_name),
    DEM.gender,
    SUM(SAL.salary) OVER(PARTITION BY DEM.gender) AS TOTAL_SALARY,
    SUM(SAL.salary) OVER(PARTITION BY DEM.gender ORDER BY DEM.employee_id) AS ROLLING_TOTAL,
    ROW_NUMBER() OVER(),
    ROW_NUMBER() OVER(PARTITION BY DEM.gender),
    ROW_NUMBER() OVER(PARTITION BY DEM.gender ORDER BY salary DESC)
FROM
	parks_and_recreation.employee_demographics AS DEM
INNER JOIN
	parks_and_recreation.employee_salary AS SAL
    ON DEM.employee_id = SAL.employee_id
;


SELECT 
	first_name,
    last_name,
	gender,
    ROW_NUMBER() OVER(PARTITION BY gender),
    ROW_NUMBER() OVER(ORDER BY age DESC),
    ROW_NUMBER() OVER(PARTITION BY gender ORDER BY age DESC),
    RANK() OVER(PARTITION BY gender ORDER BY age DESC),
    RANK() OVER(ORDER BY age DESC),
    DENSE_RANK() OVER(PARTITION BY gender ORDER BY age DESC)
FROM
	parks_and_recreation.employee_demographics
;

SELECT *
FROM
	parks_and_recreation.employee_demographics;


SELECT *
FROM
	parks_and_recreation.employee_salary
;


SELECT 
	CONCAT(first_name, ' ', last_name),
	salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC),
    RANK() OVER(ORDER BY salary DESC),
    DENSE_RANK() OVER(ORDER BY salary DESC)
FROM
	parks_and_recreation.employee_salary
;












