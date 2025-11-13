use company;

CREATE TABLE employees2 (
emp  INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(30),
salary INT,
experience INT,
gender VARCHAR(10));

INSERT INTO employees2  (emp , name , department ,salary ,experience , gender ) VALUES
(1, 'Alice', 'HR', 40000, 3, 'Female'),
(2, 'Bob', 'Finance', 60000, 6, 'Male'),
(3, 'Charlie', 'IT', 55000, 4, 'Male'),
(4, 'David', 'IT', 80000, 10, 'Male'),
(5, 'Eva', 'Finance', 45000, 2, 'Female'),
(6, 'Frank', 'HR', 50000, 7, 'Male'),
(7, 'Grace', 'IT', 30000, 1, 'Female'),
(8, 'Helen', 'Finance', 70000, 9, 'Female'),
(9, 'lan', 'HR', 65000, 8, 'Male'),
(10, 'Julia', 'IT', 48000, 3, 'Female');

select * from employees2;

# 1. catogrise salary level 
select name , salary ,
    case 
      when salary>70000 then "High"
      when salary between 40000 and 70000 then "medium"
      else "low"
	end  as salary_level
from employees2;

# 2. catogrise bonus

select name , experience , 
    case 
      when experience>=8 then "10000"
      when experience>=5 then "7000"
      else "3000"
	end as bonus_status
from employees2;

# 3. gender discrimnination

select name , gender , 
    case
      when gender = "Female" then concat("Ms. ",name)
      else concat("Mr ",name)
	end as gender2
from employees2;

# 4. grading
select name , experience , salary ,
    case 
      when experience>8 and salary>60000 then "A"
      when experience between 5 and 8 then "B"
      else "C"
	end as grades
from employees2;

# 5. code of department
select name , department , 
    case 
      when department = "IT" then "D01"
      when department = "Finance" then "D02"
      else "D03"
	end as Department_code
from employees2;

# 6. Dept type

select name , department , 
    case 
      when department = "IT" or Department = "Finance" then "Technical"
      else "Non techincal"
	end as dept_type
from employees2;


## 7
select name , department , 
    case 
      when department in ("IT","Finance") then "Technical"
      else "Non techincal"
	end as dept_type
from employees2;


##  8 Disply Marking using Neted Case
select name,department,experience,
   case
     when department="IT" Then
     case
    when experience>5 then "Experienced IT Staff"
  else  "New Staff"
 end
else "OtherDepartment"
end as Remarks
from employees2;




##  9  if salary is avove from avg salary then avobe salary and else below salary
select name,salary,
   case
      when salary>(select avg(salary) from employees2) then "Avove company Average"
      else"below company Average"
      end as Compare_status
	from employees2;
    
    ##  9 salary different
    
    select name,salary,
       case 
           when salary-50000>0 then concat("  Above 50k By  ",salary-50000)
           when salary-50000<0 then concat("  Below 50k by  ",50000-salary)
           else "Exactly 50k"
		  end as salary_gap
		from employees2;




