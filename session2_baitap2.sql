create database session2_baitap2;
use session2_baitap2;
create table customer(
id int primary key auto_increment,
name varchar(255) not null,
age int
);
create table product(
id int primary key auto_increment,
name varchar(255) not null,
price float
);
create table `order`(
id int primary key auto_increment,
customerId int,
date date,
total float,
foreign key (customerId) references customer(id)
);
create table orderDetail(
customerId int,
productId int,
quantity int,
primary key (productId,customerId),
foreign key (customerId) references customer(id),
foreign key (productId) references product(id)
);