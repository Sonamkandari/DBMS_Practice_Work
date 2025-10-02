
DROP DATABASE IF EXISTS MyDatabase;
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- ======================================================
-- Table: customers
-- ======================================================
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT NOT NULL,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT,
    PRIMARY KEY (id)
);

-- Insert customers data
INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria', 'Germany', 350),
    (2, ' John', 'USA', 900),
    (3, 'Georg', 'UK', 750),
    (4, 'Martin', 'Germany', 500),
    (5, 'Peter', 'USA', 0);


DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    sales INT,
    PRIMARY KEY (order_id)
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);
    
 --  we can see all the rows and columns of the sql database
select * from customers;
-- retrieve all the Data 
select * from orders;
-- retrive some specific columns from the table instead of retreaving all the columns
select 
	 first_name,
	 country,
	 score 
 from customers ;
 
 -- find the total score for each country
-- here we grouped the simmilar items together from a particular column and apply aggregate functions then we can not apply group by function without aggregate functions
select country,
-- since we hadn't given any name to the column which will have the total score of each country
-- there for we had used ALIAS (AS) TO GIVE the new name to that particular column
sum(score) as combined_score
from customers 
group by country;
-- which ever column you want either add it into the group by or may be into the aggregate function

-- Next question
-- find the total score and total number of customers for each country

select country,
sum(score) as total_score ,
count(id) as total_customers
from customers
group by country ;

-- SQL clause 
-- Having clause 
-- Filtered Aggregated Data
-- Having 
-- filters Data After Aggregation
-- having clause can be used only with Group by
-- * having clause work like a filter 
-- * since we already have where clause to filter the data so why do we use having clause
-- if you want to filter the data before the aggregation we use WHERE CLAUSE
-- if you want to filter the data after the aggregation we use HAVING CLAUSE

-- example
select country,
 sum(score)
 from customers 
 -- filter codition 
 where score>400
 group by country
 -- having filter
 having sum(score)>800;



-- Question 
select country,
avg (score) as Average_score
from customers
-- use where clause
where score!=0
group by country
having avg(score)>430;

-- Distinct keyword helps you to remove duplicate from your data
-- each value appears only once 
-- distict keyword acts like as a filter each value occurs only once
select  distinct country from customers;
-- we should not unecessorly use the distinct keyword 
-- for example as we know that primary keys are already unique and distinct 
-- so we don't have to specifically use distinct keyword  at that column

-- * Top (Limit ) clause or keyword is used Restrict the Number of  Rows Returned
-- *In SQL, a clause is basically a part of a SQL statement that tells the database what to do.


select id,score,first_name
from  customers limit 3;

-- Question 
-- Retrieve the top 3 Customers with the highest Scores
select * from customers 
order by  score desc limit 3;

select score from customers
order by score desc limit 2;

-- retrieve the lowest 2 Customers based on the scores
select * from customers 
order by score asc limit 2;


-- retrieve the two most Recent order
select * from orders
-- the latest one date 
order by order_Date desc limit 1; 




