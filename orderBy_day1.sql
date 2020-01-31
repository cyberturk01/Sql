select *
from employees
WHERE job_id='IT_PROG' or job_id='SA_REP';

select count(*) -- how many solves question with COUNT
from employees
WHERE job_id='IT_PROG' or job_id='SA_REP';

select count(*)
from employees
where salary>10000;

select count(distinct first_name)
from employees;

select * FROM employees
Order by salary desc;

select * FROM employees
Order by first_name ASC;

select * FROM employees
Where salary>5 
order by salary desc;

select * FROM employees
where first_name like 'C%'; -- like key word for to select first elements on the query

select * FROM employees
where first_name like 'D__'; --one underscore represent one letter or charachter to call 

select * FROM employees
where first_name like '__z__';

select min(salary) FROM employees;

select max(salary) FROM employees;

select avg(salary) FROM employees;

select round(avg(salary),3) FROM employees;

select sum(salary) FROM employees;

select min(salary),max(salary),round(avg(salary),3), sum(salary) FROM employees;