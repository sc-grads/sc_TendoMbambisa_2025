select product_name,brand_id,category_id,model_year
,list_price from production.products
--Retrieve all products from the production.products table, including product name, brand ID, category ID, model year, and list price.

--Find all customers from the sales.customers table who live in the state of "CA".
select * from sales.customers
where state='CA';

--Get the total number of products available in each category using the GROUP BY clause.
select category_id, count(*) as total_products 
from Production.products
group by category_id;

--Show all orders that were completed (order_status = 4) after January 1, 2023.
select order_id,shipped_date from sales.orders
where order_status=4 and shipped_date > '2018-01-01';