-- create database cupcakes;

use cupcakes;

drop table if exists invoice;
drop table if exists toppings;
drop table if exists bottoms;
drop table if exists users;


create table users(
id int primary key,
uname varchar(50),
upass varchar(50),
balance int(11)
-- Skal brugeren have sin account her, 
-- eller skal account laves som en seperat tabel ??
);

create table bottoms(
b_id int primary key auto_increment,
bottom varchar(50),
b_price double(4,2),
b_image varchar(255)
);

create table toppings(
t_id int primary key auto_increment,
topping varchar(50),
t_price double(4,2),
t_image varchar(255)
);

create table invoice(
i_id int primary key

-- fk_users_id int,
-- foreign key(fk_user_id) references users(id)

-- fk_uname varchar(50),
-- foreign key(fk_uname) references users(uname)
);

-- create table account(
-- a_id int primary key
-- );


insert into bottoms (bottom, b_price, b_image) 
values ('Chocolate', 5.00, 'bottom-1.jpg'), ('Vanilla', 5.00, 'bottom-2.jpg'),('Nutmeg', 5.00,'bottom-3.jpg'),('Pistacio', 6.00,'bottom-4.jpg'),('Almond', 7.00,'bottom-5.jpg'),('Banana', 6.00,'bottom-6.jpg');

insert into toppings (topping, t_price, t_image)
values ('Chocolate', 5.00,'topping-1.jpg'), ('Blueberry', 5.00,'topping-2.jpg'),('Rasberry', 5.00,'topping-3.jpg'),('Crispy', 6.00,'topping-4.jpg'),('Strawberry', 6.00,'topping-5.jpg'),('Rum/Raisin', 7.00,'topping-6.jpg');
