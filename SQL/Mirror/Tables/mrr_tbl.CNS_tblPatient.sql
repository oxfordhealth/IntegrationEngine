SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_tblPatient](
	[Patient_ID] [int] NOT NULL,
	[Access_Restricted_ID] [int] NULL,
	[NHS_Number] [varchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Health_Card_Number1] [varchar](12) COLLATE Latin1_General_CI_AS NULL,
	[Health_Card_Number2] [varchar](2) COLLATE Latin1_General_CI_AS NULL,
	[DATIS_Key] [varchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Title_ID] [int] NULL,
	[Forename] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Middle_Name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Surname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Last_Name_At_Birth] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Patient_Name] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Date_Of_Birth] [datetime] NULL,
	[Estimated_Year_Of_Birth] [int] NULL,
	[Date_Of_Death] [datetime] NULL,
	[Other_ID1] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Other_ID2] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Other_ID3] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Other_ID4] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Other_PJS_ID] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Cnv3_Unid] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Social_Service_ID] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[National_Insurance_Number] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[First_Year_Of_Care_Date] [varchar](4) COLLATE Latin1_General_CI_AS NULL,
	[First_Year_Of_Care_Text] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Accomodation_ID] [int] NULL,
	[First_Language_ID] [int] NULL,
	[Gender_ID] [int] NULL,
	[Sexuality_ID] [int] NULL,
	[Religion_ID] [int] NULL,
	[Marital_Status_ID] [int] NULL,
	[Lives_With_ID] [int] NULL,
	[Ethnicity_ID] [int] NULL,
	[Country_Of_Origin_ID] [int] NULL,
	[Place_Of_Birth] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[CAHMS_Care_Status_ID] [int] NULL,
	[Copy_Letters_To_Client_ID] [int] NULL,
	[Registered_Sex_Offender_ID] [int] NULL,
	[NHS_Trace_Flag] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Employment_ID] [int] NULL,
	[Welfare_Benefits_Client_ID] [int] NULL,
	[Mobility_Problem_ID] [int] NULL,
	[Hearing_Impairment_ID] [int] NULL,
	[Visual_Impairment_ID] [int] NULL,
	[DAT_Of_Residence_ID] [int] NULL,
	[Housing_Status] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Is_Interpreter_Needed_ID] [int] NULL,
	[Occupation_ID] [int] NULL,
	[Overseas_Visitor_ID] [int] NULL,
	[Asylum_Seeker_ID] [int] NULL,
	[Has_A_Twin_ID] [int] NULL,
	[User_Created] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL,
	[Patient_User_Field3_ID] [int] NULL,
	[Patient_User_Field4_ID] [int] NULL,
	[PDS_Patient_ID] [int] NULL,
	[Withheld_Identity_Reason_ID] [int] NULL,
	[NHS_Number_Verified_ID] [int] NULL,
	[Preferred_Location_Of_Death_ID] [int] NULL,
	[Soundex_Surname] [varchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Soundex_Forename] [varchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Risk_Unexpected_Death_ID] [int] NULL,
	[Safeguarding_Vulnerability_Factors_ID] [int] NULL,
	[Ex_British_Armed_Forces_ID] [int] NULL,
	[Offence_History_Indication_ID] [int] NULL
) ON [PRIMARY]

GO
