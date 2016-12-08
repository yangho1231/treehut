UPDATE order_item
SET quantity = $3
WHERE order_id = $1 AND product_id = $2;
