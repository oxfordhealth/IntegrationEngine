SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNC_tblExternalCodeMappingDataSource] AS SELECT [External_Code_Mapping_Data_Source_ID], [External_Code_Mapping_Context_ID], [External_Code_Mapping_Data_Source_Key], [External_Code_Mapping_Default_Value], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm] FROM [Mirror].[mrr_tbl].[CNC_tblExternalCodeMappingDataSource];
GO
