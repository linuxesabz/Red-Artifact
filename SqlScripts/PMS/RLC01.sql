


IF OBJECT_ID(N'dbo.RLC01', N'U') IS NULL
BEGIN

Create Table RLC01 ( ID Bigint 

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
,[Filler2] Nvarchar(2)
,[ITranYApl] Nvarchar(1)
,[IFinTran] Nvarchar(1)
,[YOmAc] Nvarchar(1)
,[YOmVt] Nvarchar(1)
,[CSensVarPTranPP] Nvarchar(1)
,[NTran] Nvarchar(7)
,[Filler3] Nvarchar(3)
,[YMarNSC] Nvarchar(2)
,[Filler4] Nvarchar(86)
,[DHTran] Nvarchar(14)
,[YOmOrgTran] Nvarchar(1)
,[XQVarPJDrPRF] Nvarchar(50)



 CONSTRAINT [PK_RLC01] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


END
