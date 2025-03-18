USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'fab1b9de-e05f-4e4b-ab51-f09c0e9707a2', 
		@description=N'this job job is going to truncate table error log table everydayevery weekday at  at 10 pm '
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'fab1b9de-e05f-4e4b-ab51-f09c0e9707a2', @step_name=N'Truncate Table', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=1, 
		@retry_interval=30, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'Truncate Table ErrorLog', 
		@database_name=N'AdventureWorks2022', 
		@flags=0
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_id=N'fab1b9de-e05f-4e4b-ab51-f09c0e9707a2', @name=N'Daily @ 10 p.m est', 
		@enabled=1, 
		@freq_type=8, 
		@freq_interval=62, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20250318, 
		@active_end_date=20250330, 
		@active_start_time=220000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO
