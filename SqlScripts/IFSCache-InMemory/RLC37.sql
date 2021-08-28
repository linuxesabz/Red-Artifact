 
IF OBJECT_ID(N'dbo.RLC37', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[RLC37]
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
	[PSGelStaMax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PSGelStaMin] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,


 CONSTRAINT [RLC37_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 32768)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	ALTER TABLE [dbo].[RLC37] ADD INDEX [IX_RLC37_DEven] NONCLUSTERED HASH 
	(
		[DEven]
	)WITH ( BUCKET_COUNT = 4)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	ALTER TABLE [dbo].[RLC37] ADD INDEX [IX_RLC37_InstrumentID] NONCLUSTERED HASH 
	(
		[InstrumentID]
	)WITH ( BUCKET_COUNT = 8192)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	ALTER TABLE [dbo].[RLC37] ADD INDEX [IX_RLC37_InstrumentID_DEven] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven]
	)WITH ( BUCKET_COUNT = 32768)
end
