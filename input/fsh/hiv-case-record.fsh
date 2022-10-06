Profile: HIVComposition
Parent: Composition
Id: hiv-composition
Description: "HIV Case Reporting Composition"
Title: "HIV Case Reporting Composition"
* type = $LNC#95412-3
* category = $LNC#75218-8
* identifier.system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-case-report"

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #openAtEnd
* section ^slicing.ordered = true
* section ^slicing.description = "Slice of composition.section based on code"
* section contains
    hivPatientSection 1..1 and
    hivDiagnosisSection 0..1 and
    hivEntryToCareSection 0..1 and
    arvTreatmentSection 0..1 and
    cd4Section 0..1 and
    viralSuppressionSection 0..1 and
    deathSection 0..1

* section[hivPatientSection].title = "Client registration"
* section[hivPatientSection].code = CSCaseReportSections#CLIENT-REGISTRATION
* section[hivPatientSection].entry ^slicing.discriminator.type = #profile
* section[hivPatientSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivPatientSection].entry ^slicing.rules = #closed
* section[hivPatientSection].entry contains
    hivPatient 1..1 and
    hivRelatedPerson 0..*
* section[hivPatientSection].entry[hivPatient] only Reference(HIVPatient)
* section[hivPatientSection].entry[hivRelatedPerson] only Reference(HIVRelatedPerson)

* section[hivDiagnosisSection].title = "HIV Diagnosis"
* section[hivDiagnosisSection].code = CSCaseReportSections#HIV-DIAGNOSIS
* section[hivDiagnosisSection].entry only Reference(HIVDiagnosis or HIVDiagnosisEncounter or HIVRecencyTestConducted or HIVRecencyResult or HIVTestDate)
* section[hivDiagnosisSection].entry ^slicing.discriminator.type = #profile
* section[hivDiagnosisSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivDiagnosisSection].entry ^slicing.rules = #closed
* section[hivDiagnosisSection].entry contains
    hivDiagnosis 1..1 and
    hivDiagnosisEncounter 1..1 and
    hivRecencyTestConducted 1..1 and
    hivRecencyResult 1..1 and
    hivTestDate 1..1

* section[hivDiagnosisSection].entry[hivDiagnosis] only Reference(HIVDiagnosis)
* section[hivDiagnosisSection].entry[hivDiagnosisEncounter] only Reference(HIVDiagnosisEncounter)
* section[hivDiagnosisSection].entry[hivRecencyTestConducted] only Reference(HIVRecencyTestConducted)
* section[hivDiagnosisSection].entry[hivRecencyResult] only Reference(HIVRecencyResult)
* section[hivDiagnosisSection].entry[hivTestDate] only Reference(HIVTestDate)

* section[hivEntryToCareSection].title = "HIV Entry To Care"
* section[hivEntryToCareSection].code = CSCaseReportSections#HIV-ENTRY-TO-CARE
* section[hivEntryToCareSection].entry only Reference(HIVEpisodeOfCare or HIVClinicalEncounter or HIVTransferOut)
* section[hivEntryToCareSection].entry ^slicing.discriminator.type = #profile
* section[hivEntryToCareSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivEntryToCareSection].entry ^slicing.rules = #closed
* section[hivEntryToCareSection].entry contains
    hivEpisodeOfCare 1..1 and
    hivClinicalEncounter 1..1 and 
    hivTransferOut 0..1

* section[hivEntryToCareSection].entry[hivEpisodeOfCare] only Reference(HIVEpisodeOfCare)
* section[hivEntryToCareSection].entry[hivClinicalEncounter] only Reference(HIVClinicalEncounter)
* section[hivEntryToCareSection].entry[hivTransferOut] only Reference(HIVTransferOut)

* section[arvTreatmentSection].title = "ARV Treatment"
* section[arvTreatmentSection].code = CSCaseReportSections#ARV-TREATMENT
* section[arvTreatmentSection].entry only Reference(ARVTreatment or HIVCareMedicationRequest)
* section[arvTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[arvTreatmentSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[arvTreatmentSection].entry ^slicing.rules = #closed
* section[arvTreatmentSection].entry contains
    arvTreatment 1..1 and
    hivCareMedicationRequest 1..1
* section[arvTreatmentSection].entry[arvTreatment] only Reference(ARVTreatment)
* section[arvTreatmentSection].entry[hivCareMedicationRequest] only Reference(HIVCareMedicationRequest)

* section[cd4Section].title = "CD4"
* section[cd4Section].code = CSCaseReportSections#CD4
* section[cd4Section].entry only Reference(CD4)

* section[viralSuppressionSection].title = "Viral Suppression"
* section[viralSuppressionSection].code = CSCaseReportSections#VIRAL-SUPPRESSION
* section[viralSuppressionSection].entry only Reference(ViralLoadSuppression or VLProcedureInfo)
* section[viralSuppressionSection].entry ^slicing.discriminator.type = #profile
* section[viralSuppressionSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[viralSuppressionSection].entry ^slicing.rules = #closed
* section[viralSuppressionSection].entry contains
    viralLoadSuppression 1..1 and
    vlProcedureInfo 1..1
* section[viralSuppressionSection].entry[viralLoadSuppression] only Reference(ViralLoadSuppression)
* section[viralSuppressionSection].entry[vlProcedureInfo] only Reference(VLProcedureInfo)


* section[deathSection].title = "Death"
* section[deathSection].code = CSCaseReportSections#DEATH
* section[deathSection].entry only Reference(DeathObs)

Profile: HIVDiagnosisEncounter
Parent: Encounter
Id: hiv-disgnosis-encounter
Title: "HIV Diagnosis Encounter"
Description: "HIV Encounter for a case report"
* serviceProvider 1..1
* subject 1..1
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#PRENC
* extension contains HIVCareNextAppointment named next-visit 0..1 MS //

Profile: HIVClinicalEncounter
Parent: Encounter
Id: hiv-clinical-encounter
Title: "HIV Clinical Encounter"
Description: "HIV Encounter for a case report"
* subject 1..1
* period.start 1..1
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC
* extension contains HIVCareNextAppointment named next-visit 0..1 MS 

Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "HIV Organization for case report - this represents a health facility"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* identifier 1..*

Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "HIV Patient"
Description: "This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"
* extension contains
    KeyPopulation named keyPopulation 0..1 MS

* birthDate MS
* name.family 1..1 MS
* name.given  1..* MS 
* gender 1..1 MS
* maritalStatus 1..1 MS
* maritalStatus from VSMaritalStatus

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"

* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on the type of address"

* address 1..*
* address.country MS
* address.state MS
* address.district MS
* address.city MS

* identifier contains
    art 0..* and
    passport 0..* and
    national 0..* and
    pos 0..*

* identifier[art].value 0..1
* identifier[art].system = "http://openhie.org/fhir/hiv-casereporting/identifier/art"
* identifier[passport].value 0..1
* identifier[passport].system = "http://openhie.org/fhir/hiv-casereporting/identifier/passport"
* identifier[national].value 0..1
* identifier[national].system = "http://openhie.org/fhir/hiv-casereporting/identifier/nid"
* identifier[pos].value 1..1

* managingOrganization 1..1

Extension: KeyPopulation
Id: key-population
Title: "Key population"
Description: "Key population"
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulation

Profile: HIVRelatedPerson
Parent: RelatedPerson
Id: hiv-related-person
Title: "HIV Related Person"
Description: "HIV Related Person"
* name 1..* MS

Profile: HIVDiagnosis
Parent: Condition
Id: hiv-diagnosis
Title: "HIV Diagnosis"
Description: "This profile allows the exchange of a patient's hiv diagnosis"
* recordedDate 1..1
* identifier 1..*
* code 1..1

Profile: HIVRecencyTestConducted
Parent: Observation
Id: hiv-recency-test-conducted
Title: "HIV Recency Test Conducted"
Description: "This profile allows the exchange of a patient's hiv recency test"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-TEST-CONDUCTED "HIV recency test conducted"
* valueBoolean 1..1
* encounter 1..1

Profile: HIVDateOfRecencyTest
Parent: Observation
Id: hiv-date-recency-test
Title: "HIV Date Recency Test"
Description: "This profile is to determine the data of the HIV Test"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-TEST-CONDUCTED "HIV date recency rest"
* valueDateTime 1..1
* encounter 1..1

Profile: HIVActualRecencyTestResult
Parent: Observation
Id: hiv-acutal-recency-test-result
Title: "HIV Actual Recency Test Result"
Description: "This profile is to determine the recent test result"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-TEST-CONDUCTED "HIV actual recency test result"
* valueString 1..1
* encounter 1..1

Profile: ViralLoadSuppressionMostRecentTestDate
Parent: Observation
Id: hiv-viral-load-suppression-most-recent-test-date
Title: "HIV Viral Load Suppression Most Recent Test Date"
Description: "This profile is to determine the date of the HIV Test"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-TEST-CONDUCTED "VL most recent test date"
* valueDateTime 1..1

Profile: ViralLoadSuppressionMostRecentTestResult
Parent: Observation
Id: hiv-viral-load-suppression-most-recent-test-result
Title: "HIV Viral Load Suppression Most Recent Test Result"
Description: "This profile is to determine the result of the HIV Test"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-TEST-CONDUCTED "VL most recent test result"
* valueInteger 1..1

Profile: HIVRecencyResult
Parent: Observation
Id: hiv-recency-result
Title: "HIV Recency Result"
Description: "This profile allows the exchange of a patient's hiv recency test"
* subject 1..1
* code = CSHIVObsCodes#HIV-RECENCY-RESULT "HIV recency test conducted"
* valueBoolean 1..1
* encounter 1..1

Profile: HIVEpisodeOfCare
Parent: EpisodeOfCare
Id: hiv-episode-of-care
Title: "HIV Episode Of Care"
Description: ""
* period.start 1..1 MS
* identifier 1..* MS
* identifier.system = "http://openhie.org/fhir/hiv-casereporting/identifier/enrollment-unique-id"
* managingOrganization 1..1 MS
* diagnosis 1..1 MS
* referralRequest MS  //Transfer-Out

Extension: ARTRegimenLine
Id: art-regimen-line
Title: "ART Regimen Line"
Description: ""
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTRegimenLines

Profile: ARVTreatment
Parent: CarePlan
Id: hiv-arv-treatment
Title: "ARVCarePlan"
Description: "This profile allows the exchange of a patient's ARV treatment"
* period.start 1..1 MS
* activity 1..* MS
* activity.detail 1..1 MS
* activity.detail.status MS
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 "HIV ART medication"
* activity.detail.productCodeableConcept 1..1 MS
* activity.detail.extension contains ARTRegimenLine named artRegimenLine 1..1 MS
* extension contains ARTStatus named artStatus 1..1 MS
* activity.outcomeCodeableConcept 0..1 MS //Indicates that patient refused HIV Treatment
//* activity.outcomeCodeableConcept from VSCarePlanActivityOutcome
* activity.detail.scheduledPeriod.end MS //Date Patient refused HIV treatment OR Contact Date 

Profile: CD4
Parent: Observation
Id: hiv-cd4-test
Title: "CD4Observation"
Description: "This profile allows the exchange of a patient's CD4 test and results"
* subject 1..1 MS
* code = CSHIVObsCodes#CD4-RESULT "CD4 result"
* effectiveDateTime 1..1 MS
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    cd4Result 1..1 and
    cd4Percentage 1..1
* component[cd4Result].code = $SCT#113056008 "CD4 result"
* component[cd4Result].valueInteger 1..1
* component[cd4Percentage].code = $SCT#313938009 "CD4 percentage"
* component[cd4Percentage].valueInteger 1..1

Profile: ViralLoadSuppression
Parent: Observation
Id: hiv-viral-load-suppression
Title: "HIV viral load suppression"
Description: "HIV viral load"
* subject 1..1 MS
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime 1..1 MS
* valueInteger 1..1 MS
* interpretation ^slicing.discriminator.type = #pattern
* interpretation ^slicing.discriminator.path = "system"
* interpretation ^slicing.rules = #closed
* interpretation contains
    vlResult 1..1 and
    vlSuppression 1..1
* interpretation[vlResult] from VSVLInterpretation
* interpretation[vlSuppression] from VSVLSuppression
* note MS 

Extension: LastClinicalVisit
Id: last-clinical-visit
Title: "Last Clinical Visit"
Description: ""
* value[x] only dateTime

Profile: DeathObs
Parent: Observation
Id: death-obs
Title: "Death Obs"
Description: ""
* subject 1..1 MS
* code = CSHIVObsCodes#CAUSE-OF-DEATH "Cause of death"
* effectiveDateTime 1..1 MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSVLCauseOfDeath
* extension contains LastClinicalVisit named lastClinicalVisit 1..1 MS

Profile: HIVCareMedicationRequest
Parent: MedicationRequest
Id: hiv-med-req
Title: "HIV Care Medication Request"
Description: "HIV Care Medication Request"
* dispenseRequest.quantity 1..1 MS //ARV Dispensing quantity in days
* basedOn 1..1 MS // ARVTreatMent Careplan

Extension: HIVCareNextAppointment
Id: hiv-care-next-visit
Title: "Next Appointment Date"
Description: ""
* value[x] only dateTime

Extension: ARTStatus
Id: art-status
Title: "ART Status"
Description: ""
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTStatus

Profile: HIVTransferOut
Parent: ServiceRequest
Id: hiv-transfer-out
Title: "HIV Transfer Out Request"
Description: "HIV Transfer Out Request"
* occurrenceDateTime 1..1 MS // Transfer-Out Date

//reason for viral load
Profile: VLProcedureInfo
Parent: Procedure
Id: vl-procedure-info
Title: "VL Procedure info"
Description: "VL Procedure info"
* reasonCode from VSHIVVLReason  
* reasonCode 1..1 MS

Profile: HIVServiceRequest
Parent: ServiceRequest
Id: hiv-service-request
Title: "HIV Service Request"
Description: "HIV Service Request"
* occurrenceDateTime 1..1 MS
* specimen MS 

Profile: VLSpecimen
Parent: Specimen
Id: viral-load-specimen
Title: "Viral Load Specimen"
Description: "Viral Load Specimen"
* identifier 1..1 MS
* type MS
* subject MS
* collection.collectedDateTime MS

Profile: HIVTestDate
Parent: Observation
Id: date-tested-for-hiv
Title: "HIVTestDateObservation"
Description: "This profile allows the exchange of a patient's test date"
* subject 1..1 MS
* encounter 1..1 MS 
* code = CSHIVObsCodes#DATE-TESTED-FOR-HIV "Date tested for HIV"
* valueDateTime 1..1 MS
