
IF OBJECT_ID(N'dbo.RLCA4', N'U') IS NULL
BEGIN


CREATE TABLE [dbo].[RLCA4]
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
	[YSupOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISensOm] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIdAdh] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DSaiOm] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NSeqOm] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,

 CONSTRAINT [RLCA4_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 512)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

end


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA4_InstrumentID_DEven_NSeqOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA4]'))
begin
	ALTER TABLE [dbo].[RLCA4] ADD INDEX [IX_RLCA4_InstrumentID_DEven_NSeqOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven],
		[NSeqOm]
	)WITH ( BUCKET_COUNT = 512)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA4_InstrumentID_NSeqOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA4]'))
begin
	ALTER TABLE [dbo].[RLCA4] ADD INDEX [IX_RLCA4_InstrumentID_NSeqOm] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[NSeqOm]
	)WITH ( BUCKET_COUNT = 512)
end
