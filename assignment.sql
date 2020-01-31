--1. List all the employees' first and last name with their salary in employees table
select first_name, last_name, salary from employees;
--2. how many employees have salary less than 5000?
select * from employees where salary<5000;
--3. how many employees have salary between 6000 and 7000?
select * from employees where salary BETWEEN 6000 and 7000;
--4. List all the different region_ids in countries table
select DISTINCT region_id from countries;
--5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
SELECT salary from employees where last_name='Grant' and first_name='Douglas';
--6. display the maximum salary in employees table
SELECT max(salary) from employees;
--7. display all informations of the employee who has the highest salary in employees table
SELECT * From employees where salary=(select max(salary) from employees);
--8. display the the second maximum salary from the employees table
select max(salary) from employees where salary < (select max(salary) from employees);
--9. display all informations of the employee who has the second highest salary
SELECT * from employees where salary=(select max(salary) from employees where salary < (select max(salary) from employees));
--10. display the the minimum salary in employees table
select min(salary) from employees;
--11. display all informations of the employee who has the minimum salary in employees table
select * from employees where salary=(select min(salary) from employees);
--12. display the second minimum salary from the employees table
select min(salary) from employees where salary>(select min(salary) from employees);
--13. display all informations of the employee who has the second minimum salary
select * from employees where salary=(select min(salary) from employees where salary>(select min(salary) from employees));
--14. display the average salary of the employees;
select round(avg(salary)) from employees;
--15. list all the employees who are making above the average salary;
select * from employees where salary > (select round(avg(salary)) from employees);
--16. list all the employees who are making less than the average salary
select * from employees where salary < (select round(avg(salary)) from employees);
--17. count the total numbers of the departments in departs table
select count(department_id) from departments;
--18. sort the start_date in ascending order in job_history's table
select * from job_history ORDER BY start_date ASC;
--19. sort the start_date in descending order in job_history's table
select * from job_history ORDER BY start_date DESC;
--20. list all the employees whose first name starts with 'A'
select * from employees where first_name like 'A%';
--21. list all the employees whose job_ID contains 'IT'
select * from employees where job_id like '%IT%';
--22. list all the employees whose department id in 50, 80, 100
select * from employees WHERE department_id in(50,80,100);


--Assignment 2
--1. list the initials of all the employees
select SUBSTR(first_name,0,1)||'.'||Substr(last_name,0,1) as "Initials", first_name, last_name from employees;
--2. list the full names of all employees ( fullname: Lastname FirstName)
select first_name||' '||last_name as "Full Name" from employees;
--3. who has the logest name in the employees table?
select max(length(first_name)) from employees;
--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
select * from departments where department_id in (90, 60, 100,130,120);
--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select Distinct * from departments where department_id not in (90, 60, 100,130,120);
--6. divide employees into groups by using thier job id
select job_id from employees GROUP BY job_id;
--6.1 display the maximum salaries in each groups
select job_id,max(salary) from employees GROUP BY job_id;
--6.2 display the minium salaries in each groups
select job_id,min(salary) from employees GROUP BY job_id;
--6.3 display the average salary of each group
select job_id,avg(salary) from employees GROUP BY job_id;
--6.4 how many employees are there in each group that have minimum salary of 5000 ?
select count(*),salary from employees GROUP BY salary having (salary>=5000);
--6.5 display the total budgests of each groups
select sum(salary) from employees GROUP BY salary;
--7. display employees' full email addresses and full names
select first_name||' '||last_name as "Full Name", email||'@gmail.com' as "Full Email" from employees ;
--(assume that the domain of the email is @gmail)
--8. display full addresses from locations table
select street_address||', '||city||', '||postal_code||' '||country_id as "Full Address" from locations;
--(full address: Street_Addtess,  CityName  ZipCode,  Country_id)