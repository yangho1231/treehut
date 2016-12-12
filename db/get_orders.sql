select *
from orders o
join order_item oi
on o.order_id = oi.order_id
join products p
on p.product_id = oi.product_id
join users1 u
on u.user_id = o.user_id
where o.user_id = $1 and checked_out = true;
