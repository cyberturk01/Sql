select * from countries;

select * from regions;

create view joinsexample as 
select country_id, country_name, region_name 
from countries c inner join  regions r
on c.region_id= r.region_id;