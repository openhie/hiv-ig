Instance: HIVBundleExample
InstanceOf: Bundle
Usage: #example
Title: "HIV Case Report - Full Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #document
* entry[+].fullUrl = "Composition/HIVCompositionExample"
* entry[=].resource = HIVCompositionExample
* entry[+].fullUrl = "Encounter/HIVDiagnosisEncounterExample"
* entry[=].resource = HIVDiagnosisEncounterExample
* entry[+].fullUrl = "Encounter/HIVClinicalEncounterExample"
* entry[=].resource = HIVClinicalEncounterExample
* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[+].fullUrl = "RelatedPerson/GuardianExample"
* entry[=].resource = GuardianExample
* entry[+].fullUrl = "Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[+].fullUrl = "Observation/HIVRecencyTestConductedExample"
* entry[=].resource = HIVRecencyTestConductedExample
* entry[+].fullUrl = "Observation/HIVRecencyResultExample"
* entry[=].resource = HIVRecencyResultExample
* entry[+].fullUrl = "EpisodeOfCare/HIVEpisodeOfCareExample"
* entry[=].resource = HIVEpisodeOfCareExample
* entry[+].fullUrl = "CarePlan/ARVTreatmentExample1"
* entry[=].resource = ARVTreatmentExample1
* entry[+].fullUrl = "CarePlan/ARVTreatmentExample2"
* entry[=].resource = ARVTreatmentExample2
* entry[+].fullUrl = "Observation/CD4Example1"
* entry[=].resource = CD4Example1
* entry[+].fullUrl = "Observation/CD4Example2"
* entry[=].resource = CD4Example2
* entry[+].fullUrl = "Observation/ViralLoadSuppressionExample1"
* entry[=].resource = ViralLoadSuppressionExample1
* entry[+].fullUrl = "Observation/ViralLoadSuppressionExample2"
* entry[=].resource = ViralLoadSuppressionExample2
* entry[+].fullUrl = "Observation/DeathExample"
* entry[=].resource = DeathExample

Instance: HIVCompositionExample
InstanceOf: HIVComposition
Usage: #example
Title: "HIV Case Report Composition Example"
Description: "Basic Composition example"
* status = #final
* identifier.system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-case-report"
* identifier.value = "1111"
* date = "2021-05-18"
* author = Reference(HIVOrganizationExample)
* title = "HIV Case Report"

* section[+].title = "Client registration"
* section[=].code = CSCaseReportSections#CLIENT-REGISTRATION
* section[=].entry[+] = Reference(HIVPatientExample)
* section[=].entry[+] = Reference(GuardianExample)

* section[+].title = "HIV Diagnosis"
* section[=].code = CSCaseReportSections#HIV-DIAGNOSIS
* section[=].entry[+] = Reference(HIVDiagnosisExample)
* section[=].entry[+] = Reference(HIVDiagnosisEncounterExample)
* section[=].entry[+] = Reference(HIVRecencyTestConductedExample)
* section[=].entry[+] = Reference(HIVRecencyResultExample)

* section[+].title = "HIV Entry To Care"
* section[=].code = CSCaseReportSections#HIV-ENTRY-TO-CARE
* section[=].entry[+] = Reference(HIVEpisodeOfCareExample)
* section[=].entry[+] = Reference(HIVClinicalEncounterExample)

* section[+].title = "ARV Treatment"
* section[=].code = CSCaseReportSections#ARV-TREATMENT
* section[=].entry[+] = Reference(ARVTreatmentExample1)
* section[=].entry[+] = Reference(ARVTreatmentExample2)

* section[+].title = "CD4"
* section[=].code = CSCaseReportSections#CD4
* section[=].entry[+] = Reference(CD4Example1)
* section[=].entry[+] = Reference(CD4Example2)

* section[+].title = "Viral Suppression"
* section[=].code = CSCaseReportSections#VIRAL-SUPPRESSION
* section[=].entry[+] = Reference(ViralLoadSuppressionExample1)
* section[=].entry[+] = Reference(ViralLoadSuppressionExample2)

* section[+].title = "Death"
* section[=].code = CSCaseReportSections#DEATH
* section[=].entry[+] = Reference(DeathExample)

Instance: HIVDiagnosisEncounterExample
InstanceOf: HIVDiagnosisEncounter
Usage: #example
Title: "HIV Diagnosis Encounter Example"
Description: "HIV Diagnosis Encounter example"
* serviceProvider = Reference(HIVOrganizationExample)
* status = #finished
* subject = Reference(HIVPatientExample)

Instance: HIVClinicalEncounterExample
InstanceOf: HIVClinicalEncounter
Usage: #example
Title: "HIV Clinical Encounter Example"
Description: "HIV Clinical Encounter example"
* status = #finished
* period.start = "2021-07-22"
* subject = Reference(HIVPatientExample)

Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"
* name = "HIV Organization"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-organization"
* identifier[=].value = "facility1"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "HIV Patient example"
Description: "."
* active = true
* name.use = #official
* name.given = "Jane"
* name.family = "Smith"
* maritalStatus.coding[0].code = #M
* maritalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* gender = #female
* birthDate = "1986-06-04"
* telecom.system = #phone
* telecom.value = "+27825556666"
* address.country = "South Africa"
* address.state = "Western Province"
* address.district = "City of Cape Town"
* address.city = "Cape Town"
* identifier[art].value = "ART1234567"
* identifier[art].system = "http://openhie.org/fhir/hiv-casereporting/identifier/art"
* identifier[passport].value = "PASSPORT1234567"
* identifier[passport].system = "http://openhie.org/fhir/hiv-casereporting/identifier/passport"
* identifier[national].value = "NAT1234567"
* identifier[national].system = "http://openhie.org/fhir/hiv-casereporting/identifier/nid"
* identifier[pos].value = "EMR1234567"
* identifier[pos].system = "http://openhie.org/fhir/hiv-casereporting/identifier/facility1"
* managingOrganization = Reference(HIVOrganizationExample)
* extension[genderIdentity].valueCodeableConcept = #male
* extension[keyPopulation].valueCodeableConcept = #transgender

Instance: GuardianExample
InstanceOf: HIVRelatedPerson
Usage: #example
Title: "Related Person example"
Description: ""
* name.given = "Peter"
* name.family = "Loo"
* patient = Reference(HIVPatientExample)

Instance: HIVDiagnosisExample
InstanceOf: HIVDiagnosis
Usage: #example
Title: "HIV Condition example"
Description: "."
* clinicalStatus = #active
* verificationStatus = #confirmed
* code = $SCT#86406008
* subject = Reference(HIVPatientExample)
* recordedDate = "2021-05-18"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-diagnosis"
* identifier[=].value = "abc"

Instance: HIVRecencyTestConductedExample
InstanceOf: HIVRecencyTestConducted
Usage: #example
Title: "HIV recency test example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueBoolean = true
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVDateOfRecencyTestExample
InstanceOf: HIVDateOfRecencyTest
Usage: #example
Title: "HIV Date Recency Test Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueDateTime = 2020-10-01
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVActualRecencyTestResultExample
InstanceOf: HIVActualRecencyTestResult
Usage: #example
Title: "HIV Actual Recency Test Result Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueString = "Test"
* encounter = Reference(HIVClinicalEncounterExample)

Instance: ViralLoadSuppressionMostRecentTestDateExample
InstanceOf: ViralLoadSuppressionMostRecentTestDate
Usage: #example
Title: "HIV Viral Load Suppression Most Recent Test Date Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueDateTime = 2020-10-01

Instance: ViralLoadSuppressionMostRecentTestResultExample
InstanceOf: ViralLoadSuppressionMostRecentTestResult
Usage: #example
Title: "HIV Viral Load Suppression Most Recent Test Result Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueInteger = 29
* interpretation = CSVLInterpretation#D

Instance: HIVRecencyResultExample
InstanceOf: HIVRecencyResult
Usage: #example
Title: "HIV recency result example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueBoolean = false
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVEpisodeOfCareExample
InstanceOf: HIVEpisodeOfCare
Usage: #example
Title: "HIV Episode Of Care Example"
Description: ""
* status = #active
* patient = Reference(HIVPatientExample)
* period.start = "2021-08-25"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/enrollment-unique-id"
* identifier[=].value = "123456789"
* managingOrganization = Reference(HIVOrganizationExample)
* diagnosis.condition = Reference(HIVDiagnosisExample)

Instance: ARVTreatmentExample1
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: ""
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* period.start = "2021-05-20"
* activity.detail.status = #stopped
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 "HIV ART medication"
* activity.detail.productCodeableConcept = #TDF/3TC/DTG
* activity.detail.extension[artRegimenLine].valueCodeableConcept = #FIRST-LINE

Instance: ARVTreatmentExample2
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: ""
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* period.start = "2021-07-20"
* activity.detail.status = #in-progress
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 "HIV ART medication"
* activity.detail.productCodeableConcept = #TDF/3TC/EFV
* activity.detail.extension[artRegimenLine].valueCodeableConcept = #SECOND-LINE

Instance: CD4Example1
InstanceOf: CD4
Usage: #example
Title: "CD4 example 1"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CD4-RESULT "CD4 result"
* effectiveDateTime = "2020-06-09"
* component[+].code = $SCT#113056008 "CD4 result"
* component[=].valueInteger = 500
* component[+].code = $SCT#313938009 "CD4 percentage"
* component[=].valueInteger = 50

Instance: CD4Example2
InstanceOf: CD4
Usage: #example
Title: "CD4 example 2"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CD4-RESULT "CD4 result"
* effectiveDateTime = "2021-08-26"
* component[+].code = $SCT#113056008 "CD4 result"
* component[=].valueInteger = 200
* component[+].code = $SCT#313938009 "CD4 percentage"
* component[=].valueInteger = 30

Instance: ViralLoadSuppressionExample1
InstanceOf: ViralLoadSuppression
Usage: #example
Title: "Viral load suppression example 1"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime = "2020-06-09"
* valueInteger = 1000
* interpretation[+] = CSVLInterpretation#D "Detectable"
* interpretation[+] = CSVLSuppression#UNSUP "Unsuppressed"

Instance: ViralLoadSuppressionExample2
InstanceOf: ViralLoadSuppression
Usage: #example
Title: "Viral load suppression example 2"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime = "2021-06-21"
* valueInteger = 200
* interpretation[+] = CSVLInterpretation#ND "Non Detectable"
* interpretation[+] = CSVLSuppression#SUP "Suppressed"

Instance: DeathExample
InstanceOf: DeathObs
Usage: #example
Title: "Death Example"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CAUSE-OF-DEATH "Cause of death"
* effectiveDateTime = "2021-08-26"
* valueCodeableConcept = CSVLCauseOfDeath#HIV "HIV Related"
* extension[lastClinicalVisit].valueDateTime = "2021-08-26"
