SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_tblCPAReview](
	[CPA_Review_ID] [int] NOT NULL,
	[Patient_ID] [int] NULL,
	[CPA_Start_ID] [int] NULL,
	[CPA_Review_Status_ID] [int] NULL,
	[Plan_Month_ID] [int] NULL,
	[Plan_Year_ID] [int] NULL,
	[CPA_Review_Type_ID] [int] NULL,
	[Sch_For_Staff_ID] [int] NULL,
	[Sch_Date] [datetime] NULL,
	[Sch_Start_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Sch_End_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Sch_Location_ID] [int] NULL,
	[CPA_Employment_Status_ID] [int] NULL,
	[CPA_Weekly_Hours_Worked_ID] [int] NULL,
	[CPA_Accomodation_Status_ID] [int] NULL,
	[CPA_Settled_Accomodation_Indicator_ID] [int] NULL,
	[External_Invitees] [text] COLLATE Latin1_General_CI_AS NULL,
	[Act_Date] [datetime] NULL,
	[Act_Start_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Act_End_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Act_Location_ID] [int] NULL,
	[Act_Attended_By_Staff_ID] [int] NULL,
	[External_Attendees] [text] COLLATE Latin1_General_CI_AS NULL,
	[Client_Given_Plan_ID] [int] NULL,
	[Care_Plan_Reviewed_ID] [int] NULL,
	[Risk_Assessment_Completed_ID] [int] NULL,
	[HoNOS_Completed_ID] [int] NULL,
	[Section_117_Status_Reviewed_ID] [int] NULL,
	[Social_Worker_Involved_ID] [int] NULL,
	[Child_Assessment_Requested_ID] [int] NULL,
	[Day_Centre_Involved_ID] [int] NULL,
	[Sheltered_Work_Involved_ID] [int] NULL,
	[Non_NHS_Res_Accom_ID] [int] NULL,
	[Domicil_Care_Involved_ID] [int] NULL,
	[Level_Change_ID] [int] NULL,
	[New_Level_ID] [int] NULL,
	[Care_Coord_Change_ID] [int] NULL,
	[Next_Meeting_Date] [datetime] NULL,
	[Next_Step_ID] [int] NULL,
	[Moved_To] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Contact_Info] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Responsibility_Of] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Moved_To_Accepted_ID] [int] NULL,
	[Receiving_Direct_Payments_ID] [int] NULL,
	[Individual_Budget_Agreed_ID] [int] NULL,
	[Other_Financial_Considerations_ID] [int] NULL,
	[Comments] [text] COLLATE Latin1_General_CI_AS NULL,
	[Accommodation_Status_Date] [datetime] NULL,
	[Employment_Status_Date] [datetime] NULL,
	[Abuse_Question_Asked_ID] [int] NULL,
	[Attendance_Type_ID] [int] NULL,
	[User_Created] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL,
	[Smoking_Status_ID] [int] NULL,
	[Patient_Proxy_Attended_ID] [int] NULL,
	[Patient_Proxy_Invited_ID] [int] NULL,
	[Earliest_Reasonable_Offer_Date] [datetime] NULL,
	[Earliest_Clinically_Appropriate_Date] [datetime] NULL,
	[Replacement_Appointment_Date_Offered] [datetime] NULL,
	[Replacement_Appointment_Booked_Date] [datetime] NULL,
	[EROD_Override_Reason_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
