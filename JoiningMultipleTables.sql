SELECT country_id, country_name,region_name  -- // here comes the columns that I want to retrieve
FROM countries c JOIN regions r  -- //  here comes the tables I want to get the data from
ON c.region_id = r.region_id;   --  //here comes the connection point to both table

select * from employees;
select * from departments;

create view departmentName as 
select first_name, last_name, department_name, city
from employees e inner JOIN departments d
on e.department_id= d.department_id;

--get me first_name,last_name and deparnment name,city for all employees;
select first_name,last_name,department_name,city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id=l.location_id;


--get me first_name,last_name and deparnment name,city,country_name for all employees;
select first_name, last_name, department_name, city, country_name
from employees e inner JOIN departments d
on e.department_id= d.department_id
join locations l 
on d.location_id=l.location_id
join countries c
on l.country_id=c.country_id
where first_name='Steven';

--find duplicate names in employess (how many times they appear)
select distinct first_name, count(*) from employees group by first_name having count(*)>1;

select e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.first_name as "manager_firstname",e2.last_name as " manager_lastname"
from employees e1 left join employees e2
ON e1.manager_id =e2.employee_id
order by e1.employee_id;