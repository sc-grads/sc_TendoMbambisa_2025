BACKUP LOG [AdventureWorks2022] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2022_tran_1.trn' 
WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
------------transaction log backup 2
BACKUP LOG [AdventureWorks2022] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2022_tran_2.trn' 
WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
