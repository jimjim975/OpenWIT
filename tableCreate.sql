USE [openwitprod]
GO

/****** Object:  Table [dbo].[ProdTable]    Script Date: 6/17/2021 10:02:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProdTable](
	[timestamp] [nchar](90) NOT NULL,
	[age] [nchar](30) NOT NULL,
	[gender] [nchar](30) NOT NULL,
	[gradyear] [nchar](30) NOT NULL,
	[major] [nchar](30) NULL,
	[minor] [nchar](30) NULL,
	[withdrawals] [nchar](30) NULL,
	[collegechoice] [nchar](30) NULL,
	[campusliving] [nchar](30) NULL,
	[exercise] [nchar](30) NULL,
	[employed] [nchar](30) NULL,
	[coops] [nchar](30) NULL,
	[extracurricular] [nchar](30) NULL,
	[classnum] [nchar](30) NULL,
	[timeoutfriends] [nchar](30) NULL,
	[vaccinated] [nchar](30) NULL,
	[classesfailed] [nchar](30) NULL,
	[freetime] [nchar](30) NULL,
	[druguse] [nchar](30) NULL,
	[cwentworthr] [nchar](30) NULL,
	[hstudying] [nchar](30) NULL,
	[GPA] [numeric](3, 2) NULL,
	[overallexp] [nchar](30) NULL,
	[mentalhealth] [nchar](30) NULL,
	[wentresources] [nchar](30) NULL,
	[firstgen] [nchar](30) NULL,
	[terms] [nchar](10) NULL,
	[sleep] [nchar](30) NULL
) ON [PRIMARY]
GO


