-- CREATE VIEW rich_users AS SELECT * FROM users
-- WHERE salary > 70000;

UPDATE users SET salary = 30000 WHERE id = 2;
SELECT * FROM users WHERE id = 2; 

SELECT * FROM rich_users;