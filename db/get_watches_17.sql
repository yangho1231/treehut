SELECT * FROM products p
JOIN image i
ON p.product_id = i.img_id
WHERE product_category = '1.7 Inches';
