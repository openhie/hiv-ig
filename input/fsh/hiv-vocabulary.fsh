Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org
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

CodeSystem: CSHIVVLReason
Id: cs-hiv-vl-reason
Title: "HIV VL Reason codes"
Description: "A list of Viral Load test reasons"
* #BASELINE-VL "Baseline Viral Load"
* #CHANGE-REGIMEN "Change regimen"
* #CLINICAL-failure "Clinical failure"
* #CONFIRMATION-TREATMENT-FAILURE' "Confirmation of treatment failure"
* #CURRENTLY-BREASTFEEDING-CHILD "Currently breastfeeding child"
* #CURRENTLY-PREGNANT "Currently pregnant"
* #PERSISTENT-LOW-LEVEL-VIREMIA "Persistent low-Level viremia"
* #RECENCY-ASSAY "Recency Assay"
* #REGIMEN-FAILURE "Regimen failure"
* #REPEAT "Repeat"
* #RESULTS-NOT-AVAILABLE "Results not available"
* #ROUTINE-VIRAL-LOAD "Routine Viral Load"

ValueSet: VSHIVVLReason
Id: vs-hiv-vl-reason
Title: "HIV VL Reason codes"
Description: "Valueset - Viral Load test reasons"
* include codes from system CSHIVVLReason

CodeSystem: CSARTStatus
Id: cs-art-status
Title: "HIV VL Reason codes"
Description: "A list of Viral Load test reasons"
* #IIT "Interruption in Treatment"
* #Active "Active"
* #Dead "Dead"
* #Transferred-OUT "Transferred-OUT"

ValueSet: VSARTStatus
Id: vs-art-status
Title: "HIV VL Reason codes"
Description: "Value-set for Viral Load test reasons"
* include codes from system CSARTStatus
