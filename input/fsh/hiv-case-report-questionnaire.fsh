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

/*
* insert Question(,clinical-status,Clinical Status,string,false)

* insert Question(item[=].,clinical-status,Clinical Status,string,false)
*/



* insert Question(,title,HIV Case Report,display,false)

* insert Question(,instructions,Reporting regulations: Monthly – applicable to each patient during the reporting period,display,false)

* insert Question(,patient_identification,Patient Identification,group,false)

* insert Question(item[=].,patient_unique_identifier,Patient Identification,group,false)

* insert Question(item[=].item[=].,patient_unique_identifier_number,Patient Identification Unique Number,string,false)

* insert Question(item[=].item[=].,patient_unique_identifier_assigner,Patient Identification Unique Number type or entity,string,false)

* insert Question(item[=].,patient_date_of_birth,Patient Date of Birth,date,false)

* insert Question(item[=].,patient_name,Patient Name,group,true)
* insert Question(item[=].item[=].,patient_name_use,Patient Name Use or Type,string,false)
* insert Question(item[=].item[=].,patient_given_name,Patient Given Name,string,false)
* insert Question(item[=].item[=].,patient_family_name,Patient Family Name,string,false)

* insert Question(item[=].,patient_gender_at_birth,Patient Gender at Birth,choice,false)
* item[=].item[=].answerValueSet = ""

* insert Question(item[=].,patient_gender_identity,Patient Gender identity,choice,false)
* item[=].item[=].answerValueSet = ""

* insert Question(item[=].,patient_marital_status,Patient Marital Status,choice,false)
* item[=].item[=].answerValueSet = ""

* insert Question(item[=].,patient_risk_population,Patient Risk Population,choice,true)
* item[=].item[=].answerValueSet = ""

* insert Question(item[=].,patient_address,Patient Address,group,true)
* insert Question(item[=].item[=].,patient_address_type,Patient Address Type (permanent\, current\),choice,false)
* insert Question(item[=].item[=].,patient_address_country,Address country,choice,false)
* insert Question(item[=].item[=].,patient_address_state,Address state\, department\, province,string,false)
* insert Question(item[=].item[=].,patient_address_district,Address district\, arrondissement\, subcounty,string,false)
* insert Question(item[=].item[=].,patient_address_city,Address city or village,string,false)
* insert Question(item[=].,patient_risk_population,Patient Risk Population,choice,false)

* insert Question(item[=].,phone_number,Phone_number,string,true)

* insert Question(item[=].,contact_preferences,Contact Preferences,choice,true)

* insert Question(item[=].,guardian_name,Guardian name,string,false)

* insert Question(item[=].,guardian_name,Guardian name,string,false)

* insert Question(,hiv_diagnosis,HIV Positive Diagnosis,group,false)
* insert Question(item[=].,hiv_diagnosis_date,HIV positive diagnosis date,date,false)
* insert Question(item[=].,hiv_diagnosis_test_id,HIV positive diagnosis unique test ID,string,false)
* insert Question(item[=].,hiv_diagnosis_site_id,HIV positive diagnosis site identifier,string,false)
* insert Question(item[=].,hiv_diagnosis_site_name,HIV positive diagnosis site name,string,false)
* insert Question(item[=].,hiv_diagnosis_collection_date,HIV positive diagnosis collection date,date,false)
* insert Question(item[=].,hiv_diagnosis_collection_place,HIV positive diagnosis collection place,string,false)
* insert Question(item[=].,hiv_diagnosis_transmission_route,HIV transmission route,choice,false)
* item[=].item[=].answerValueSet = ""


* insert Question(,recency_test,HIV Recency Test,group,false)
* insert Question(item[=].,recency_type_of_test,Type of test,choice,false)
* item[=].item[=].answerValueSet = ""
* insert Question(item[=].,recency_test_date,Date of recency test,date,false)
* insert Question(item[=].,recency_test_place,Date of recency test,string,false)
* insert Question(item[=].,recency_test_collection_place,Date of recency test sample collection,date,false)
* insert Question(item[=].,recency_test_result,Result of recency test,integer,false)
* insert Question(item[=].,recency_test_result_conclusion,Recency conclusion,choice,false)







* insert Question(,death,Death,group,false)
* insert Question(item[=].,date_of_death,Date of Death,date,false)
* insert Question(item[=].,age_at_death,Age at Death,integer,false)
* insert Question(item[=].,cause_of_death,Cause of Death,open-choice,false)



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



/*
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
*/