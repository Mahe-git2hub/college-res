create table Customer (custid varchar2(3) primary key,Lname varchar2(15),Fname varchar2(15),area varchar2(2),phoneno number(8));
desc Customer;
create table Movies (
    Mvno number(2) primary key,
    title varchar2(25),
    typee varchar2(10),
    star varchar2(25),
    price number(8,2)
);

desc Movies;

create table Invoice (
    Invno Varchar2(3) Primary Key,
    mvno Number(2) Foreign key Movies(mvno),
    custid Varchar2(3) Foreign key  Customer(custid),
    issueDate	Date,
    retDate		Date
);

insert into Customer values (A01,Bayross,Ivan,Sa,6125467);
insert into Customer values (A02,Saitwal,Vandana,Mu,5560379);
insert into Customer values (A03,Jaguste,Pramada,Da,4563891);
insert into Customer values (A04,Navindgi,Basu,Ba,6125401);
insert into Customer values (A05,Sreedhar,Ravi,Va,NULL);
insert into Customer values (A06,NULL,Rukmini,Gh,5125274);

insert into Movies values( 1,Bloody Vengeance,action,Jackie Chan,100.00 );
insert into Movies values( 2,The Firm ,thriller,Tom cruise,200.00 );
insert into Movies values( 3,Police Story,action,Jackie Chan,150.00 );
insert into Movies values( 4,Home Alone,Comedy,Macaulay Culkin,150.55 );
insert into Movies values( 5,The Fugitive Thriller,Harrison,Ford,200.00 );
insert into Movies values( 6,Coma ,Suspense, Michael Douglas,100.00 );
insert into Movies values( 7,Dracula,Horror,Gary Oldman,150.25 );
insert into Movies values( 8,Quick change,Comedy,Bill Murray,100.00 );
insert into Movies values( 9,Gone with the wind,Drama,ClarkeGable,250.00 );
insert into Movies values( 10,Carry onn Doctor,Comedy,Leslie Phillips,100.00 );

insert into Invoice values( i01,4,A01,23-jul-2012,25-jul-2012 );
insert into Invoice values( i02,3,A02,12-aug-2012,15-aug-2012 );
insert into Invoice values( i03,1,A02,15-aug-2012,18-aug-2012 );
insert into Invoice values( i04,6,A03,10-sep-2012,13-sep-2012 );
insert into Invoice values( i05,7,A04,05-aug-2012,08-aug-2012 );
insert into Invoice values( i06,2,A06,18-sep-2012,20-sep-2012 );
insert into Invoice values( i07,9,A05,07-jul-2012,10-jul-2012 );
insert into Invoice values( i08,9,A01,11-aug-2012,14-aug-2012 );
insert into Invoice values( i09,5,A03,06-jul-2012,09-jul-2012 );
insert into Invoice values( i10,8,A06,03-sep-2012,06-sep-2012 );

-- 1a
UPDATE TABLE CUSTOMER SET phoneno=466389 WHERE Lname='paramada';
--1b
UPDATE TABLE TRANSACTION SET issueDate=24/07/93 WHERE custid='A01';
--1c
UPDATE TABLE MOVIE SET PRICE=250.00 WHERE NAME='GONE WITH THE WIND';
--1d
DELETE FROM INVOICE WHERE Invno='i05';
--ie
DELETE FROM INVOICE WHERE retData < '10-jul-2012';
--1f
UPDATE TABLE CUSTOMER SET AREA='vs' WHERE CUSTID='A05';
--1g
UPDATE TABLE CUSTOMER SET FNAME='NewFname' WHERE Lname='Rukmini';
--1h
UPDATE TABLE CUSTOMER SET PRICE=PRICE+100 WHERE MVNO>0;
--1i
UPDATE TABLE CUSTOMER SET AREA='LA' WHERE AREA %r;
--1j
DELETE FROM CUSTOMER WHERE AREA='ba';
--1k
UPDATE TABLE MOVIE SET PRICE=PRICE*1.1 WHERE TYPE IN ('THRILLER', 'ACTION');


--2a
SELECT CUSTID, FNAME, LNAME FROM CUSTOMER;
--2b
SELECT * FROM INVOICE WHERE INVNO = 'i01';
--2c
SELECT Mvno FROM MOVIES WHERE PRICE BETWEEN 100 AND 200;
--2d
SELECT CUSTID FROM INVOICE;
--2e
SELECT CUSTID FROM INVOICE WHERE ISSUEDATE BETWEEN 01-aug-2012 AND 31-Sep-2012;
--2f
SELECT * FROM MOVIES;
--2g
SELECT TYPE FROM MOVIE WHERE PRICE>200;
--2h
SELECT TITLE, STAR FROM MOVIE WHERE PRICE NOT 200;
--2i
SELECT TITLE FROM MOVIE WHERE STAR IN (‘Jackie Chan’, ‘Tom Cruise’);
--2j
SELECT TYPE FROM MOVIE WHERE TITLE='Gone With the Wind';
--2k
SELECT * FROM MOVIES WHERE NAME LIKE '%THE';
--2l
SELECT NAME, TYPE, STAR FROM MOVIE WHERE TYPE NOT COMEDY;