USE [master]
RESTORE DATABASE [AdventureWorks2022] FROM  DISK = N'C:\sc_TendoMbambisa_2025\AdventureWorks2022_full.bak',  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2021_Backup' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO


