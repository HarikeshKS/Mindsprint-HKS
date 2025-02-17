create database sample;
use sample;
-- creating the department table
create table departments (
	id int primary key,
    name varchar(100) not null
);
-- inserting some sample records
INSERT INTO departments (id, name) VALUES
(1, 'Sales'),
(2, 'R&D'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Human Resources');
-- verifying the inserted data
select * from departments;

-- creating employee table which makes many to one relationship
-- between department and employees, one department can have many employees.
CREATE TABLE employees (
	id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(100) NOT NULL,
	salary DECIMAL(10, 2),
	department_id INT,
	FOREIGN KEY (department_id) REFERENCES departments(id)
);

desc employees;

INSERT INTO employees
(id, name, position, salary, department_id) VALUES
(1, 'John Doe', 'Manager', 75000.00, 1),
(2, 'Jane Smith', 'Developer', 65000.00, 2),
(3, 'Emily Johnson', 'Designer', 60000.00, 3),
(4, 'Michael Brown', 'Analyst', 70000.00, 4),
(5, 'Linda Green', 'Manager', 75000.00, 1),
(6, 'James White', 'Developer', 65000.00, 2),
(7, 'William Black', 'Developer', NULL, 2),
(8, 'Mary Blue', 'HR', 50000.00, 5);

select * from employees;

-- JOINS
-- INNER JOIN - Takes the common details from both tables
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
join departments d
on e.department_id = d.id;

-- let's insert one recod in employee table without department_id
insert into employees (id,name,position,salary,department_id) 
values (9, 'Test User', 'Testing', 90111, NULL);

-- LEFT JOIN - to take common details as well as values from left table
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
left join departments d
on e.department_id = d.id;

-- let's insert one recod in employee table without department_id
insert into departments values (6, 'IT');

-- RIGHT JOIN - to take common details as well as values from right table
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
right join departments d
on e.department_id = d.id;

-- Executing FULL OUTER JOIN
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
left join departments d
on e.department_id = d.id
		union 
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
right join departments d
on e.department_id = d.id;


select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
left join departments d
on e.department_id = d.id
		union all    -- shows combine results and also show to common values (i.e., comes with duplicates , union "all")
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
right join departments d
on e.department_id = d.id;

-- CROSS JOIN
select e.id, e.name, e.position Designation, e.salary, d.name 'Department Name'
from employees e
cross join departments d
on e.department_id = d.id;

-- GROUP BY
select d.name 'Department Name', count(*) 'No. of Employees'
from employees e
join departments d
on e.department_id = d.id
group by d.name;

-- Total sum of salary based on department
select d.name 'Department Name', sum(salary) 'Total Salary'
from employees e
join departments d
on e.department_id = d.id
group by d.name;

-- HAVING CLAUSE - used after group by only
select d.name 'Department Name', sum(salary) 'Total Salary'
from employees e
join departments d
on e.department_id = d.id
group by d.name
having `Total Salary` > 100000;

-- HAVING COUNT CLAUSE
-- List the department which is having more than 2 employees
select d.name 'Department Name', count(*) 'Total Employees'
from employees e
join departments d
on e.department_id = d.id
group by d.name
having `Total Employees` > 2;

-- ROLLUP - A grouping set is a set of columns to which you want to group.
select d.name 'Department Name', sum(e.salary) 'Total Salary'
from employees e
join departments d
on e.department_id = d.id
group by (`Department Name`) with rollup;

-- SET OPERATIONS:
-- UNION
-- EXCEPT (or MINUS)
-- INTERSECT