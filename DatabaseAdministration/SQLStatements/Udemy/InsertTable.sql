create table salesstaff
(
staffid int not null primary key,
fname nvarchar(30) not null,
lname nvarchar(30) not null
)

insert into salesstaff (staffid,fname,lname) values (200,'abbas','mehmood');

select * from salesstaff;

insert into salesstaff (staffid,fname,lname) values (300,'Imran','mehmood'),(325,'john','wick'),(314,'james','dino');


-------------------Insert into table with 4 columns but 3 are stated
create table salesstaffnew
(
ID INT NOT NULL IDENTITY Primary key,
staffid int not null,
fname nvarchar(30) not null,
lname nvarchar(30) not null
)

insert into salesstaffNew (staffid,fname,lname) values (200,'abbas','mehmood');

insert into salesstaffnew (staffid,fname,lname) values (300,'Imran','mehmood'),(325,'john','wick'),(314,'james','dino');

select * from salesstaffnew;

