RESTORE DATABASE AdventureWorksDW2017
FROM DISK = '/demodata/AdventureWorksDW2017.bak'
WITH MOVE 'AdventureWorksDW2017' TO '/demodata/AdventureWorksDW2017.mdf',
MOVE 'AdventureWorksDW2017_Log' TO '/demodata/AdventureWorksDW2017_Log.ldf'
GO

RESTORE DATABASE AdventureWorks2017
FROM DISK = '/demodata/AdventureWorks2017.bak'
WITH MOVE 'AdventureWorks2017' TO '/demodata/AdventureWorks2017.mdf',
MOVE 'AdventureWorks2017_Log' TO '/demodata/AdventureWorks2017_Log.ldf'
GO

CREATE LOGIN qliksense WITH PASSWORD = 'Qlik1234';
GO

-- Creates a database user for the login created above.
CREATE USER qliksense FOR LOGIN qliksense;
GO

USE AdventureWorksDW2017
GO
exec sp_addrolemember 'db_datareader',qliksense
GO

USE AdventureWorksDW2017
GO
exec sp_addrolemember 'db_datareader',qliksense
GO
