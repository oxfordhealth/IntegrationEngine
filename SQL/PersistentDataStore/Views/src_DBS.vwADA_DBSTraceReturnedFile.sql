SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON



CREATE VIEW [src_DBS].[vwADA_DBSTraceReturnedFile]
AS

SELECT  [RecordType]
      ,[LocalPID]
      ,[NoMultipleMatches]
      ,[TraceNHS]
      ,[DOB]
      ,[DoD]
      ,[OldNHSNumber]
      ,[NewNHSNumber]
      ,[Surname]
      ,[AltSurname]
      ,[Forename]
      ,[AltForename]
      ,[Sex]
      ,[Address1]
      ,[Address2]
      ,[Address3]
      ,[Address4]
      ,[Address5]
      ,[Postcode]
      ,[PrevAddress1]
      ,[PrevAddress2]
      ,[PrevAddress3]
      ,[PrevAddress4]
      ,[PrevAddress5]
      ,[PrevPostcode]
      ,[GP]
      ,[GPPract]
      ,[PrevGP]
      ,[PrevGPPract]
      ,[ReturnedDOB]
      ,[DateReturnedDateLastModified]
      ,[DeadIndicator]
      ,[DateCRLastModified]
      ,[ReturnDateOfPosting]
      ,[DatePostLastUpdated]
      ,[ReturnSurname]
      ,[DM1]
      ,[ReturnedForename]
      ,[DM2]
      ,[ReturnaltSurname]
      ,[DM3]
      ,[ReturnOtherForename]
      ,[DM4]
      ,[ReturnedSex]
      ,[DM5]
      ,[ReturnedAddressLine_1]
      ,[DM6]
      ,[ReturnedAddressLine_2]
      ,[DM7]
      ,[ReturnedAddressLine_3]
      ,[DM8]
      ,[ReturnedAddressLine_4]
      ,[DM9]
      ,[ReturnedAddressLine_5]
      ,[DM10]
      ,[ReturnedPostcode]
      ,[DM11]
      ,[ReturnedRegisteredGP]
      ,[DM12]
      ,[ReturnedRegisteredGPPractice]
      ,[DM13]
  FROM [PersistentDataStore].[src_DBS].[tblADA_DBSTraceReturnedFile]

GO
