select * from order_item oi
join orders o
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id
join image i
on i.img_id = p.product_id
where o.user_id = $1 and o.checked_out = false
order by p.product_name;
