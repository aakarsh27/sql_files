create database coffee_store;

use coffee_store;

show tables;
show databases;

create table products(
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(30),
    price decimal(3,2)
);

create table customers(
    id int AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(30),
    last_name varchar(30),
    gender enum('M', 'F'),
    phone_number varchar(11)
);

create table orders(
    id int AUTO_INCREMENT PRIMARY KEY,
    product_id int,
    customer_id int,
    order_time DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
)


alter table orders
rename column order_tym to order_time;

alter table orders
MODIFY COLUMN order_time datetime;

describe orders;

