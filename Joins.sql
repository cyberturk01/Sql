SELECT first_name,last_name FROM customer;
select address,phone FROM address;
select first_name,last_name,address,phone
from customer join address
on customer.address_id=address.address_id;

--table alieas 
select first_name ,last_name,address,phone
from customer c inner join address a
on c.address_id=a.address_id;

--left outer join
select first_name,last_name,address,phone
from customer c left outer join address a
on c.address_id=a.address_id;
SELECT customer_id, first_name, last_name, address, phone
FROM customer LEFT OUTER JOIN address
ON customer.address_id = address.address_id
WHERE address.address_id IS NULL;

--right outer join
--if you have same column name from two table, you need to specifcy table name first then column name.
SELECT customer_id,first_name,c.address_id,a.address_id,last_name,address,phone
from customer c right outer join address a
on c.address_id = a.address_id;

--full outer join
SELECT * FROM customer FULL OUTER JOIN address
ON customer.address_id = address.address_id;

--full outer join
SELECT * FROM customer c FULL OUTER JOIN address a
ON c.address_id = a.address_id
where c.address_id is null or a.address_id is null;
