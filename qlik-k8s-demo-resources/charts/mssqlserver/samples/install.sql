RESTORE DATABASE AdventureWorksDW2017
FROM DISK = '/tmp/AdventureWorksDW2017.bak'
WITH MOVE 'AdventureWorksDW2017' TO '/tmp/AdventureWorksDW2017.mdf',
MOVE 'AdventureWorksDW2017_Log' TO '/tmp/AdventureWorksDW2017_Log.ldf'
GO
