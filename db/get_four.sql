SELECT * FROM products p
JOIN image i
ON p.product_id = i.img_id
LIMIT 4;
