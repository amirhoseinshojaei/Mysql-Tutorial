-- Case Statement


SELECT *,
	CASE
		WHEN age >= 50 THEN 'OLD'
        WHEN age BETWEEN 40 AND 49 THEN 'MATURE OLD'
        WHEN age BETWEEN 30 AND 39 THEN 'MIDDLE AGE'
        WHEN age < 30 THEN 'YOUNG'
END AS age_bracket
FROM
	parks_and_recreation.employee_demographics
;



SELECT *,
	CASE
		WHEN gender = 'Female' THEN 'WOMEN'
        WHEN gender = 'Male' THEN 'MEN'
END AS gender_bracket
FROM
	parks_and_recreation.employee_demographics
;



SELECT *,
	CASE
		WHEN occupation LIKE 'Deputy%' THEN 'TRUST OCCUPATION'
        WHEN occupation LIKE '%Manager%' THEN 'MANAGER'
END AS occupation_bracket
FROM
	parks_and_recreation.employee_salary
;


SELECT *,
	CASE
		WHEN salary >= 70000 THEN salary + (salary * 0.07)
        WHEN salary >= 50000 THEN salary + (salary * 0.05)
        WHEN salary < 50000 THEN salary + (salary * 0.03)
END AS new_salary
FROM
	parks_and_recreation.employee_salary
;





SELECT *,
	CASE
		WHEN salary >= 70000 THEN salary + (salary * 0.07)
        WHEN salary >= 50000 THEN salary + (salary * 0.05)
        WHEN salary < 50000 THEN salary + (salary * 0.03)
END AS new_salary,
	CASE
		WHEN dept_id = 6 THEN salary + (salary * 0.10)
END AS bounse
FROM
	parks_and_recreation.employee_salary
;


SELECT 
	dem.employee_id,
    dem.first_name,
    dem.last_name,
    dem.gender,
    sal.occupation,
    sal.salary,
    dep.department_id,
    dep.department_name,
    CASE
		WHEN sal.salary >= 70000 THEN salary + (salary * 0.07)
        WHEN sal.salary >= 60000 THEN salary + (salary * 0.05)
        WHEN sal.salary >= 50000 THEN salary + (salary * 0.04)
        WHEN sal.salary < 50000 THEN salary + (salary * 0.03)
END AS New_Salary,
	CASE
		WHEN dep.department_id = 6 THEN sal.salary + (sal.salary * 0.10)
        WHEN dep.department_id = 4 THEN sal.salary + (sal.salary * 0.05)
END AS Bouns
FROM 
	parks_and_recreation.employee_demographics AS dem
INNER JOIN 
	parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
INNER JOIN
	parks_and_recreation.parks_departments AS dep
	ON sal.dept_id = dep.department_id
;












