SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Graphnet_Config].[TableTracker](
	[TABLE_NAME] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[ExtractID] [bigint] NOT NULL,
	[MaxUpdateTime] [datetime] NULL
) ON [PRIMARY]

GO
