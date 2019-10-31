SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_tblICD10](
	[ICD10_ID] [int] NOT NULL,
	[Patient_ID] [int] NULL,
	[Version_ID] [int] NULL,
	[Diagnosis_Date] [datetime] NULL,
	[RMO_GP_Flag_ID] [int] NULL,
	[Diagnosis_By_ID] [int] NULL,
	[RMO_Name_ID] [int] NULL,
	[Confirm_Flag_ID] [int] NULL,
	[Confirm_Staff_Name] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Staff_Job_Title] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Date] [datetime] NULL,
	[RMO_Confirm_Date] [datetime] NULL,
	[Prev_Psy_Episode_ID] [int] NULL,
	[Primary_Diag] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_1] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_2] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_3] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_4] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_5] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_6] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Secondary_Diag_7] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Accept_Previous_Primary_Diag_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag1_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag2_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag3_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag4_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag5_ID] [int] NULL,
	[Accept_Previous_Secondary_Diag6_ID] [int] NULL,
	[End_Date] [datetime] NULL,
	[Comments] [text] COLLATE Latin1_General_CI_AS NULL,
	[User_Created] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL,
	[Status_Of_Diagnosis_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
