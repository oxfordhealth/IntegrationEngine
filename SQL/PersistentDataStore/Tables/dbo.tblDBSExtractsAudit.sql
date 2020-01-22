SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[tblDBSExtractsAudit](
	[ExtractID] [bigint] IDENTITY(30000,1) NOT NULL,
	[DataSource] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NumberOfRecord] [bigint] NULL,
	[Extract_Dttm] [datetime2](7) NULL
) ON [PRIMARY]

GO
