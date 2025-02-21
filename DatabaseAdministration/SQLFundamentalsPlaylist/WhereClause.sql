---Where clause is filtering like a search engine, trying to find certain type of data
--	Where [column]{logical operations} {value}
--AND comes before OR and if its not eveluating correctly put ()
--when searching for dates just use date='1/11/2022'

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE state = 'NY';

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE customer_id>=300 AND customer_id<=400;

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE customer_id>=300 AND state='CA';

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE customer_id>=300 AND state='CA' AND city ='san diego';

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE customer_id>=300 AND state='CA' OR city ='san diego';

Select top (1000) customer_id,first_name,last_name,phone,email,street,city,state,zip_code 
from sales.customers
WHERE phone LIKE '%2027';--phone that ends with 2027



--ask difference between like and =