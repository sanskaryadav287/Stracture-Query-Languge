create database college;
use college;
CREATE TABLE studio (
id INT,
name VARCHAR(58),
percentage INT,
age INT,
gender CHAR(1),
phone VARCHAR(18),
city VARCHAR(50));

INSERT INTO studio (id, name, percentage, age, gender, phone, city) VALUES
(1, 'Ram Kumar', 45, 19, 'M', '4022144', 'Agra'),
(2, 'Sarita Kumari', 55, 22, 'F', 4034211,"Delhi"),
(3, 'Salman Khan', 64, 20, 'M', '4034211','Agra'),
(4, 'Juhi Chawla', 47, 21, 'F', 4098921, 'Bhopal'),
(5, 'Anil Kapoor', 48, 21, 'M', 4098921,' Agra'),
(6, 'John Abraham', 64, 21, 'M', 4033776, 'Delhi'),
(7, 'Shahid Kapoor', 52, 20, 'M', 4022784, 'Agra');

select * from studio;

insert into studio (name,age,gender)
values ("Shyam Kumar",19,"M");

insert into studio(id,name,age)
values (9,"Ravi Kumar",19); 

select * from studio where id is null;

select * from studio where gender is null;

select * from studio where id is not null;