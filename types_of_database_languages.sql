CREATE DATABASE school;
use school;

-- here we are creating a table students
create table students(
student_id INT primary key,
name varchar(50),
age int
);

-- describe table view the  structure of Students table
desc students;

-- Insert data into a table
insert into students(student_id,name,age) values
(1,'sonam',22),
(2,'Rohan',13),
(4,'rishita',19),
(5,'sayam',57),
(9,'arti',23),
(10,'sayam',89),
(11,'deepak',54);


select * from Students;

-- alter table - add column
-- here i had added a new column to our existing table
Alter table Students add grade varchar(2);

-- adding a another column to our existing table 
alter table Students add city varchar(3);

--  this select statement is use to retrieve the all records from student table
select * from Students;

-- update Data with the new columns
update students set city ='dehradun' where student_id=1;
UPDATE students SET city = 'D' WHERE student_id = 2;
update students set city ='Delhi' where student_id=3;

update students set grade='A' where student_id= 3;
update students set grade='B' where student_id=4;

select * from students;
update students set city='uk'where student_id=5;
update students set city='bk'where student_id=6;
update students set city='Am'where student_id=7;
update students set city='Pun'where student_id=9;
update students set grade='c' where student_id=5;
update students set grade='d' where student_id=6;
select * from students;



-- Rename table
Alter table students Rename to classMembers;

select * from classMembers;

GRANT SELECT, INSERT ON ClassMembers TO studentUser;

TRUNCATE TABLE ClassMembers;
DROP TABLE ClassMembers;

select * from students;





