create table customers (
	id bigint not null auto_increment primary key comment 'customer unique identifier',
	first_name varchar(50) not null comment 'first name of customer',
	second_name varchar(50) not null comment 'second name of customer',
	age bigint not null comment 'customer age ( > 0)',
	phone_number varchar(50) unique comment 'customer phone number (can be null)',
	email varchar(50) not null unique comment 'customer email',
	check (age > 0)
);

create table sellers (
	id bigint not null auto_increment primary key comment 'seller unique identifier',
	first_name varchar(50) not null comment 'first name of seller',
	second_name varchar(50) not null comment 'second name of seller',
	age bigint not null comment 'seller age ( > 0)',
	phone_number varchar(50) unique comment 'seller phone number (can be null)',
	email varchar(50) not null unique comment 'seller email',
	check (age > 0)
);

create table houses (
	id bigint not null auto_increment primary key comment 'house unique identifier',
	address varchar(500) unique comment 'adress on which house located',
	seller_id bigint not null comment 'reference to a house seller',
	price decimal not null comment 'price for the house (in $)',
	surface decimal not null comment 'surface of the house (in m^2)',
	house_type varchar(50) comment 'house type (can be null)',
	foreign key (seller_id) references sellers(id),
	check (price >= 0),
	check (surface > 0)
);

create table orders (
	id bigint not null auto_increment primary key comment 'order unique identifier',
	order_date datetime not null comment 'date and time of finishing the order',
	net_price decimal not null comment 'net price of the order (in $)',
	house_id bigint not null comment 'reference to a house that was sold',
	foreign key (house_id) references houses(id),
	check (net_price >= 0)
);

create table tie_table (
	customer_id bigint not null comment 'customer, who bought the house',
	foreign key (customer_id) references customers(id),
	seller_id bigint not null comment 'seller, who sold the house',
	foreign key (seller_id) references sellers(id),
	order_id bigint not null comment 'order of house sale',
	foreign key (order_id) references orders(id)
);

drop table customers;
truncate table sellers;
drop table houses;
drop table orders;
truncate table tie_table;

select count(*) from tie_table tt;

