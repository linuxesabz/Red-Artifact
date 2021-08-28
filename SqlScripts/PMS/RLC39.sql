IF OBJECT_ID(N'dbo.RLC39', N'U') IS NULL
BEGIN


Create Table RLC39 ( ID Bigint 

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
--,[CIDGrc] Nvarchar(2)
,[InstrumentID] Nvarchar(12)
,[CValMNE] Nvarchar(5)
,[DEven] Nvarchar(8)
,[HEven] Nvarchar(6)
,[MessageCodeType] Nvarchar(4)
,[SEQbyINSTandType] Nvarchar(6)

,[DSeaBsEven] Nvarchar(8)
,[CIdGrc] Nvarchar(2)


 CONSTRAINT [PK_RLC39] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]




Create Table RLC39_AAHPhaGrcSea ( ID Bigint Identity(1,1) ,ParentID bigint Not null

,[CPhaCot] Nvarchar(1)
,[DHDebPhaGrcSea] Nvarchar(14)
,[CPhaAutoGrcAprOv] Nvarchar(1)


 CONSTRAINT [PK_RLC39_AAHPhaGrcSea] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


end
