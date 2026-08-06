-- SELECT name, email FROM users
-- UNION
-- SELECT name, email FROM admin_users;

-- SELECT name, email FROM users
-- UNION ALL
-- SELECT name, email FROM admin_users;

-- SELECT name, 'User' AS role FROM users
-- UNION
-- SELECT name, 'Admin' AS role FROM admin_users;

-- Using ORDER BY with UNION

SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;