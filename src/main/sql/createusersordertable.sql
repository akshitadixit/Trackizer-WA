use trackizer;
create table myorders(
 ts timestamp,
 orderid int(5),
 src varchar(20),
 dest varchar(20),
 bill varchar(7),
 payment varchar(4),
 status varchar(10));
 
select * from myorders;
select ts, orderid, src, dest, bill, payment from orders where username='abc' ;
