----Update statements
select 
firstname+' '+LastName as FullName,
territoryName,
territoryGroup,
salesQuota,
salesYTD,
salesLastYear
into salesstaff
from
sales.vSalesPerson;

select * from salesstaff;

---------update queries

update salesstaff set SalesQuota=50000;

update salesstaff set SalesQuota=salesquota + 150000;

update salesstaff set SalesQuota =SalesQuota+150000,SalesYTD=SalesYTD-500,SalesLastYear=SalesLastYear*1.50;

---update a singular row
update salesstaff set TerritoryName='uk' where TerritoryName='United Kingdom';

update salesstaff set TerritoryName ='UK', TerritoryGroup='europe' where TerritoryGroup is null and FullName ='sayed Abbas';

update salesstaff set SalesQuota=sp.SalesQuota from salesstaff ss
inner join sales.vSalesPerson sp
on ss.fullname=(sp.firstname+' '+sp.lastname)

select * from salesstaff;