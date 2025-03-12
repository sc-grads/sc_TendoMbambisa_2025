Create procedure selectAllPersonAddress
as
select * from person.Address
go;

exec selectAllPersonAddress;--procedure name you can use execute


drop procedure selectAllPersonAddresswithparam;--removes storedprocedure
---with where caluse and parametters
Create procedure selectAllPersonAddresswithparamEncrypt (@city nvarchar(30))
with encryption
as
BEGIN
set nocount on--doesnt show number of rows affected
select * from person.Address where city=@city
END;

exec selectAllPersonAddresswithparam @city='new york';
exec selectAllPersonAddresswithparam 'new york';

----Alter stored procedure adding more parameters
Alter procedure selectAllPersonAddresswithparam (@city nvarchar(30) = 'New york',@StateProvinceID int)
as
BEGIN
set nocount on--doesnt show number of rows affected
select * from person.Address where city=@city
END;