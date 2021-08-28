
IF OBJECT_ID(N'dbo.RLC5J', N'U') IS NULL
BEGIN


Create Table RLC5J ( ID Bigint 

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

,[PClosing] Nvarchar(50)
,[IClose] Nvarchar(1)
,[YClose] Nvarchar(1)
,[PClosingNoAdj] Nvarchar(50)
,[PVWAP] Nvarchar(50)
,[PVWAPNoAdj] Nvarchar(50)
,[PDrCotVal] Nvarchar(50)
,[PDrCotValNoAdj] Nvarchar(50)
,[ZTotTran] Nvarchar(12)
,[QTotTran5J] Nvarchar(12)
,[QTotCap] Nvarchar(50)
,[Filler] Nvarchar(100)


 CONSTRAINT [PK_RLC5J] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC5J_DEven] ON [dbo].[RLC5J]
	(
		[DEven] DESC
	)
	INCLUDE([InstrumentID],[HEven],[PClosing],[PDrCotVal],[ZTotTran],[QTotTran5J],[QTotCap]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC5J_InstrumentID] ON [dbo].[RLC5J]
	(
		[InstrumentID] ASC
	)
	INCLUDE([DEven],[HEven],[PClosing],[PDrCotVal],[ZTotTran],[QTotTran5J],[QTotCap]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC5J_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC5J]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC5J_InstrumentID_DEven] ON [dbo].[RLC5J]
	(
		[InstrumentID] ASC,
		[DEven] DESC
	)
	INCLUDE([HEven],[PClosing],[PDrCotVal],[ZTotTran],[QTotTran5J],[QTotCap]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end
