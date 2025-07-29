-- 1. Create database and use it
DROP DATABASE IF EXISTS employee_tasks_db;
CREATE DATABASE employee_tasks_db;
USE employee_tasks_db;

-- 2. Create admin table
CREATE TABLE admin (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

-- 3. Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    firstName VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

-- 4. Create task_counts table
CREATE TABLE task_counts (
    employee_id INT,
    active INT,
    newTask INT,
    completed INT,
    failed INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- 5. Create tasks table
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    active BOOLEAN,
    newTask BOOLEAN,
    completed BOOLEAN,
    failed BOOLEAN,
    taskTitle VARCHAR(200),
    taskDescription TEXT,
    taskDate DATE,
    category VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- 6. Insert admin data
INSERT INTO admin (id, email, password) VALUES 
(1, 'admin@12.com', '123');

-- 7. Insert employees
INSERT INTO employees (id, firstName, email, password) VALUES
(1, 'Sonam Kandari', 'sonam@04.com', '123'),
(2, 'Rishita Rawat', 'rishita@12.com', '123'),
(3, 'Harjeet Rawat', 'Harjeet@04.com', '123'),
(4, 'Shubham Gairola', 'shubham@12.com', '123'),
(5, 'Pranjal', 'pranjal@12.com', '123');




select password from employees where firstName;
select password from employees where firstName='Shubham Gairola';
-- 8. Insert task counts
INSERT INTO task_counts (employee_id, active, newTask, completed, failed) VALUES
(1, 6, 3, 3, 0),
(2, 1, 0, 1, 0),
(3, 2, 1, 1, 0),
(4, 2, 1, 1, 3),
(5, 2, 1, 1, 0);

-- 9. Insert tasks

-- Tasks for Sonam Kandari (id = 1)
INSERT INTO tasks (employee_id, active, newTask, completed, failed, taskTitle, taskDescription, taskDate, category) VALUES
(1, true, true, false, false, 'Update website', 'Revamp the homepage design', '2024-10-12', 'Design'),
(1, false, false, true, false, 'Client meeting', 'Discuss project requirements', '2024-10-10', 'Meeting'),
(1, true, false, false, false, 'Fix bugs', 'Resolve bugs reported in issue tracker', '2024-10-14', 'Development'),
(1, true, true, false, false, 'UI redesign', 'Redesign the user interface for better UX', '2024-10-14', 'Design'),
(1, false, false, true, false, 'Deploy new build', 'Deploy the latest build to production', '2024-10-09', 'DevOps'),
(1, true, false, false, false, 'Client feedback', 'Gather feedback from clients after product launch', '2024-10-12', 'Support'),
(1, true, true, false, false, 'Prepare presentation', 'Prepare slides for upcoming client presentation', '2024-10-13', 'Presentation');

 select * from employees;
-- Tasks for Rishita Rawat (id = 2)
INSERT INTO tasks (employee_id, active, newTask, completed, failed, taskTitle, taskDescription, taskDate, category) VALUES
(2, true, false, false, false, 'Database optimization', 'Optimize queries for better performance', '2024-10-11', 'Database'),
(2, true, false, false, false, 'Code review', 'Review the codebase for optimization', '2024-10-12', 'Development'),
(2, false, false, true, false, 'Testing', 'Test the latest build for bugs', '2024-10-08', 'QA'),
(2, false, false, true, false, 'Design new feature', 'Create mockups for the new feature', '2024-10-09', 'Design');

-- Tasks for Harjeet Rawat (id = 3)
INSERT INTO tasks (employee_id, active, newTask, completed, failed, taskTitle, taskDescription, taskDate, category) VALUES
(3, true, true, false, false, 'Prepare presentation', 'Prepare slides for upcoming client presentation', '2024-10-13', 'Presentation'),
(3, true, false, false, false, 'Code review', 'Review the codebase for optimization', '2024-10-12', 'Development'),
(3, false, false, true, false, 'Testing', 'Test the latest build for bugs', '2024-10-08', 'QA');

-- Tasks for Shubham Gairola (id = 4)
INSERT INTO tasks (employee_id, active, newTask, completed, failed, taskTitle, taskDescription, taskDate, category) VALUES
(4, true, true, false, false, 'Write documentation', 'Update the project documentation', '2024-10-13', 'Documentation'),
(4, true, false, false, false, 'Set up CI/CD', 'Implement continuous integration pipeline', '2024-10-11', 'DevOps');

-- Tasks for Pranjal (id = 5)
INSERT INTO tasks (employee_id, active, newTask, completed, failed, taskTitle, taskDescription, taskDate, category) VALUES
(5, true, true, false, false, 'UI redesign', 'Redesign the user interface for better UX', '2024-10-14', 'Design'),
(5, false, false, true, false, 'Deploy new build', 'Deploy the latest build to production', '2024-10-09', 'DevOps'),
(5, true, false, false, false, 'Client feedback', 'Gather feedback from clients after product launch', '2024-10-12', 'Support');


SELECT * FROM tasks WHERE employee_id = 1;
SELECT * FROM tasks WHERE employee_id = 1;
SELECT * from  tasks;

-- select
select newTask from tasks;
-- where
select firstName from employees where id=1;
-- Between
select firstName from employees where id between 3 AND 5;

-- NOT
select firstName from employees where id not in(1,2);

-- wild card AND --LIKe
-- select all the names from employees table which consist of  a letter  o
select * from employees where firstName like '_o%';

-- using order by 
-- SORTING all the names and the names will be printed in the Ascending orer of character (A to Z)
select * from employees order by firstName;  -- by default as Ascendind

-- Order by Decending
select * from employees order by firstName DESC;




