create database if not exists trackizer;
use trackizer;
create table orders( 
 ts timestamp ,
 orderid int(5) NOT NULL AUTO_INCREMENT,
 username varchar(30), 
 src varchar(20) NOT NULL, 
 dest varchar(20) NOT NULL, 
 bill varchar(7), 
 payment varchar(4),
 retailer varchar(20),
 PRIMARY KEY (orderid));
insert into orders(ts, username, src, dest, bill, payment, retailer) 
			values(current_timestamp(), 'abc', 'England', 'India', '3499.00', 'done', 'Hitachi');
select * from orders;
