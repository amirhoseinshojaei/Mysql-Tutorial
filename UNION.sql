/** در MySQL و سایر پایگاه‌های داده، از UNION برای ترکیب نتایج چندین کوئری استفاده می‌کنیم و این نتایج را در 
قالب یک مجموعه داده واحد نمایش می‌دهیم. این دستور به شما امکان می‌دهد که رکوردهایی از چندین جدول یا چندین کوئری را کنار هم قرار دهید.
**/


SELECT *
FROM
	parks_and_recreation.employee_demographics
UNION
SELECT *
FROM
	parks_and_recreation.employee_salary
;


SELECT 
	employee_id,
    first_name,
    last_name
FROM
	parks_and_recreation.employee_demographics
UNION
SELECT 
	employee_id,
    first_name,
    last_name
FROM
	parks_and_recreation.employee_salary
;

SELECT 
	employee_id,
    first_name,
    last_name,
    'old' AS Lable
FROM
	parks_and_recreation.employee_demographics
WHERE
	age > 50
UNION
SELECT 
	employee_id,
    first_name,
    last_name,
    'Highly Paid Employees' AS Lable
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 75000
;

SELECT 
	first_name,
    last_name,
    'Old' AS Lable
FROM
	parks_and_recreation.employee_demographics
WHERE 
	age > 50
UNION
SELECT 
	first_name,
    last_name,
    'Highly Paid Employee' AS Lable
FROM
	parks_and_recreation.employee_salary
WHERE 
	salary > 70000
;


SELECT 
	first_name,
    last_name,
    'Old MAN' AS Lable
FROM
	parks_and_recreation.employee_demographics
WHERE
	age > 35 AND gender = 'Male' 
UNION
SELECT
	first_name,
    last_name,
    'Old Lady' AS Lable
FROM
	parks_and_recreation.employee_demographics
WHERE
	age > 35 AND gender = 'Female'
UNION
SELECT
	first_name,
    last_name,
    'Highly Paid Employee' AS Lable
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 70000
;



SELECT 
    first_name,
    last_name,
    'Old MAN' AS Lable
FROM
    parks_and_recreation.employee_demographics
WHERE
    age > 50 AND gender = 'Male' 
UNION ALL
SELECT
    first_name,
    last_name,
    'Old Lady' AS Lable
FROM
    parks_and_recreation.employee_demographics
WHERE
    age > 35 AND gender = 'Female'
UNION ALL
SELECT
    first_name,
    last_name,
    'Highly Paid Employee' AS Lable
FROM
    parks_and_recreation.employee_salary
WHERE
    salary > 70000;








