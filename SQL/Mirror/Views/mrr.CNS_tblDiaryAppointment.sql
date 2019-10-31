SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE VIEW [mrr].[CNS_tblDiaryAppointment] AS SELECT [Diary_Appointment_ID], [Patient_ID], [Created_By_Staff_ID], [Service_ID], [Location_ID], [DH_Session_Type_ID], [Attendance_Type_ID], [Event_Type_ID], [No_Clinicians_Attendee_Flag_ID], [Scheduled_Other_Invitees], [Scheduled_CPA_Review_Flag_ID], [Scheduled_Interpreter_Reqd_Flag_ID], [Scheduled_Location_ID], [Scheduled_Room_ID], [Scheduled_Start_Date], [Scheduled_Overnight_Flag_ID], [Scheduled_End_Date], [Scheduled_Start_Time], [Scheduled_End_Time], [Scheduled_Start_Dttm], [Scheduled_End_Dttm], [Scheduled_Event_Type_Of_Contact_ID], [Att_Other_Invitees], [Att_CPA_Review_Flag_ID], [Att_Interpreter_Attended_Flag_ID], [Att_Location_ID], [Att_Room_ID], [Att_Start_Date], [Att_End_Date], [Att_Overnight_Flag_ID], [Att_Start_Time], [Att_End_Time], [Att_Start_Dttm], [Att_End_Dttm], [Att_Event_Type_Of_Contact_ID], [Comments], [Transport_Required_ID], [Transport_Provider_ID], [Transport_Ambulance_Reference], [Transport_Manning_Type_ID], [Transport_Gender_Preference_ID], [Transport_Type_ID], [Transport_Groups_Flag_ID], [Transport_Start_Date], [Transport_End_Date], [Invitee_Staff_Only_ID], [Attendee_Staff_Only_ID], [User_Created], [Create_Dttm], [User_Updated], [Updated_Dttm], [Object_Type_ID], [Att_Patient_Proxy_Attended_ID], [Scheduled_Patient_Proxy_Invited_ID], [Earliest_Reasonable_Offer_Date], [Earliest_Clinically_Appropriate_Date], [Replacement_Appointment_Date_Offered], [Replacement_Appointment_Booked_Date], [EROD_Override_Reason_ID] FROM [Mirror].[mrr_tbl].[CNS_tblDiaryAppointment];
GO
