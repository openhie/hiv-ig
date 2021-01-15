Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap

Instance: HIVRiskPopulation
InstanceOf: ValueSet
Description: "HIV Risk Population codes"
Title: "HIV Risk Population"
Usage: #inline
* name = "HIVRiskPopulation"
* status = #draft

Instance: HIVRiskBehavior
InstanceOf: ValueSet
Description: "HIV Risk Behavior codes"
Title: "HIV Risk Behavior"
Usage: #inline
* name = "HIVRiskBehavior"
* status = #draft

Instance: HIVTransmissionRoute
InstanceOf: ValueSet
Description: "HIV Transmission Route codes"
Title: "HIV Transmission Route"
Usage: #inline
* name = "HIVTransmissionRoute"
* status = #draft

Instance: Gender
InstanceOf: ValueSet
Description: "Gender codes"
Title: "Gender"
Usage: #inline
* name = "Gender"
* status = #draft


ValueSet: HIVRecencyResults
//Id: be-vs-vaccine-administration-route
Title: "Gender"
Description: "HIV recency result codes"
* ^status = #draft
//* codes from system BeCSVaccineAdministrationRoute


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
InstanceOf: Questionnaire
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition


* extension[0].valueCanonical = Canonical(HIVCaseReportMap)
* extension[0].url = $targetStructureMap


* name = "HIVCaseReportForm"
* version = "2020"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* contained[0] = HIVRiskPopulation
* contained[1] = HIVRiskBehavior
//* contained[3] = Ethnicity
* contained[2] = Gender
//* contained[5] = HIVRecencyResults
* contained[3] = PregnancyOutcomeCodes
* contained[4] = BirthDefects
* contained[5] = ChildHIVStatus
* contained[6] = HIVTransmissionRoute


* item[0].linkId = "title"
* item[0].text   = "HIV Case Report"
* item[0].type   = #display

* item[1].linkId = "regulations"
* item[1].text   = "Reporting instructions: Monthly – applicable to each patient during the reporting period"
* item[1].type   = #display

* item[2].linkId = "unit_name"
* item[2].text   = "Governing body unit name"
* item[2].type   = #string

* item[3].linkId = "reportDate"
* item[3].text   = "Date of report"
* item[3].type   = #date

* item[4].linkId = "intro"
* item[4].text   = "Dear:"
* item[4].type   = #display

* item[5].linkId = "patient_identification"
* item[5].text   = "patient_identification"
* item[5].type   = #group
* item[5].prefix = "1"

* item[5].item[0].linkId = "arv_patient_nr"
* item[5].item[0].text   = "ARV Patient Number"
* item[5].item[0].type   = #string
* item[5].item[0].required   = true
* item[5].item[0].prefix = "1.1"

* item[5].item[1].linkId = "health_insurance_code"
* item[5].item[1].text   = "Health insurance code"
* item[5].item[1].type   = #string
* item[5].item[1].prefix   = "1.2"

* item[5].item[2].linkId = "passport_nr"
* item[5].item[2].text   = "Passport Number"
* item[5].item[2].type   = #string
* item[5].item[2].prefix   = "1.3"

* item[6].linkId = "personal_information"
* item[6].text   = "Personal Information"
* item[6].type   = #group
* item[6].prefix = "2"

* item[6].item[0].linkId = "name"
* item[6].item[0].text   = "Full name"
* item[6].item[0].type   = #string
* item[6].item[0].prefix = "2.1"

* item[6].item[1].linkId = "ethnic"
* item[6].item[1].text   = "Ethnicity"
* item[6].item[1].type   = #choice
* item[6].item[1].prefix = "2.2"
* item[6].item[1].answerValueSet = Canonical(vs-ethnicity)

* item[6].item[2].linkId = "gender"
* item[6].item[2].text   = "Gender"
* item[6].item[2].type   = #choice
* item[6].item[2].prefix = "2.3"
* item[6].item[2].answerValueSet = "#Gender"

* item[6].item[3].linkId = "birth_year"
* item[6].item[3].text   = "Year of Birth"
* item[6].item[3].type   = #integer
* item[6].item[3].prefix = "2.4"
//* item[6].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[6].item[4].linkId = "residence"
* item[6].item[4].text   = "Residence"
* item[6].item[4].type   = #group
* item[6].item[4].prefix   = "2.3"

* item[6].item[4].item[0].linkId = "current"
* item[6].item[4].item[0].text   = "Current residence"
* item[6].item[4].item[0].type   = #string
* item[6].item[4].item[0].prefix   = "2.3.1"

* item[6].item[4].item[1].linkId = "permanent"
* item[6].item[4].item[1].text   = "Permanent residence"
* item[6].item[4].item[1].type   = #string
* item[6].item[4].item[1].prefix   = "1.3.2"

* item[6].item[5].linkId = "occupation"
* item[6].item[5].text   = "Occupation"
* item[6].item[5].type   = #string
* item[6].item[5].prefix   = "1.4"
//* item[6].item[6].answerValueSet = "#occupation"

* item[7].linkId = "risk_factors"
* item[7].text   = "Risk Factors"
* item[7].type   = #group
* item[7].prefix   = "2"

* item[7].item[0].linkId = "risk_population"
* item[7].item[0].text   = "Risk population"
* item[7].item[0].type   = #group
* item[7].item[0].prefix   = "2.1"

* item[7].item[1].linkId = "risk_behavior"
* item[7].item[1].text   = "Risk Behavior"
* item[7].item[1].type   = #choice
* item[7].item[1].prefix   = "2.2"
* item[7].item[1].answerValueSet = "#HIVRiskBehavior"

* item[7].item[2].linkId = "transmission_route"
* item[7].item[2].text   = "Transmission Route"
* item[7].item[2].type   = #choice
* item[7].item[2].prefix   = "2.3"
* item[7].item[2].answerValueSet = "#HIVTransmissionRoute"

* item[8].linkId = "hiv-diagnosis"
* item[8].text   = "HIV Diagnosis"
* item[8].type   = #group
* item[8].prefix   = "3"

* item[8].item[0].linkId = "hiv-diagnosis.dateOfConfirmation"
* item[8].item[0].text   = "Date of Confirmation"
* item[8].item[0].type   = #date
* item[8].item[0].prefix   = "3.1"

* item[8].item[1].linkId = "hiv-diagnosis.confirmingLab"
* item[8].item[1].text   = "Confirming Lab"
* item[8].item[1].type   = #string
* item[8].item[1].prefix   = "3.2"

* item[8].item[2].linkId = "hiv-diagnosis.dateOfSpecimenCollection"
* item[8].item[2].text   = "Date of Specimen Collection"
* item[8].item[2].type   = #date
* item[8].item[2].prefix   = "3.3"

* item[8].item[3].linkId = "hiv-diagnosis.placeOfSpecimenCollection"
* item[8].item[3].text   = "Place of Specimen Collection"
* item[8].item[3].type   = #string
* item[8].item[3].prefix   = "3.4"

* item[9].linkId = "hiv-recency-test"
* item[9].text   = "HIV Recency Test"
* item[9].type   = #group
* item[9].prefix   = "4"

* item[9].item[0].linkId = "hiv-recency-test.rapidTest"
* item[9].item[0].text   = "Rapid test"
* item[9].item[0].type   = #group
* item[9].item[0].prefix   = "4.1"

* item[9].item[0].item[0].linkId = "hiv-recency-test.dateOfSpecimenCollection"
* item[9].item[0].item[0].text   = "Date of Specimen Collection for rapid test"
* item[9].item[0].item[0].type   = #date
* item[9].item[0].item[0].prefix   = "4.1.1"

* item[9].item[0].item[1].linkId = "hiv-recency-test.dateOfTestPerformance"
* item[9].item[0].item[1].text   = "Date of rapid test performance"
* item[9].item[0].item[1].type   = #date
* item[9].item[0].item[1].prefix   = "4.1.2"

* item[9].item[0].item[2].linkId = "hiv-recency-test.placeOfSpecimenCollection"
* item[9].item[0].item[2].text   = "Place of Specimen Collection"
* item[9].item[0].item[2].type   = #string
* item[9].item[0].item[2].prefix   = "4.1.3"

* item[9].item[0].item[3].linkId = "hiv-recency-test.testResult"
* item[9].item[0].item[3].text   = "Recency from rapid test - result"
* item[9].item[0].item[3].type   = #choice
* item[9].item[0].item[3].answerValueSet = "HIVRecencyResults"
* item[9].item[0].item[3].prefix   = "4.1.4"

* item[9].item[1].linkId = "recency.vlTest"
* item[9].item[1].text   = "Rapid VL test"
* item[9].item[1].type   = #group
* item[9].item[1].prefix   = "4.2"

* item[9].item[1].item[0].linkId = "recency.dateOfTestPerformance"
* item[9].item[1].item[0].text   = "Date of rapid test performance"
* item[9].item[1].item[0].type   = #date
* item[9].item[1].item[0].prefix   = "4.2.1"

* item[9].item[1].item[1].linkId = "recency.testResult"
* item[9].item[1].item[1].text   = "Recency from rapid test - result"
* item[9].item[1].item[1].type   = #choice
* item[9].item[1].item[1].answerValueSet = "HIVRecencyResults"
* item[9].item[1].item[1].prefix   = "4.2.2"

* item[10].linkId = "cd4BeforeART"
* item[10].text   = "CD4 test before ART"
* item[10].type   = #group
* item[10].prefix   = "5"

* item[10].item[0].linkId = "cd4BeforeART.dateOfSpecimenCollection"
* item[10].item[0].text   = "Date of Specimen Collection for CD4 test before ART"
* item[10].item[0].type   = #date
* item[10].item[0].prefix   = "5.1"

* item[10].item[1].linkId = "cd4BeforeART.dateOfTestPerformance"
* item[10].item[1].text   = "Date of CD4 test before ART performance"
* item[10].item[1].type   = #date
* item[10].item[1].prefix   = "5.2"

* item[10].item[2].linkId = "cd4BeforeART.placeOfSpecimenCollection"
* item[10].item[2].text   = "Place of Specimen Collection for CD4 test before ART"
* item[10].item[2].type   = #string
* item[10].item[2].prefix   = "5.3"

* item[10].item[3].linkId = "cd4BeforeART.testResult"
* item[10].item[3].text   = "CD4 test before ART - result"
* item[10].item[3].type   = #choice
* item[10].item[3].prefix   = "5.4"


* item[11].linkId = "cd4DuringART"
* item[11].text   = "CD4 test during ART"
* item[11].type   = #group
* item[11].prefix   = "6"

* item[11].item[0].linkId = "cd4DuringART.dateOfSpecimenCollection"
* item[11].item[0].text   = "Date of Specimen Collection for CD4 test during ART"
* item[11].item[0].type   = #date
* item[11].item[0].prefix   = "6.1"

* item[11].item[1].linkId = "cd4DuringART.dateOfTestPerformance"
* item[11].item[1].text   = "Date of CD4 test during ART performance"
* item[11].item[1].type   = #date
* item[11].item[1].prefix   = "6.2"

* item[11].item[2].linkId = "cd4DuringART.placeOfSpecimenCollection"
* item[11].item[2].text   = "Place of Specimen Collection for CD4 test during ART"
* item[11].item[2].type   = #string
* item[11].item[2].prefix   = "6.3"

* item[11].item[3].linkId = "cd4DuringART.testResult"
* item[11].item[3].text   = "CD4 test during ART - result"
* item[11].item[3].type   = #choice
* item[11].item[3].prefix   = "6.4"


* item[12].linkId = "vl4DuringART"
* item[12].text   = "Viral Load test during ART"
* item[12].type   = #group
* item[12].prefix   = "7"

* item[12].item[0].linkId = "vl4DuringART.dateOfSpecimenCollection"
* item[12].item[0].text   = "Date of Specimen Collection for VL test during ART"
* item[12].item[0].type   = #date
* item[12].item[0].prefix   = "7.1"

* item[12].item[1].linkId = "vl4DuringART.dateOfTestPerformance"
* item[12].item[1].text   = "Date of VL test during ART performance"
* item[12].item[1].type   = #date
* item[12].item[1].prefix   = "7.2"

* item[12].item[2].linkId = "vl4DuringART.placeOfSpecimenCollection"
* item[12].item[2].text   = "Place of Specimen Collection for VL test during ART"
* item[12].item[2].type   = #string
* item[12].item[2].prefix   = "7.3"

* item[12].item[3].linkId = "vl4DuringART.testResult"
* item[12].item[3].text   = "VL test during ART - result"
* item[12].item[3].type   = #choice
* item[12].item[3].prefix   = "7.4"




* item[13].linkId = "drugResistanceTest"
* item[13].text   = "Drug Resistance test"
* item[13].type   = #group
* item[13].prefix   = "8"

* item[13].item[0].linkId = "drugResistanceTest.dateOfSpecimenCollection"
* item[13].item[0].text   = "Date of Specimen Collection for Drug Resistance test"
* item[13].item[0].type   = #date
* item[13].item[0].prefix   = "8.1"

* item[13].item[1].linkId = "drugResistanceTest.dateOfTestPerformance"
* item[13].item[1].text   = "Date of Drug Resistance test"
* item[13].item[1].type   = #date
* item[13].item[1].prefix   = "8.2"

* item[13].item[2].linkId = "drugResistanceTest.placeOfSpecimenCollection"
* item[13].item[2].text   = "Place of Specimen Collection for Drug Resistance test"
* item[13].item[2].type   = #string
* item[13].item[2].prefix   = "8.3"

* item[13].item[3].linkId = "drugResistanceTest.testResult"
* item[13].item[3].text   = "Drug Resistance test result"
* item[13].item[3].type   = #choice
* item[13].item[3].prefix   = "8.4"


* item[14].linkId = "arvTreatment"
* item[14].text   = "ARV Treatment"
* item[14].type   = #group
* item[14].prefix   = "9"

* item[14].item[0].linkId = "arvTreatment.treatmentHistory"
* item[14].item[0].text   = "ARV Treatment history"
* item[14].item[0].type   = #string
* item[14].item[0].prefix   = "9.1"

* item[14].item[1].linkId = "arvTreatment.dateOfTreatmentStart"
* item[14].item[1].text   = "Date of treatment start"
* item[14].item[1].type   = #date
* item[14].item[1].prefix   = "9.2"

* item[14].item[2].linkId = "arvTreatment.dateOfTreatmentStop"
* item[14].item[2].text   = "Date of treatment stop"
* item[14].item[2].type   = #date
* item[14].item[2].prefix   = "9.3"

* item[14].item[3].linkId = "arvTreatment.placeOfInitiation"
* item[14].item[3].text   = "Place of ARV treatment initiation"
* item[14].item[3].type   = #string
* item[14].item[3].prefix   = "9.4"

* item[14].item[4].linkId = "arvTreatment.dateOfLossToFollowUp"
* item[14].item[4].text   = "Date of loss to follow up"
* item[14].item[4].type   = #date
* item[14].item[4].prefix   = "9.5"

* item[14].item[5].linkId = "arvTreatment.dateOfTransferredOut"
* item[14].item[5].text   = "Date ARV treatment transferred out"
* item[14].item[5].type   = #date
* item[14].item[5].prefix   = "9.6"

* item[14].item[6].linkId = "arvTreatment.placeTransferredOut"
* item[14].item[6].text   = "Place ARV treatment transferred out"
* item[14].item[6].type   = #string
* item[14].item[6].prefix   = "9.7"

* item[14].item[7].linkId = "arvTreatment.regimens"
* item[14].item[7].text   = "ARV treatment regimens"
* item[14].item[7].type   = #group
* item[14].item[7].prefix   = "9.8"

* item[14].item[7].item[0].linkId = "regimen.date1stLineStarted"
* item[14].item[7].item[0].text   = "Date 1st ARV regimen started"
* item[14].item[7].item[0].type   = #date
* item[14].item[7].item[0].prefix   = "9.8.1"

* item[14].item[7].item[1].linkId = "arvTreatment.date2ndLineStarted"
* item[14].item[7].item[1].text   = "Date 3rd ARV regimen started"
* item[14].item[7].item[1].type   = #date
* item[14].item[7].item[1].prefix   = "9.8.2"

* item[14].item[7].item[2].linkId = "arvTreatment.date3rdLineStarted"
* item[14].item[7].item[2].text   = "Date 3rd ARV regimen started"
* item[14].item[7].item[2].type   = #date
* item[14].item[7].item[2].prefix   = "9.8.3"


* item[15].linkId = "comorbidities"
* item[15].text   = "Comorbidities"
* item[15].type   = #group
* item[15].prefix   = "10"

* item[15].item[0].linkId = "tuberculosis"
* item[15].item[0].text   = "Tuberculosis"
* item[15].item[0].type   = #group
* item[15].item[0].prefix   = "10.1"

* item[15].item[0].item[0].linkId = "TPT"
* item[15].item[0].item[0].text   = "TPT"
* item[15].item[0].item[0].type   = #group
* item[15].item[0].item[0].prefix   = "10.1.1"

* item[15].item[0].item[0].item[0].linkId = "tpt.dateStarted"
* item[15].item[0].item[0].item[0].text   = "Date TPT started"
* item[15].item[0].item[0].item[0].type   = #date
* item[15].item[0].item[0].item[0].prefix   = "10.1.1.1"

* item[15].item[0].item[0].item[1].linkId = "tpt.dateCompleted"
* item[15].item[0].item[0].item[1].text   = "Date TPT completed"
* item[15].item[0].item[0].item[1].type   = #date
* item[15].item[0].item[0].item[1].prefix   = "10.1.1.2"

* item[15].item[0].item[0].item[2].linkId = "tpt.placeProvided"
* item[15].item[0].item[0].item[2].text   = "Place TPT provided"
* item[15].item[0].item[0].item[2].type   = #string
* item[15].item[0].item[0].item[2].prefix   = "10.1.1.3"

* item[15].item[0].item[1].linkId = "tbDiagnosisDate"
* item[15].item[0].item[1].text   = "TB Diagnosis Date"
* item[15].item[0].item[1].type   = #date
* item[15].item[0].item[1].prefix   = "10.1.2"

* item[15].item[0].item[2].linkId = "tbTreatment"
* item[15].item[0].item[2].text   = "TB Treatment"
* item[15].item[0].item[2].type   = #group
* item[15].item[0].item[2].prefix   = "10.1.3"

* item[15].item[0].item[2].item[0].linkId = "tbTreatment.dateStarted"
* item[15].item[0].item[2].item[0].text   = "Date TB Treatment started"
* item[15].item[0].item[2].item[0].type   = #date
* item[15].item[0].item[2].item[0].prefix   = "10.1.3.1"

* item[15].item[0].item[2].item[1].linkId = "tbTreatment.dateCompleted"
* item[15].item[0].item[2].item[1].text   = "Date TB Treatment completed"
* item[15].item[0].item[2].item[1].type   = #date
* item[15].item[0].item[2].item[1].prefix   = "10.1.3.2"

* item[15].item[0].item[2].item[2].linkId = "tbTreatment.placeProvided"
* item[15].item[0].item[2].item[2].text   = "Place TB Treatment provided"
* item[15].item[0].item[2].item[2].type   = #string
* item[15].item[0].item[2].item[2].prefix   = "10.1.3.3"


* item[15].item[1].linkId = "hbv_hcv"
* item[15].item[1].text   = "HBV and HCV"
* item[15].item[1].type   = #group
* item[15].item[1].prefix   = "10.2"

* item[15].item[1].item[0].linkId = "hbv"
* item[15].item[1].item[0].text   = "HBV"
* item[15].item[1].item[0].type   = #group
* item[15].item[1].item[0].prefix   = "10.2.1"

* item[15].item[1].item[0].item[0].linkId = "hbv.diagnosisDate"
* item[15].item[1].item[0].item[0].text   = "Date of HBV diagnosis"
* item[15].item[1].item[0].item[0].type   = #date
* item[15].item[1].item[0].item[0].prefix   = "10.2.1.1"

* item[15].item[1].item[0].item[1].linkId = "hbv.treatmentStartDate"
* item[15].item[1].item[0].item[1].text   = "Date of HBV treatment start"
* item[15].item[1].item[0].item[1].type   = #date
* item[15].item[1].item[0].item[1].prefix   = "10.2.1.2"

* item[15].item[1].item[0].item[2].linkId = "hbv.treatmentEndDate"
* item[15].item[1].item[0].item[2].text   = "Date HBV treatment completed"
* item[15].item[1].item[0].item[2].type   = #date
* item[15].item[1].item[0].item[2].prefix   = "10.2.1.3"

* item[15].item[1].item[0].item[3].linkId = "hbv.placeProvided"
* item[15].item[1].item[0].item[3].text   = "Place HBV treatment provided"
* item[15].item[1].item[0].item[3].type   = #string
* item[15].item[1].item[0].item[3].prefix   = "10.2.1.4"

* item[15].item[1].item[1].linkId = "hcv"
* item[15].item[1].item[1].text   = "HCV"
* item[15].item[1].item[1].type   = #group
* item[15].item[1].item[1].prefix   = "10.2.2"

* item[15].item[1].item[1].item[0].linkId = "hcv.diagnosisDate"
* item[15].item[1].item[1].item[0].text   = "Date of HBV diagnosis"
* item[15].item[1].item[1].item[0].type   = #date
* item[15].item[1].item[1].item[0].prefix   = "10.2.2.1"

// * item[15].item[1].item[1].item[1].linkId = "hcv.treatmentStartDate"
// * item[15].item[1].item[1].item[1].text   = "Date of HBV treatment start"
// * item[15].item[1].item[1].item[1].type   = #date
// * item[15].item[1].item[1].item[2].linkId = "hcv.treatmentEndDate"
// * item[15].item[1].item[1].item[2].text   = "Date HBV treatment completed"
// * item[15].item[1].item[1].item[2].type   = #date
* item[15].item[1].item[1].item[1].linkId = "hcv.placeProvided"
* item[15].item[1].item[1].item[1].text   = "Place HBV treatment provided"
* item[15].item[1].item[1].item[1].type   = #string
* item[15].item[1].item[1].item[1].prefix   = "10.2.2.2"



* item[15].linkId = "pregnancies"
* item[15].text   = "ARV Treatment"
* item[15].type   = #group
* item[15].prefix   = "11"

* item[15].item[0].linkId = "datePregnancyReported"
* item[15].item[0].text   = "Date pregnancy reported"
* item[15].item[0].type   = #date
* item[15].item[0].prefix   = "11.1"

* item[15].item[1].linkId = "placePregnancyReported"
* item[15].item[1].text   = "Place pregnancy reported"
* item[15].item[1].type   = #string
* item[15].item[1].prefix   = "11.2"

* item[15].item[2].linkId = "childDeliveryDate"
* item[15].item[2].text   = "Reported child delivery date"
* item[15].item[2].type   = #date
* item[15].item[2].prefix   = "11.3"

* item[15].item[3].linkId = "childDeliveryPlace"
* item[15].item[3].text   = "Reported child delivery place"
* item[15].item[3].type   = #string
* item[15].item[3].prefix   = "11.4"

* item[15].item[4].linkId = "pregnancyOutcomes"
* item[15].item[4].text   = "Pregnancy Outcomes"
* item[15].item[4].type   = #group
* item[15].item[4].prefix   = "11.5"

* item[15].item[4].item[0].linkId = "pregnancyOutcomeCode"
* item[15].item[4].item[0].text   = "Pregnancy Outcome code"
* item[15].item[4].item[0].type   = #choice
* item[15].item[4].item[0].answerValueSet = "#PregnancyOutcomeCodes"
* item[15].item[4].item[0].prefix   = "11.5.1"

* item[15].item[4].item[1].linkId = "childDateOfBirth"
* item[15].item[4].item[1].text   = "Date of child birth"
* item[15].item[4].item[1].type   = #date
* item[15].item[4].item[1].prefix   = "11.5.2"

* item[15].item[4].item[2].linkId = "gestationAtDelivery"
* item[15].item[4].item[2].text   = "Gestational age at delivery (weeks)"
* item[15].item[4].item[2].type   = #decimal
* item[15].item[4].item[2].prefix   = "11.5.3"

* item[15].item[4].item[3].linkId = "birthWeight"
* item[15].item[4].item[3].text   = "Weight at birth (kg)"
* item[15].item[4].item[3].type   = #decimal
* item[15].item[4].item[3].prefix   = "11.5.4"

* item[15].item[4].item[4].linkId = "birtDefects"
* item[15].item[4].item[4].text   = "Birth defects"
* item[15].item[4].item[4].type   = #choice
* item[15].item[4].item[4].answerValueSet = "#BirthDefects"
* item[15].item[4].item[4].prefix   = "11.5.5"

* item[15].item[4].item[5].linkId = "hivStatus"
* item[15].item[4].item[5].text   = "HIV status"
* item[15].item[4].item[5].type   = #choice
* item[15].item[4].item[5].answerValueSet = "#ChildHIVStatus"
* item[15].item[4].item[5].prefix   = "11.5.6"

* item[15].item[4].item[6].linkId = "childHIVDiagnosisDate"
* item[15].item[4].item[6].text   = "HIV diagnosis date"
* item[15].item[4].item[6].type   = #date
* item[15].item[4].item[6].prefix   = "11.5.7"

* item[15].item[4].item[7].linkId = "childARTStartDate"
* item[15].item[4].item[7].text   = "ART start date"
* item[15].item[4].item[7].type   = #date
* item[15].item[4].item[7].prefix   = "11.5.8"


* item[16].linkId = "death"
* item[16].text   = "Patient death"
* item[16].type   = #group
* item[16].prefix   = "12"

* item[16].item[0].linkId = "dateOfDeath"
* item[16].item[0].text   = "Date of death"
* item[16].item[0].type   = #date
* item[16].item[0].prefix   = "12.1"

* item[16].item[1].linkId = "causeOfDeath"
* item[16].item[1].text   = "Cause of death"
* item[16].item[1].type   = #string
* item[16].item[1].prefix   = "12.2"

