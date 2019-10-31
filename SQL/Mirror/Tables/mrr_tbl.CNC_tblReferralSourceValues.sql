SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNC_tblReferralSourceValues](
	[Referral_Source_ID] [int] NOT NULL,
	[Referral_Source_Desc] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Referral_Source_Type_ID] [int] NULL,
	[Scope] [int] NULL,
	[Active] [int] NULL,
	[Default_Flag] [int] NULL,
	[External_Code1] [varchar](20) COLLATE Latin1_General_CI_AS NULL,
	[External_Code2] [varchar](20) COLLATE Latin1_General_CI_AS NULL,
	[Display_Order] [int] NULL,
	[User_Created] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL
) ON [PRIMARY]

GO
