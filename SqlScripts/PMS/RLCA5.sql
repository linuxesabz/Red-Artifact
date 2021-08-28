
IF OBJECT_ID(N'dbo.RLCA5', N'U') IS NULL
BEGIN

Create Table RLCA5 ( ID Bigint 

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

,[IDrMsgRLCEchnIdx] Nvarchar(1)
,[ZTotValIdx] Nvarchar(3)
,[XInuClMresVIdx] Nvarchar(50)
,[CFDifIdx] Nvarchar(1)
,[Filler] Nvarchar(60)


 CONSTRAINT [PK_RLCA5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]




Create Table RLCA5_ACapValIdx ( ID Bigint Identity(1,1) ,ParentID bigint Not null

,[CIdLngCpsIdx] Nvarchar(12)
,[CValMneCpsIdx] Nvarchar(5)
,[XValCapRfV] Nvarchar(50)
,[KAjCapValCpsIdx] Nvarchar(50)
,[Filler1] Nvarchar(1)
,[NumberOFShare] Nvarchar(15)
,[Filler2] Nvarchar(3)


 CONSTRAINT [PK_RLCA5_ACapValIdx] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end
