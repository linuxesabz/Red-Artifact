 
IF OBJECT_ID(N'dbo.RLC37', N'U') IS NULL
BEGIN

Create Table RLC37 ( ID Bigint 

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

,[PSGelStaMax] Nvarchar(50)
,[PSGelStaMin] Nvarchar(50)
,[Filler] Nvarchar(20)


 CONSTRAINT [PK_RLC37] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC37_DEven] ON [dbo].[RLC37]
	(
		[DEven] DESC
	)
	INCLUDE([InstrumentID],[PSGelStaMax],[PSGelStaMin]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC37_InstrumentID] ON [dbo].[RLC37]
	(
		[InstrumentID] ASC
	)
	INCLUDE([DEven],[PSGelStaMax],[PSGelStaMin]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC37_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC37]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC37_InstrumentID_DEven] ON [dbo].[RLC37]
	(
		[InstrumentID] ASC,
		[DEven] DESC
	)
	INCLUDE([PSGelStaMax],[PSGelStaMin]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end
