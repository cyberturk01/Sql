select * from developers
Union -- it removes the duplicate if they are totally same with other columns
select * from testers;

select names from developers
Union all -- it shows all
select names from testers;

select names from developers
minus -- gets all sames and removes not same
select names from testers;

select names from developers
INTERSECT -- gets only intersected value from two tables
select names from testers;