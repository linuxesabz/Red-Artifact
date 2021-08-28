
IF OBJECT_ID(N'dbo.RLCA3', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[RLCA3]
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
	[CActFdm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISensOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLimSaiOm] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTitMtrOm] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTitRestOm] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAffOm] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YCpteOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YPLimSaiOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DHPriOm] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YAppaValMdv] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIdAdh] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DSaiOm] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NSeqOm] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,


 CONSTRAINT [RLCA3_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 65536)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID] NONCLUSTERED HASH 
	(
		[InstrumentID]
	)WITH ( BUCKET_COUNT = 512)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID_DEven] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven]
	)WITH ( BUCKET_COUNT = 2048)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_DEven_PLimSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID_DEven_PLimSaiOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven],
		[PLimSaiOm]
	)WITH ( BUCKET_COUNT = 32768)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID_PLimSaiOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[PLimSaiOm]
	)WITH ( BUCKET_COUNT = 16384)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm_DEven_ISensOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID_PLimSaiOm_DEven_ISensOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[PLimSaiOm],
		[DEven],
		[ISensOm]
	)WITH ( BUCKET_COUNT = 32768)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm_ISensOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	ALTER TABLE [dbo].[RLCA3] ADD INDEX [IX_RLCA3_InstrumentID_PLimSaiOm_ISensOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[ISensOm],
		[PLimSaiOm]
	)WITH ( BUCKET_COUNT = 16384)
end
