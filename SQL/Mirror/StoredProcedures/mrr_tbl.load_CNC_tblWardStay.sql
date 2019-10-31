SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

				/*==========================================================================================================================================
				Notes:
				Template for loading Mirror table incrementally.

				TODO Is this the right place for the transactions? Should transaction handling be external to this procedure?

				Test:

				EXECUTE mrr_tbl.load_CNC_tblWardStay
				EXECUTE mrr_tbl.load_CNC_tblWardStay 'F'

				History:
				11/04/2018 OBMH\Steve.Nicoll Initial version.

				==========================================================================================================================================*/

				CREATE PROCEDURE [mrr_tbl].[load_CNC_tblWardStay]
					-- Add the parameters for the stored procedure here
					@LoadType NVARCHAR(1) = 'I' -- I= Incremental, F=Truncate/Insert
				AS
				BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with statement count.
					SET NOCOUNT ON;
					DECLARE @Threshold NUMERIC(4, 1) = 25.0; -- When gross change greater than this percentage, we will do a full reload. (Valid values between 0.0-100.0, to 1 decimal place.)
					DECLARE @OriginalTargetCount BIGINT,
							@WorkingCount INTEGER,
							@Inserted INTEGER = 0,
							@Updated INTEGER = 0,
							@Deleted INTEGER = 0,
							@StartTime DATETIME2 = GETDATE(),
							@EndTime DATETIME2;

					--Try...
					BEGIN TRY
						--	How many records in target (the count does not have to be super accurate but should be as fast as possible)?
						SET @OriginalTargetCount =
						(
							SELECT COUNT(*) FROM mrr_tbl.CNC_tblWardStay
						);

						--	Load working table from source.
						BEGIN TRANSACTION; -- INSERT INTO mrr_wrk.CNC_tblWardStay

						TRUNCATE TABLE mrr_wrk.CNC_tblWardStay;

						INSERT INTO mrr_wrk.CNC_tblWardStay
						(
							[Ward_Stay_ID], [Updated_Dttm]
						)
						SELECT [Ward_Stay_ID], [Updated_Dttm]
						FROM [MHOXCARESQL01\MHOXCARESQL01].[CareNotesOxfordCCHealthLive].[dbo].[tblWardStay];

						--	How many records in working table?
						SET @WorkingCount = @@ROWCOUNT;

						COMMIT TRANSACTION; -- INSERT INTO mrr_wrk.CNC_tblWardStay

						--	If 0 records in target or ABS(nW-nT) > Threshold force a Truncate/Insert. --TODO not ideal test but achievable without slowing the procedure down too much.
						IF ABS(@WorkingCount - @OriginalTargetCount) >= CAST((@OriginalTargetCount * @Threshold / 100) AS INTEGER)
							SET @LoadType = 'F';

						BEGIN TRANSACTION; -- Start transaction for the load and audit.

						--	We now do either a full (F) reload of the target or an incremental (I) load depending on what has been requested or how much data is changing.
						IF @LoadType = 'F'
						BEGIN
							--	Full load target from source.

							TRUNCATE TABLE mrr_tbl.CNC_tblWardStay;

							INSERT INTO mrr_tbl.CNC_tblWardStay
							(
								[Ward_Stay_ID], [Patient_ID], [Location_ID], [Admission_Type_ID], [Bed_Number_ID], [Ward_Stay_Observation_ID], [Planned_Start_Date], [Planned_Start_Time], [Planned_Start_Dttm], [Planned_End_Date], [Planned_End_Time], [Planned_End_Dttm], [Current_Status], [Current_Ward_Stay_Status_ID], [Actual_Start_Date], [Actual_Start_Time], [Actual_Start_Dttm], [Actual_End_Date], [Actual_End_Time], [Actual_End_Dttm], [Infection_Control_Issues_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm], [Hospital_Bed_Type_ID]
							)
							SELECT [Ward_Stay_ID], [Patient_ID], [Location_ID], [Admission_Type_ID], [Bed_Number_ID], [Ward_Stay_Observation_ID], [Planned_Start_Date], [Planned_Start_Time], [Planned_Start_Dttm], [Planned_End_Date], [Planned_End_Time], [Planned_End_Dttm], [Current_Status], [Current_Ward_Stay_Status_ID], [Actual_Start_Date], [Actual_Start_Time], [Actual_Start_Dttm], [Actual_End_Date], [Actual_End_Time], [Actual_End_Dttm], [Infection_Control_Issues_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm], [Hospital_Bed_Type_ID]
							FROM [MHOXCARESQL01\MHOXCARESQL01].[CareNotesOxfordCCHealthLive].[dbo].[tblWardStay];

							SET @Inserted = @@ROWCOUNT;

						END;
						--	Else load target incrementally...
						ELSE
						BEGIN

							--	Delete from target where target PK not in working table. --TODO We can save time by doing deletes and updated together but then we wouldn not be able to report separate counts for deleted/updated/inserted.
							DELETE tgt
							FROM mrr_tbl.CNC_tblWardStay AS tgt
							WHERE NOT EXISTS
							(
								SELECT NULL
								FROM mrr_wrk.CNC_tblWardStay AS src
								WHERE tgt.[Ward_Stay_ID] = src.[Ward_Stay_ID]
							);
							--	How many deleted?
							SET @Deleted = @@ROWCOUNT;

							--	Delete from target where working table PK & ChangeDetectionColumn not in target.
							DELETE tgt
							FROM mrr_tbl.CNC_tblWardStay AS tgt
							WHERE NOT EXISTS
							(
								SELECT NULL
								FROM mrr_wrk.CNC_tblWardStay AS src
								WHERE tgt.[Ward_Stay_ID] = src.[Ward_Stay_ID] AND tgt.[Updated_Dttm] = src.[Updated_Dttm]
							);
							--	How many updated?
							SET @Updated = @@ROWCOUNT;

							--		Insert into Target from source where working table PK & ChangeDetectionColumn not in target.
							INSERT INTO mrr_tbl.CNC_tblWardStay
							(
								[Ward_Stay_ID], [Patient_ID], [Location_ID], [Admission_Type_ID], [Bed_Number_ID], [Ward_Stay_Observation_ID], [Planned_Start_Date], [Planned_Start_Time], [Planned_Start_Dttm], [Planned_End_Date], [Planned_End_Time], [Planned_End_Dttm], [Current_Status], [Current_Ward_Stay_Status_ID], [Actual_Start_Date], [Actual_Start_Time], [Actual_Start_Dttm], [Actual_End_Date], [Actual_End_Time], [Actual_End_Dttm], [Infection_Control_Issues_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm], [Hospital_Bed_Type_ID]
							)
							SELECT src.[Ward_Stay_ID], src.[Patient_ID], src.[Location_ID], src.[Admission_Type_ID], src.[Bed_Number_ID], src.[Ward_Stay_Observation_ID], src.[Planned_Start_Date], src.[Planned_Start_Time], src.[Planned_Start_Dttm], src.[Planned_End_Date], src.[Planned_End_Time], src.[Planned_End_Dttm], src.[Current_Status], src.[Current_Ward_Stay_Status_ID], src.[Actual_Start_Date], src.[Actual_Start_Time], src.[Actual_Start_Dttm], src.[Actual_End_Date], src.[Actual_End_Time], src.[Actual_End_Dttm], src.[Infection_Control_Issues_ID], src.[User_Created], src.[Create_Dttm], src.[User_Updated], src.[Updated_Dttm], src.[Hospital_Bed_Type_ID]
							FROM [MHOXCARESQL01\MHOXCARESQL01].[CareNotesOxfordCCHealthLive].[dbo].[tblWardStay] AS src
							INNER JOIN (SELECT wrk.[Ward_Stay_ID] FROM mrr_wrk.CNC_tblWardStay wrk
									WHERE NOT EXISTS
									(
										SELECT NULL
										FROM mrr_tbl.CNC_tblWardStay AS tgt
										WHERE wrk.[Ward_Stay_ID] = tgt.[Ward_Stay_ID]
									)
								) MissingRecs ON (MissingRecs.[Ward_Stay_ID] = src.[Ward_Stay_ID]);


							--	How many really inserted? ROWCOUNT = inserted + updated records.
							SET @Inserted = @@ROWCOUNT - @Updated;

						--		Truncate working table? --TODO decide.
						END;

						--	Update audit table.
						SET @EndTime = GETDATE();

						INSERT INTO mrr_aud.CNC_tblWardStay
						(
							LoadType,
							RunByUser,
							StartTime,
							EndTime,
							Inserted,
							Updated,
							Deleted
						)
						VALUES
						(   @LoadType,   -- LoadType - nvarchar(1)
							SYSTEM_USER, -- RunByUser - nvarchar(128)
							@StartTime,  -- StartTime - datetime2(7)
							@EndTime,    -- EndTime - datetime2(7)
							@Inserted,   -- Inserted - int
							@Updated,    -- Updated - int
							@Deleted     -- Deleted - int
							);

						-- Commit the data lolad and audit table update.
						COMMIT TRANSACTION; -- INSERT INTO mrr_aud.CNC_tblWardStay

					END TRY
					--Catch if transaction open roll it back.
					BEGIN CATCH
						IF @@TRANCOUNT > 0
							ROLLBACK TRANSACTION;
						THROW;
					END CATCH;

				END;
				
GO
