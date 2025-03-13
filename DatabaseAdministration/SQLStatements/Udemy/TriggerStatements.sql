SELECT TOP (1000) [id]
      ,[employeeName]
  FROM [AdventureWorks2022].[dbo].[employee]
  drop table employee;

  create table employee (EmpID int primary key,EmpName nvarchar(50),EmpTitile nvarchar(30));