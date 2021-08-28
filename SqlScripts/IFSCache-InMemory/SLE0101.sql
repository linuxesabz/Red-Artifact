
IF OBJECT_ID(N'dbo.SLE0101', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[Sle0101]
(
	[Id] [bigint] NOT NULL,
	[CIdGrc] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CEtaGrc] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DSeaBs] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HSeaBs] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DHEmisMsgSpi] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IClGrc] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,

 CONSTRAINT [Sle0101_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[Id]
)WITH ( BUCKET_COUNT = 512)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

END


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_Sle0101_CIdGrc' 
    AND object_id = OBJECT_ID('[dbo].[Sle0101]'))
begin
	ALTER TABLE [dbo].[Sle0101] ADD INDEX [IX_Sle0101_CIdGrc] NONCLUSTERED HASH 
	(
		[CIdGrc]
	)WITH ( BUCKET_COUNT = 128)
end


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_Sle0101_CIdGrc_DSeaBs' 
    AND object_id = OBJECT_ID('[dbo].[Sle0101]'))
begin
	ALTER TABLE [dbo].[Sle0101] ADD INDEX [IX_Sle0101_CIdGrc_DSeaBs] NONCLUSTERED HASH 
	(
		[CIdGrc],
		[DSeaBs]
	)WITH ( BUCKET_COUNT = 256)
end
