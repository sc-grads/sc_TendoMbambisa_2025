--Subqueries and aggregation questions
--Find the most expensive product from the production.products table.
select product_name,list_price 
from production.products
where list_price = (select max(list_price) 
as highest_price from production.products);

--Identify customers who have spent more than $1000 across all their orders.
SELECT customer_id, first_name, last_name, email
FROM sales.customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM sales.orders o
    JOIN sales.order_items oi ON o.order_id = oi.order_id
    GROUP BY o.customer_id
    HAVING SUM(oi.quantity * oi.list_price * (1 - oi.discount)) > 1000
);



