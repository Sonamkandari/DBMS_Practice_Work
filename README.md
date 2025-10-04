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
* 
