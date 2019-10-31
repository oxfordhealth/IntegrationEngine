SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_tblExternalCodeMappingDataSource](
	[External_Code_Mapping_Data_Source_ID] [int] NOT NULL,
	[External_Code_Mapping_Context_ID] [int] NULL,
	[External_Code_Mapping_Data_Source_Key] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[External_Code_Mapping_Default_Value] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[User_Created] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL
) ON [PRIMARY]

GO
