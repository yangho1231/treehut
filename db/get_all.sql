SELECT * FROM products P
INNER JOIN image i
ON i.img_id = p.product_id
limit 21
offset $1;
