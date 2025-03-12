create table salesstaff
(
StaffID int not null primary key,
firstname nvarchar(50) not null,
lastname nvarchar(50) not null,
countryregion nvarchar(50) not null
);

drop table salesstaff;

select * from salesstaff;

insert into salesstaff
select businessentityid,firstname,lastname,countryregionname from Sales.vSalesPerson;

--differet ways to delete records from a database
delete salesstaff;
delete from salesstaff;
delete from salesstaff where countryregion ='united states';

--deleting in a transaction
begin tran
delete from salesstaff where countryregion ='united states';

commit
rollback tran

--deleting from another table
delete salesstaff where staffid in (select businessentityid from sales.vSalesPerson where SalesLastYear=0)

--deleting using a join
delete salesstaff 
from Sales.vSalesPerson sp
inner join salesstaff ss
on sp.BusinessEntityID=ss.staffid
where sp.SalesLastYear=0;
