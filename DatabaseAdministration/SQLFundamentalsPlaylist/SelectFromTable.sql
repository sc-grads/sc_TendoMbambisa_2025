--Select followed by the columns you want from the table
--* means all columns in the table, first example
--[] allow you to name it differently see second example
--aliasing 
select * from sales.customers;

select first_name as [First Name] from sales.customers;