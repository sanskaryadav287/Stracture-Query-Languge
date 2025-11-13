create database  company2;
use company2;


Create Table personal(
id int not null unique,
name Varchar(20) not null,
percentage int not null,
age int null check(age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null Default "UP");


insert into personal(id,name,percentage,age,gender,phone,city)values
(1,"Ram Kumar",45,19,"M","41654","Agra"),
(2,"Sarita Kumari",55,22,"F",'454545',"Delhi"),
(3,"Salman Khan",62,20,"M","454544","Agra"),
(4,"Juhi Chawala",47,18,"F","5665645","Bhopal"),
(5,"Anil Kapoor",74,22,"M","3526455","Agra"),
(6,"Johan Abharam",64,21,"M","6565466","Delhi"),
(7,"Sahid Kapoor",52,20,"M","6569454","Agra");

## STRING FUNCTIONS

Select id ,upper(name) as name,percentage from personal;

Select id ,ucase(name) as name,percentage from personal;

Select id ,lower(name) as name,percentage from personal;

Select id ,lcase(name) as name,percentage from personal;

Select id,name,character_length(name) as characters from personal;

Select id,name,char_length(name) as characters from personal;

Select id,name,length(name) as characters from personal;

Select id,concat(name,percentage) as name from personal;

Select id,concat(name," ",percentage) as name from personal;

Select id,concat(name,"-",percentage) as name from personal;

