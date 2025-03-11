select * from Person.Address;


select addressid,city,modifieddate from [person].[Address];

select city,addressid,modifieddate from [person].[Address];

select TOP 10 * from [person].[address];

SELECT TOP (1000) [AddressID]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[City]
      ,[StateProvinceID]
      ,[PostalCode]
      ,[SpatialLocation]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[Person].[Address]
