
create view customers_new_houses as
select c.id, c.first_name, h.address, h.price
from customers c
join tie_table tt on tt.customer_id = c.id
join orders o on o.id = tt.order_id
join houses h on o.house_id = h.id
where h.price > 300000
order by h.price desc;

select * from customers_new_houses;