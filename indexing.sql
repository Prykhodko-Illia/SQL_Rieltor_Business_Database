create index customers_id_idx
on customers (id);

create index sellers_id_idx
on sellers (id);

create index houses_id_idx
on houses (id, price);

create index orders_id_idx
on orders (id, order_date);