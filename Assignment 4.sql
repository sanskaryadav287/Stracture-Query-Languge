/*  1.	Create a database named company and a table named employees with the following fields:
●	id (INT, Primary Key, Auto Increment)
●	name (VARCHAR(100))
●	position (VARCHAR(100))
●	salary (DECIMAL(10,2))
●	date_of_joining (DATE)    */

create database company;

use company;

create table employees(
id INT Primary Key,
name varchar(100),
position varchar(100),
salary DECIMAL(10,2),
date_of_joining DATE);


/*  2.	Insert the following data into the employees table:
●	John Doe, Manager, 55000.00, 2020-01-15
●	Jane Smith, Developer, 48000.00, 2019-07-10
●	Alice Johnson, Designer, 45000.00, 2021-03-22
●	Bob Brown, Developer, 50000.00, 2018-11-01 */

INSERT INTO employees (id, name, position, salary, date_of_joining ) VALUES
(1, "John Doe", "Manager", 55000.00, "2020-01-15"),
(2, "Jane Smith", "Developer", 48000.00, "2019-07-10"),
(3, "Alice Johnson", "Designer",45000.00, "2021-03-22"),
(4, "Bob Brown", "Developer", 50000.00, "2018-11-01");
select*from employees;

/*  3.	Write a query to retrieve all employees who are Developers. */
select*from employees where position="Developer";


/* 4.	Write a query to update the salary of Alice Johnson to 46000.00.  */
set sql_safe_updates=0;
update employees
set salary=46000.00 where name="Alice Johnson";
select*from employees;



 /* 5.	Write a query to delete the employee record for Bob Brown. */
 delete from employees
 where name="Bob Brown";
 select*from employees;
 
 /*  6.	Write a query to find the employees who have a salary greater than 48000.  */
 select*from employees
 where salary>48000 ;
 
 /*  7.	Write a query to add a new column email to the employees table.  */
 alter table employees
 add email varchar(100);
 select * from employees;

/* 8.	Write a query to update the email for John Doe to john.doe@company.com.  */
update employees
set email="john.doe@company.com."
where name="John Doe";
select*from employees;

/*  9.	Write a query to retrieve only the name and salary of all employees.  */
select name,salary 
from employees;

/*  10.	Write a query to count the number of employees who joined after January 1, 2020  */
select *from employees
where date_of_joining>"2020-01-01";


/*  11.	Write a query to order the employees by salary in descending order. */
select name,salary
from employees 
order by salary desc;

/*  12.	Write a query to drop the email column from the employees table.  */
Alter table employees
drop column email;
select * from employees;

/* 13.	Write a query to find the employee with the highest salary.  */
select* from employees
order by salary  desc
limit 1;







