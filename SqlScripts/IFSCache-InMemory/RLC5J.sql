
IF OBJECT_ID(N'dbo.RLC5J', N'U') IS NULL
BEGIN


CREATE TABLE [dbo].[RLC5J]
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
	[PClosing] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IClose] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YClose] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PClosingNoAdj] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PVWAP] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PVWAPNoAdj] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PDrCotVal] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PDrCotValNoAdj] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZTotTran] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTotTran5J] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTotCap] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,


 CONSTRAINT [RLC5J_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 16384)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )


end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	ALTER TABLE [dbo].[RLC5J] ADD INDEX [IX_RLC5J_DEven] NONCLUSTERED HASH 
	(
		[DEven]
	)WITH ( BUCKET_COUNT = 4)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	ALTER TABLE [dbo].[RLC5J] ADD INDEX [IX_RLC5J_InstrumentID] NONCLUSTERED HASH 
	(
		[InstrumentID]
	)WITH ( BUCKET_COUNT = 8192)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	ALTER TABLE [dbo].[RLC5J] ADD INDEX [IX_RLC5J_InstrumentID_DEven] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven]
	)WITH ( BUCKET_COUNT = 16384)
end
