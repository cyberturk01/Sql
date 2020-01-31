select distinct job_id from employees;

select avg(salary) from employees where job_id='IT_PROG';

select avg(salary) from employees where job_id='AC_ACCOUNT';

select * from employees;

select job_id, avg(salary) from employees GROUP BY job_id;

select job_id, count(*) from employees GROUP By job_id;

select job_id, avg(salary), count(*) from employees GROUP BY job_id having avg(salary)>5000;
--where comes before group by it makes first when condition before applying grouping
--having comes after group by as a new condition
select job_id, avg(salary), count(*) 
from employees 
where salary>5000 
GROUP BY job_id 
having avg(salary)>5000 
order by avg(salary) desc;
