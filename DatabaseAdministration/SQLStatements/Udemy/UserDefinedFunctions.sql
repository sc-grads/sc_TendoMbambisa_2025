CREATE TABLE [dbo].[FunctionEmployee](
	[EmpID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Salary] [int] NULL,
	[Address] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (1,'Abbas','Mehmood', 20000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (2,'Imran','Afzal', 50000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (3,'James','Dino', 90000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (4,'Jaga','Babu', 70000, 'Delhi')


select * from FunctionEmployee;

--function to give full name

create function fngetfullname
(@firstname varchar(50),@lastname Varchar(50))
returns varchar(101)
as begin
return (select @firstname+ ' '+@lastname);
end;

--scalar function
select dbo.fngetfullname(firstname,lastname) as FullName, salary from FunctionEmployee;--stored procedure ca't be used like this

create function fnGetEmployee()
returns Table
as 
return (select * from FunctionEmployee);

select * from dbo.FunctionEmployee;

create function fnGetMulEmployee()
returns @Emp Table
(
Empid int,
firstname varchar(50),
salary int
)
As
Begin
 Insert into @Emp Select e.EmpID,e.FirstName,e.Salary from FunctionEmployee e;
--Now update salary of first employee
 update @Emp set Salary=25000 where EmpID=1;
--It will update only in @Emp table not in Original Employee table
return
end 


select * from dbo.fnGetMulEmployee();
