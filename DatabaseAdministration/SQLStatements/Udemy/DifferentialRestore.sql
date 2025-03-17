      USE [master]
      RESTORE DATABASE [AdventureWorks2022] FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2022_diff_1.diff' WITH FILE = 1, NORECOVERY, NOUNLOAD, STATS = 5
	  go
