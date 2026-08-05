-- USE startersql;

-- SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- SELECT * FROM users WHERE date_of_birth BETWEEN '1990-09-09' AND '2000-12-31';

-- SELECT * FROM users WHERE gender IN ('Other')

-- SELECT * FROM users where gender='Male' AND salary<'70000'

-- SELECT * FROM users where gender='Male' OR salary>'60000' ORDER BY date_of_birth DESC LIMIT 5;

-- SELECT * from users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5

-- SELECT * from users ORDER BY salary DESC

-- SELECT * from users WHERE salary BETWEEN 50000 AND 70000

-- UPDATE users SET salary = 45000 WHERE id = 1;

-- UPDATE users SET salary = 100000, email = 'aravDev@arav.com' WHERE id = 1;

-- UPDATE users SET salary = 70000 WHERE id = 5;

-- UPDATE users SET name = 'Aisha Khan' WHERE email = 'aisha@example.com';

-- UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

-- UPDATE users SET gender = 'Other' WHERE name = 'Ishaan';

-- UPDATE users SET salary = 50000;

-- DELETE FROM users WHERE salary < 50000;

-- DROP TABLE users;

-- Modifying Constraints
-- ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- ALTER TABLE users ADD CONSTRAINT check_dob CHECK (date_of_birth > '1920-01-01');

-- INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES (
-- 	'Ahmad',
--     'ahmadali@gmail.com',
--     'Male',
--     '2001-07-20',
--     100000
-- );

-- select MIN(salary) AS min_salary, MAX(salary) AS max_salary from users;

-- SELECT AVG(salary) AS avg_salary FROM users;

-- SELECT gender, SUM(salary) AS total_salary FROM users GROUP BY gender;

-- SELECT name, gender, LOWER(name) AS lowercase_name, CONCAT(LOWER(name), '075') AS username, LENGTH(name) AS name_len from users;

-- SELECT name, YEAR(date_of_birth) AS yob from users;

-- SELECT name, DAY(date_of_birth) AS day from users;

-- SELECT name, MONTH(date_of_birth) AS month from users;

-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_Diff from users; 

SET autocommit = 0;
DELETE FROM users WHERE id = 5;
-- ROLLBACK;
COMMIT;

TRUNCATE TABLE users;
select * from users;