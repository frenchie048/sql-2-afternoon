--ECOMMERCE SIMULATION

create table users (
	user_id serial primary key
  , name text not null
  , email text not null
);

insert into users (name, email)
	values ('Harriet', 'harriet5@email.email')
  , ('Brittany', 'brittany-f@email.com')
  , ('Blake', 'robot-blake@email.org');

create table products (
	product_id serial primary key
  , name text not null
  , price integer not null
);

insert into products (name, price)
	values ('Apple Watch', 400)
  , ('Burberry Trenchcoat', 1200)
  , ('TV', 800);

create table orders (
	order_id serial primary key
  , product_id integer
);

insert into orders (product_id)
	values (2)
  ,(3)
  ,(1);

select * from orders
	join products on (orders.product_id = products.product_id)
  where order_id = 1;

select * from orders o
	join products p on (o.product_id = p.product_id)
  join users u on (o.order_id = u.order_id);

select sum(price) from orders o
	join products p on (o.product_id = p.product_id)
  where order_id = 2;

alter table users
	add column order_id
  references orders (order_id);

  update users
	set order_id = 1
	where name = 'Harriet';

update users
	set order_id = 2
	where name = 'Brittany';

update users
	set order_id = 3
	where name = 'Blake';

select * from orders o
    join users u on (o.order_id = u.order_id)
    where user_id = 1;

select count(*), u.name from orders o
    join users u on (o.order_id = u.order_id);

select count(*),u.name from users u 
    join orders o on (u.order_id = o.order_id)
    group by u.name;

-- black diamond
select sum(price), u.name from orders o
    join products p on (o.product_id = p.product_id)
    join users u on (o.order_id = u.order_id)
    group by u.name;