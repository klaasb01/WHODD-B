USE [WHODDB]
GO
/****** Object:  Table [dbo].[BNA]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BNA](
	[CASNumber] [varchar](10) NOT NULL,
	[LanguageCode] [varchar](2) NOT NULL,
	[SubstanceName] [varchar](45) NOT NULL,
	[YearOfReference] [varchar](2) NOT NULL,
	[ReferenceCode] [varchar](4) NOT NULL,
 CONSTRAINT [PK_BNA] PRIMARY KEY CLUSTERED 
(
	[CASNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCODE]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CCODE](
	[CountryCode] [varchar](3) NOT NULL,
	[CountryName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CCODE] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DD]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DD](
	[DrugRecordNumber] [varchar](6) NOT NULL,
	[SequenceNumber1] [varchar](2) NOT NULL,
	[SequenceNumber2] [varchar](3) NOT NULL,
	[CheckDigit] [varchar](1) NOT NULL,
	[Designation] [varchar](1) NULL,
	[YearOfReference] [varchar](2) NOT NULL,
	[ReferenceCode] [varchar](4) NULL,
	[CompanyCode] [varchar](5) NULL,
	[NumberOfIngredients] [varchar](2) NULL,
	[Salt_Ester_Code] [varchar](1) NULL,
	[YearQuarter] [varchar](3) NULL,
	[DrugName] [varchar](45) NOT NULL,
 CONSTRAINT [PK_DD] PRIMARY KEY CLUSTERED 
(
	[DrugRecordNumber] ASC,
	[SequenceNumber1] ASC,
	[SequenceNumber2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDA]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDA](
	[DrugRecordNumber] [varchar](6) NOT NULL,
	[SequenceNumber1] [varchar](2) NOT NULL,
	[SequenceNumber2] [varchar](3) NOT NULL,
	[CheckDigit] [varchar](1) NOT NULL,
	[ATCCode] [varchar](7) NOT NULL,
	[YearQuarter] [varchar](3) NULL,
	[OfficialATCCode] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDSOURCE]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDSOURCE](
	[ReferenceCode] [varchar](4) NOT NULL,
	[Reference] [varchar](70) NOT NULL,
	[CountryCode] [varchar](30) NOT NULL,
 CONSTRAINT [PK_DDSOURCE] PRIMARY KEY CLUSTERED 
(
	[ReferenceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INA]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INA](
	[ATCCode] [varchar](7) NOT NULL,
	[Level] [varchar](1) NOT NULL,
	[Text] [varchar](50) NOT NULL,
 CONSTRAINT [PK_INA] PRIMARY KEY CLUSTERED 
(
	[ATCCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ING]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ING](
	[DrugRecordNumber] [varchar](6) NOT NULL,
	[SequenceNumber1] [varchar](2) NOT NULL,
	[SequenceNumber2] [varchar](3) NOT NULL,
	[CheckDigit] [varchar](1) NOT NULL,
	[CASNumber] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAN]    Script Date: 1/13/2016 4:33:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAN](
	[CompanyCode] [varchar](5) NOT NULL,
	[Name] [varchar](70) NOT NULL,
	[CountryCode] [varchar](3) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_BNA] FOREIGN KEY([CASNumber])
REFERENCES [dbo].[BNA] ([CASNumber])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_BNA]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_DD] FOREIGN KEY([DrugRecordNumber], [SequenceNumber1], [SequenceNumber2])
REFERENCES [dbo].[DD] ([DrugRecordNumber], [SequenceNumber1], [SequenceNumber2])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_DD]
GO
