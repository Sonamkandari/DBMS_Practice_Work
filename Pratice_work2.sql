select first_name , last_name
from patients 
where weight >=100 and weight <=120;


--  update allergies column as 'NKA ' where allergies are null 

UPDATE patients
set allergies ='NKA'
where allergies is null;
