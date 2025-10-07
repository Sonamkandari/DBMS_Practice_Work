# SQL_AND_DBMS

---
# Lecture -1
---
# Basics
* **Databases**: A database is a container used to store data.
  ![Databases](https://github.com/user-attachments/assets/1b5a5f19-2b96-4579-a7ea-8b29845e1344)
* **SQL**: SQL (Structured Query Language) is used to communicate with databases.
* **DBMS**: A Database Management System is software used to manage data.
* **Server**: A server is a machine where a database resides.

---

# Database Types

* **RDBMS**: Relational Database Management System
  ![RDBMS](https://github.com/user-attachments/assets/5d36ef08-a8cb-4143-8663-2f94586ddd48)
* **Key-Value Database**
* **Column-Based Database**: An advanced version of a database optimized for analytical queries.
* **Graph Database**: Focuses on the relationships between objects and how to connect data points.
* **Document Database**: Data is stored as complete documents. The structure is flexible; the goal is to store everything in one document.

<img width="916" height="515" alt="image" src="https://github.com/user-attachments/assets/6dbe5733-4f0b-4418-a6a7-8c3cbc383428" />

---

## Relational Databases

* Microsoft SQL Server
* MySQL
* PostgreSQL

## Database Structure

* A server contains multiple databases.
* Databases contain schemas.
* Schemas contain tables and columns.

## Data Types

* Numeric Data Types
* Text Data Types
* Date and Time Data Types
  ![Data Types](https://github.com/user-attachments/assets/282c9bbb-ed05-4cf8-b77f-60cfd892e14c)

---
# Lecture 2
---
## Types of SQL Commands
 ### DDL commands (Data Defination language command)
 
* Note when at the begining your database is empty and now what have done here is you have defined something new in the database and you used some commands to write create  and alter something in the data base those commands are comes under the DDL commands
  <img width="572" height="455" alt="image" src="https://github.com/user-attachments/assets/8670a833-a1e7-4bf2-9eff-e4a50d76b770" />

### DML commands (Data Manipulation language  Commands)
*

### TCL Commands (Transmission Control language commands)
*
<img width="916" height="514" alt="image" src="https://github.com/user-attachments/assets/acd2f4bc-2bc5-4eef-8c0f-6259e0ab6e35" />

---
* why we  leaning SQL
  1. if you want to talk to the data you should use SQL
  2. High Demand of SQl (Data Analysis)
  3. Industry Standard
     <img width="787" height="516" alt="image" src="https://github.com/user-attachments/assets/ebade717-15fd-4cc7-960a-a766c0228faf" />
---

## Summary
<img width="956" height="528" alt="image" src="https://github.com/user-attachments/assets/33e4518b-6ac3-46dc-86ae-808cc7a64c9d" />

---
* learned about all the basics queries 
* select , where clause, having clause, order by , or Group by 
<img width="507" height="398" alt="image" src="https://github.com/user-attachments/assets/0c8d5dfa-02e3-46c3-b03a-d585f9a55f89" />

---
* SQL clause
* Having clause
* Filtered Aggregated Data
* having 
* filters Data After Aggregation
* having clause can be used only with Group by
* Distinct keyword helps you to remove duplicate from your data and each value appears only once 
---
## imp
### since we already have where clause to filter the data so why do we use having clause ?
* if you want to filter the data before the aggregation we use WHERE CLAUSE
* if you want to filter the data after the aggregation we use HAVING CLAUSE
<img width="666" height="216" alt="image" src="https://github.com/user-attachments/assets/fa433ace-ddd6-4a8d-82f9-b07c8bd42dfe" />

- ---
- -- Distinct keyword helps you to remove duplicate from your data
- -- each value appears only once 
- -- distict keyword acts like as a filter each value occurs only once
- select  distinct country from customers;
-  we should not unecessarily use the distinct keyword 
-  for example as we know that primary keys are already unique and distinct 
-  so we don't have to specifically use distinct keyword  at that column
---
* Top (Limit ) clause or keyword is used Restrict the Number of  Rows Returned
* In SQL, a clause is basically a part of a SQL statement that tells the database what to do.

<img width="551" height="555" alt="image" src="https://github.com/user-attachments/assets/97a4f75e-8eb8-434e-b527-27ec68640212" />

---
conclusion
<img width="642" height="404" alt="image" src="https://github.com/user-attachments/assets/3a443bfd-e30e-4bac-a37e-92821711f4ef" />
---
# SQL DML Commands |Inser, Update , & Delete |
- for example insert command can be used to insert new data inside a table in a database
# Manually Entry (Fisrt Method to insert Data)
<img width="626" height="246" alt="image" src="https://github.com/user-attachments/assets/a6c127a4-9ebf-4850-a780-5837cac905a1" />

- sysntax is:**Insert into table_name (Solumn1,column2,column3) values(value1,value2,value3)**
- **Note**: forxample if no columns are specified SQL expects values for all columns
- <img width="928" height="436" alt="image" src="https://github.com/user-attachments/assets/1754efe3-a994-4a80-a8f9-9e507e341d8f" />

# Inserting data using Another table (Another Method to insert Data)
- using a source table for inserting the data into a target table
- <img width="694" height="279" alt="image" src="https://github.com/user-attachments/assets/0f724c7c-48c5-46b9-919f-60099292f685" />

* SQL task copy data from 'Customers' table into 'persons'
* <img width="636" height="523" alt="image" src="https://github.com/user-attachments/assets/4afc75d5-a7e1-4f8f-b3d9-fb893ddb8ccd" />
* Modify (manipulate) your data
* Update table_name set column1=value1, column2= value2 where <condition>
* Delete commands
* <img width="638" height="335" alt="image" src="https://github.com/user-attachments/assets/0a0a7737-f802-4f0f-82ce-f6f855a68404" />

-- delete all data from tables persons
- if we want to delete everything (or all the data from the table ) we can use truncate command
- Truncate : it clears the whole table at once without checking or logging
- <img width="495" height="219" alt="image" src="https://github.com/user-attachments/assets/189fb180-562a-4099-a22b-e989dd7ce55a" />
---
<img width="904" height="445" alt="image" src="https://github.com/user-attachments/assets/b3324edd-c5cd-439c-bef3-ca693d316c62" />

---
# Comparison Operators
* -  equals = checks two values are equal
* - Not equals <>!= checks if two values are not equal
* - greater
* -  greater than or equals to operator
* - lesser than operator
* -  ess than or equals to operator
# Logical operator
* -  And operator : All condition must be true
* -  or operator : Atleast  one condition must be true aot of all the condition
* -  Not operator :reverse  operator it will excludes the matching values
# Range operator
* -  Between : check whether an values falls between a specific range or not
* -  Explicit comparisons clearly show that both boundries are included
# Membership Operator
* -  In Operator :  it gonna check if the value exixts in a list or not
* -   Not In
# Search operator
1) Like :we can use it to find or search for a pattern in text
   <img width="750" height="337" alt="image" src="https://github.com/user-attachments/assets/6684b7ec-ea19-4fa8-9e2e-08d96389810b" />

---
# Joins
<img width="945" height="506" alt="image" src="https://github.com/user-attachments/assets/3ea012a0-c79a-47dc-888f-6f659caacf0f" />

# what are joins
<img width="653" height="502" alt="image" src="https://github.com/user-attachments/assets/bf5ef8cf-b394-447b-8362-9b4aeadb69c6" />

# why we need SQL joins
### Recombine Data
- This means **merging or joining data** from multiple sources or tables into one combined dataset.
- <img width="908" height="461" alt="image" src="https://github.com/user-attachments/assets/7c57ce2c-068c-4228-a86c-283f367b32aa" /> 
- Example: Combining customer details from one table with their order history from another to get a full view of each customer.  

### Data Enrichment (Getting Extra Data)
- **Enhancing existing data** by adding extra information from external or internal sources.
-  <img width="881" height="439" alt="image" src="https://github.com/user-attachments/assets/d03a33de-1999-45f7-8979-6b1bdfa1bf90" />
- Example: Adding location, age group, or social media info to customer records to make the data more useful for analysis.  

### Check for Existence (Filtering)
- **Verifying or filtering data** to keep only the records that meet certain conditions.
- <img width="932" height="437" alt="image" src="https://github.com/user-attachments/assets/1739fc6c-6cf3-478e-8bda-0ff77f41aadf" />
- Example: Filtering out customers who don’t have an email address or checking if a product ID exists before processing it.
-  Summary
-  <img width="773" height="517" alt="image" src="https://github.com/user-attachments/assets/1570d949-ddff-4ad7-a21f-974c992e706c" />
### All the Types of joins
<img width="630" height="538" alt="image" src="https://github.com/user-attachments/assets/831849f2-4fe8-4a16-aaff-01629ce3091c" />

## Inner join' Return Only matching Rows From both tables
<img width="662" height="396" alt="image" src="https://github.com/user-attachments/assets/45c2d6b8-9bf3-4f6f-8188-d2cdac400431" />

--- how we implimented it
<img width="899" height="359" alt="image" src="https://github.com/user-attachments/assets/b962eadf-b076-410d-ba9d-c12e340f04d9" />
-** how does inner join work ?**
- In an INNER JOIN, each ID from the left table is compared with every ID in the right table. Only the rows with matching IDs in both tables are included in the output.
- we can use inner join either to combines data of multiple tables
- also we can use inner join only for filtering purposes
  ## Left Join
   - left   join will returns all the rows from left and only matching from right
   - Note here order of the data is very important we have always start with the correct table
  <img width="675" height="355" alt="image" src="https://github.com/user-attachments/assets/feea9fce-78de-4aad-91b7-e9a5b17b5371" />
## Right join
 - this is the totally opposite of the left join
 - It Return all the Rows from the right and only matching from left
   <img width="911" height="489" alt="image" src="https://github.com/user-attachments/assets/4187c0db-aead-42dc-867f-c707d0f95a3d" />
- **Note** : In place of right join, it is always preferred to use left join
- by changing the left and right tables
 ## Full join
 - Returns all rows from both tables
 - <img width="758" height="393" alt="image" src="https://github.com/user-attachments/assets/59ca29c2-86a9-45a7-b6d2-3a61f9ece73a" />

---
# Advance SQL  joins
- **Left Anti join**
- Returns row from left that has no match in right
- <img width="712" height="403" alt="image" src="https://github.com/user-attachments/assets/3046de1a-9977-48df-ba94-d0be516e70bc" />
  - we are getting the data from the left side where there are no match in the right side
  - - **syntax:** is you normally do the left join and then use the filter using the where clause

- **Right anti join**
- returns rows from right that has no match in left
<img width="628" height="355" alt="image" src="https://github.com/user-attachments/assets/6c34b641-f17c-4b52-8792-d4d53c0d5c07" />

- **Full Anti join**
- Return only rows that dont match in either tables
<img width="736" height="424" alt="image" src="https://github.com/user-attachments/assets/729076c2-8ab8-4bd8-b738-4be81c039bd5" />
---
 ## Note
- MySQL does not recognize the FULL JOIN keyword, unlike other database systems like PostgreSQL and SQL Server. When the MySQL parser encounters this syntax, it produces an error because it is an invalid command

# full anti join is used for checking -> (Check Existence)

- Get all customers along with their orders but only for customers who placed an order (without using IIner join)

## Cross join
- we tru to combine Every row from the left with Every row from right  All possible combinatitions

---
- summary
- <img width="727" height="360" alt="image" src="https://github.com/user-attachments/assets/bf70cbdb-32a0-4a3f-ba07-a5ca9292dce3" />
---
# multi join
## How to join multiple tables
<img width="736" height="351" alt="image" src="https://github.com/user-attachments/assets/04a9182f-3507-4280-b143-6157ba1b96ff" />

## Using SalesDB, Retrieve a list of all orders, along with the related customer, prduct and employee details




