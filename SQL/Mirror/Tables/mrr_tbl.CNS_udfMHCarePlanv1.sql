SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_udfMHCarePlanv1](
	[MHCarePlanv1_ID] [int] NOT NULL,
	[Patient_ID] [int] NULL,
	[Confirm_Flag_ID] [int] NULL,
	[Confirm_Date] [datetime] NULL,
	[Confirm_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Staff_Name] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Staff_Job_Title] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OriginalAuthorID] [int] NULL,
	[flstrtdate] [datetime] NULL,
	[flrevdate] [datetime] NULL,
	[Hidden_items] [varchar](8000) COLLATE Latin1_General_CI_AS NULL,
	[Icd_10] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Cluster_lvl] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[fldneed1] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint1] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho1] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed2] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint2] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho2] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed3] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint3] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho3] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed4] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint4] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho4] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed5] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint5] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho5] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed6] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint6] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho6] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed7] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint7] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho7] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed8] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint8] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho8] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed9] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint9] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho9] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed10] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint10] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho10] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed11] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint11] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho11] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed12] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint12] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho12] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed13] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint13] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho13] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed14] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint14] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho14] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed15] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint15] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho15] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed16] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint16] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho16] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed17] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint17] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho17] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed18] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint18] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho18] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed19] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint19] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho19] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldneed20] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldint20] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldwho20] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldcurmed] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldlvlinv] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldothrcom] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldtrigwarn] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldcrspln] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldcontpln] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldsrvcusr] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldinfoshar] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldcpcopyID] [int] NULL,
	[fldreason] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldshrdate] [datetime] NULL,
	[flgrb] [int] NULL,
	[flgnd1] [int] NULL,
	[flgnd2] [int] NULL,
	[flgnd3] [int] NULL,
	[flgnd4] [int] NULL,
	[flgnd5] [int] NULL,
	[flgnd6] [int] NULL,
	[flgnd7] [int] NULL,
	[flgnd8] [int] NULL,
	[flgnd9] [int] NULL,
	[flgnd10] [int] NULL,
	[flgnd11] [int] NULL,
	[flgnd12] [int] NULL,
	[flgnd13] [int] NULL,
	[flgnd14] [int] NULL,
	[flgnd15] [int] NULL,
	[flgnd16] [int] NULL,
	[flgnd17] [int] NULL,
	[flgnd18] [int] NULL,
	[flgnd19] [int] NULL,
	[flgnd20] [int] NULL,
	[ReplanRequested] [int] NULL,
	[DocumentGroupIdentifier] [int] NULL,
	[PreviousCNObjectID] [int] NULL,
	[User_Created] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL,
	[fldEnteredDate] [datetime] NULL,
	[fldEnteredTime] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[StartDate] [datetime] NULL,
	[StartTime] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[fldSafetyPlanFileName] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[fldSafetyPlan] [varbinary](max) NULL,
	[fldCarePlanType1ID] [int] NULL,
	[fldCarePlanType2ID] [int] NULL,
	[fldCarePlanType3ID] [int] NULL,
	[fldCarePlanType4ID] [int] NULL,
	[fldCarePlanType5ID] [int] NULL,
	[fldCarePlanType6ID] [int] NULL,
	[fldCPType] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldCarePlanAgreed1ID] [int] NULL,
	[fldCarePlanAgreed2ID] [int] NULL,
	[fldCarePlanAgreed3ID] [int] NULL,
	[fldCarePlanAgreed4ID] [int] NULL,
	[fldCarePlanAgreed5ID] [int] NULL,
	[fldCarePlanAgreed6ID] [int] NULL,
	[fldCarePlanAgreed7ID] [int] NULL,
	[fldCPAgreed] [text] COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
