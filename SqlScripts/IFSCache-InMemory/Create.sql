declare @dbName nvarchar(max)= 'IFSCache'


IF NOT (EXISTS (SELECT name 
FROM master.dbo.sysdatabases 
WHERE name = @dbName))
BEGIN

declare @mainPath nvarchar(max)
declare @randomNumber nvarchar(max) = CONVERT( nvarchar(max), DATEDIFF_BIG( microsecond, '00010101', GETDATE() ) * 10 +
           ( DATEPART( NANOSECOND, GETDATE() ) % 1000 ) / 100);
use master

SELECT @mainPath=  left(physical_name, len(physical_name) - charindex('\', reverse(physical_name) + '\') + 1) FROM sys.database_files where type = 0
DECLARE @CreateDatabase  NVARCHAR(max)   = 
    '
       CREATE DATABASE [' + @dbName + ']
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N' + CHAR(39) + @dbName +  CHAR(39) + ', FILENAME = N' + CHAR(39) + @mainPath + @dbName +'.mdf' +  CHAR(39) + ' , SIZE = 270336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [memory_optimized_filegroup_0] CONTAINS MEMORY_OPTIMIZED_DATA  DEFAULT
( NAME = N' + CHAR(39) + 'memory_optimized_file_' + @randomNumber + CHAR(39) + ', FILENAME = N' + CHAR(39) + @mainPath + 'memory_optimized_file_' + @randomNumber + CHAR(39) +  ' , MAXSIZE = UNLIMITED)
 LOG ON 
( NAME = N' + CHAR(39) + @dbName + '_log' + CHAR(39) + ', FILENAME = N' + CHAR(39) + @mainPath + @dbName + '_log.ldf' +  CHAR(39) + ' , SIZE = 991232KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT

 ALTER DATABASE [' + @dbName + '] SET  DISABLE_BROKER 
     ';

	 EXEC (@CreateDatabase);

END