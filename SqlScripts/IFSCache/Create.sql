IF NOT (EXISTS (SELECT name 
FROM master.dbo.sysdatabases 
WHERE ('[' + name + ']' = 'IFSCache' 
OR name = 'IFSCache')))
BEGIN

Create database IFSCache

END