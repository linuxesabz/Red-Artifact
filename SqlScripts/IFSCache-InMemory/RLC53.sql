IF OBJECT_ID(N'dbo.RLC53', N'U') IS NULL
BEGIN


CREATE TABLE [dbo].[RLC53]
(
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CValMne] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEven] [int] NOT NULL,
	[CComVal] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CGrValCot] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LVal18] [nvarchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CSocCSAC] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LSoc30] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LVal18AFC] [nvarchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LVal30] [nvarchar](36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIsin] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QQtTranMarVal] [int] NOT NULL,
	[QTitMinSaiOmProd] [bigint] NOT NULL,
	[BaseVol] [bigint] NOT NULL,
	[CGdSVal] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CSecVal] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CSoSecVal] [nvarchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESop] [int] NOT NULL,
	[DInMar] [int] NOT NULL,
	[Flow] [tinyint] NOT NULL,
	[InsCode] [bigint] NOT NULL,
	[InstrumentId] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QNmVlo] [decimal](18, 2) NOT NULL,
	[QPasCotFxeVal] [decimal](18, 2) NOT NULL,
	[QTitMaxSaiOmProd] [bigint] NOT NULL,
	[Valid] [tinyint] NOT NULL,
	[YDeComp] [tinyint] NOT NULL,
	[YMarNSC] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YOPSJ] [tinyint] NOT NULL,
	[YUniExpP] [tinyint] NOT NULL,
	[YVal] [int] NOT NULL,
	[ZTitad] [decimal](18, 2) NOT NULL,


 CONSTRAINT [RLC53_primaryKey]  PRIMARY KEY NONCLUSTERED HASH 
(
	[Id]
)WITH ( BUCKET_COUNT = 16384)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__BaseVol__5441852A]  DEFAULT (CONVERT([bigint],(0))) FOR [BaseVol]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__DESop__5535A963]  DEFAULT ((0)) FOR [DESop]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__DInMar__5629CD9C]  DEFAULT ((0)) FOR [DInMar]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__Flow__571DF1D5]  DEFAULT (CONVERT([tinyint],(0))) FOR [Flow]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__InsCode__5812160E]  DEFAULT (CONVERT([bigint],(0))) FOR [InsCode]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__QNmVlo__59063A47]  DEFAULT ((0.0)) FOR [QNmVlo]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__QPasCotFx__59FA5E80]  DEFAULT ((0.0)) FOR [QPasCotFxeVal]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__QTitMaxSa__5AEE82B9]  DEFAULT (CONVERT([bigint],(0))) FOR [QTitMaxSaiOmProd]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__Valid__5BE2A6F2]  DEFAULT (CONVERT([tinyint],(0))) FOR [Valid]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__YDeComp__5CD6CB2B]  DEFAULT (CONVERT([tinyint],(0))) FOR [YDeComp]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__YOPSJ__5DCAEF64]  DEFAULT (CONVERT([tinyint],(0))) FOR [YOPSJ]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__YUniExpP__5EBF139D]  DEFAULT (CONVERT([tinyint],(0))) FOR [YUniExpP]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__YVal__5FB337D6]  DEFAULT ((0)) FOR [YVal]

ALTER TABLE [dbo].[RLC53] ADD  CONSTRAINT [DF__RLC53__ZTitad__60A75C0F]  DEFAULT ((0.0)) FOR [ZTitad]

end



if NOT EXISTS (SELECT *  FROM sys.indexes  WHERE name='IX_RLC53_InstrumentID' 
    AND object_id = OBJECT_ID('[dbo].[RLC53]'))
begin
	ALTER TABLE [dbo].[RLC53] ADD INDEX [IX_RLC53_InstrumentID] UNIQUE NONCLUSTERED HASH 
	(
		[InstrumentId]
	)WITH ( BUCKET_COUNT = 16384)
end





























--Create Table RLC53_AACarValRLC_AASecEco ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[CGdSecEco] Nvarchar(2)
--,[CSecAtvEco] Nvarchar(2)
--,[CSecCompAtv] Nvarchar(2)
--,[Filler01] Nvarchar(3)


-- CONSTRAINT [PK_RLC53_AACarValRLC_AASecEco] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_AACarValRLC_AAClasCo ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[NDivCo] Nvarchar(1)
--,[NRubCo] Nvarchar(3)
--,[NOrdCo] Nvarchar(7)


-- CONSTRAINT [PK_RLC53_AACarValRLC_AAClasCo] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_AACarValRLC_AASbAniVal ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[CResSbAniVal] Nvarchar(5)
--,[CSbAniVal] Nvarchar(3)


-- CONSTRAINT [PK_RLC53_AACarValRLC_AASbAniVal] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_AACarValRLC_AAClsEcoFtseSoc ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[CGdSecEcoFtse] Nvarchar(2)
--,[CSecEcoFtse] Nvarchar(2)
--,[CSoSecEcoFtse] Nvarchar(3)


-- CONSTRAINT [PK_RLC53_AACarValRLC_AAClsEcoFtseSoc] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_AACarValRLC ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[LVal18] Nvarchar(18)
--,[YVal] Nvarchar(3)
--,[SVal] Nvarchar(1)
--,[CPyEmet] Nvarchar(3)
--,[QNmVlo] Nvarchar(50)
--,[CDevNm] Nvarchar(3)
--,[ZTitAd] Nvarchar(12)
--,[CSocCSAC] Nvarchar(5)
--,[LSoc30] Nvarchar(30)
--,[CEtFnc] Nvarchar(8)
--,[IValMry] Nvarchar(1)
--,[CSegMarEnvLco] Nvarchar(1)
--,[XIntOblRte] Nvarchar(50)
--,[YTxInt] Nvarchar(1)
--,[DEmisObl] Nvarchar(8)
--,[DPrRgLivVal] Nvarchar(8)
--,[DDebAm] Nvarchar(8)
--,[DFinAm] Nvarchar(8)
--,[DESop] Nvarchar(8)
--,[YOPSJ] Nvarchar(2)
--,[CGdSVal] Nvarchar(1)
--,[CSicoRGAChn] Nvarchar(6)
--,[CQtmJoui] Nvarchar(1)
--,[CDevPEmis] Nvarchar(3)
--,[PEmis] Nvarchar(50)
--,[YRbAnt] Nvarchar(1)
--,[YRbPro] Nvarchar(1)
--,[IValAdSrd] Nvarchar(1)
--,[DEchPretEmp] Nvarchar(8)
--,[IDtVote] Nvarchar(1)
--,[IDemat] Nvarchar(1)
--,[ITpi] Nvarchar(1)
--,[ILcoVwap] Nvarchar(1)
--,[CGrValCot] Nvarchar(2)
--,[Filler001] Nvarchar(3)
--,[IMarche] Nvarchar(1)
--,[CPyCot] Nvarchar(3)
--,[CDevCot] Nvarchar(3)
--,[DInMar] Nvarchar(8)
--,[CCpmLco] Nvarchar(1)
--,[CSocEmetVal] Nvarchar(6)
--,[CIdxPasCotVarVal] Nvarchar(2)
--,[YUniExpP] Nvarchar(1)
--,[DDrCV] Nvarchar(8)
--,[PDrAjSajCotV] Nvarchar(50)
--,[Filler002] Nvarchar(13)
--,[PDrAjCotV] Nvarchar(50)
--,[QPasCotFxeVal] Nvarchar(50)
--,[LVal18AFC] Nvarchar(18)
--,[YTitVal] Nvarchar(1)
--,[YAdTitNg] Nvarchar(1)
--,[OCertifVAL] Nvarchar(2)
--,[Filler003] Nvarchar(1)
--,[QNmVal] Nvarchar(50)
--,[CAFCValObjMsg] Nvarchar(6)
--,[CAFCValSjaWar] Nvarchar(6)
--,[IYMdvVal] Nvarchar(1)
--,[Filler004] Nvarchar(21)
--,[IApaValRlISB] Nvarchar(1)
--,[IApaValRlSbi] Nvarchar(1)
--,[IApaValRlGrgr] Nvarchar(1)
--,[IApaValRlDn] Nvarchar(1)
--,[IApaValRlGar] Nvarchar(1)
--,[QNorCpxBlcFmp] Nvarchar(50)
--,[Filler005] Nvarchar(2)
--,[SRbEmp] Nvarchar(1)
--,[QQtTranMarVal] Nvarchar(12)
--,[Filler006] Nvarchar(1)
--,[DPrEch] Nvarchar(8)
--,[Filler007] Nvarchar(36)
--,[Filler008] Nvarchar(1)
--,[YApaValIdxRLC] Nvarchar(1)
--,[Filler009] Nvarchar(5)
--,[CIsin] Nvarchar(12)
--,[CValIsinChn] Nvarchar(12)
--,[Filler0010] Nvarchar(4)
--,[TDeDn] Nvarchar(2)
--,[YTrtTitSico] Nvarchar(1)
--,[DAdValDep] Nvarchar(8)
--,[DRadValDep] Nvarchar(8)
--,[CFfoDepVal] Nvarchar(5)
--,[Filler0011] Nvarchar(1)
--,[ZNorTitBlcNg] Nvarchar(12)
--,[Filler0012] Nvarchar(25)
--,[CFlmVal] Nvarchar(2)
--,[QNmMarValVlo] Nvarchar(50)
--,[CDevNmMarValIso3A] Nvarchar(3)
--,[ZTitCirObl] Nvarchar(12)
--,[Filler0013] Nvarchar(28)




-- CONSTRAINT [PK_RLC53_AACarValRLC] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_CProdCpsProdYCbn ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[Value] Nvarchar(12)


-- CONSTRAINT [PK_RLC53_CProdCpsProdYCbn] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_AAKProdCpsProdYCbn ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[CSignKMuProdCps] Nvarchar(1)
--,[KMuProdCpsProdCbn] Nvarchar(2)


-- CONSTRAINT [PK_RLC53_AAKProdCpsProdYCbn] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_SStSplitAgg ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[QCurStSplit] Nvarchar(12)
--,[QNewStSplit] Nvarchar(12)


-- CONSTRAINT [PK_RLC53_SStSplitAgg] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53_SStDivAgg ( ID Bigint Identity(1,1) ,ParentID bigint Not null

--,[QCurStDiv] Nvarchar(12)
--,[QAddStDiv] Nvarchar(12)


-- CONSTRAINT [PK_RLC53_SStDivAgg] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO

--Create Table RLC53 ( ID Bigint Identity(1,1)

--,[Tech_head_Type] bigint
--,[ItemCode] bigint
--,[SessionNumber] bigint
--,[ABSMessageNumber] bigint
--,[MessageNumberForItemCode] bigint
--,[BroadCastTimestamp] bigint
--,[TransMitterSignature] bigint
--,[InstumentCharacteristicHeaderType] Nvarchar(1)
--,[MarketFeedCode] Nvarchar(2)
--,[MarketPlaceCode] Nvarchar(3)
--,[FinancialMarketCode] Nvarchar(3)
--,[CIDGrc] Nvarchar(2)
--,[InstrumentID] Nvarchar(12)
--,[CValMNE] Nvarchar(5)
--,[DEven] Nvarchar(8)
--,[HEven] Nvarchar(6)
--,[MessageCodeType] Nvarchar(4)
--,[SEQbyINSTandType] Nvarchar(6)

--,[DHDebCotProdMdv] Nvarchar(14)
--,[DHFinCotProdMdv] Nvarchar(14)
--,[IValiOmIns] Nvarchar(1)
--,[YExpPValMdvAdf] Nvarchar(1)
--,[YExpVarPValDrPRf] Nvarchar(1)
--,[QTickValMdv] Nvarchar(50)
--,[PExoProdMdv] Nvarchar(50)
--,[CDevPExoProdMdv] Nvarchar(3)
--,[QTitMinSaiOmProd] Nvarchar(12)
--,[QTitMaxSaiOmProd] Nvarchar(12)
--,[ICaVarPJDrPRf] Nvarchar(1)
--,[DSeaPCompValMdv] Nvarchar(8)
--,[YPCompValMdv] Nvarchar(1)
--,[PCompValMdv] Nvarchar(50)
--,[PSaiSMaxOkValMdv] Nvarchar(50)
--,[PSaiSMinOkValMdv] Nvarchar(50)
--,[ZMaxLimDifVal] Nvarchar(2)
--,[YAppaValMdv] Nvarchar(1)
--,[YQStg] Nvarchar(3)
--,[PCpsDrvObl] Nvarchar(50)
--,[XDtaStg] Nvarchar(50)
--,[YStg] Nvarchar(2)
--,[YCreValMdv] Nvarchar(1)
--,[CIdAdfCreValMdv] Nvarchar(8)
--,[CIdNgCreValMdv] Nvarchar(8)
--,[CIsinProdSja] Nvarchar(12)
--,[YMarNSC] Nvarchar(2)
--,[YExoFamProdYOpt] Nvarchar(1)
--,[ISupOmCrn] Nvarchar(1)
--,[IEtaPcsOl] Nvarchar(1)
--,[CComVal] Nvarchar(1)
--,[CSecVal] Nvarchar(3)
--,[CSoSecVal] Nvarchar(4)
--,[YDeComp] Nvarchar(1)
--,[IProdIsl] Nvarchar(1)
--,[Filler1] Nvarchar(3)
--,[IVtDec] Nvarchar(1)
--,[LPra] Nvarchar(10)
--,[Filler2] Nvarchar(12)
--,[Filler3] Nvarchar(16)
--,[CIsinForeign] Nvarchar(12)
--,[LocForeignIndicator] Nvarchar(1)
--,[CIndustryValICB] Nvarchar(4)
--,[CSuperSecValICB] Nvarchar(4)
--,[CSecValICB] Nvarchar(4)
--,[Filler4] Nvarchar(1)
--,[QTitMaxSaiOmBuy] Nvarchar(12)
--,[QTitMaxSaiOmSell] Nvarchar(12)
--,[Filler5] Nvarchar(28)


-- CONSTRAINT [PK_RLC53] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--)ON [PRIMARY]
--GO
