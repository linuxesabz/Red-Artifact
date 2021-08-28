
IF OBJECT_ID(N'dbo.RLCB2', N'U') IS NULL
BEGIN

Create Table RLCB2 ( ID Bigint 

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

,[XNivInuClMresIbs] Nvarchar(50)
,[HNivInuClMresIbs] Nvarchar(6)
,[XNivInuOvPrvMresIbs] Nvarchar(50)
,[HInuOvPrvMresIbs] Nvarchar(6)
,[XNivInuPrDifMresIbs] Nvarchar(50)
,[HNivInuPrDifMresIbs] Nvarchar(6)
,[XNivInuPhMresIbs] Nvarchar(50)
,[HNivInuPhMresIbs] Nvarchar(6)
,[ISensXVarIdxPhJClV] Nvarchar(1)
,[XVarIdxPhJClV] Nvarchar(50)
,[XNivInuPbMresIbs] Nvarchar(50)
,[HNivInuPbMresIbs] Nvarchar(6)
,[ISensXVarIdxPbJClV] Nvarchar(1)
,[XVarIdxPbJClV] Nvarchar(50)
,[XNivInuOvRfMresIbs] Nvarchar(50)
,[HNivInuOvRfMresIbs] Nvarchar(6)
,[XNivIcpRfIbs] Nvarchar(50)
,[HNivIcpRfIbs] Nvarchar(6)
,[XNivIlqRfIbs] Nvarchar(50)
,[HNivIlqRfIbs] Nvarchar(6)
,[ISensVarDrInuClV] Nvarchar(1)
,[XVarDrInuClV] Nvarchar(50)
,[QDvdNetJValIbs] Nvarchar(50)
,[QDvdGlJValIbs] Nvarchar(50)
,[QCapBsRfVIbs] Nvarchar(50)
,[XNivIrteNetClIbs] Nvarchar(50)
,[XNivIrteGlClIbs] Nvarchar(50)
,[Filler] Nvarchar(27)

,[KAjCapBzIbsPti] Nvarchar(2)
,[KAjCapBzIbsPdc] Nvarchar(15)

 CONSTRAINT [PK_RLCB2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

end