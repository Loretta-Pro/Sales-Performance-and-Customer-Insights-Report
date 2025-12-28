select * from retail_sales2;

select 
 count(case when gender = 'Male' then gender end) as male_count,
 count(case when gender = 'Female' then gender end) as female_count
from retail_sales2;

select category,
 count(case when gender = 'Male' then 1 end) as male_count,
 count(case when gender = 'Female' then 1 end) as female_count
from retail_sales2
group by category;

select max(age), min(age) from retail_sales2;

select category,
 count(case when age <= 29 then 1 end) as Youth,
 count(case when age <= 40 then 1 end) as Adult,
 count(case when age <= 51 then 1 end) as Middle_age,
 count(case when age > 51 then 1 end) as Elderly
 from retail_sales2
 group by category;
 

select distinct(category), count(trans_id), sum(total_sale), avg(total_sale)
from retail_sales2
group by category order by 4 desc;


select min(quantity), max(quantity)
from retail_sales2;

select quantity, count(trans_id), sum(total_sale)
from retail_sales2
group by quantity order by 1 desc;

SELECT customer_id, COUNT(trans_id) AS repeat_purchases 
FROM retail_sales2
GROUP BY customer_id 
HAVING COUNT(trans_id) > 1
order by 2 desc limit 10;

select 
 count(*) AS repeat_customers
 from
	(SELECT customer_id 
	FROM retail_sales2
	GROUP BY customer_id
	HAVING COUNT(trans_id) > 1) repeat_customers;
    
   select 
 count(case when gender = 'Male' then 1 end) as male_repeat_customers,
 count(case when gender = 'Female' then 1 end) as female_repeat_customers
 from
	(SELECT customer_id, gender
	FROM retail_sales2
	GROUP BY customer_id, gender
	HAVING COUNT(trans_id) > 1) repeat_purchases; 
    
 SELECT
    SUM(CASE WHEN gender = 'Male' THEN purchase_count - 1 END) AS Male_Repeat_Transactions,
    SUM(CASE WHEN gender = 'Female' THEN purchase_count - 1 END) AS Female_Repeat_Transactions
FROM (
    SELECT customer_id, gender, COUNT(trans_id) AS purchase_count
    FROM retail_sales2
    GROUP BY customer_id, gender
    HAVING COUNT(trans_id) > 1
) a;
   


select min(sale_date), max(sale_date)
from retail_sales2;

select substring(sale_date,1,7) as `month`, count(trans_id) as transactions, sum(total_sale) as TotalSales
from retail_sales2
group by `month`
order by 2 desc;

select year(sale_date) as `year`, monthname(sale_date) as `month`, count(trans_id) as transactions, sum(total_sale) as TotalSales
from retail_sales2
where month(sale_date) in (9,10,11,12)
group by year(sale_date), month(sale_date), monthname(sale_date)
order by `year`, month(sale_date);

select substring(sale_date,1,7) as `month`, category, count(trans_id) as transactions, sum(total_sale) as TotalSales
from retail_sales2
where substring(sale_date,1,7) like '%10'
group by `month`, category
order by 1 asc;

select substring(sale_date,1,7) as `month`, category, count(trans_id) as transactions, sum(total_sale) as TotalSales
from retail_sales2
where substring(sale_date,1,7) like '%11'
group by `month`, category
order by 1 asc;

select hour(sale_time) as hour_of_day
from retail_sales2;

select hour(sale_time) as hour_of_day, count(trans_id) as transactions, sum(total_sale) as TotalSales
from retail_sales2
group by hour(sale_time)
order by 1 asc;





