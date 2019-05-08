RESTORE DATABASE AdventureWorksDW2017
FROM DISK = '/demodata/AdventureWorksDW2017.bak'
WITH MOVE 'AdventureWorksDW2017' TO '/demodata/AdventureWorksDW2017.mdf',
MOVE 'AdventureWorksDW2017_Log' TO '/demodata/AdventureWorksDW2017_Log.ldf'
GO
