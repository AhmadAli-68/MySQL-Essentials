-- SELECT AVG(salary) FROM users;

-- Scalar Subquery

-- SELECT * FROM users WHERE salary > (
-- 	SELECT AVG(salary) FROM users
-- );

-- Subquery with IN

SELECT id, name, salary, referred_by_id
FROM users
WHERE referred_by_id IN (
	SELECT id FROM users WHERE salary < (SELECT AVG(salary) FROM users)
);

-- Example with SELECT

SELECT name, salary,
(SELECT AVG(salary) FROM users) AS average_salary FROM users