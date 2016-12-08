select o.order_id, oi.product_id, oi.quantity, p.product_name, p.product_price, p.product_price * oi.quantity as subtotal
from orders o
join order_item oi on oi.order_id = o.order_id
join products p on oi.product_id = p.product_id
where o.order_id = $1;
