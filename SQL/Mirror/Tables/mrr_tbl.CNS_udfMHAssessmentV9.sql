SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [mrr_tbl].[CNS_udfMHAssessmentV9](
	[MHAssessmentV9_ID] [int] NOT NULL,
	[Patient_ID] [int] NULL,
	[Confirm_Flag_ID] [int] NULL,
	[Confirm_Date] [datetime] NULL,
	[Confirm_Time] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Staff_Name] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Confirm_Staff_Job_Title] [varchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OriginalAuthorID] [int] NULL,
	[fldEnteredDate] [datetime] NULL,
	[fldEnteredTime] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[StartDate] [datetime] NULL,
	[StartTime] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[ReplanRequested] [int] NULL,
	[DocumentGroupIdentifier] [int] NULL,
	[PreviousCNObjectID] [int] NULL,
	[fldServiceSettingID] [int] NULL,
	[fldGenAssessPresSit] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessHistComp] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessPastMedHist] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessCurrMeds] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessPastPsycHist] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessPersHist] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessFamHist] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessFrsicHist] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessSocCirc] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAlcDrugUsage] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessSpiritNeeds] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessIsACarer] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessPreMorbid] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldSafeguardingStatusID] [int] NULL,
	[fldDependentsID] [int] NULL,
	[fldDependentsDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessCapcityAtTime] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessAppearance] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessBehaviour] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessSpeech] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessMood] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessThoughts] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessPerception] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessCognition] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGenAssessInsight] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldEatingBehaviours] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldSchool] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldEngagement] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldDevHistory] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldObsBehaviour] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldManagingNutritionID] [int] NULL,
	[fldManagingNutritionDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPersonalHygieneID] [int] NULL,
	[fldPersonalHygieneDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldToiletNeedsID] [int] NULL,
	[fldToiletNeedsDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAppropriateClothID] [int] NULL,
	[fldAppropriateClothDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAdultsHomeID] [int] NULL,
	[fldAdultsHomeDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldHomeEnvironmentID] [int] NULL,
	[fldHomeEnvironmentDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldOtherPersonalRelationshipsID] [int] NULL,
	[fldOtherPersonalRelationshipsDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAccessAndEngageID] [int] NULL,
	[fldAccessAndEngageDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldFacilitiesOrServicesID] [int] NULL,
	[fldFacilitiesOrServicesDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldCaringResponsibilitiesID] [int] NULL,
	[fldCaringResponsibilitiesDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPsychoTherapiesNeededID] [int] NULL,
	[fldPsychoTherapiesNeededDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPresenting] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPrecipitating] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPredisposing] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPerpetuating] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldProtective] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAnnualHealthCheckID] [int] NULL,
	[fldAnnualHealthCheckDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldHospActionPlanID] [int] NULL,
	[fldHospActionPlanDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldHospPassportID] [int] NULL,
	[fldHospPassportDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldEyeTestID] [int] NULL,
	[fldEyeTestDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldDentalCheckUpID] [int] NULL,
	[fldDentalCheckUpDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldHealthScreeningID] [int] NULL,
	[fldHealthScreeningDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldCommunication] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldMobilityFalls] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldOccupation] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldEatingAndDrinking] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldSleep] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldEpilepsyID] [int] NULL,
	[fldChkPhysicalHealthID] [int] NULL,
	[fldChkMentalHealthID] [int] NULL,
	[fldChkForensicsID] [int] NULL,
	[fldChkEpilepsyID] [int] NULL,
	[fldChkChallengingBehaviourID] [int] NULL,
	[fldChkDementiaID] [int] NULL,
	[fldChkAutismID] [int] NULL,
	[fldMaternityObstetic] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldCurrentlyPregnantID] [int] NULL,
	[fldDueDate] [datetime] NULL,
	[fldPrevPregnancies] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldPregnancyAndDeliveryDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldRelationshipUnbornChild] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldChkPresentingID] [int] NULL,
	[fldChkEstrangementID] [int] NULL,
	[fldChkSuddenID] [int] NULL,
	[fldChkPreviousID] [int] NULL,
	[fldChkViolentID] [int] NULL,
	[fldChkHarmID] [int] NULL,
	[fldThirdPartyInfo] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldMedChangesID] [int] NULL,
	[fldMedChangesFurtherDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldGPActionsID] [int] NULL,
	[fldGPActionsFurtherDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldClinicalReviewID] [int] NULL,
	[fldClinicalReviewFurtherDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldAdditionalPlansID] [int] NULL,
	[fldAdditionalPlansFurtherDetails] [text] COLLATE Latin1_General_CI_AS NULL,
	[fldContactedByResearchID] [int] NULL,
	[fldAssessmentLetterID] [int] NULL,
	[fldReceiveCopyID] [int] NULL,
	[flgChkReplanned] [int] NULL,
	[flgChkSaved] [int] NULL,
	[flgExistingForm] [int] NULL,
	[flgValidParent] [int] NULL,
	[User_Created] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Create_Dttm] [datetime] NULL,
	[User_Updated] [varchar](100) COLLATE Latin1_General_CI_AS NULL,
	[Updated_Dttm] [datetime] NOT NULL,
	[fldChkAbsconsionID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
