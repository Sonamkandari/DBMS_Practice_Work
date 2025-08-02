create database project_Work;
use project_Work;
CREATE TABLE project (
  id INT PRIMARY KEY,
  emailID INT,
  name VARCHAR(50),
  startdate DATE,
  clientId INT
);

INSERT INTO project (id, emailID, name, startdate, clientId) VALUES
  (1, 1, 'Rahul', '2025-07-30', 5),
  (2, 2, 'Mukul', '2025-06-30', 3),
  (3, 3, 'Sayam', '2025-06-10', 4),
  (4, 4, 'Ram', '2025-05-20', 3),
  (5, 5, 'Rohan', '2025-03-29', 1);

CREATE TABLE employee (
  id INT PRIMARY KEY,
  fname VARCHAR(50),
  lname VARCHAR(50),
  age INT,
  email VARCHAR(50),
  PhoneNo VARCHAR(20),
  city VARCHAR(30)
);

INSERT INTO employee (id, fname, lname, age, email, PhoneNo, city) VALUES
  (1, 'Sonam', 'Kandari', 12, 'sonam@123', '6789867', 'Meerut'),
  (2, 'Amit', 'Sharma', 30, 'amit@xyz.com', '9876543210', 'Delhi'),
  (3, 'Priya', 'Verma', 28, 'priya@abc.com', '9123456789', 'Mumbai'),
  (4, 'Ravi', 'Kumar', 35, 'ravi@def.com', '9988776655', 'Bangalore'),
  (5, 'Anita', 'Singh', 26, 'anita@ghi.com', '9090909090', 'Chennai');


CREATE TABLE myClient (
  id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(40),
  age INT,
  emailID VARCHAR(50),
  PhoneNo VARCHAR(20),
  city VARCHAR(50),
  empID INT
);

INSERT INTO myClient (id, first_name, last_name, age, emailID, PhoneNo, city, empID) VALUES
  (1, 'Ramesh', 'Gupta', 40, 'ramesh@client.com', '1234567890', 'Delhi', 2),
  (2, 'Suresh', 'Mehta', 45, 'suresh@client.com', '2345678901', 'Mumbai', 3),
  (3, 'Geeta', 'Kapoor', 38, 'geeta@client.com', '3456789012', 'Kolkata', 4),
  (4, 'Anil', 'Bansal', 50, 'anil@client.com', '4567890123', 'Chennai', 5),
  (5, 'Sunita', 'Desai', 35, 'sunita@client.com', '5678901234', 'Bangalore', 1);


-- Inner join
-- Enlist all the employees ID's names along with the project allocated to them

select e.id, e.fname, e.lname, p.id, p.name from employee as e
INNER JOIN project as p on e.id=p.id;

-- Fetch  out all the employee ID's and their contact detail who have been working 
-- from jaipur with the clientd name working in Hyderabaad

-- select e.id,e.emailID,e.PhoneNo, c.first_name,c.last_name from Emplyoee as e 
-- Inner join myClient as c  ON  e.id= c.id where e.city='dehradun' AND c.city='Delhi';

SELECT
  e.id              AS employee_id,
  e.email           AS employee_email,
  e.PhoneNo         AS employee_phone,
  c.first_name      AS client_first_name,
  c.last_name       AS client_last_name
FROM employee AS e
INNER JOIN myClient AS c
  ON e.id = c.empID
WHERE e.city = 'Dehradun'
  AND c.city = 'Delhi';


-- LEFT JOIN
-- Frtch out each project allocated to each employee

-- 1. List all employees with their corresponding project names (if any).
-- (Left Join: some employees may not have a project)
SELECT e.id, e.fname, e.lname, p.name AS project_name
FROM employee e
LEFT JOIN project p ON e.id = p.id;

-- Fetch all project names and the first and last names of their clients.

SELECT p.name AS project_name, c.first_name, c.last_name
FROM project p
INNER JOIN myClient c ON p.clientId = c.id;

-- . Show all combinations of employees and clients from the same city.

SELECT e.fname, e.lname, c.first_name, c.last_name, e.city
FROM employee e
INNER JOIN myClient c ON e.city = c.city;

-- Show all combinations of employees and clients from the same city

SELECT e.fname , e.lname, c.first_name, c.last_name, e.city 
from employee e 
INNER JOIN myClient c ON e.city=c.city;

-- List all employees who are not assigned to any project 
SELECT  e.id,e.fname, e.lname 
from employee  e
LEFT JOIN project p on e.id=p.id
where p.id is null;

-- List all the clients who have not been assigned as a client in any project 
select c.id, c.first_name, c.last_name
from myclient c
LEFT JOIN project p ON c.id =p.clientId
where p.id is null;

-- union Questions

-- Display the names of all the employees and all clients 
-- returned all the rows of first name columns from both the tables 
SELECT fname AS first_name FROM employee
UNION
SELECT first_name FROM myClient;

-- List the cities where either employees or clients are located (uniques cities)
SELECT city FROM employee
UNION
SELECT city FROM myClient;

--  Fetch all email IDs from employee and client tables.
SELECT email AS emailID FROM employee
UNION
SELECT emailID FROM myClient;

--  Show all employee IDs and client IDs as a single list.
SELECT id FROM employee
UNION
SELECT id FROM myClient;

--  List all phone numbers of both employees and clients.
SELECT PhoneNo FROM employee
UNION
SELECT PhoneNo FROM myClient;



