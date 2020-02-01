--startsWith= Gok%
--endsWith= %han
--contains= %kha%
select * FROM employees
where first_name like 'C%'; -- like key word for to select first elements on the query

select * FROM employees
where first_name like 'D__'; --one underscore represent one letter or charachter to call 

select * FROM employees
where first_name like '__z__';

--how can we rename the column when we displayed
select first_name as "Given Name", last_name as "surname"
from employees;

--Text functions, string manipulations in sql
select * from employees;

select first_name||' '||last_name as "Full name"
from employees;

select email||'@gmail.com' as "Full Email" 
from employees;

select lower(email||'@gmail.com') as "Full Email" 
from employees;

select upper(email||'@gmail.com') as "Full Email" 
from employees;

select first_name||' '||last_name as "Full Email", length(first_name||' '||last_name)  
from employees;

CREATE VIEW EmailList as
select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "Initials",
first_name||' '||last_name as "Full_name", lower(email||'@gmail.com') as "email" 
from employees;

select * from emaillist;
select "email" from emaillist;
--select "email" from emaillist;

CREATE VIEW SDET as -- create new table
SELECT first_name||' '||last_name as "Full_name", lower(email ||'@gmail.com') as "full_email"
FROM employees
WHERE job_id = 'IT_PROG';

select * from sdet; -- see the new created table

drop view SDET; --delete
