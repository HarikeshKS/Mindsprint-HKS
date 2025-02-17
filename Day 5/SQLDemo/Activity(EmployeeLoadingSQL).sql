use employees;

show tables;
desc titles;
desc employees;
desc salaries;
desc dept_emp;
select * from dept_manager;
desc departments;
select * from employees limit 5;

-- 1.Retrieve the first name, last name, and job title of all employees.
select e.first_name 'First Name', e.last_name 'Last Name', t.title Title
from employees e
join titles t
on e.emp_no = t.emp_no;

-- 2.Find all employees who work in the Sales department.
select e.emp_no, e.first_name 'First Name', e.last_name 'Last Name', e.gender , d.dept_name Department
from employees e
join dept_emp demp 
on e.emp_no = demp.emp_no
join departments d
on demp.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- 3.Calculate the average salary of all employees.
select AVG(s.salary) 'Average Salary' from salaries s;

-- 4.Find the total number of employees in each department.
select count(emp_no) 'Total Number of Emp', d.dept_name 'Department Name'
from departments d
join dept_emp dmp
on d.dept_no = dmp.dept_no
group by (`Department Name`);

-- 5.list departments with more than 5 employees.
select d.dept_name 'Department Name'
from departments d
join dept_emp dmp
on d.dept_no = dmp.dept_no
group by (`Department Name`) 
having count(emp_no) > 5;

-- 6.List all employees and the names of their managers.  ---- no manager attribute in present entities

-- 7.Find all employees who work in the 'Marketing' or 'Finance' departments.
select e.emp_no, e.first_name 'First Name', e.last_name 'Last Name', e.gender , d.dept_name Department
from employees e
join dept_emp demp
on e.emp_no = demp.emp_no
join departments d
on demp.dept_no = d.dept_no
where d.dept_name = 'Marketing' or d.dept_name = 'Finance';

-- 8.Find all Employees whose first name starts with the letter 'A'.
select * from employees where first_name like 'A%';

-- 9.Combine the first names of employees and customers into a single list.  --- no customer entity

-- 10.Find the names of employees who have placed the highest number of orders. --- orders attribute is not present

-- 11.Find the number of Male and Female employees in the database.
select gender, count(gender) from employees group by gender; 

-- 12.Find the Average salary by employee title and order by descending order.
select t.title Title,avg(s.salary) 'Average Salary'
from employees e
join titles t
on e.emp_no = t.emp_no
join salaries s
on e.emp_no = s.emp_no
group by t.title
order by `Average Salary` desc;

-- 13. List first 5 employees (id,fname,lname,department name) alog with their department names.
select e.emp_no, e.first_name 'First Name', e.last_name 'Last Name' , d.dept_name Department
from employees e
join dept_emp demp
on e.emp_no = demp.emp_no
join departments d
on demp.dept_no = d.dept_no
limit 5;

-- 14.Display firstname, lastname,salary of the highest payed employee.
select e.first_name 'First Name', e.last_name 'Last Name', s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no
order by s.salary desc 
limit 1;

-- 15.Display second highest payed employee
select e.first_name 'First Name', e.last_name 'Last Name', s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no
order by s.salary desc 
limit 1 offset 1;