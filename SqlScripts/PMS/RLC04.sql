IF OBJECT_ID(N'dbo.RLC04', N'U') IS NULL
BEGIN

Create Table RLC04 ( ID Bigint 

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

,[YOmOrgTran] Nvarchar(1)
,[Filler] Nvarchar(6)



 CONSTRAINT [PK_RLC04] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC04]'))
begin
CREATE NONCLUSTERED INDEX [IX_RLC04_InstrumentID] ON [dbo].[RLC04]
(
	[InstrumentID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_InstrumentID_DEven' 
    AND object_id = OBJECT_ID('[dbo].[RLC04]'))
begin
CREATE NONCLUSTERED INDEX [IX_RLC04_InstrumentID_DEven] ON [dbo].[RLC04]
(
	[InstrumentID] ASC,
	[DEven] DESC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end



Create Table RLC04_AAMeLim ( ID Bigint Identity(1,1) ,ParentID bigint Not null

,[QTitMeDem] Nvarchar(12)
,[ZOrdMeDem] Nvarchar(4)
,[PMeDem] Nvarchar(50)
,[PMeOf] Nvarchar(50)
,[ZOrdMeOf] Nvarchar(4)
,[QTitMeOf] Nvarchar(12)
,[Filler001] Nvarchar(2)
,[Index] TinyInt


 CONSTRAINT [PK_RLC04_AAMeLim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC04_AAMeLim_ParentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC04_AAMeLim]'))
begin
	CREATE NONCLUSTERED INDEX [IX_RLC04_AAMeLim_ParentID] ON [dbo].[RLC04_AAMeLim]
	(
		[ParentID] ASC
	)
	INCLUDE([QTitMeDem],[ZOrdMeDem],[PMeDem],[PMeOf],[ZOrdMeOf],[QTitMeOf],[Index]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
end

