SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

			/*==========================================================================================================================================
				Notes:
				Template for checking that Mirror table data matches the source data. This cannot compare text and blob datatype at present but it
				provides a good enough check that the mirror table is up to date.


				Test:

				EXECUTE mrr_tbl.reconcile_CCH_ChildHealthCentre

				History:
				11/04/2018 OBMH\Steve.Nicoll Initial version.

				==========================================================================================================================================*/

				CREATE PROCEDURE [mrr_tbl].[reconcile_CCH_ChildHealthCentre]
				-- Add the parameters for the stored procedure here
				AS
				BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with statement count.
					SET NOCOUNT ON;

					DECLARE @DiscrepacyCount BIGINT = 0;

					WITH GatherDiscrepancies
					AS ((SELECT 'In Mirror' AS DiscrepancySource
							   ,[Idx], [Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Name], [CarenotesTeamId], [StartSchedulingDate], [EndSchedulingDate], [Code], [LabCode], [CarenotesPracticeId], [CarenotesSchoolId], [CarenotesClinicGroupId], [ExcludeFromCarenotesTeamAutoAssign], [Removed]
						 FROM mrr_tbl.CCH_ChildHealthCentre
						 EXCEPT
						 SELECT 'In Mirror' AS DiscrepancySource
							   ,[Idx], [Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Name], [CarenotesTeamId], [StartSchedulingDate], [EndSchedulingDate], [Code], [LabCode], [CarenotesPracticeId], [CarenotesSchoolId], [CarenotesClinicGroupId], [ExcludeFromCarenotesTeamAutoAssign], [Removed]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CNChildHealth-OxfordCCHealth-Live].[dbo].[ChildHealthCentre])
						UNION ALL
						(SELECT 'In Source' AS DiscrepancySource
							   ,[Idx], [Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Name], [CarenotesTeamId], [StartSchedulingDate], [EndSchedulingDate], [Code], [LabCode], [CarenotesPracticeId], [CarenotesSchoolId], [CarenotesClinicGroupId], [ExcludeFromCarenotesTeamAutoAssign], [Removed]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CNChildHealth-OxfordCCHealth-Live].[dbo].[ChildHealthCentre]
						 EXCEPT
						 SELECT 'In Source' AS DiscrepancySource
							   ,[Idx], [Id], [CreatedDateTime], [ExpiredDateTime], [CareNotesUserId], [ChildHealthClientVersion], [Name], [CarenotesTeamId], [StartSchedulingDate], [EndSchedulingDate], [Code], [LabCode], [CarenotesPracticeId], [CarenotesSchoolId], [CarenotesClinicGroupId], [ExcludeFromCarenotesTeamAutoAssign], [Removed]
						 FROM mrr_tbl.CCH_ChildHealthCentre))
					SELECT @DiscrepacyCount = COUNT(*)
					FROM GatherDiscrepancies;


					IF @DiscrepacyCount > 0
						THROW 51000, 'Mirror table mrr_tbl.CCH_ChildHealthCentre has discrepancies when compared to its source table.', 1;

				END;
				
GO
