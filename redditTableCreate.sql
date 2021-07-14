USE [openwitprod]
GO

/****** Object:  Table [dbo].[ProdTableINetNew]    Script Date: 7/14/2021 1:35:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProdTableINetNew](
	[timestamp] [nvarchar](90) NOT NULL,
	[terms] [nvarchar](10) NULL,
	[age] [nvarchar](30) NOT NULL,
	[gender] [nvarchar](30) NOT NULL,
	[gradyear] [nvarchar](30) NOT NULL,
	[major] [nvarchar](30) NULL,
	[minor] [nvarchar](30) NULL,
	[withdrawals] [nvarchar](30) NULL,
	[collegechoice] [nvarchar](30) NULL,
	[firstgen] [nvarchar](30) NULL,
	[campusliving] [nvarchar](30) NULL,
	[exercise] [nvarchar](30) NULL,
	[sleep] [nvarchar](30) NULL,
	[employed] [nvarchar](30) NULL,
	[coops] [nvarchar](30) NULL,
	[extracurricular] [nvarchar](30) NULL,
	[classnum] [nvarchar](30) NULL,
	[timeoutfriends] [nvarchar](30) NULL,
	[vaccinated] [nvarchar](30) NULL,
	[classesfailed] [nvarchar](30) NULL,
	[freetime] [nvarchar](30) NULL,
	[mentalhealth] [nvarchar](30) NULL,
	[druguse] [nvarchar](30) NULL,
	[cwentworthr] [nvarchar](30) NULL,
	[hstudying] [nvarchar](30) NULL,
	[GPA] [numeric](3, 2) NULL,
	[overallexp] [nvarchar](30) NULL,
	[wentresources] [nvarchar](30) NULL
) ON [PRIMARY]
GO


