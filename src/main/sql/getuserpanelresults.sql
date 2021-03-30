use trackizer;
select ts, orderid, src, dest, bill, payment, id, status
from orders ord, track tr
where username = 'abc'
and ord.orderid = tr.id;