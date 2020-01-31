select first_name, last_name
from employees
where salary=(select max(salary) from employees);



---ONEMLI second highest salary
select * from employees where salary=(select max(salary) from employees
where salary<(select max(salary) from employees));

select * from employees
where rownum<=100;

select * from employees
order by salary desc;

--order all employes based on salary high to low and display only first 5 row
select * from 
(select * from employees order by salary desc)
where rownum<=10;