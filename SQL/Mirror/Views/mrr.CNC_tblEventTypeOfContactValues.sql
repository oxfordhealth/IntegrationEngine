SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNC_tblEventTypeOfContactValues] AS SELECT [Event_Type_Of_Contact_ID], [Event_Type_Of_Contact_Desc], [Active], [Default_Flag], [External_Code1], [External_Code2], [Display_Order], [Auto_Start_Episode_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm], [MHSDS_Relevant_Event_ID] FROM [Mirror].[mrr_tbl].[CNC_tblEventTypeOfContactValues];
GO
