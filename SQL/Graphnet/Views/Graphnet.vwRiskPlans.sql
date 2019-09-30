SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON








/*

Change Logs:
FS 28-Nov-2018 Added values Field1Desc and Field1Value
FS 31-Jul-2019 disabled the InvalidRiskAssessments block and added it to the tables join 
*/

CREATE  VIEW [Graphnet].[vwRiskPlans]
AS

-- FS 31-Jul-2019 desabled
--WITH InvalidRiskAssessments
--AS (
--   SELECT CNDoc.CN_Object_ID AS RiskAssessmentID
--   FROM mrr.CNS_tblCNDocument                     CNDoc
--       INNER JOIN mrr.CNS_tblInvalidatedDocuments InvalidDoc
--           ON InvalidDoc.CN_Doc_ID = CNDoc.CN_Doc_ID
--       INNER JOIN mrr.CNS_tblObjectTypeValues     ObjTyp
--           ON (ObjTyp.Object_Type_ID = CNDoc.Object_Type_ID)
--   WHERE ObjTyp.Key_Table_Name = 'udfOHFTGENRiskAssessmentv3')

SELECT [OHFTGENRiskAssessmentv3_ID]          AS 'RiskPlanID'
     , [OHFTGENRiskAssessmentv3_ID]          AS 'RiskAssessmentID'
     , risk.[Patient_ID]                     AS 'PatientID'
     , 125                                   AS 'TenancyID'
     , CONVERT(VARCHAR(23)
             , (
                   SELECT MAX([UpdatedDate])
                   FROM
                   (
                       VALUES
                           ([risk].[Updated_Dttm])
                   ) AS [AllDates] ([UpdatedDate])
               )
             , 21
              )                              AS [UpdatedDate]
     , CONVERT(VARCHAR(23), [StartDate], 21) AS 'DateEntered'
     , 'Risk Summary'                        AS 'Field1Description'
     , REPLACE(REPLACE(REPLACE(REPLACE(CAST(risk.RiskSummary AS VARCHAR(MAX)) , CHAR(13),''), CHAR(10),''),'|',''),'"','')    AS 'Field1Value'
     , CASE
           -- FS Disabled 31-Jul-2019
		   --WHEN InvalidRiskAssessments.RiskAssessmentID IS NULL THEN

		   -- FS Added 31-Jul-2019
		   WHEN InvalidDoc.CN_Doc_ID IS NULL THEN

		   
               0
           ELSE
               1
       END                                   AS 'Deleted'
FROM [Graphnet].[vwInscopePatient]                                     AS scope
    INNER JOIN [mrr].[CNS_udfOHFTGENRiskAssessmentv3] AS risk
        ON scope.[PatientNo] = risk.Patient_ID

-- FS 31-Jul-2019 Disabled
    --LEFT OUTER JOIN InvalidRiskAssessments
    --    ON InvalidRiskAssessments.RiskAssessmentID = risk.OHFTGENRiskAssessmentv3_ID

-- FS 31-Jul-2019 Added
	LEFT JOIN mrr.CNS_tblCNDocument                     CNDoc
		ON risk.OHFTGENRiskAssessmentv3_ID = CNDoc.CN_Object_ID
    INNER JOIN mrr.CNS_tblObjectTypeValues     ObjTyp
        ON ObjTyp.Object_Type_ID = CNDoc.Object_Type_ID
		AND ObjTyp.Key_Table_Name = 'udfOHFTGENRiskAssessmentv3'
    LEFT JOIN mrr.CNS_tblInvalidatedDocuments InvalidDoc
        ON InvalidDoc.CN_Doc_ID = CNDoc.CN_Doc_ID

WHERE Confirm_Flag_ID = 1;


GO
