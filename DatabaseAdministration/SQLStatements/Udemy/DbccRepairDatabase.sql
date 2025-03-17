alter database AdventureWorks2022 set single_user with rollback immediate
go
dbcc checkdb ('AdventureWorks2022',REPAIR_ALLOW_DATA_LOSS)
GO
alter database AdventureWorks2022 set MULTI_user with rollback immediate
GO
