create database if not exists trackizer;
use trackizer;
create table if not exists user( 
 regno int(6) NOT NULL AUTO_INCREMENT,
 username varchar(20),
 password int(8),
 PRIMARY KEY (regno));
insert into user(regno, username, password) values('38765','abc','1234');
select * from trackizer.user;
insert into user(username, password) values('abc','1234');
