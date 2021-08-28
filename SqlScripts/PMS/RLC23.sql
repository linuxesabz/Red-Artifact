
IF OBJECT_ID(N'dbo.RLC23', N'U') IS NULL
BEGIN

Create Table RLC23 ( ID Bigint 

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
-- ,[CIDGrc] Nvarchar(2)
,[InstrumentID] Nvarchar(12)
,[CValMNE] Nvarchar(5)
,[DEven] Nvarchar(8)
,[HEven] Nvarchar(6)
,[MessageCodeType] Nvarchar(4)
,[SEQbyINSTandType] Nvarchar(6)

,[CIdGrc] Nvarchar(2)
,[IUrg] Nvarchar(1)
,[YCrl] Nvarchar(1)
,[YDest] Nvarchar(1)
,[CIdMsg] Nvarchar(3)
,[ZTotSeg] Nvarchar(2)
,[NSeqSeg] Nvarchar(2)
,[LTit] Nvarchar(80)
,[LMsg] Nvarchar(854)



 CONSTRAINT [PK_RLC23] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end