select * from products p
INNER JOIN image i
ON p.product_id = i.img_id
WHERE product_type = 'SUNGLASS'
LIMIT 4;
