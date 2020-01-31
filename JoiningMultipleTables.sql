SELECT country_id, country_name,region_name  -- // here comes the columns that I want to retrieve
FROM countries c JOIN regions r  -- //  here comes the tables I want to get the data from
ON c.region_id = r.region_id;   --  //here comes the connection point to both table

select * from employees;
select * from departments;

create view departmentName as 
select first_name, last_name, department_name, city
from employees e inner JOIN departments d
on e.department_id= d.department_id;

select first_name, last_name, department_name, city, country_name
from employees e inner JOIN departments d
on e.department_id= d.department_id
join locations l 
on d.location_id=l.location_id
join countries c
on l.country_id=c.country_id;

