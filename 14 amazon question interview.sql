create database AJshop;
use AJshop;
create table customers (
customer_id int primary key,
customer_name varchar(100),
city varchar(50)
);
create table products(
product_id int primary key,
product_name varchar(50),
price decimal(10,2)
);
create table orders( 
order_id int primary key,
customer_id int,
product_id int,
order_date date,
quantity int,
foreign key (customer_id) references customers(customer_id),
foreign key (product_id) references products(product_id)