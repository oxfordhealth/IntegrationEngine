SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[ADA_Service] AS SELECT [ServiceRef], [Name], [Sort], [V2Import], [Obsolete], [Abbreviation], [Usage], [ServiceVisibility], [OtherServiceVisibility], [IncludeInDashboardExport] FROM [Mirror].[mrr_tbl].[ADA_Service];
GO
