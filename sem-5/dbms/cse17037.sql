-- CREATE TABLE salesperson (snum int PRIMARY key,namee varchar(20),city varchar(10),comm NUMBER(2,2));
-- create table customers (cnum int primary key,cname varchar(20),city varchar(10),rating int,snum int,foreign key (snum) references salesperson);
-- create table orders (onum int primary key,amt NUMBER(8,2),odate date,cnum int,snum int,foreign key (cnum) references customers,foreign key (snum) references salesperson);
select * from salesperson;
select namee from customers where RATING = 100;
select * from customers where city is null;
select odate,snum,max(amt) from ORDERS GROUP BY ODATE,snum;
select * from orders order by CNUM DESC;
select snum,orders.ODATE from orders NATURAL JOIN SALESPERSON;
select cname,SALESPERSON.NAMEE from CUSTOMERS,SALESPERSON where SALESPERSON.SNUM = CUSTOMERS.SNUM;
select snum,count(*) from orders group by snum having count(cnum)  > 2;
select snum,count(onum) from ORDERS GROUP BY SNUM order by count(*) DESC;
select * from customers where city='San Jose';
select cname,namee,CUSTOMERS.CITY from CUSTOMERS,SALESPERSON where SALESPERSON.CITY=CUSTOMERS.CITY;
select max(amt),snum from ORDERS GROUP BY SNUM;
select * from customers where city='San Jose' and rating > 200;
select namee,comm from salesperson where city='London';
select NAMEE as sname,onum,amt as amount,odate,cnum from ORDERS,SALESPERSON where SALESPERSON.SNUM = ORDERS.SNUM and SALESPERSON.NAMEE='Motika';
select * from orders where ODATE.month = '03-OCT-%';
select odate,sum(amt) from ORDERS GROUP BY odate having sum(amt) > max(amt)+2000;



select cnum,salesperson.NAMEE from customers,salesperson where customers.CNUM > 1000 + (select snum from salesperson where sname = 'Serres');
select comm*100 from salesperson;
select odate,snum,max(amt) from ORDERS GROUP BY ODATE,orders.SNUM minus select max(amt) from orders group by ORDERS.ODATE,ORDERS.SNUM having max(price) < 3000;
select snum,odate,max(amt) from orders group by ODATE,order.snum  having ODATE like '03-OCT-%';
-- select cnum,city from customers where snum = (select snum from salesperson where namee='Serres');   either this or the below query
select cname,city from customers group by snum having snum=(select snum from salesperson where sname=('serres'));
select * from customers where rating > 200; 
select DISTINCT count(snum) from orders group by snum;
select customers.cname,salesperson.comm from salesperson,customers where salesperson.comm*100 > 12;
select customers.snum,salesperson.namee from customers,salesperson group by salesperson.snum having count(customers.snum) >= 2;
select salesperson.namee,customers.cnum from salesperson,customers where salesperson.city = customers.city;
select * from salesperson where namee like 'p___l%';