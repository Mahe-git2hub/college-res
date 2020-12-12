1.
select * from salesperson;
2.
select sname from customers where rating=100;
3.
select * from customers where city=&#39; &#39;;
4.
select snum,max(amount),odate from orders group by snum,odate;
5.
select * from orders order by cnum desc;
6.
select salesperson.snum,orders.snum,salesperson.sname from orders,salesperson where
salesperson.SNUM = orders.SNUM;
7.
select salesperson.sname,customers.cname from SALESPERSON,CUSTOMERS where
salesperson.snum=customers.snum;
8.
select snum,count(*) from orders group by snum order by count(*) desc;
9.
select salesperson.sname,customers.sname from salesperson,customers where
salesperson.city=customers.city;
10.
select snum,max(amount) from orders group by snum;
11.
select salesperson.sname,customers.sname from salesperson,customers wheresalesperson.city=customers.city;
12. 
select MAX(amount),salesperson.snum from salesperson,orders wheresalesperson.snum=orders.snum GROUP by sname;
13.
select sname from customers where rating > 200 and city = 'san jose';
14.
select sname,comm from salesperson where city = 'london';
15.
select sname,onum,amount,odate,cnum from salesperson,orders wheresalesperson.snum=orders.snum and sname='motika';
16.
select distinct sname from customers,orders where customers.cnum=orders.cnum and odate='2019-03-10';
21.
select customers.sname from customers where cnum >1000 + (select snum from salesperson where sname = 'serres');
22.
select comm*100 from salesperson
23.
select orders.odate,orders.snum,onum from orders,salesperson group by orders.odate,orders.snum having MAX(amount)>3000;
24.
select snum,odate,max(amt) from orders group by odate,snum having odate=’3-OCT-96’;
25.
select customers.city,customers.sname from customers,salesperson where salesperson.snum=customers.snum and salesperson.sname='serres';
26.
select customers.sname from customers WHERE rating>100;
27.
select DISTINCT count(snum),snum from orders group by snum;
28.
select salesperson.sname,customers.sname from salesperson,customers wheresalesperson.snum=customers.snum and comm>0.12;
29.
select salesperson.sname from salesperson,customers where salesperson.snum=customers.snum group bycustomers.snum having count(customers.snum)>1;
30.
select DISTINCT salesperson.sname,customers.sname,customers.city from salesperson,customers wheresalesperson.city=customers.city;
31.
select sname from salesperson where sname like 'p__l%';
