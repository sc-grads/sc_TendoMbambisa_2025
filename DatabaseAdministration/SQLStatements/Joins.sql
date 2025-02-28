--List all products along with their category names and brand names.
select p.product_id,p.product_name,c.category_name,b.brand_name,p.list_price
from production.products p
join 
production.categories c on p.category_id=c.category_id
join
production.brands b on p.brand_id=b.brand_id;


--Retrieve all orders, including customer names, store names, and staff names involved in the transaction.
select o.order_id,o.order_date,c.first_name as customer_name,s.store_name,st.first_name as staff_name
from sales.orders o inner join
sales.customers c on o.customer_id=c.customer_id
inner join 
sales.staffs st on o.staff_id= st.staff_id
inner join
sales.stores s on st.store_id=s.store_id

--Get the list of customers who have placed at least one order.
select c.customer_id,c.first_name,c.last_name, count(o.order_id) as number_of_orders
from sales.customers c
left join sales.orders o on c.customer_id=o.customer_id
group by c.customer_id,c.first_name,c.last_name
having COUNT(o.order_id) >1;

--Find all products along with the quantity available in each store.
select p.product_name,st.quantity
from production.stocks st
right join production.products p on  st.product_id=p.product_id;

--Retrieve a list of staff members who do not manage any other staff.
SELECT s1.staff_id, s1.first_name, s1.last_name, s1.email, s1.store_id
FROM sales.staffs s1
LEFT JOIN sales.staffs s2 ON s1.staff_id = s2.manager_id
WHERE s2.staff_id IS NULL;



