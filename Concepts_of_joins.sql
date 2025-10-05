USE MyDatabase;
-- creating a data base by my own 
create table person(
person_id int primary key,
person_name varchar(50),
birth_date date,
phone_no varchar(20)

);

drop table person;

desc person;
-- inserting the values in a data base 
insert into person (person_id,person_name,birth_date,phone_no) values
(1,'Rohan','2003-12-03',9378263556),
(2,'mohan','2004-02-04',3489074543),
(3,'Rishita','2003-04-06',87964536),
(4,'Shubham','2006-04-07',78964637);

desc person;

select * from person;
-- Inserting Data From 'customer' into 'persons'
insert into person(person_id,person_name,birth_date,phone_no)
select id ,
 first_name ,
 null,
 'Unknown'
 from customers;
 select * from person;
 -- /* change the score of customer 6 to 0*/
update customers set score=0 
where id = 4;
select * from customers;

-- Task 2 chage the score of customer with id to  0 and update the country to 'Uk'
update customers set score =5 , country ='UK'
where id =3;
select * from customers;

-- update all the customers with cull score by setting their score to 0
update customers 
set score= 0
where score is null;
select * from customers;

-- SQL task  Delete all customers with an id greater than 2

delete  from customers where id>2;
select * from customers;
drop table customers;


-- Delete all the data from table persons
truncate table person;
select * from person;

-- Equals to operators 
select * from customers where country ='Germany';
-- Not equals to  operator
select * from customers where country !='Germany';
-- Greater than operator
select * from customers where score >500;
--  greater than equal to
select * from customers where score >= 500;
-- lesser than 500
select * from customers where score <= 500;

-- Logical operator
select  *
 from customers
 where country ='USA' And score >500;
 
 -- or operator 
 select  *
 from customers
 where country ='USA' or score >500;
 --  Not operator
 
 select * from customers 
 where Not score < 500;
 
 -- Range operator
 select  * from customers 
 where score between 100 and 500;
 
 -- retrieve all customers from  either germany or USA
 select * from customers 
 where country='Germany' or country ='USA';
 
 select * from customers
 where country in('Germany', 'USA');
 
-- Concepts of joins
-- Get all customers along with their orders but only for customers who have placed an order
select c.id, c.first_name, c.country,c.score, o.order_date, o.sales from customers c
inner join orders o
on c.id=o.customer_id;

-- Get all customers along with their orders, including those without orders. 
select * from  customers c
left join orders  o
on c.id=o.customer_id;

-- Get all the customers along with their orders including orders without matching customers
select * from customers  c
right join orders o
on o.customer_id=c.id;

-- Get all customers along with their orders including orders without matching customers 
select * from orders o
left join customers c
on c.id=o.customer_id;

--  implimenting full join -- get all customers and all orders, even if there's no match
select * from customers as c
FULL join orders o
on c.id=o.customer_id;


