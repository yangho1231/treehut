select *
from orders o
join order_item oi
on o.order_id = oi.order_id
join products p
on p.product_id = oi.product_id
where user_id = $1 and checked_out = true;
