use startersql;

-- Wildcard Operators
-- _ –> matches a siNgle character like below:

SELECT * FROM users WHERE name LIKE '_A%';

-- LIMIT with OFFSET

SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 11;

-- DISTINCT Keyword

SELECT DISTINCT gender FROM users;

-- TRUNCATE Keyword

SELECT * FROM user_log;
TRUNCATE TABLE user_log;

-- CHANGE vs MODIFY Column

ALTER TABLE addresses
CHANGE COLUMN city location VARCHAR(250);

ALTER TABLE users
MODIFY COLUMN salary BIGINT;