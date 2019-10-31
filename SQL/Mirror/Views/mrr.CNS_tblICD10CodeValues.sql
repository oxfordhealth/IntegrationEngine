SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNS_tblICD10CodeValues] AS SELECT [ICD10_Code_ID], [ICD10_Code_Desc], [ICD10_Group_ID], [Active], [Default_Flag], [External_Code1], [External_Code2], [Display_Order], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm] FROM [Mirror].[mrr_tbl].[CNS_tblICD10CodeValues];
GO
