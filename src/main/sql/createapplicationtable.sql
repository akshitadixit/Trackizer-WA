use trackizer;
create table if not exists application( 
 appno int(4) NOT NULL AUTO_INCREMENT,
 username varchar(20),
 password varchar(8),
 email varchar(45),
 reason varchar(100),
 PRIMARY KEY (appno));
insert into application(appno, username, password, email, reason) values('100','Akshita','1234', 'akshitadixit.int@gmail.com', 'I am verified by DHCL and also have an experince of 7 years');