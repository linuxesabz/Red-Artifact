
IF OBJECT_ID(N'dbo.RLCA4', N'U') IS NULL
BEGIN


Create Table RLCA4 ( ID Bigint 

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

,[YSupOm] Nvarchar(1)
,[ISensOm] Nvarchar(1)

,[CIdAdh] Nvarchar(8)
,[DSaiOm] Nvarchar(8)
,[NSeqOm] Nvarchar(6)

 CONSTRAINT [PK_RLCA4] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA4_InstrumentID_DEven_NSeqOm_DSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA4]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA4_InstrumentID_DEven_NSeqOm_DSaiOm] ON [dbo].[RLCA4]
	(
		[InstrumentID] ASC,
		[DEven] DESC,
		[NSeqOm] ASC,
		[DSaiOm] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLCA4_InstrumentID_NSeqOm_DSaiOm' 
    AND object_id = OBJECT_ID('[dbo].[RLCA4]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLCA4_InstrumentID_NSeqOm_DSaiOm] ON [dbo].[RLCA4]
	(
		[InstrumentID] ASC,
		[NSeqOm] ASC,
		[DSaiOm] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end
