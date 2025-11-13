create database excel;
use excel;

create table book2(
imp_id int primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary decimal,
hire_date date);

insert into book2(imp_id,first_name,last_name,department,salary,hire_date)values
(1,'John','Doe','IT',60000,'2019-01-10'),
(2, 'JANE', 'SMITH', 'HR', 55000, '2018-03-05'),
(3, 'EMILY', 'JONES', 'IT', 62000, '2020-07-23'),
(4, 'MICHAEL', 'BROWN', 'FINANCE', 70000, '2016-05-14'),
(5, 'SARAH', 'DAVIS', 'FINANCE', 69000, '2017-11-18'),
(6, 'DAVID', 'JOHNSON', 'HR', 48000,'202-09-10');

select*from book2;






select*from book2;

/*  1. Find the average salary of employees in each department. */
select department,
avg(salary) as avg_salary
from book2
group by department;

/*  2. Find the total number of employees hired after 2019.  */
select 
count(*)as Total_employees
from book2
where hiredate>"2019-12-31";

/* 3. List the departments and the total salary of all employees in each department, ordered by the total salary.  */
select department,
sum(salary) as Total_salary
from book2
group by department
order by Total_salary ;


/*  4. Find the highest salary in the Finance department. */
select department,
max(salary) as highest_salary
from book2
where department="finance";

/*  5. Get the top 3 highest-paid employees.  */
select *
from book2
order by salary desc
limit 3;

/*  6. Find the department with the minimum average salary.  */
select  department,
avg(salary) as AVG_Salary
from book2
group by department
order by AVG_Salary
limit 1;


/*  7. Display the total number of employees in each department, ordered by the number of employees. */
select department,
count(*) as Number_of_Employees
from book2
group by department
order by Number_of_Employees;


/*  8. Find the average salary of employees who were hired before 2020.  */
select 
avg(salary) as avg_Salary 
from book2
where hiredate<"2020-01-01";

/*  9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.  */
select department,hiredate
from book2
where department="IT"
order by hiredate desc;


/*  10. Find the sum of salaries for all employees hired after January 1, 2019. */
select 
sum(salary) as Total_salary
from book2
where hiredate>"2019-01-01";


/* 11. Get the employee with the lowest salary in the HR department.   */
select First_name,department ,salary
from book2
where department="HR"
order by salary
limit 1;


/*12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  */
select department,
sum(salary) as Total_salary
from book2
group by department
order by total_salary
limit 2;

/*  13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees. */
 select first_name,hiredate,salary
from book2
where hiredate>"2018-12-31"
order by salary;


/*  14. Find the highest salary in the IT department, but limit the results to the top 1 result.  */
select max(salary) 
from book2
where department="IT";


/*  15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  */
select department,
avg(salary) as avg_salary
from book2
group by department
having avg_salary>60000;


select*from book2;