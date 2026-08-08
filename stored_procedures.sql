use startersql;

-- Creating the Stored Procedure

-- Stored Procedure 1:

DELIMITER $$
CREATE PROCEDURE select_users()
BEGIN
	SELECT * FROM users;
END $$ 
DELIMITER ;

-- Stored Procedure 2:

DELIMITER $$
CREATE PROCEDURE AddUser(
	IN p_name VARCHAR(100),
    IN P_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
	INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$
DELIMITER ;

-- Calling the stored procedure like we do function calls in PY or JS

CALL select_users();
CALL AddUser('Abdul Rehman', 'abdul@example.com', 'Male', '2002-01-13', 90000);

-- Viewing Stored Procedure

SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- Dropping the stored procedure

DROP PROCEDURE select_users;