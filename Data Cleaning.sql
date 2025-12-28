select * from retail_sales;

create table retail_sales2
like retail_sales;

select * from retail_sales2;

insert into retail_sales2
select * from retail_sales;


alter table retail_sales2
change ï»¿transactions_id trans_id int;

alter table retail_sales2
change quantiy quantity int;

select distinct gender from retail_sales2
order by 1;

update retail_sales2
set gender = 'Female' 
where gender like 'F%';

update retail_sales2
set gender = 'Male'
where gender like 'M%';

select distinct category from retail_sales2
order by 1;

update retail_sales2
set category = 
case 
  when category like 'Bea%' then 'Beauty'
  when category like 'Clo%' then 'Clothing'
  when category like 'Elect%' then 'Electronics'
end;
  
select distinct sale_date from retail_sales2
order by 1;

select sale_date,
str_to_date(sale_date, '%m/%d/%Y')
from retail_sales2;

update retail_sales2
set sale_date = str_to_date(sale_date, '%m/%d/%Y');

alter table retail_sales2
modify column sale_date date;

select sale_time,
str_to_date(sale_time, '%H:%i:%s')
from retail_sales2;

update retail_sales2
set sale_time = str_to_date(sale_time, '%H:%i:%s');

alter table retail_sales2
modify column sale_time time;

select * from retail_sales2;










