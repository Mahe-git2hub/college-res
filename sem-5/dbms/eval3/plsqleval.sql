create table student1 (sid varchar(10),name varchar(30),dept_name varchar(30),tot_cred varchar(10));
create table department(dept_name varchar(30),building varchar(30),budget varchar(30));

1.)

set serveroutput on;


declare
id1 student1.sid%type;
name1 student1.name%type;
dept1 student1.dept_name%type;
a student1.sid%type;
procedure mithun(x in student1.sid%type)
is
begin
select sid , name , dept_name into id1,name1,dept1 from student1 where sid=x;
dbms_output.put_line( id1 || ' ' || name1 || ' ' || dept1);
end;

begin
a:='S101';
mithun(a);
end;


2.)

set serveroutput on;

declare
id1 instructor.id%type;
name1 instructor.name%type;
dept1 instructor.dept_name%type;
salary1 instructor.salary%type;
a instructor.id%type;
z instructor.salary%type;
function tot_sal(x instructor.id%type )
return instructor.salary%type
is
begin
select salary,id into salary1,id1 from instructor where id=x;
salary1:=salary1 + 0.1*salary1;
dbms_output.put_line( salary1  || ' ' || id1 );
if salary1>100000 then dbms_output.put_line( 'salary > 100000 and salary = '|| salary1 ||' id = ' || id1 );
end if;
return salary1;
end;

begin
a:='101';
z:=tot_sal(a);
a:='102';
z:=tot_sal(a);
a:='103';
z:=tot_sal(a);
a:='104';
z:=tot_sal(a);
a:='105';
z:=tot_sal(a);
end;



3.)

set serveroutput on;

declare
cr student1.tot_cred%type:=200;
cr1 student1.tot_cred%type;

cursor display is 
select count(*) from student1 where tot_cred<cr;

begin
open display;

fetch display into cr1;
dbms_output.put_line('TOTL NO. OF STUDENTS = ' || cr1 );


close display;
end;


4.) 


set serveroutput on;

declare
deptname department.dept_name%type;
building1 department.building%type;
budget department.budget%type;


cursor hello is 
select dept_name , building , budget from department where budget>5000 and budget<120000;
begin
open hello;
loop
fetch hello into deptname,building1,budget;
dbms_output.put_line(deptname || ' ' || building1 || ' ' || budget);
exit when hello%notfound;
end loop;
close hello;
end;


5.) 


create table instructor_check(message varchar(25),dates date);


create or replace trigger trg1 
after update 
on instructor
for each row
begin

insert into instructor_check values('hello',sysdate);
end;


update instructor set id='108' where id ='103';










