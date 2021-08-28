
IF OBJECT_ID(N'dbo.RLCB1', N'U') IS NULL
BEGIN

Create Table RLCB1 ( ID Bigint 

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

,[CNivIdx] Nvarchar(1)
,[XDrNivJIdx002] Nvarchar(50)
,[XPhNivJIdx002] Nvarchar(50)
,[HPhJIdx] Nvarchar(6)
,[XPbNivJIdx002] Nvarchar(50)
,[HPbJIdx] Nvarchar(6)
,[ZValIdxCot] Nvarchar(3)
,[XCapValAcfIdx] Nvarchar(50)
,[ISensXVarIdxJ] Nvarchar(1)
,[XVarIdxJ] Nvarchar(50)
,[ISensXVarIdxJRfV] Nvarchar(1)
,[XVarIdxJRfV] Nvarchar(50)
,[ISensXVarIdxJRfLq] Nvarchar(1)
,[XVarIdxJRfLq] Nvarchar(50)
,[ISensXVarIdxJDrAnP] Nvarchar(1)
,[XVarIdxJDrAnP] Nvarchar(50)
,[XNivIrteNetIbs] Nvarchar(50)
,[XNivIrteGlIbs] Nvarchar(50)
,[ZValBaiIbs] Nvarchar(3)
,[ZValHauIbs] Nvarchar(3)
,[ZValIchgIbs] Nvarchar(3)
,[ZValNonCotIbs] Nvarchar(3)
,[ZValResIbs] Nvarchar(3)
,[ZValSuIbs] Nvarchar(3)
,[ZTotValIbs] Nvarchar(3)
,[ISensXMoyVarValIbs] Nvarchar(1)
,[XMoyVarValIbs] Nvarchar(50)
,[XMoyVarValBaiIbs] Nvarchar(50)
,[XMoyVarValHauIbs] Nvarchar(50)
,[IIBsAscNivIbs] Nvarchar(1)

,[XDrNivJIdx004] Nvarchar(50)
,[XPhNivJIdx004] Nvarchar(50)
,[XPbNivJIdx004] Nvarchar(50)


 CONSTRAINT [PK_RLCB1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]


end
