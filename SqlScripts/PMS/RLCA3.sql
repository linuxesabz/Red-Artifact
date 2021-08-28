
IF OBJECT_ID(N'dbo.RLCA3', N'U') IS NULL
BEGIN

Create Table RLCA3 ( ID Bigint 

,[Tech_head_Type] bigint
,[ItemCode] bigint
,[SessionNumber] bigint
,[ABSMessageNumber] bigint
,[MessageNumberForItemCode] bigint
,[BroadCastTimestamp] bigint
,[TransMitterSignature] bigint
,[InstumentCharacteristicHeaderType] Nvarchar(1)
,[MarketFeedCode] Nvarchar(2)
,[MarketPlaceCode] Nvarchar(3)
,[FinancialMarketCode] Nvarchar(3)
,[CIDGrc] Nvarchar(2)
,[InstrumentID] Nvarchar(12)
,[CValMNE] Nvarchar(5)
,[DEven] Nvarchar(8)
,[HEven] Nvarchar(6)
,[MessageCodeType] Nvarchar(4)
,[SEQbyINSTandType] Nvarchar(6)

,[CActFdm] Nvarchar(1)
,[ISensOm] Nvarchar(1)
,[PLimSaiOm] Nvarchar(50)
,[QTitMtrOm] Nvarchar(12)
,[QTitRestOm] Nvarchar(12)
,[PAffOm] Nvarchar(50)
,[YCpteOm] Nvarchar(1)
,[YOm] Nvarchar(1)
,[Filler] Nvarchar(1)
,[YPLimSaiOm] Nvarchar(1)
,[DHPriOm] Nvarchar(20)
,[YAppaValMdv] Nvarchar(1)

,[CIdAdh] Nvarchar(8)
,[DSaiOm] Nvarchar(8)
,[NSeqOm] Nvarchar(6)

 CONSTRAINT [PK_RLCA3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC
	)
	INCLUDE([DEven],[ISensOm],[PLimSaiOm],[QTitMtrOm],[NSeqOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID_DEven] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC,
		[DEven] ASC
	)
	INCLUDE([ISensOm],[PLimSaiOm],[QTitMtrOm],[NSeqOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_DEven_PLimSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID_DEven_PLimSaiOm] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC,
		[DEven] ASC,
		[PLimSaiOm] DESC
	)
	INCLUDE([ISensOm],[QTitMtrOm],[NSeqOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID_PLimSaiOm] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC,
		[PLimSaiOm] DESC
	)
	INCLUDE([DEven],[ISensOm],[QTitMtrOm],[NSeqOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm_DEven_ISensOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID_PLimSaiOm_DEven_ISensOm] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC,
		[PLimSaiOm] DESC,
		[DEven] DESC,
		[ISensOm] ASC
	)
	INCLUDE([QTitMtrOm],[NSeqOm],[DHPriOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA3_InstrumentID_PLimSaiOm_ISensOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA3]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA3_InstrumentID_PLimSaiOm_ISensOm] ON [dbo].[RLCA3]
	(
		[InstrumentID] ASC,
		[ISensOm] ASC,
		[PLimSaiOm] DESC
	)
	INCLUDE([DEven],[QTitMtrOm],[NSeqOm],[DHPriOm],[DSaiOm]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end
