select o.order_id, sum(p.product_price * oi.quantity)as order_total
from orders o
join order_item oi on oi.order_id = o.order_id
join products p on oi.product_id = p.product_id
where o.order_id = $1
group by o.order_id;
