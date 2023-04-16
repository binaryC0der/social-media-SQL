USE DATABASE social_network;

-- Find 5 oldest users
SELECT username FROM users ORDER BY created_at LIMIT 5;

--Find the day with most registered users
SELECT DAYNAME(created_at) AS day, COUNT(*) AS frequency FROM users GROUP BY day ORDER BY frequency DESC;

-- Find inactive users
SELECT username FROM users u LEFT JOIN photos p ON u.id = p.user_id WHERE p.id IS NULL;

