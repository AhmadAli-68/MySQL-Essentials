-- SELECT gender, AVG(salary) AS average_salary FROM users GROUP BY gender;

-- GROUP BY with COUNT

SELECT gender, AVG(salary) AS average_salary, COUNT(*) FROM users GROUP BY gender;

-- HAVING clause

SELECT gender, AVG(salary) AS 'Average Salary', COUNT(*) AS Count
FROM users
GROUP BY gender WITH ROLLUP
HAVING AVG(salary) < 69000;

-- Another Example: Groups with More Than 1 Referral

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*)>1;

-- ROLLUP

SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;