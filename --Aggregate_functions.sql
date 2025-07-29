-- 1. Create the database
CREATE DATABASE worker_db;

-- 2. Use the database
USE worker_db;

-- 3. Create the table
CREATE TABLE worker (
    worker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    joining_date DATE NOT NULL,
    department varchar(50) not null
);
INSERT INTO worker (first_name, last_name, salary, joining_date,department) VALUES
('Sonam', 'Kandari', 120000, '2022-01-15','HR'),
('Rishita', 'Rawat', 95000, '2023-03-01','HR'),
('Shubham', 'Gairola', 110000, '2021-08-20','ADMIN'),
('Harjeet', 'Rawat', 105000, '2020-05-10','ADMIN'),
('Pranjal', 'Sharma', 90000, '2024-02-28','ENGINEER'),
('Rohan','rawat',10000,'2023-03-01','HR'),
('preet','negi',90000,'2023-03-01','ADMIN'),
('Nakul','rawat',80000,'2020-05-10','DOC'),
('sakshi','kandari',40000,'2020-05-10','DOC'),
('saksham','gairola',78000,'2023-03-01','TEACHER'),
('kuldeep','rawat',89000,'2023-03-01','TEACHER');

-- Applying agregate functions 
-- Group by
select department ,count(department) from worker group by department; -- this will generate the output as all the uniqueue departments from the worker table

-- average salary as per the department
select department ,avg(salary) from worker group by department; -- this will generate all the average salaries as per the department

-- Min
select salary ,avg(salary) from worker group by salary;
select department,avg(salary) from worker group by department;
-- this will generate minimum salary from every department
select department,min(salary) from worker group by department;

-- max
 -- this will genrate maximum salary from every department
select department,max(salary) from worker group by department;

