SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

			/*==========================================================================================================================================
				Notes:
				Template for checking that Mirror table data matches the source data. This cannot compare text and blob datatype at present but it
				provides a good enough check that the mirror table is up to date.


				Test:

				EXECUTE mrr_tbl.reconcile_CNS_tblExternalCodeMappingContextValues

				History:
				11/04/2018 OBMH\Steve.Nicoll Initial version.

				==========================================================================================================================================*/

				CREATE PROCEDURE [mrr_tbl].[reconcile_CNS_tblExternalCodeMappingContextValues]
				-- Add the parameters for the stored procedure here
				AS
				BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with statement count.
					SET NOCOUNT ON;

					DECLARE @DiscrepacyCount BIGINT = 0;

					WITH GatherDiscrepancies
					AS ((SELECT 'In Mirror' AS DiscrepancySource
							   ,[External_Code_Mapping_Context_ID], [External_Code_Mapping_Context_Key], [External_Code_Mapping_Context_Desc], [External_Code_Mapping_Default_Value], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm]
						 FROM mrr_tbl.CNS_tblExternalCodeMappingContextValues
						 EXCEPT
						 SELECT 'In Mirror' AS DiscrepancySource
							   ,[External_Code_Mapping_Context_ID], [External_Code_Mapping_Context_Key], [External_Code_Mapping_Context_Desc], [External_Code_Mapping_Default_Value], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CareNotesOxfordLive].[dbo].[tblExternalCodeMappingContextValues])
						UNION ALL
						(SELECT 'In Source' AS DiscrepancySource
							   ,[External_Code_Mapping_Context_ID], [External_Code_Mapping_Context_Key], [External_Code_Mapping_Context_Desc], [External_Code_Mapping_Default_Value], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm]
						 FROM [MHOXCARESQL01\MHOXCARESQL01].[CareNotesOxfordLive].[dbo].[tblExternalCodeMappingContextValues]
						 EXCEPT
						 SELECT 'In Source' AS DiscrepancySource
							   ,[External_Code_Mapping_Context_ID], [External_Code_Mapping_Context_Key], [External_Code_Mapping_Context_Desc], [External_Code_Mapping_Default_Value], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm]
						 FROM mrr_tbl.CNS_tblExternalCodeMappingContextValues))
					SELECT @DiscrepacyCount = COUNT(*)
					FROM GatherDiscrepancies;


					IF @DiscrepacyCount > 0
						THROW 51000, 'Mirror table mrr_tbl.CNS_tblExternalCodeMappingContextValues has discrepancies when compared to its source table.', 1;

				END;
				
GO
