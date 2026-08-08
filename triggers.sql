use startersql;

-- CREATE TABLE user_log (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     name VARCHAR(100),
--     created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- Creating a Trigger

DELIMITER $$

CREATE TRIGGER afterUserInsert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);
END $$

DELIMITER ;

INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('Tony Stark', 'tony@avenger.com', 'Male', '1993-07-30', '10000000');

SELECT * FROM user_log;

-- Dropping the Trigger

DROP TRIGGER IF EXISTS afterUserInsert;