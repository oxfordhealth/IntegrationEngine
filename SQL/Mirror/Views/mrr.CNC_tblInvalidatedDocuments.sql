SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNC_tblInvalidatedDocuments] AS SELECT [CN_Doc_ID], [Set_Invalid_By_ID], [Set_Invalid_Date], [Invalid_Reason_ID], [Invalid_Description], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm] FROM [Mirror].[mrr_tbl].[CNC_tblInvalidatedDocuments];
GO
