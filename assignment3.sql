--1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id, avg(salary) from employees where job_id In('IT_PROG', 'SA_REP','FI_ACCOUNT','AD_VP') 
GROUP BY job_id;
--2. Show all records whose last name contains 2 lowercase 'a's
select * from employees where last_name like '%a%%a%';
--3. Display max salary  for each department
select d.department_name,d.department_id, max(salary) from employees e inner Join departments d
on e.department_id=d.department_id GROUP BY d.department_id, e.salary, d.department_name order by MAX(salary);
--4. Display total salary for each department except department_id 50, and where total salary >30000
select d.department_name,d.department_id,sum(salary) from employees e inner join departments d
on e.department_id=d.department_id where d.department_id not in (50)
GROUP BY d.department_name,d.department_id HAVING sum(salary)>30000 ;
--5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
select first_name||' '||last_name as fullname, hire_date from employees where hire_date>='1-JAN-2000' and hire_date<='3-SEP-2007';
--6. Display country_id, country name, region id, region name from hr database
select c.country_id, c.country_name,r.region_id, r.region_name from countries c join regions r
on c.region_id=r.region_id ;
--7. Display All cities, country names from hr database
select l.city,c.country_name from locations l join countries c
on l.country_id=c.country_id;
--8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.
select e.first_name,e.last_name,d.department_id, d.department_name from employees e join departments d
on e.department_id=d.department_id where d.department_id in(80,40);
--9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select e.first_name, e.last_name, d.department_id 
from employees e right join departments d
on e.department_id=d.department_id ;
--10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select e.first_name,e.last_name, e.department_id, d.department_name from employees e full join departments d
on e.department_id=d.department_id;