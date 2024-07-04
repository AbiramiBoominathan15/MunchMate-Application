show databases;
create database munch_mate_database;
use munch_mate_database;
drop database munch_mate_database;
create table user(
userid int  AUTO_INCREMENT PRIMARY KEY,
name  varchar(200),
phone_number varchar(200),
password varchar(200),
city varchar(200),
mail_id varchar(200)UNIQUE);
select * from user;
alter table user add status int ;

drop table user;
CREATE TABLE hotel (
    hotelid INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255)unique,
    location VARCHAR(255),
    image blob,
    phonenumber varchar(255),
    email varchar(200)unique,
    password varchar(100),
    status varchar(100)
    );
		select * from hotel;
    drop table hotel;
    create table food(
    foodid  int  auto_increment PRIMARY key,
    hotelid INT,
    hotelname varchar(200),
    foreign key(hotelid)references hotel(hotelid),
    image blob,
    name varchar(300)unique,
    price int,
        quantity int,
    catagories varchar(200),
    mealtime varchar(200));
        select * from food;
        drop table food;
    create table  orders(
    orderid int primary key auto_increment,
        hotelid INT,
        userid int,
    foreign key(hotelid)references hotel(hotelid),
    FOREIGN KEY (userid) REFERENCES user(userid),
foodname varchar(200),
address text,
totalamount int ,
paymentmode varchar(200),
orderdelivery varchar(200));
        select * from orders;
                drop table orders;
CREATE TABLE cart (
    cartid INT AUTO_INCREMENT PRIMARY KEY,
    userid INT,
    foodid INT,
    quantity INT,
    totalprice DOUBLE,
    mealtime varchar(200),
        foreign key(foodid)references food(foodid),
                foreign key(userid)references user(userid));
        select * from cart;
        drop table cart;
        describe cart;
