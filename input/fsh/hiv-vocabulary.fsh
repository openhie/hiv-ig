Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org
Alias: $GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: $MaritalStatus = http://hl7.org/fhir/ValueSet/marital-status
Alias: $HIVObs = http://ohie.org/fhir/ValueSet/hiv-observation-codes

CodeSystem: CSKeyPopulation
Id: cs-key-population
Title: "Key population"
Description: "A list of key population types"
* #MSM
* #FSW
* #MSW
* #PWID
* #PWUD
* #transgender

ValueSet: VSKeyPopulation
Id: vs-key-population
Title: "Key population"
Description: "A list of key population types"
* include codes from system CSKeyPopulation

ValueSet: VSGenderIdentity
Id: vs-gender-identity
Title: "Gender Identity"
Description:  "Valueset - Gender Identities"
* include codes from system $GenderIdentity

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

CodeSystem: CSHIVObservationCodes
Id: cs-hiv-observation-codes
Title: "HIV observation codes"
Description: "A list of HIV observation codes"
* #HIV_RECENCY_TEST_CONDUCTED "HIV recency test conducted"
* #HIV_RECENCY_RESULT "HIV recency result"

ValueSet: VSHIVObservationCodes
Id: vs-hiv-observation-codes
Title: "HIV observation codes"
Description: "Valueset - HIV observation codes"
* include codes from system CSHIVObservationCodes

CodeSystem: CSARTRegimenLines
Id: cs-artregimen-lines
Title: "ART Regimen Lines"
Description: ""
* #first-line "First line ARTs"
* #second-line "Second line ARTs"
* #third-line "Third line ARTs"
* #special-unknown "Special/Unknown"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "VSART Regimen Lines"
Description: ""
* include codes from system CSARTRegimenLines
