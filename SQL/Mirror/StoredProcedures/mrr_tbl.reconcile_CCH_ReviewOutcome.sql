SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

			/*==========================================================================================================================================
				Notes:
				Template for checking that Mirror table data matches the source data. This cannot compare text and blob datatype at present but it
				provides a good enough check that the mirror table is up to date.


				Test:

				EXECUTE mrr_tbl.reconcile_CCH_ReviewOutcome

				History:
				11/04/2018 OBMH\Steve.Nicoll Initial version.

				==========================================================================================================================================*/

				CREATE PROCEDURE [mrr_tbl].[reconcile_CCH_ReviewOutcome]
				-- Add the parameters for the stored procedure here
				AS
				BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with statement count.
					SET NOCOUNT ON;

					DECLARE @DiscrepacyCount BIGINT = 0;

					WITH GatherDiscrepancies
					AS ((SELECT 'In Mirror' AS DiscrepancySource
							   ,[Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Description], [ReviewOutcomeType], [ConsultationTemplateType], [Code], [DoNotReschedule], [CyphsCode]
						 FROM mrr_tbl.CCH_ReviewOutcome
						 EXCEPT
						 SELECT 'In Mirror' AS DiscrepancySource
							   ,[Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Description], [ReviewOutcomeType], [ConsultationTemplateType], [Code], [DoNotReschedule], [CyphsCode]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CNChildHealth-OxfordCCHealth-Live].[dbo].[ReviewOutcome])
						UNION ALL
						(SELECT 'In Source' AS DiscrepancySource
							   ,[Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Description], [ReviewOutcomeType], [ConsultationTemplateType], [Code], [DoNotReschedule], [CyphsCode]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CNChildHealth-OxfordCCHealth-Live].[dbo].[ReviewOutcome]
						 EXCEPT
						 SELECT 'In Source' AS DiscrepancySource
							   ,[Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Description], [ReviewOutcomeType], [ConsultationTemplateType], [Code], [DoNotReschedule], [CyphsCode]
						 FROM mrr_tbl.CCH_ReviewOutcome))
					SELECT @DiscrepacyCount = COUNT(*)
					FROM GatherDiscrepancies;


					IF @DiscrepacyCount > 0
						THROW 51000, 'Mirror table mrr_tbl.CCH_ReviewOutcome has discrepancies when compared to its source table.', 1;

				END;
				
GO
