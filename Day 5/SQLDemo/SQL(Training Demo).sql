show databases;
create database if not exists mindsprint;
use mindsprint;
create table if not exists employee (
	id int primary key,
    name varchar(255),
    department varchar(100),
    salary decimal(10, 2)
);

-- Describe table 
desc employee;

-- Adding new column
alter table employee add column position varchar(100); 

-- Inserting single record using all fields
insert into employee values ( 1, 'Harikesh', 'C.S', 190000, 'Manager');

-- Inserting record by using field name
insert into employee ( id, name, position, department, salary) 
values (2, 'Charanjeet', 'Sr. Developer', 'I.T', 90000); 

insert into employee ( id, name, position, salary) 
values (3, 'Simran', 'Sr. Developer', 45000); 

-- Inserting multiple values
insert into employee ( id, name, position, salary) values
(4, 'Saumya', 'QA Engineer', 55000),
(5, 'Mohit', 'Jr. Developer', 25000), 
(6, 'Diksha', 'Jr. Developer', 25000); 

-- Displaying data
select * from employee;

-- Updating data
update employee set salary = 35000 where id = 5;

-- Deleting data
delete from employee where id = 6;

-- Truncate data => deletes the data and recreates the table structure
truncate table employee;

drop table employee;

-- Creating new table
create table if not exists employees (
	id int primary key auto_increment,
    name varchar(100),
    position varchar(100),
    department varchar(100),
    salary decimal(10, 2)
);

-- describe again
describe employees;

-- Inserting data
insert into employees ( name, position, department, salary) values
('Harikesh', 'Manager', 'CS', 190000),
('Charanjeet', 'Sr. Developer', 'IT', 90000),
('Sonam', 'Sr. Developer', 'IT', 90000),
('Saumya', 'QA Engineer','IT', 55000),
('Mohit', 'Jr. Developer','CS', 25000), 
('Diksha', 'Jr. Developer','CS', 25000); 

-- SELECT use cases -------------------------------------

select * from employees;

-- Single column retrival
select name from employees;

select now();   -- give current date
select now() today;   -- give current date

select 2100 + 27 as 'result';

select concat('Harikesh', 'Sharma') as FullName;
select upper('Harikesh') as 'Upper Case Name';

-- Where clause 
-- retrive data of employees whose salary is more than 40000
-- retrive data of employees whose salary is equal to 25000
-- retrive data of employees whose ID is 5
-- retrive data of employees whose salary is between 35000 to 80000
-- retrive employees list from department it

select * from employees where salary > 40000;
select * from employees where salary = 25000;
select * from employees where id = 5;
select * from employees where salary between 35000 and 80000;
select * from employees where department = 'IT';

-- ORDER BY
select * from employees order by salary DESC, department, name desc;

-- Highest salary employee:
select * from employees order by salary DESC limit 1;

-- DISTINCT demo
select distinct position from employees;
select distinct department from employees;

-- Filtering data 
-- OR
select * from employees where department = 'CS' or department = 'IT';
-- IN
select * from employees where department in ('CS','IT');
select * from employees where department not in ('CS','IT');
-- LIKE
select * from employees where name like 'C%';
select * from employees where position like '%Dev%';

-- IS NULL
select * from employees where department is null;