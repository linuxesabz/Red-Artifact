
IF OBJECT_ID(N'dbo.RLC02', N'U') IS NULL
BEGIN

Create Table RLC02 ( ID Bigint 

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

,[QTitTran] Nvarchar(12)
,[PTran] Nvarchar(50)
,[CIdAdhNSCAc] Nvarchar(8)
,[CIdAdhNSCVt] Nvarchar(8)
,[QTitNgJ] Nvarchar(12)
,[ISensVarP] Nvarchar(1)
,[Filler1] Nvarchar(5)
,[YCpteOmAc] Nvarchar(1)
,[YCpteOmVt] Nvarchar(1)
,[PPhSeaCotJ] Nvarchar(50)
,[PPbSeaCotJ] Nvarchar(50)
,[IAnuTran] Nvarchar(2)
,[Filler2] Nvarchar(2)
,[ITranYApl] Nvarchar(1)
,[IFinTran] Nvarchar(1)
,[YOmOrgTran] Nvarchar(1)
,[YOmAc] Nvarchar(1)
,[YOmVt] Nvarchar(1)
,[CSensVarPTranPP] Nvarchar(1)
,[NTran] Nvarchar(7)
,[Filler3] Nvarchar(3)
,[YMarNSC] Nvarchar(2)
,[Filler4] Nvarchar(86)
,[DHTran] Nvarchar(14)
,[XQVarPJDrPRF] Nvarchar(50)
,[Filler5] Nvarchar(16)


 CONSTRAINT [PK_RLC02] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC02_DEven] ON [dbo].[RLC02]
	(
		[DEven] DESC
	)
	INCLUDE([InstrumentID],[QTitTran],[PTran],[PPhSeaCotJ],[PPbSeaCotJ]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC02_InstrumentID] ON [dbo].[RLC02]
	(
		[InstrumentID] ASC
	)
	INCLUDE([DEven],[QTitTran],[PTran],[PPhSeaCotJ],[PPbSeaCotJ]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC02_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC02]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC02_InstrumentID_DEven] ON [dbo].[RLC02]
	(
		[InstrumentID] ASC,
		[DEven] DESC
	)
	INCLUDE([QTitTran],[PTran],[PPhSeaCotJ],[PPbSeaCotJ]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

end



