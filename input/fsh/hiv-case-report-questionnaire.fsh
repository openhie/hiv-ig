Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $LOINC = http://loinc.org


/*
Instance: Gender
InstanceOf: ValueSet
Description: "Gender codes"
Title: "Gender"
Usage: #inline
* name = "Gender"
* status = #draft
*/



Instance: PregnancyOutcomeCodes
InstanceOf: ValueSet
Description: "Pregnancy Outcome Codes"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "PregnancyOutcomeCodes"
* status = #draft


Instance: BirthDefects
InstanceOf: ValueSet
Description: "Birth Defects"
Title: "Pregnancy Outcome Codes"
Usage: #inline
* name = "BirthDefects"
* status = #draft


Instance: ChildHIVStatus
InstanceOf: ValueSet
Description: "Child HIV Status"
Title: "Child HIV Status"
Usage: #inline
* name = "ChildHIVStatus"
* status = #draft



//============================================================



Instance: hiv-case-report-questionnaire
InstanceOf: sdc-questionnaire-extract
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition


//* extension[+].url = $targetStructureMap
//* extension[=].valueCanonical = Canonical(HIVCaseReportMap)

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemContext"



* name = "HIVCaseReportForm"
* version = "2020"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

//* contained[+] = HIVRiskPopulation
//* contained[+] = HIVRiskBehavior
* contained[+] = PregnancyOutcomeCodes
* contained[+] = BirthDefects
* contained[+] = ChildHIVStatus
//* contained[+] = HIVTransmissionRoute


* url = "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire"



* item[+].linkId = "title"
* item[=].text   = "HIV Case Report"
* item[=].type   = #display

* item[+].linkId = "regulations"
* item[=].text   = "Reporting regulations: Monthly – applicable to each patient during the reporting period"
* item[=].type   = #display

* item[+].linkId = "unit_name"
* item[=].text   = "Governing body unit name"
* item[=].type   = #string

* item[+].linkId = "reportDate"
* item[=].text   = "Date of report"
* item[=].type   = #date

//* item[+].linkId = "reportNumber" 
//* item[=].text   = "Date of report"
//* item[=].type   = #date

* item[+].linkId = "intro"
* item[=].text   = "Dear:"
* item[=].type   = #display

* item[+].linkId = "questions"
* item[=].text   = "Monthly report"
* item[=].type   = #group

* item[=].item[+].linkId = "identifying_information"
* item[=].item[=].text   = "Part I: Identifying Information"
* item[=].item[=].type   = #group

* item[=].item[=].item[+].linkId = "arv_patient_nr"
* item[=].item[=].item[=].text   = "ARV Patient Number"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix = "1"

* item[=].item[=].item[+].linkId = "personal_information"
* item[=].item[=].item[=].text   = "Personal Information"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix = "2"

* item[=].item[=].item[=].item[+].linkId = "name"
* item[=].item[=].item[=].item[=].text   = "Full name"
* item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].prefix = "3"

* item[=].item[=].item[=].item[+].linkId = "ethnicity"
* item[=].item[=].item[=].item[=].text   = "Ethnicity"
* item[=].item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].item[=].prefix = "4"
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-ethnicity)

* item[=].item[=].item[=].item[+].linkId = "gender"
* item[=].item[=].item[=].item[=].text   = "Gender"
* item[=].item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].item[=].prefix = "5"
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-patient-gender)

* item[=].item[=].item[=].item[+].linkId = "birth_year"
* item[=].item[=].item[=].item[=].text   = "Year of Birth"
* item[=].item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].item[=].prefix = "6"

* item[=].item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].item[=].item[=].extension.valueString = "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00))"




* item[=].item[=].item[=].item[+].linkId = "id_cccd"
* item[=].item[=].item[=].item[=].text   = "Identification"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix = "7"
//* item[=].item[=].item[=].item[=].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[=].item[=].item[=].item[=].item[+].linkId = "health_insurance_code"
* item[=].item[=].item[=].item[=].item[=].text   = "Health insurance code"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "7.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "passport_nr"
* item[=].item[=].item[=].item[=].item[=].text   = "Passport Number"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "7.2"

* item[=].item[=].item[=].item[+].linkId = "residence"
* item[=].item[=].item[=].item[=].text   = "Residence"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix   = "8"

* item[=].item[=].item[=].item[=].item[+].linkId = "current"
* item[=].item[=].item[=].item[=].item[=].text   = "Current residence"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "8.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "permanent"
* item[=].item[=].item[=].item[=].item[=].text   = "Permanent residence"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "8.2"

* item[=].item[=].item[=].item[+].linkId = "occupation"
* item[=].item[=].item[=].item[=].text   = "Occupation"
* item[=].item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].item[=].prefix   = "9"
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-occupations)

* item[=].item[+].linkId = "risk_factors"
* item[=].item[=].text   = "Risk Factors"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "10"

* item[=].item[=].item[+].linkId = "risk_population"
* item[=].item[=].item[=].text   = "Risk population"
* item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].prefix   = "10.1"
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-population)

* item[=].item[=].item[+].linkId = "risk_behavior"
* item[=].item[=].item[=].text   = "Risk Behavior"
* item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].prefix   = "10.2"
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-risk-behavior)

* item[=].item[=].item[+].linkId = "transmission_route"
* item[=].item[=].item[=].text   = "Transmission Route"
* item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].prefix   = "10.3"
* item[=].item[=].item[=].answerValueSet = Canonical(vs-hiv-transmission-route)


* item[=].item[+].linkId = "hiv-diagnosis"
* item[=].item[=].text   = "HIV Diagnosis"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "11"

* item[=].item[=].item[+].linkId = "hiv-diagnosis.dateOfConfirmation"
* item[=].item[=].item[=].text   = "Date of Confirmation"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "11.1"

* item[=].item[=].item[+].linkId = "hiv-diagnosis.confirmingLab"
* item[=].item[=].item[=].text   = "Confirming Lab"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "11.2"

* item[=].item[=].item[+].linkId = "hiv-diagnosis.dateOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Date of Specimen Collection"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "11.3"

* item[=].item[=].item[+].linkId = "hiv-diagnosis.placeOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Place of Specimen Collection"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "11.4"


* item[=].item[+].linkId = "hiv-recency-test"
* item[=].item[=].text   = "HIV Recency Test"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "12"

* item[=].item[=].item[+].linkId = "hiv-recency-test.rapidTest"
* item[=].item[=].item[=].text   = "Rapid test"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "12.1"

* item[=].item[=].item[=].item[+].linkId = "hiv-recency-test.dateOfSpecimenCollection"
* item[=].item[=].item[=].item[=].text   = "Date of Specimen Collection for rapid test"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "12.1.1"

* item[=].item[=].item[=].item[+].linkId = "hiv-recency-test.dateOfTestPerformance"
* item[=].item[=].item[=].item[=].text   = "Date of rapid test performance"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "12.1.2"

* item[=].item[=].item[=].item[+].linkId = "hiv-recency-test.placeOfSpecimenCollection"
* item[=].item[=].item[=].item[=].text   = "Place of Specimen Collection"
* item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].prefix   = "12.1.3"

* item[=].item[=].item[=].item[+].linkId = "hiv-recency-test.testResult"
* item[=].item[=].item[=].item[=].text   = "Recency from rapid test - result"
* item[=].item[=].item[=].item[=].type   = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "HIVRapidTestResults"
//* item[=].item[=].item[=].item[=].prefix   = "12.1.4"


* item[=].item[=].item[+].linkId = "recency.vlTest"
* item[=].item[=].item[=].text   = "Rapid VL test"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "12.2"

* item[=].item[=].item[=].item[+].linkId = "recency.dateOfTestPerformance"
* item[=].item[=].item[=].item[=].text   = "Date of rapid test performance"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "12.2.1"

* item[=].item[=].item[=].item[+].linkId = "recency.testResult"
* item[=].item[=].item[=].item[=].text   = "VL recency test result"
* item[=].item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].item[=].answerValueSet = "HIVRapidTestResults"
//* item[=].item[=].item[=].item[=].prefix   = "12.2.2"


* item[=].item[+].linkId = "cd4BeforeART"
* item[=].item[=].text   = "CD4 test before ART"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "13"


* item[=].item[=].item[+].linkId = "cd4BeforeART.dateOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Date of Specimen Collection for CD4 test before ART"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "13.1"

* item[=].item[=].item[+].linkId = "cd4BeforeART.dateOfTestPerformance"
* item[=].item[=].item[=].text   = "Date of CD4 test before ART performance"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "13.2"

* item[=].item[=].item[+].linkId = "cd4BeforeART.placeOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Place of Specimen Collection for CD4 test before ART"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "13.3"

* item[=].item[=].item[+].linkId = "cd4BeforeART.testResult"
* item[=].item[=].item[=].text   = "CD4 test before ART - result"
* item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].prefix   = "13.4"


* item[=].item[+].linkId = "cd4DuringART"
* item[=].item[=].text   = "CD4 test during ART"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "14"

* item[=].item[=].item[+].linkId = "cd4DuringART.dateOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Date of Specimen Collection for CD4 test during ART"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "14.1"

* item[=].item[=].item[+].linkId = "cd4DuringART.dateOfTestPerformance"
* item[=].item[=].item[=].text   = "Date of CD4 test during ART performance"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "14.2"

* item[=].item[=].item[+].linkId = "cd4DuringART.placeOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Place of Specimen Collection for CD4 test during ART"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "14.3"

* item[=].item[=].item[+].linkId = "cd4DuringART.testResult"
* item[=].item[=].item[=].text   = "CD4 test during ART - result"
* item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].prefix   = "14.4"


* item[=].item[+].linkId = "vl4DuringART"
* item[=].item[=].text   = "Viral Load test during ART"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "15"

* item[=].item[=].item[+].linkId = "vl4DuringART.dateOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Date of Specimen Collection for VL test during ART"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "15.1"

* item[=].item[=].item[+].linkId = "vl4DuringART.dateOfTestPerformance"
* item[=].item[=].item[=].text   = "Date of VL test during ART performance"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "15.2"

* item[=].item[=].item[+].linkId = "vl4DuringART.placeOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Place of Specimen Collection for VL test during ART"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "15.3"

* item[=].item[=].item[+].linkId = "vl4DuringART.testResult"
* item[=].item[=].item[=].text   = "VL test during ART - result"
* item[=].item[=].item[=].type   = #integer
//* item[=].item[=].item[=].prefix   = "15.4"




* item[=].item[+].linkId = "drugResistanceTest"
* item[=].item[=].text   = "Drug Resistance test"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "16"

* item[=].item[=].item[+].linkId = "drugResistanceTest.dateOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Date of Specimen Collection for Drug Resistance test"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "16.1"

* item[=].item[=].item[+].linkId = "drugResistanceTest.dateOfTestPerformance"
* item[=].item[=].item[=].text   = "Date of Drug Resistance test"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "16.2"

* item[=].item[=].item[+].linkId = "drugResistanceTest.placeOfSpecimenCollection"
* item[=].item[=].item[=].text   = "Place of Specimen Collection for Drug Resistance test"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "16.3"

* item[=].item[=].item[+].linkId = "drugResistanceTest.testResult"
* item[=].item[=].item[=].text   = "Drug Resistance test result"
* item[=].item[=].item[=].type   = #choice
//* item[=].item[=].item[=].prefix   = "16.4"


* item[=].item[+].linkId = "arvTreatment"
* item[=].item[=].text   = "ARV Treatment"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "17"

* item[=].item[=].item[+].linkId = "arvTreatment.dateOfTreatmentStart"
* item[=].item[=].item[=].text   = "Date of treatment start"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "17.1"

* item[=].item[=].item[+].linkId = "arvTreatment.dateOfTreatmentStop"
* item[=].item[=].item[=].text   = "Date of treatment stop"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "17.2"

* item[=].item[=].item[+].linkId = "arvTreatment.placeOfInitiation"
* item[=].item[=].item[=].text   = "Place of ARV treatment initiation"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "17.3"

* item[=].item[=].item[+].linkId = "arvTreatment.dateOfLossToFollowUp"
* item[=].item[=].item[=].text   = "Date of loss to follow up"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "17.4"

* item[=].item[=].item[+].linkId = "arvTreatment.dateOfTransferredOut"
* item[=].item[=].item[=].text   = "Date ARV treatment transferred out"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "17.5"

* item[=].item[=].item[+].linkId = "arvTreatment.placeTransferredOut"
* item[=].item[=].item[=].text   = "Place ARV treatment transferred out"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "17.6"

* item[=].item[=].item[+].linkId = "arvTreatment.regimen"
* item[=].item[=].item[=].text   = "ARV treatment regimen"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "17.7"

* item[=].item[=].item[=].item[+].linkId = "regimen.date1stLineStarted"
* item[=].item[=].item[=].item[=].text   = "Date 1st ARV regimen started"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "18.1"

* item[=].item[=].item[=].item[+].linkId = "arvTreatment.date2ndLineStarted"
* item[=].item[=].item[=].item[=].text   = "Date 3rd ARV regimen started"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "18.2"

* item[=].item[=].item[=].item[+].linkId = "arvTreatment.date3rdLineStarted"
* item[=].item[=].item[=].item[=].text   = "Date 3rd ARV regimen started"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "18.3"


* item[=].item[+].linkId = "comorbidities"
* item[=].item[=].text   = "Comorbidities"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "19"

* item[=].item[=].item[+].linkId = "tuberculosis"
* item[=].item[=].item[=].text   = "Tuberculosis"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "19.1"

* item[=].item[=].item[=].item[+].linkId = "TPT"
* item[=].item[=].item[=].item[=].text   = "TPT"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix   = "19.1.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "tpt.dateStarted"
* item[=].item[=].item[=].item[=].item[=].text   = "Date TPT started"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.1.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "tpt.dateCompleted"
* item[=].item[=].item[=].item[=].item[=].text   = "Date TPT completed"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.1.2"

* item[=].item[=].item[=].item[=].item[+].linkId = "tpt.placeProvided"
* item[=].item[=].item[=].item[=].item[=].text   = "Place TPT provided"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.1.3"

* item[=].item[=].item[=].item[+].linkId = "tbDiagnosisDate"
* item[=].item[=].item[=].item[=].text   = "TB Diagnosis Date"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "19.1.2"


* item[=].item[=].item[=].item[+].linkId = "tbTreatment"
* item[=].item[=].item[=].item[=].text   = "TB Treatment"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix   = "19.1.3"

* item[=].item[=].item[=].item[=].item[+].linkId = "tbTreatment.dateStarted"
* item[=].item[=].item[=].item[=].item[=].text   = "Date TB Treatment started"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.3.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "tbTreatment.dateCompleted"
* item[=].item[=].item[=].item[=].item[=].text   = "Date TB Treatment completed"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.3.2"

* item[=].item[=].item[=].item[=].item[+].linkId = "tbTreatment.placeProvided"
* item[=].item[=].item[=].item[=].item[=].text   = "Place TB Treatment provided"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.1.3.3"



* item[=].item[=].item[+].linkId = "hbv_hcv"
* item[=].item[=].item[=].text   = "HBV and HCV"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "19.2"

* item[=].item[=].item[=].item[+].linkId = "hbv"
* item[=].item[=].item[=].item[=].text   = "HBV"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix   = "19.2.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "hbv.diagnosisDate"
* item[=].item[=].item[=].item[=].item[=].text   = "Date of HBV diagnosis"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.1.1"

* item[=].item[=].item[=].item[=].item[+].linkId = "hbv.treatmentStartDate"
* item[=].item[=].item[=].item[=].item[=].text   = "Date of HBV treatment start"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.1.2"

* item[=].item[=].item[=].item[=].item[+].linkId = "hbv.treatmentEndDate"
* item[=].item[=].item[=].item[=].item[=].text   = "Date HBV treatment completed"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.1.3"

* item[=].item[=].item[=].item[=].item[+].linkId = "hbv.placeProvided"
* item[=].item[=].item[=].item[=].item[=].text   = "Place HBV treatment provided"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.1.4"

* item[=].item[=].item[=].item[+].linkId = "hcv"
* item[=].item[=].item[=].item[=].text   = "HCV"
* item[=].item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].item[=].prefix   = "19.2.2"

* item[=].item[=].item[=].item[=].item[+].linkId = "hcv.diagnosisDate"
* item[=].item[=].item[=].item[=].item[=].text   = "Date of HBV diagnosis"
* item[=].item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.2.1"

// * item[=].item[=].item[=].item[=].item[+].linkId = "hcv.treatmentStartDate"
// * item[=].item[=].item[=].item[=].item[=].text   = "Date of HBV treatment start"
// * item[=].item[=].item[=].item[=].item[=].type   = #date
// * item[=].item[=].item[=].item[=].item[+].linkId = "hcv.treatmentEndDate"
// * item[=].item[=].item[=].item[=].item[=].text   = "Date HBV treatment completed"
// * item[=].item[=].item[=].item[=].item[=].type   = #date
* item[=].item[=].item[=].item[=].item[+].linkId = "hcv.placeProvided"
* item[=].item[=].item[=].item[=].item[=].text   = "Place HBV treatment provided"
* item[=].item[=].item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].item[=].item[=].prefix   = "19.2.2.2"



* item[=].item[+].linkId = "pregnancies"
* item[=].item[=].text   = "ARV Treatment"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "20"

* item[=].item[=].item[+].linkId = "datePregnancyReported"
* item[=].item[=].item[=].text   = "Date pregnancy reported"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "20.1"

* item[=].item[=].item[+].linkId = "placePregnancyReported"
* item[=].item[=].item[=].text   = "Place pregnancy reported"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "20.2"

* item[=].item[=].item[+].linkId = "childDeliveryDate"
* item[=].item[=].item[=].text   = "Reported child delivery date"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "20.3"

* item[=].item[=].item[+].linkId = "childDeliveryPlace"
* item[=].item[=].item[=].text   = "Reported child delivery place"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "20.4"

* item[=].item[=].item[+].linkId = "pregnancyOutcomes"
* item[=].item[=].item[=].text   = "Pregnancy Outcomes"
* item[=].item[=].item[=].type   = #group
//* item[=].item[=].item[=].prefix   = "20.5"

* item[=].item[=].item[=].item[+].linkId = "pregnancyOutcomeCode"
* item[=].item[=].item[=].item[=].text   = "Pregnancy Outcome code"
* item[=].item[=].item[=].item[=].type   = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "#PregnancyOutcomeCodes"
//* item[=].item[=].item[=].item[=].prefix   = "20.5.1"

* item[=].item[=].item[=].item[+].linkId = "childDateOfBirth"
* item[=].item[=].item[=].item[=].text   = "Date of child birth"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "20.5.2"

* item[=].item[=].item[=].item[+].linkId = "gestationAtDelivery"
* item[=].item[=].item[=].item[=].text   = "Gestational age at delivery (weeks)"
* item[=].item[=].item[=].item[=].type   = #decimal
//* item[=].item[=].item[=].item[=].prefix   = "19.5.3"

* item[=].item[=].item[=].item[+].linkId = "birthWeight"
* item[=].item[=].item[=].item[=].text   = "Weight at birth (kg)"
* item[=].item[=].item[=].item[=].type   = #decimal
//* item[=].item[=].item[=].item[=].prefix   = "20.5.4"

* item[=].item[=].item[=].item[+].linkId = "birtDefects"
* item[=].item[=].item[=].item[=].text   = "Birth defects"
* item[=].item[=].item[=].item[=].type   = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "#BirthDefects"
//* item[=].item[=].item[=].item[=].prefix   = "20.5.5"

* item[=].item[=].item[=].item[+].linkId = "hivStatus"
* item[=].item[=].item[=].item[=].text   = "HIV status"
* item[=].item[=].item[=].item[=].type   = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "#ChildHIVStatus"
//* item[=].item[=].item[=].item[=].prefix   = "20.5.6"


* item[=].item[=].item[=].item[+].linkId = "childHIVDiagnosisDate"
* item[=].item[=].item[=].item[=].text   = "HIV diagnosis date"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "20.5.7"

* item[=].item[=].item[=].item[+].linkId = "childARTStartDate"
* item[=].item[=].item[=].item[=].text   = "ART start date"
* item[=].item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].item[=].prefix   = "20.5.8"



* item[=].item[+].linkId = "death"
* item[=].item[=].text   = "Patient death"
* item[=].item[=].type   = #group
//* item[=].item[=].prefix   = "21"

* item[=].item[=].item[+].linkId = "dateOfDeath"
* item[=].item[=].item[=].text   = "Date of death"
* item[=].item[=].item[=].type   = #date
//* item[=].item[=].item[=].prefix   = "21.1"

* item[=].item[=].item[+].linkId = "causeOfDeath"
* item[=].item[=].item[=].text   = "Cause of death"
* item[=].item[=].item[=].type   = #string
//* item[=].item[=].item[=].prefix   = "21.2"
