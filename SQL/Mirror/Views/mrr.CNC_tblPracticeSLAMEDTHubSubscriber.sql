SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNC_tblPracticeSLAMEDTHubSubscriber] AS SELECT [Practice_SLAM_EDT_Hub_Subscriber_ID], [Practice_ID], [Enable_EDT_Hub_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm] FROM [Mirror].[mrr_tbl].[CNC_tblPracticeSLAMEDTHubSubscriber];
GO
