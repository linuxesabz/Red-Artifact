IF OBJECT_ID(N'dbo.SLE0106', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[Sle0106]
(
	[Id] [bigint] NOT NULL,
	[DSeaBs] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HSeaBs] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CValISIN] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CEtaVal] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CActModEtaVal] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HOvPgmVal] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DHEmisMsgSpi] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,

 CONSTRAINT [Sle0106_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[Id]
)WITH ( BUCKET_COUNT = 16384)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

END


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_Sle0106_CValISIN' 
    AND object_id = OBJECT_ID('[dbo].[Sle0106]'))
begin
	ALTER TABLE [dbo].[Sle0106] ADD INDEX [IX_Sle0106_CValISIN] NONCLUSTERED HASH 
	(
		[CValISIN]
	)WITH ( BUCKET_COUNT = 8192)
end


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_Sle0106_CValISIN_DSeaBs' 
    AND object_id = OBJECT_ID('[dbo].[Sle0106]'))
begin
	ALTER TABLE [dbo].[Sle0106] ADD INDEX [IX_Sle0106_CValISIN_DSeaBs] NONCLUSTERED HASH 
	(
		[CValISIN],
		[DSeaBs]
	)WITH ( BUCKET_COUNT = 16384)
end



