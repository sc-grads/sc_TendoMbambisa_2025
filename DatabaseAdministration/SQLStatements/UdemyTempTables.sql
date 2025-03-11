Use AdventureWorks2022;
CREATE TABLE [AdventureWorks2022].[sales].[visits] (
visit_id int primary key identity (1,1),
first_name varchar (50) not null,
last_name varchar (50) not null,
vistited_at datetime,
phone varchar(20),
store_id int not null,
foreign key (store_id) references sales.storeNEW(store_id)
);

CREATE TABLE [AdventureWorks2022].[sales].[storeNEW] (
store_id int primary key not null,
sales INT
);

select BusinessEntityID,firstname,lastname,TITLE
into #TempPersonTable
from [person].[person]
where title='mr.';

select BusinessEntityID,firstname,lastname

from [person].[person]
where title='mr.';

select * From #TempPersonTable;

Drop table #TempPersonTable;