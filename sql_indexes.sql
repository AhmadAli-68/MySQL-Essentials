select * from users;

SHOW indexes FROM users;
-- single column index
-- CREATE INDEX idx_gender ON users(gender);

-- Multi column index
CREATE INDEX idx_gender_salary ON users(gender, salary);
SELECT * FROM users WHERE email = 'aarav@example.com' AND gender = 'Male';

SELECT * FROM users WHERE gender = 'Male';

DROP INDEX idx_gender_salary ON users;