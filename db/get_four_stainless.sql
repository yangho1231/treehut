SELECT * FROM products p
JOIN image i
ON p.product_id = i.img_id
WHERE p.product_name LIKE upper('Stain%')
LIMIT 4;
