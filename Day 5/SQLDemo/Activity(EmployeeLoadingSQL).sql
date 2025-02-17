use employees;

show tables;
desc titles;
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
select count(emp_no) 'Total Number of Emp', d.dept_name 'Department Name'
from departments d
join dept_emp dmp
on d.dept_no = dmp.dept_no
group by (`Department Name`) 
having count(emp_no) > 5;

select * from departments;
select * from employees;
select * from dept_emp;
