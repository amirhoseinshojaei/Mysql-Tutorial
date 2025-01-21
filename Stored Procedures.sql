-- Stored Procedures

SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
;



CREATE PROCEDURE Large_salaries()
SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
;


CALL Large_salaries();


DELIMITER $$
CREATE PROCEDURE Large_salaries_2()
BEGIN
	SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary > 50000
;
END $$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE large_salaries_and_age_greater_than_30()
BEGIN
	SELECT *
    FROM
		parks_and_recreation.employee_salary
	WHERE
		salary > 50000;
	SELECT *
    FROM
	parks_and_recreation.employee_demographics
WHERE
	age > 30
;

		
END $$
DELIMITER ;



SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	age > 30
;

CALL large_salaries_and_age_greater_than_30();




DELIMITER $$
CREATE PROCEDURE find_salary(id INT)
BEGIN
	SELECT 
		salary
	FROM
		parks_and_recreation.employee_salary
	WHERE
		employee_id = id
	;
END $$
DELIMITER ;


CALL find_salary(1);


DELIMITER $$
CREATE PROCEDURE find_info(id INT)
BEGIN
	SELECT 
		employee_id,
        salary,
        occupation
    FROM
		parks_and_recreation.employee_salary
	WHERE
		employee_id = id
	;
    
    SELECT 
		first_name,
        last_name,
        age
    FROM
		parks_and_recreation.employee_demographics
	WHERE
		employee_id = id
	;
END $$
DELIMITER ;

CALL find_info(1);




