SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[ADA_HumanLanguage] AS SELECT [HumanLanguageRef], [Name], [Code], [Sort], [Obsolete] FROM [Mirror].[mrr_tbl].[ADA_HumanLanguage];
GO
