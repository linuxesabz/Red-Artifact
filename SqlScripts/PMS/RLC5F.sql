
IF OBJECT_ID(N'dbo.RLC5F', N'U') IS NULL
BEGIN

Create Table RLC5F ( ID Bigint 

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

,[CSecVal] Nvarchar(3)
,[LSecVal] Nvarchar(40)
,[CSuperSecVal] Nvarchar(4)
,[CSecValICB] Nvarchar(4)
,[Filler] Nvarchar(25)


 CONSTRAINT [PK_RLC5F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end