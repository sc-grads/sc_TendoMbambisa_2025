select * from Person.Address where PostalCode='98011';--THIS IS A RELATIONAL OPERATION
select * from Person.Address where PostalCode !='98011';--19588
select * from Person.Address where PostalCode <>'98011';
select count(*) from person.Address where PostalCode <>'98011';
select * from Person.Address where ModifiedDate >= '2013-11-08 00:00:00.000';
select * from Person.Address where ModifiedDate <= '2013-11-08 00:00:00.000';
select * from Person.Person where FirstName like 'MAT%';
select * from Person.Person where FirstName like '%ew';
select * from [HumanResources].[EmployeePayHistory];
select max(rate) as 'PayRate' from [HumanResources].[EmployeePayHistory];
select min (rate) as [Min Pay Rate] from [HumanResources].[EmployeePayHistory];

--find the product where the start date is 2013-05-30
select * from Production.ProductCostHistory where startdate = '2013-05-30';

----find the product where the start date is 2013-05-30 and standard cost is 200 and above
select * from Production.ProductCostHistory where startdate = '2013-05-30'AND StandardCost >= 200.00 --THIS IS A CONDITION

select * from Production.ProductCostHistory where (startdate = '2013-05-30'AND StandardCost >= 200.00) OR ProductID >800;

select * from Production.ProductCostHistory where ProductID IN (802,803,820,900);--ONLY PRODUCT IDS IN THIS LIST WILL SHOW UP

SELECT * from Production.ProductCostHistory where EndDate is null;

SELECT * from Production.ProductCostHistory where EndDate is not null;
---------------------ORDER BY CLAUSE---------------------------------------------------------------------------------------------
SELECT * FROM [HumanResources].[EmployeePayHistory] ORDER BY rate;--automatically puts it in asc order

select * from [HumanResources].[EmployeePayHistory] ORDER BY rate asc;--orders in asc order

select * from [HumanResources].[EmployeePayHistory] ORDER BY rate desc;--orders in decending order 

select * from [HumanResources].[EmployeePayHistory] where ModifiedDate >= '2010-06-30' order by ModifiedDate desc;

select * from [HumanResources].[EmployeePayHistory] where Year(ModifiedDate) >= '2014' order by ModifiedDate desc;

------------------------------------Group by Clause----------------------------------------------------

select count (*) as NoOfAddresses,PostalCode FROM Person.Address GROUP BY PostalCode Order by PostalCode desc;--coloumn in group by must be in select
select count (*) ,City,PostalCode from Person.Address group by city,PostalCode order by city desc;

---------------------
select count(1) as countofproduct,color from [Production].[Product] where Color='yellow' group by color;

select count(1) as countofproduct,color from [Production].[Product]  group by color having Color='yellow';

select count(1) as countofproduct,color,size from [Production].[Product]  group by color,size having size>='44' --Color='yellow'; -- make sure that the coloumn name you have in your having clause is in the group by