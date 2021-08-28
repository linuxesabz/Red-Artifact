
IF OBJECT_ID(N'dbo.RLC03', N'U') IS NULL
BEGIN

Create Table RLC03 ( ID Bigint 

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

,[PObjMsgP] Nvarchar(50)
,[PPhSeaCotJ] Nvarchar(50)
,[PPbSeaCotJ] Nvarchar(50)
,[YPMsgP] Nvarchar(2)
,[ISensVarP] Nvarchar(1)
,[Filler1] Nvarchar(5)
,[CSensVarPValPP] Nvarchar(1)
,[XQVarPJDrPRF] Nvarchar(50)
,[Filler2] Nvarchar(6)


 CONSTRAINT [PK_RLC03] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end

