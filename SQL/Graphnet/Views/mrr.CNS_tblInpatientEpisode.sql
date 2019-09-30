SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE VIEW [mrr].[CNS_tblInpatientEpisode] AS SELECT [Inpatient_Episode_ID], [Admission_Type_ID], [Planned_Admission_Date], [Last_Discharge_Date], [Ninety_Day_Readmission_Flag_ID], [Ninety_Day_Readmission_Status], [MHA_Admission_Status_ID], [Section_Start_Date], [Admission_Source_ID], [Admission_Time], [Admission_Method_ID], [Management_Code_ID], [Gender_ID], [Accomodation_ID], [Lives_With_ID], [Ethnicity_ID], [Employment_ID], [Overseas_Visitor_Status_ID], [Valuables_In_Safe_Keeping_Flag_ID], [Admission_Address1], [Admission_Address2], [Admission_Address3], [Admission_Address4], [Admission_Address5], [Admission_Post_Code], [Admission_Telephone], [Admission_Fax], [Planned_Discharge_Date], [Delayed_Discharge_Date], [Delayed_Discharge_Code_ID], [Responsibility_Of_Care_ID], [Seven_Day_Disch_Followup_Required_ID], [Seven_Day_Disch_Followup_By_Whom_Staff_ID], [Seven_Day_Disch_Followup_Date], [Sick_Certificate_Required_And_Used_ID], [Physical_Description_Recorded_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm] FROM [Mirror].[mrr_tbl].[CNS_tblInpatientEpisode];

GO
