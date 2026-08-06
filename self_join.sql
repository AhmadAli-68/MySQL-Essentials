-- ALTER TABLE users
-- ADD COLUMN referred_by_id INT;

-- UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 4, 5, 6, 7, 8, 9);
-- UPDATE users SET referred_by_id = 2 WHERE id = 4;

SELECT
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;

SELECT * FROM users;