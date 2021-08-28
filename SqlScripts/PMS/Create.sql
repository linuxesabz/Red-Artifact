IF NOT (EXISTS (SELECT name 
FROM master.dbo.sysdatabases 
WHERE ('[' + name + ']' = 'PMS' 
OR name = 'PMS')))
BEGIN

Create database PMS

END