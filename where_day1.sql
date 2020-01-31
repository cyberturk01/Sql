SELECT phone_number , last_name, first_name 
FROM employees
WHERE first_name ='David' AND last_name='Lee';

select *
from employees
WHERE salary>12000;

select email
FROM employees
where salary<4000;

select *
from employees
where job_id='IT_PROG' or job_id='SA_REP';

select first_name, last_name, salary
from employees
where salary>=5000 and salary<=10000;

select first_name, last_name, salary
from employees
where salary BETWEEN 5000 and 10000;

select * from employees 
where employee_id between 130 and 170;

select *
from employees
where employee_id= 135 or employee_id= 176 or employee_id=154 or employee_id=101;


select *
from employees
WHERE employee_id IN(132,176,154,101); -- all values has in employee_id

select city
from locations
where country_id in('US', 'IT', 'UK');
