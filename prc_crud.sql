use classicmodel;
select * from customers;
select customernumber, contactlastname, contactfirstname,
phone, city
from customers;

select customernumber, contactlastname, contactfirstname, phone, city
from customers
where contactfirstname = 'Peter' and city = 'Melbourne';

select customernumber, contactlastname, contactfirstname, phone, city
from customers
where customernumber between 103 and 125;

select customernumber, contactlastname, contactfirstname, phone, city
from customers
where country = 'USA' or country = 'France';

select customernumber, contactlastname, contactfirstname, phone, city
from customers
order by contactfirstname asc;

select customernumber, contactlastname, contactfirstname, phone, city
from customers
order by contactfirstname desc limit 10;

select count(country) as 'So khach hang song o France'
from customers
where city = 'France';

insert into customers ( customerNumber,customerName,contactLastName, contactFirstName, phone, addressLine1, city, country) 
values (500,'AgileLead', 'Lan', 'Tran', '0978822683', 'Ham Nghi', 'Ha Noi', 'Viet Nam' );

update customers
set customerName = 'Baane Mini Imports'
where customerNumber = 103;

set sql_safe_updates = 0;
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;

delete from customers
where city = 'Nantes';