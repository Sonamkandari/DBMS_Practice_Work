USE MyDatabase;
-- Get all customers who haven't place any order 
-- so this query will return all the customers who have not placed any orders 
select * from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is null;

-- right anti join implimentation
-- get all orders without matching customers

select *
from customers as c
right join orders as o
on c.id = o.customer_id
where c.id is null;

-- Get all orders without matching customers 
select * 
from orders as o
left join customers as c
on o.customer_id=c.id
where c.id is null;

-- 
-- Full anti joins
select * from 
orders as o
Full join customers as c
c.id=o.customer_id


