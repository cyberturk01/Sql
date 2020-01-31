/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(Optional),
        colName3 DataType Constraints,
        ...
    );
*/

create table ScrumTeam(
    emp_id INTEGER PRIMARY Key,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from scrumteam;

/*
INSERT INTO tableName(column1, column2,..)
Values(value1, value2,...);
*/

insert into scrumteam(emp_id, FirstName, LastName,JobTitle) values(1,'gokhan', 'yigit', 'certified Tester');
insert into scrumteam values(2, 'hale', 'yigit', 'cocuk');
insert into scrumteam values(3, 'Nuran', 'yigit', 'ev hanimi');
insert into scrumteam values(4, 'Zeynep Vildan', 'yigit', 'cocuk');

select * from scrumteam;

/*-- how to update
UPDATE table_name
SET column1= value1,
column2=value2, ..
Where condition
*/

update scrumteam set jobtitle='Ogrenci' where emp_id='4' and firstname='Zeynep Vildan';
select * from scrumteam;

/*-- how to delete
DELETE From table_name
Where condition
*/

delete from scrumteam where emp_id=1;
select * from scrumteam;

update scrumteam set salary='1000' where firstname='Nuran';
select * from scrumteam;

update scrumteam set salary='6000';
select * from scrumteam;


--changing data structure
--ALter Table table_name action;
--adding new column syntax

alter table scrumteam add salary Integer;
select * from scrumteam;

--rename column
alter table scrumteam rename column salary to annual_salary;
select * from scrumteam;

--drop the column
alter table scrumteam drop column annual_salary;
select * from scrumteam;

--how to change table name?
alter table scrumteam rename to agileteam;
select * from agileteam;