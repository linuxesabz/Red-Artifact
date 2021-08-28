
IF OBJECT_ID(N'dbo.RLC02', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[RLC02]
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
	[QTitTran] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PTran] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIdAdhNSCAc] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIdAdhNSCVt] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTitNgJ] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISensVarP] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler1] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YCpteOmAc] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YCpteOmVt] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PPhSeaCotJ] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PPbSeaCotJ] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IAnuTran] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler2] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITranYApl] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IFinTran] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOmOrgTran] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOmAc] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOmVt] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CSensVarPTranPP] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NTran] [nvarchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler3] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YMarNSC] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler4] [nvarchar](86) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DHTran] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[XQVarPJDrPRF] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Filler5] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,

 CONSTRAINT [RLC02_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 256)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )


end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	ALTER TABLE [dbo].[RLC02] ADD INDEX [IX_RLC02_DEven] NONCLUSTERED HASH 
	(
		[DEven]
	)WITH ( BUCKET_COUNT = 4)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	ALTER TABLE [dbo].[RLC02] ADD INDEX [IX_RLC02_InstrumentID] NONCLUSTERED HASH 
	(
		[InstrumentID]
	)WITH ( BUCKET_COUNT = 8)
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	ALTER TABLE [dbo].[RLC02] ADD INDEX [IX_RLC02_InstrumentID_DEven] NONCLUSTERED HASH 
	(
		[InstrumentID],
		[DEven]
	)WITH ( BUCKET_COUNT = 16)
end
