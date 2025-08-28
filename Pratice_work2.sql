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

-- Show first name, last name, and the full province name of each patient.
select first_name,last_name, province_name
from patients
join province_names
on province_names.province_id=patients.province_id;

-- Show how many patients have a birth_date with 2010 as the birth year.
select count(patient_id)
from patients
where year(bith_date)=2010;

select count(*) as total_patients
from patients 
where year(birth_date)=2010;

select * 
from patients 
where year(birth_date)=2010;


-- Show the first_name, last_name, and height of the patient with the greatest height.
-- work as nested loops
select first_name, last_name ,height
from patients 
where height=(
  /*this will return max height*/
  select max(height)
  from patients
)
-- 28-08-2025
-- Show the total number of admissions

SELECT count(*)
from admissions

or 

SELECT count(*)
from admissions

-- Show all the columns from admissions where the patient was admitted and discharged on the same day.
select * 
from admissions
where discharge_date=admission_date;

-- Show the patient id and the total number of admissions for patient_id 579.
select patient_id,count(*) as total_admissions
from admissions where patient_id='579';




