--  gave all first name and last name where wight of betients is between 100 to 120
select first_name , last_name
from patients 
where weight >=100 and weight <=120;

select first_name , last_name 
from patients 
where weight  between 100 and 120  


--  update allergies column as 'NKA ' where allergies are null 

UPDATE patients
set allergies ='NKA'
where allergies is null;

-- Show first name and last name concatinated into one column to show their full name.
  -- here we can use a CONCAT in build function for adding values of two columns in a single columns
SELECT CONCAT
(first_name,' ',last_name) 
from patients;
