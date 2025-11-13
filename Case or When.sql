create database company1;

use company1;

create table employees1(
emp_id int primary key,
name varchar(50),
department varchar(30),
salary int,
expierence int,
grnder varchar(10)
);

alter table employees1 change grnder gender varchar(10);

INSERT into employees1 Values
(1,"Alice","HR",40000,3,"Female"),
(2,"Bob","Finance",60000,6,"Male"),
(3,"Charlie","IT",55000,4,"Male"),
(4,"David","IT",80000,10,"Male"),
(5,"Eva","Finane",45000,2,"Female"),
(6,"Frank","HR",50000,7,"Male"),
(7,"Grace","IT",30000,1,"Female"),
(8,"Halen","Finance",70000,9,"Female"),
(9,"Ian","HR",65000,8,"Male"),
(10,"Juli","IT",48000,3,"Female");      

/*Q1. if expierence is  8 ya 8 se jyada 10000  ,5 ya 5 se jyada to 5000 ,Not in case 3000  ----*/

select * from employees1;
select emp_id,name,salary,expierence,
case
when expierence>=8 then 10000
when expierence>=5 then  5000
else 3000
end as Bonus
from employees1;       


/* 2 . If gender male  to mr._name  If gender female to Ms._Name */
select name,
case gender
when "male" then concat("mr" , name)
when "female" then concat("Ms" , name)
end as Title_name
from employees1;


  /* 3. expierence 8 se jayada salary >50000 grade a Experience>5 jyada to grade b  Else c */
  
  select name,expierence,salary,
  case 
  when (expierence>8 and salary>50000) then "A"
  when expierence>5 then "B"
  else "C"
  end as Grade
  from employees1;
  
  
/* Q4.*/
select name,salary,gender,
case
when salary>70000 Then "High"
when salary between 40000 and 70000 then "Medium"
else "low"
end as salary_lavel
from employees1;    


/* 5. When department it to D01, finance to D02, and hr D03 */
select name, department,
case 
when department="IT" then "D01"
when department="Finance" then "D02"
when department="HR" then "D03"
end as Depart_Code
from employees1;


/* 6. Agar depart it,finance to technical else to Non Technical as depart_Type */

select name, department,
case 
when department="Finance" or Department="IT" then "Technical"
else "NON Technical"
end as Depart_type
from employees1;