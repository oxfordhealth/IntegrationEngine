SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Graphnet].[RiskAssessment](
	[RiskAssessmentID] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[PatientID] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[TenancyID] [int] NOT NULL,
	[UpdatedDate] [varchar](23) COLLATE Latin1_General_CI_AS NULL,
	[DateOfAssessment] [varchar](23) COLLATE Latin1_General_CI_AS NULL,
	[ClinicalSetting] [varchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Assessor] [varchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Role] [varchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [int] NULL,
	[ContainsInvalidChar] [bit] NULL
) ON [PRIMARY]

GO
