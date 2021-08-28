IF OBJECT_ID(N'dbo.RLC04', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[RLC04]
(
	[ID] [bigint] NOT NULL,
	[Tech_head_Type] [bigint] NULL,
	[ItemCode] [bigint] NULL,
	[SessionNumber] [bigint] NULL,
	[ABSMessageNumber] [bigint] NULL,
	[MessageNumberForItemCode] [bigint] NULL,
	[BroadCastTimestamp] [bigint] NULL,
	[TransMitterSignature] [bigint] NULL,
	[InstumentCharacteristicHeaderType] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MarketFeedCode] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MarketPlaceCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FinancialMarketCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIDGrc] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InstrumentID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CValMNE] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEven] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HEven] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageCodeType] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEQbyINSTandType] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOmOrgTran] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,

 CONSTRAINT [RLC04_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 4096)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

END


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC04]'))
begin
	ALTER TABLE [dbo].[RLC04] ADD INDEX [IX_RLC04_InstrumentID] NONCLUSTERED HASH 
	(
		[InstrumentID]
	)WITH ( BUCKET_COUNT = 512)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC04]'))
begin
	ALTER TABLE [dbo].[RLC04] ADD INDEX [IX_RLC04_InstrumentID_DEven] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven]
	)WITH ( BUCKET_COUNT = 2048)
end







IF OBJECT_ID(N'dbo.RLC04_AAMeLim', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[RLC04_AAMeLim]
(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentID] [bigint] NOT NULL,
	[QTitMeDem] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZOrdMeDem] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PMeDem] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PMeOf] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZOrdMeOf] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTitMeOf] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler001] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Index] [tinyint] NULL,

 CONSTRAINT [RLC04_AAMeLim_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 16384)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

END



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_AAMeLim_ParentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC04_AAMeLim]'))
begin
	ALTER TABLE [dbo].[RLC04_AAMeLim] ADD INDEX [IX_RLC04_AAMeLim_ParentID] NONCLUSTERED HASH 
	(
		[ParentID]
	)WITH ( BUCKET_COUNT = 4096)
end

