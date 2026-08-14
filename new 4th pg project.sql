-- SQL retail sales analysis 

-- create table

create table retail_sales(
transactions_id	int primary key,
sale_date date,	
sale_time time,
customer_id	int,
gender varchar(15),
age	int,
category varchar(15),	
quantity int,	
price_per_unit	float,
cogs float,
total_sale float
);

select * from retail_sales
limit 10; 

select count(*) 
from retail_sales;

-- data cleaning  

SELECT * FROM retail_sales
WHERE transactions_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE sale_time IS NULL;

SELECT * FROM retail_sales
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;

--delete null values

DELETE FROM retail_sales
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;

-- data exploration
-- How many sales we have?

select count(*) as total_sales
from retail_sales;

-- How many customers we have ?

select count(customer_id) as total_customers
from retail_sales;

-- How many unique customers we have ?

select count(distinct(customer_id)) as total_customers
from retail_sales;

select distinct(category) 
from retail_sales;

-- Data Analysis & Business Key Problems & Answers

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

select * from retail_sales
where sale_date='2022-11-05';


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022

SELECT * FROM retail_sales
WHERE category = 'Clothing'
AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
AND quantity >= 4;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select category,sum(total_sale) as total_sales
from retail_sales 
group by category
order by total_sales desc;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select category ,avg(age) as average_age 
from retail_sales 
where category='Beauty'
group by category;

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select * from retail_sales 
where total_sale>1000;

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select category,gender,count(transactions_id) as total_transactions
from retail_sales 
group by category,gender
order by category,gender;


-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

select year,month,avg_sale,ranking
from
(
select 
extract(year from sale_date) as year,
extract(month from sale_date) as month,
avg(total_sale) as avg_sale,
rank()over(partition by extract(year from sale_date) order by avg(total_sale) desc) as ranking
from retail_sales
group by 1,2 
) as new
where ranking=1;


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

select customer_id,sum(total_sale ) as total_sales from 
retail_sales
group by 1
order by 2 desc
limit 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select category ,count(distinct(customer_id)) as "unique customers" from
retail_sales
group by 1;

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


with hourly_sale as 
(select *,
case  
    when extract(hour from sale_time)<12 then 'morning'
	when extract(hour from sale_time) between 12 and 17 then 'afternoon'
	else 'evening'
	end as shift
	from retail_sales
	)
select shift,count(transactions_id) as num_of_orders from
hourly_sale
group by shift
order by num_of_orders desc ;




























































