USE master;
GO
DECLARE @SQL nvarchar(1000);
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = N'WideWorldImportersDW')
BEGIN
    SET @SQL = N'USE [WideWorldImportersDW];

                 ALTER DATABASE WideWorldImportersDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
                 USE [master];

                 DROP DATABASE WideWorldImportersDW;';
    EXEC (@SQL);
END;