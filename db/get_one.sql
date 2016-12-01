SELECT * FROM products p
INNER JOIN image i
ON p.product_id = i.img_id
WHERE p.product_id = $1;
