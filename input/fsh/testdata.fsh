Instance: exampleresponse
InstanceOf: sdc-questionnaireresponse
Usage: #example
* meta.tag[0].code = #lforms
* status = #completed
* authored = "2021-03-03T20:05:09.707Z"
* questionnaire = "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire"
* questionnaire.extension[0].valueString = "HIV Case Report Questionnaire"
* questionnaire.extension[0].url = "http://hl7.org/fhir/StructureDefinition/display"
* subject.identifier.system = "http://example.org/identifiers"
* subject.identifier.value = "123"
* item[+].linkId = "unit_name"
* item[=].text = "Governing body unit name"
* item[=].answer[0].valueString = "01"
* item[+].linkId = "reportDate"
* item[=].text = "Date of report"
* item[=].answer[+].valueDate = "2021-03-01"
* item[+].linkId = "questions"
* item[=].text = "Monthly report"
* item[=].item[+].linkId = "identifying_information"
* item[=].item[=].text = "Part I: Identifying Information"
* item[=].item[=].item[+].linkId = "arv_patient_nr"
* item[=].item[=].item[=].text = "ARV Patient Number"
* item[=].item[=].item[=].answer[+].valueString = "ARV001"
* item[=].item[=].item[+].linkId = "personal_information"
* item[=].item[=].item[=].text = "Personal Information"
* item[=].item[=].item[=].item[+].linkId = "name"
* item[=].item[=].item[=].item[=].text = "Full name"
* item[=].item[=].item[=].item[=].answer[+].valueString = "John Johnson"
* item[=].item[=].item[=].item[+].linkId = "birth_year"
* item[=].item[=].item[=].item[=].text = "Year of Birth"
* item[=].item[=].item[=].item[=].answer[+].valueInteger = 1970
* item[=].item[=].item[=].item[+].linkId = "id_cccd"
* item[=].item[=].item[=].item[=].text = "Identification"
* item[=].item[=].item[=].item[=].item[+].linkId = "health_insurance_code"
* item[=].item[=].item[=].item[=].item[=].text = "Health insurance code"
* item[=].item[=].item[=].item[=].item[=].answer[+].valueString = "NI000001"
* item[=].item[=].item[=].item[=].item[+].linkId = "passport_nr"
* item[=].item[=].item[=].item[=].item[=].text = "Passport Number"
* item[=].item[=].item[=].item[=].item[=].answer[+].valueString = "P000001"
* item[=].item[=].item[=].item[+].linkId = "residence"
* item[=].item[=].item[=].item[=].text = "Residence"
* item[=].item[=].item[=].item[=].item[0].linkId = "current"
* item[=].item[=].item[=].item[=].item[0].text = "Current residence"
* item[=].item[=].item[=].item[=].item[0].answer[0].valueString = "Current Street, 1"
* item[=].item[=].item[=].item[=].item[1].linkId = "permanent"
* item[=].item[=].item[=].item[=].item[1].text = "Permanent residence"
* item[=].item[=].item[=].item[=].item[1].answer[0].valueString = "Permanent Blvd"
/*
* item[=].item[1].linkId = "risk_factors"
* item[=].item[1].text = "Risk Factors"
* item[=].item[1].item[0].linkId = "transmission_route"
* item[=].item[1].item[0].text = "Transmission Route"
*/
* item[=].item[+].linkId = "hiv-diagnosis"
* item[=].item[=].text = "HIV Diagnosis"
* item[=].item[=].item[+].linkId = "hiv-diagnosis.dateOfConfirmation"
* item[=].item[=].item[=].text = "Date of Confirmation"
* item[=].item[=].item[=].answer[+].valueDate = "2020-11-12"
* item[=].item[=].item[+].linkId = "hiv-diagnosis.confirmingLab"
* item[=].item[=].item[=].text = "Confirming Lab"
* item[=].item[=].item[=].answer[+].valueString = "SafeTest Lab"
* item[=].item[=].item[+].linkId = "hiv-diagnosis.dateOfSpecimenCollection"
* item[=].item[=].item[=].text = "Date of Specimen Collection"
* item[=].item[=].item[=].answer[+].valueDate = "2020-11-11"
* item[=].item[=].item[+].linkId = "hiv-diagnosis.placeOfSpecimenCollection"
* item[=].item[=].item[=].text = "Place of Specimen Collection"
* item[=].item[=].item[=].answer[+].valueString = "At patient's place during a visit"



/*
* item[=].item[3].linkId = "hiv-recency-test"
* item[=].item[3].text = "HIV Recency Test"
* item[=].item[3].item[0].linkId = "hiv-recency-test.rapidTest"
* item[=].item[3].item[0].text = "Rapid test"
* item[=].item[3].item[0].item[0].linkId = "hiv-recency-test.dateOfSpecimenCollection"
* item[=].item[3].item[0].item[0].text = "Date of Specimen Collection for rapid test"
* item[=].item[3].item[0].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[3].item[0].item[1].linkId = "hiv-recency-test.dateOfTestPerformance"
* item[=].item[3].item[0].item[1].text = "Date of rapid test performance"
* item[=].item[3].item[0].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[3].item[0].item[2].linkId = "hiv-recency-test.placeOfSpecimenCollection"
* item[=].item[3].item[0].item[2].text = "Place of Specimen Collection"
* item[=].item[3].item[0].item[2].answer[0].valueString = "1213"
* item[=].item[3].item[1].linkId = "recency.vlTest"
* item[=].item[3].item[1].text = "Rapid VL test"
* item[=].item[3].item[1].item[0].linkId = "recency.dateOfTestPerformance"
* item[=].item[3].item[1].item[0].text = "Date of rapid test performance"
* item[=].item[3].item[1].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[3].item[1].item[1].linkId = "recency.testResult"
* item[=].item[3].item[1].item[1].text = "VL recency test result"
* item[=].item[3].item[1].item[1].answer[0].valueInteger = 1222
* item[=].item[4].linkId = "cd4BeforeART"
* item[=].item[4].text = "CD4 test before ART"
* item[=].item[4].item[0].linkId = "cd4BeforeART.dateOfSpecimenCollection"
* item[=].item[4].item[0].text = "Date of Specimen Collection for CD4 test before ART"
* item[=].item[4].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[4].item[1].linkId = "cd4BeforeART.dateOfTestPerformance"
* item[=].item[4].item[1].text = "Date of CD4 test before ART performance"
* item[=].item[4].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[4].item[2].linkId = "cd4BeforeART.placeOfSpecimenCollection"
* item[=].item[4].item[2].text = "Place of Specimen Collection for CD4 test before ART"
* item[=].item[4].item[2].answer[0].valueString = "133"
* item[=].item[4].item[3].linkId = "cd4BeforeART.testResult"
* item[=].item[4].item[3].text = "CD4 test before ART - result"
* item[=].item[4].item[3].answer[0].valueInteger = 134
* item[=].item[5].linkId = "cd4DuringART"
* item[=].item[5].text = "CD4 test during ART"
* item[=].item[5].item[0].linkId = "cd4DuringART.dateOfSpecimenCollection"
* item[=].item[5].item[0].text = "Date of Specimen Collection for CD4 test during ART"
* item[=].item[5].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[5].item[1].linkId = "cd4DuringART.dateOfTestPerformance"
* item[=].item[5].item[1].text = "Date of CD4 test during ART performance"
* item[=].item[5].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[5].item[2].linkId = "cd4DuringART.placeOfSpecimenCollection"
* item[=].item[5].item[2].text = "Place of Specimen Collection for CD4 test during ART"
* item[=].item[5].item[2].answer[0].valueString = "143"
* item[=].item[5].item[3].linkId = "cd4DuringART.testResult"
* item[=].item[5].item[3].text = "CD4 test during ART - result"
* item[=].item[5].item[3].answer[0].valueInteger = 144
* item[=].item[6].linkId = "vl4DuringART"
* item[=].item[6].text = "Viral Load test during ART"
* item[=].item[6].item[0].linkId = "vl4DuringART.dateOfSpecimenCollection"
* item[=].item[6].item[0].text = "Date of Specimen Collection for VL test during ART"
* item[=].item[6].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[6].item[1].linkId = "vl4DuringART.dateOfTestPerformance"
* item[=].item[6].item[1].text = "Date of VL test during ART performance"
* item[=].item[6].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[6].item[2].linkId = "vl4DuringART.placeOfSpecimenCollection"
* item[=].item[6].item[2].text = "Place of Specimen Collection for VL test during ART"
* item[=].item[6].item[2].answer[0].valueString = "153"
* item[=].item[6].item[3].linkId = "vl4DuringART.testResult"
* item[=].item[6].item[3].text = "VL test during ART - result"
* item[=].item[6].item[3].answer[0].valueInteger = 154
* item[=].item[7].linkId = "drugResistanceTest"
* item[=].item[7].text = "Drug Resistance test"
* item[=].item[7].item[0].linkId = "drugResistanceTest.dateOfSpecimenCollection"
* item[=].item[7].item[0].text = "Date of Specimen Collection for Drug Resistance test"
* item[=].item[7].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[7].item[1].linkId = "drugResistanceTest.dateOfTestPerformance"
* item[=].item[7].item[1].text = "Date of Drug Resistance test"
* item[=].item[7].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[7].item[2].linkId = "drugResistanceTest.placeOfSpecimenCollection"
* item[=].item[7].item[2].text = "Place of Specimen Collection for Drug Resistance test"
* item[=].item[7].item[2].answer[0].valueString = "157"
*/

* item[=].item[8].linkId = "arvTreatment"
* item[=].item[8].text = "ARV Treatment"
* item[=].item[8].item[1].linkId = "arvTreatment.dateOfTreatmentStart"
* item[=].item[8].item[1].text = "Date of treatment start"
* item[=].item[8].item[1].answer[0].valueDate = "2020-11-19"

* item[=].item[8].item[3].linkId = "arvTreatment.placeOfInitiation"
* item[=].item[8].item[3].text = "Place of ARV treatment initiation"
* item[=].item[8].item[3].answer[0].valueString = "Home"

/*
* item[=].item[9].linkId = "comorbidities"
* item[=].item[9].text = "Comorbidities"
* item[=].item[9].item[0].linkId = "tuberculosis"
* item[=].item[9].item[0].text = "Tuberculosis"
* item[=].item[9].item[0].item[0].linkId = "TPT"
* item[=].item[9].item[0].item[0].text = "TPT"
* item[=].item[9].item[0].item[0].item[0].linkId = "tpt.dateStarted"
* item[=].item[9].item[0].item[0].item[0].text = "Date TPT started"
* item[=].item[9].item[0].item[0].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[0].item[0].item[1].linkId = "tpt.dateCompleted"
* item[=].item[9].item[0].item[0].item[1].text = "Date TPT completed"
* item[=].item[9].item[0].item[0].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[0].item[0].item[2].linkId = "tpt.placeProvided"
* item[=].item[9].item[0].item[0].item[2].text = "Place TPT provided"
* item[=].item[9].item[0].item[0].item[2].answer[0].valueString = "17113"
* item[=].item[9].item[0].item[1].linkId = "tbDiagnosisDate"
* item[=].item[9].item[0].item[1].text = "TB Diagnosis Date"
* item[=].item[9].item[0].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[0].item[2].linkId = "tbTreatment"
* item[=].item[9].item[0].item[2].text = "TB Treatment"
* item[=].item[9].item[0].item[2].item[0].linkId = "tbTreatment.dateStarted"
* item[=].item[9].item[0].item[2].item[0].text = "Date TB Treatment started"
* item[=].item[9].item[0].item[2].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[0].item[2].item[1].linkId = "tbTreatment.dateCompleted"
* item[=].item[9].item[0].item[2].item[1].text = "Date TB Treatment completed"
* item[=].item[9].item[0].item[2].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[0].item[2].item[2].linkId = "tbTreatment.placeProvided"
* item[=].item[9].item[0].item[2].item[2].text = "Place TB Treatment provided"
* item[=].item[9].item[0].item[2].item[2].answer[0].valueString = "17133"
* item[=].item[9].item[1].linkId = "hbv_hcv"
* item[=].item[9].item[1].text = "HBV and HCV"
* item[=].item[9].item[1].item[0].linkId = "hbv"
* item[=].item[9].item[1].item[0].text = "HBV"
* item[=].item[9].item[1].item[0].item[0].linkId = "hbv.diagnosisDate"
* item[=].item[9].item[1].item[0].item[0].text = "Date of HBV diagnosis"
* item[=].item[9].item[1].item[0].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[1].item[0].item[1].linkId = "hbv.treatmentStartDate"
* item[=].item[9].item[1].item[0].item[1].text = "Date of HBV treatment start"
* item[=].item[9].item[1].item[0].item[1].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[1].item[0].item[2].linkId = "hbv.treatmentEndDate"
* item[=].item[9].item[1].item[0].item[2].text = "Date HBV treatment completed"
* item[=].item[9].item[1].item[0].item[2].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[1].item[0].item[3].linkId = "hbv.placeProvided"
* item[=].item[9].item[1].item[0].item[3].text = "Place HBV treatment provided"
* item[=].item[9].item[1].item[0].item[3].answer[0].valueString = "1714"
* item[=].item[9].item[1].item[1].linkId = "hcv"
* item[=].item[9].item[1].item[1].text = "HCV"
* item[=].item[9].item[1].item[1].item[0].linkId = "hcv.diagnosisDate"
* item[=].item[9].item[1].item[1].item[0].text = "Date of HBV diagnosis"
* item[=].item[9].item[1].item[1].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[9].item[1].item[1].item[1].linkId = "hcv.placeProvided"
* item[=].item[9].item[1].item[1].item[1].text = "Place HBV treatment provided"
* item[=].item[9].item[1].item[1].item[1].answer[0].valueString = "1714b"
* item[=].item[10].linkId = "pregnancies"
* item[=].item[10].text = "ARV Treatment"
* item[=].item[10].item[0].linkId = "datePregnancyReported"
* item[=].item[10].item[0].text = "Date pregnancy reported"
* item[=].item[10].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[10].item[1].linkId = "placePregnancyReported"
* item[=].item[10].item[1].text = "Place pregnancy reported"
* item[=].item[10].item[1].answer[0].valueString = "19"
* item[=].item[10].item[2].linkId = "childDeliveryDate"
* item[=].item[10].item[2].text = "Reported child delivery date"
* item[=].item[10].item[2].answer[0].valueDate = "2021-03-11"
* item[=].item[10].item[3].linkId = "childDeliveryPlace"
* item[=].item[10].item[3].text = "Reported child delivery place"
* item[=].item[10].item[3].answer[0].valueString = "1999999"
* item[=].item[10].item[4].linkId = "pregnancyOutcomes"
* item[=].item[10].item[4].text = "Pregnancy Outcomes"
* item[=].item[10].item[4].item[0].linkId = "childDateOfBirth"
* item[=].item[10].item[4].item[0].text = "Date of child birth"
* item[=].item[10].item[4].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[10].item[4].item[1].linkId = "gestationAtDelivery"
* item[=].item[10].item[4].item[1].text = "Gestational age at delivery (weeks)"
* item[=].item[10].item[4].item[1].answer[0].valueDecimal = 19999999
* item[=].item[10].item[4].item[2].linkId = "birthWeight"
* item[=].item[10].item[4].item[2].text = "Weight at birth (kg)"
* item[=].item[10].item[4].item[2].answer[0].valueDecimal = 19999999
* item[=].item[10].item[4].item[3].linkId = "childHIVDiagnosisDate"
* item[=].item[10].item[4].item[3].text = "HIV diagnosis date"
* item[=].item[10].item[4].item[3].answer[0].valueDate = "2021-03-11"
* item[=].item[10].item[4].item[4].linkId = "childARTStartDate"
* item[=].item[10].item[4].item[4].text = "ART start date"
* item[=].item[10].item[4].item[4].answer[0].valueDate = "2021-03-11"
* item[=].item[11].linkId = "death"
* item[=].item[11].text = "Patient death"
* item[=].item[11].item[0].linkId = "dateOfDeath"
* item[=].item[11].item[0].text = "Date of death"
* item[=].item[11].item[0].answer[0].valueDate = "2021-03-11"
* item[=].item[11].item[1].linkId = "causeOfDeath"
* item[=].item[11].item[1].text = "Cause of death"
* item[=].item[11].item[1].answer[0].valueString = "199999"
*/