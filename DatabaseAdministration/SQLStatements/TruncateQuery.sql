select * from salesstaff;

truncate table salesstaff;

create table employee(
id int identity (1,1) not null,
employeeName nvarchar(50) not null,
)
 
 select * from Employee;
 --id wont reset
 delete from Employee;

 --id will be 1
 truncate table employee;