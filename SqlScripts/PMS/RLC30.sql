IF OBJECT_ID(N'dbo.RLC30', N'U') IS NULL
BEGIN

Create Table RLC30 ( ID Bigint 

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

,[PTeoOvJ] Nvarchar(50)
,[QXtePTeoOvj] Nvarchar(12)
,[ISensVarP] Nvarchar(1)
,[Filler1] Nvarchar(5)
,[CSensQNrepOv] Nvarchar(1)
,[QNrepOv] Nvarchar(12)
,[QTitMeLimSimAc] Nvarchar(12)
,[PMeLimSimAcVal] Nvarchar(50)
,[PMeLimSimVtVal] Nvarchar(50)
,[QTitMeLimSimVt] Nvarchar(12)
,[XQVarPJDrPRF] Nvarchar(50)
,[Filler2] Nvarchar(6)


 CONSTRAINT [PK_RLC30] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end