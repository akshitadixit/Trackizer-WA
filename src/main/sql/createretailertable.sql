use trackizer;
create table if not exists retailer( 
 regno int(6) NOT NULL AUTO_INCREMENT,
 username varchar(20),
 password varchar(8),
 email varchar(45),
 PRIMARY KEY (regno));
insert into retailer(regno, username, password, email) values('67395','Hitachi','1234', 'contact@hitachi.co.in');