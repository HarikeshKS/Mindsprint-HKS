use mindsprint;
--  Creating student table
create table students (
  student_id INT primary key,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  major VARCHAR(255),
  gpa decimal(10,2),
  enrollment_date date
);

-- data insertion
INSERT INTO Students (student_id, name, age, major, gpa, enrollment_date) VALUES
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'),
(102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'),
(103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'),
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'),
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'),
(106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28');

select * from students;

-- 1.Select all students who are majoring in "Computer Science“
select * from students where major = 'Computer Science';

-- 2.Select students with a GPA greater than 3.5 or who are majoring in "Mathematics“
select * from students where gpa > 3.5 or major = 'Mathematics';

-- 3.Select students who are older than 20 and have a GPA less than 3.0
select * from students where age > 20 and gpa < 3.0;

-- 4.Select students who enrolled between January 1, 2023 and December 31, 2023
select * from students where enrollment_date between '2023-01-01' and '2023-12-31';

-- 5.Select distinct majors from the Students table
select DISTINCT major from students;

-- 6.Select students with IDs in the list (101, 102, 103)
select * from students where student_id in (101, 102, 103);

-- 7.Select students where the GPA is NULL (if applicable):
select * from students where gpa is null;

-- 8.Select students where the name is not NULL
select * from students where name is not null;

-- 9.Select students whose age is exactly 18 or 22
select * from students where age = 18 or age = 22;

-- 10.Select students who are either less than 19 years old or have a GPA greater than 3.8
select * from students where age < 19 or gpa > 3.8;

-- 11.Select students who have a GPA between 2.5 and 3.5 and are majoring in "Biology“
select * from students where major = 'Biology'and gpa between 2.5 and 3.5;

-- 12.Select students and order them by name in ascending order and then by GPA in descending order
select * from students order by name, gpa desc;