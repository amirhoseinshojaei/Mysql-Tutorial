-- Triggers & Events

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;



SHOW TRIGGERS;


show events;


DROP TRIGGER employee_insert;




DROP TRIGGER IF EXISTS employee_insert;
DELIMITER $$

CREATE TRIGGER employee_insert
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES(new.employee_id, new.first_name, new.last_name);
END $$
DELIMITER ;




-- EVENTS

DELIMITER $$
CREATE EVENT delete_reteiress
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM
		parks_and_recreation.employee_demographics
	WHERE
		age > 60 ;
END $$
DELIMITER ;



SHOW VARIABLES LIKE 'event%';




SELECT *
FROM
	parks_and_recreation.employee_salary
;

INSERT INTO parks_and_recreation.employee_salary
VALUES(14, 'AMIR', 'SHOJAEI', 'MANAGER', 100000, NULL);


SELECT *
FROM
	parks_and_recreation.employee_demographics
;


UPDATE parks_and_recreation.employee_demographics
SET age = 22 , gender = 'Male'
WHERE employee_id = 14
;


SELECT *
FROM
	parks_and_recreation.employee_demographics
;



DROP TRIGGER IF EXISTS delete_employee;
DELIMITER $$
CREATE TRIGGER delete_employee
AFTER DELETE ON employee_demographics
FOR EACH ROW
BEGIN
	DELETE FROM
    parks_and_recreation.employee_salary
    WHERE
		employee_id = old.employee_id
	;
END $$
DELIMITER ;


SHOW TRIGGERS;

SELECT *
FROM
	parks_and_recreation.employee_demographics;


DELETE FROM parks_and_recreation.employee_demographics
WHERE
	employee_id = 14
;


SELECT *
FROM
	parks_and_recreation.employee_salary;


