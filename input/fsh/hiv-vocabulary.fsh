Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org
Alias: $CIEL = https://openconceptlab.org
Alias: $OMRS = https://openmrs.org
Alias: $MaritalStatus = http://hl7.org/fhir/ValueSet/marital-status

CodeSystem: CSKeyPopulation
Id: cs-key-population
Title: "Key population"
Description: "A list of key population types"
* #GENERAL-POPULATION "General Population"
* #MSM "MSM"
* #FSW "FSW"
* #MSW "MSW"
* #PWID "PWID"
* #PWUD "PWUD"
* #TRANSGENDER "Transgender"

ValueSet: VSKeyPopulation
Id: vs-key-population
Title: "Key population"
Description: "A list of key population types"
* include codes from system CSKeyPopulation

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description:  "Valueset - marital statuses"
* $MaritalStatus#S "Never Married"
* $MaritalStatus#M "Married"
* $MaritalStatus#P "Polygamous"
* $MaritalStatus#T "Domestic partner"
* $MaritalStatus#D "Divorced"

CodeSystem: CSVLInterpretation
Id: cs-vl-interpretation
Title: "Viral load Interpretation"
Description: "A list of Viral load Interpretations"
* #D "Detectable"
* #ND "Non Detectable"
* #UNK "Unknown"

ValueSet: VSVLInterpretation
Id: vs-vl-interpretation
Title: "Viral load Interpretation"
Description: "Valueset - Viral load Interpretations"
* include codes from system CSVLInterpretation

CodeSystem: CSVLSuppression
Id: cs-vl-suppression
Title: "Viral load Suppression"
Description: "A list of Viral load Suppression"
* #SUP "Suppressed"
* #UNSUP "Unsuppressed"
* #UNK "Unknown"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral load Suppression"
Description: "Valueset - Viral load Suppression"
* include codes from system CSVLSuppression

CodeSystem: CSVLCauseOfDeath
Id: cs-vl-causeofdeath
Title: "Cause Of Death"
Description: "A list of CauseOfDeaths"
* #HIV "HIV Related"
* #NON-HIV "Non HIV related"

ValueSet: VSVLCauseOfDeath
Id: vs-vl-causeofdeath
Title: "Cause Of Death"
Description: "Valueset - CauseOfDeaths"
* include codes from system CSVLCauseOfDeath

CodeSystem: CSARTRegimenLines
Id: cs-artregimen-lines
Title: "ART Regimen Lines"
Description: ""
* #FIRST-LINE "First line ARTs"
* #SECOND-LINE "Second line ARTs"
* #THIRD-LINE "Third line ARTs"
* #SPECIAL-UNKNOWN "Special/Unknown"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "VSART Regimen Lines"
Description: ""
* include codes from system CSARTRegimenLines

CodeSystem: CSCaseReportSections
Id: cs-case-report-sections
Title: "HIV Case Report Sections codesystem"
Description: ""
* #CLIENT-REGISTRATION
* #HIV-DIAGNOSIS
* #HIV-ENTRY-TO-CARE
* #ARV-TREATMENT
* #CD4
* #VIRAL-SUPPRESSION
* #DEATH

CodeSystem: CSHIVObsCodes
Id: cs-hiv-obs-codes
Title: "HIV Case Report Observation codes"
Description: ""
* #HIV-RECENCY-TEST-CONDUCTED "HIV recency test conducted"
* #HIV-RECENCY-RESULT "HIV recency result"
* #CD4-RESULT "CD4 result"
* #VL-RESULT "Viral load result"
* #CAUSE-OF-DEATH "Cause of death"
* #HIV-DATE-RECENCY-TEST "HIV date recency rest"
* #HIV-ACTUAL-RECENCY-TEST-RESULT "HIV actual recency test result" 
* #VL-MOST-RECENT-TEST-DATE "VL most recent test date" 
* #VL-MOST-RECENT-TEST-RESULT "VL most recent test result" 
* #DATE-TESTED-FOR-HIV "Date tested for HIV"

CodeSystem: CSHIVVLReason
Id: vl-reason-codes
Title: "HIV VL Reason codes"
Description: "A list of Viral Load test reasons"
* #5d4e13af-92ec-4b91-a8e4-97818810e577 "Baseline Viral Load"
* #1259 "Change regimen"
* #163523 "Clinical failure"
* #67143af5-c443-4a4f-a678-f3981b4fcb0f "Confirmation of treatment failure"
* #5632 "Currently breastfeeding child"
* #1434 "Currently pregnant"
* #e185de1e-a9b3-4b10-86df-2300bf4476bb "Persistent low-Level viremia"
* #c2aed192-73fc-405f-8cc2-776a4da81d59 "Recency Assay"
* #843 "Regimen failure"
* #162081 "Repeat"
* #164369 "Results not available"
* #be5d6a4a-4018-49dd-869f-273c9f5fec9e "Routine Viral Load"

ValueSet: VSHIVVLReason
Id: vs-hiv-vl-reason
Title: "HIV VL Reason codes"
Description: "Valueset - Viral Load test reasons"
* include codes from system CSHIVVLReason

CodeSystem: CSARTStatus
Id: cs-art-status
Title: "ART Status code list"
Description: "A list of ART status codes"
* #164349 "Interruption in Treatment"
* #Active "Active"
* #159 "Dead"
* #159492 "Transferred-OUT"

ValueSet: VSARTStatus
Id: vs-art-status
Title: "Value-set for ART Status code"
Description: "Value-set for ART status codes"
* include codes from system CSARTStatus

ValueSet: VSCarePlanActivityOutcome
Id: vs-careplan-outcome
Title: "ARV treatment outcomes"
Description: "Value-set for ARV treatment plan outcomes"
* include codes from system $SCT where concept is-a #439771001 "Contacted" //indicates lost to follow up
* include codes from system $CIEL where concept is-a #162572 "Refused"  //#162572 "Refused"  //CIEL Code indicates ART Stopped -->SNOMED CT : 105480006 maps to Refusal of treatment by patient

ValueSet: VSPatientTypeEnrolment
Id: vs-patient-enrolment-type
Title: "Patient Type at Enrolment"
Description: "Value-set for Patient Type at Enrolment"
* include codes from system $OMRS where concept is-a #163532 "Mother enrolled in PMTCT program" 
* include codes from system $OMRS where concept is-a #159833 "Re-enroll"  
* include codes from system $OMRS where concept is-a #160563 "Transfer in"  
* include codes from system $OMRS where concept is-a #164144 "New client" 