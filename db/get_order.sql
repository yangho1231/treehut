SELECT * FROM orders
WHERE user_id = $1
AND checked_out = false;
