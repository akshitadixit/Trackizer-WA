use trackizer;
create table if not exists admin(
 username varchar(20),
 password varchar(8),
 email varchar(45));
 insert into admin(username, password, email) values('Admin', 'Admin123', 'admin@gmail.com');