
IF OBJECT_ID(N'dbo.RLC05', N'U') IS NULL
BEGIN

Create Table RLC05 ( ID Bigint 

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

,[IEtaCotVal] Nvarchar(1)
,[IOrgResVal] Nvarchar(1)
,[DDebSuVal] Nvarchar(8)
,[HDebSuVal] Nvarchar(6)
,[CEtaVal] Nvarchar(2)
,[CActModEtaVal] Nvarchar(1)
,[HOvPgmVal] Nvarchar(6)
,[CEtaValSysTCS] Nvarchar(1)
,[Filler] Nvarchar(22)


 CONSTRAINT [PK_RLC05] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


end