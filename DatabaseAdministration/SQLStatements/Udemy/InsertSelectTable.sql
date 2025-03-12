---insert using select
create table nameOnlyTable
(

fname nvarchar(30) not null,
lname nvarchar(30) not null
)

select * from nameOnlyTable;

insert nameOnlyTable(fname,lname)
select fname,lname from salesstaffnew where id>=3

