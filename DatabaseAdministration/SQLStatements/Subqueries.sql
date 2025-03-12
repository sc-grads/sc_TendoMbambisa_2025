--[AdventureWorks2016].[HumanResources].[EmployeePayHistory]
--[Production].[Product]
--[Production].[ProductInventory]

select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID in (select BusinessEntityID from [HumanResources].[EmployeePayHistory] where rate > 60);

--wont work cause it needs more than one row
select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID = (select BusinessEntityID from [HumanResources].[EmployeePayHistory] where rate > 60);

--this will work because you returning one row
select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID = (select BusinessEntityID from [HumanResources].[EmployeePayHistory] where rate >= 39.06);

--
select * from [Production].[Product]
where ProductID in (select ProductID from [Production].[ProductInventory] where Quantity > 300);