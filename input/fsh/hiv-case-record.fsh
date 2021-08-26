Profile: HIVComposition
Parent: Composition
Id: hiv-composition
Description: "HIV Case Reporting Composition"
Title: "HIV Case Reporting Composition"
* type = $LNC#95412-3
* category = $LNC#75218-8
* encounter 1..1
* identifier.system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-case-report"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #openAtEnd
* section ^slicing.ordered = true
* section ^slicing.description = "Slice of composition.section based on code"
* section contains
    hivPatientSection 1..1 and
    hivDiagnosisSection 0..1 and
    hivEntryToCareSection 0..1 and
    arvTreatmentSection 0..* and
    cd4Section 0..* and
    viralSuppressionSection 0..* and
    deathSection 0..1

* section[hivPatientSection].title = "Client registration"
* section[hivPatientSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#clientRegistration
* section[hivPatientSection].entry ^slicing.discriminator.type = #profile
* section[hivPatientSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivPatientSection].entry ^slicing.rules = #closed
* section[hivPatientSection].entry contains
    hivPatient 1..1 and
    hivEncounter 1..1 and
    hivRelatedPerson 0..*
* section[hivPatientSection].entry[hivPatient] only Reference(HIVPatient)
* section[hivPatientSection].entry[hivEncounter] only Reference(HIVEncounter)
* section[hivPatientSection].entry[hivRelatedPerson] only Reference(HIVRelatedPerson)

* section[hivDiagnosisSection].title = "HIV Diagnosis"
* section[hivDiagnosisSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#hivDiagnosis
* section[hivDiagnosisSection].entry only Reference(HIVDiagnosis or HIVEncounter or HIVRecencyTestConducted or HIVRecencyResult)
* section[hivDiagnosisSection].entry ^slicing.discriminator.type = #profile
* section[hivDiagnosisSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivDiagnosisSection].entry ^slicing.rules = #closed
* section[hivDiagnosisSection].entry contains
    hivDiagnosis 1..1 and
    hivEncounter 1..1 and
    hivRecencyTestConducted 1..1 and
    hivRecencyResult 1..1
* section[hivDiagnosisSection].entry[hivDiagnosis] only Reference(HIVDiagnosis)
* section[hivDiagnosisSection].entry[hivEncounter] only Reference(HIVEncounter)
* section[hivDiagnosisSection].entry[hivRecencyTestConducted] only Reference(HIVRecencyTestConducted)
* section[hivDiagnosisSection].entry[hivRecencyResult] only Reference(HIVRecencyResult)

* section[hivEntryToCareSection].title = "HIV Entry To Care"
* section[hivEntryToCareSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#hivEntryToCare
* section[hivEntryToCareSection].entry only Reference(HIVEpisodeOfCare)
* section[hivEntryToCareSection].entry ^slicing.discriminator.type = #profile
* section[hivEntryToCareSection].entry ^slicing.discriminator.path = "item.resolve()"
* section[hivEntryToCareSection].entry ^slicing.rules = #closed
* section[hivEntryToCareSection].entry contains
    hivEpisodeOfCare 1..1
* section[hivEntryToCareSection].entry[hivEpisodeOfCare] only Reference(HIVEpisodeOfCare)

* section[arvTreatmentSection].title = "ARV Treatment"
* section[arvTreatmentSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#arvTreatment
* section[arvTreatmentSection].entry only Reference(ARVTreatment)

* section[cd4Section].title = "CD4"
* section[cd4Section].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#cd4
* section[cd4Section].entry only Reference(CD4)

* section[viralSuppressionSection].title = "Viral Suppression"
* section[viralSuppressionSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#viralSuppression
* section[viralSuppressionSection].entry only Reference(ViralLoadSuppression)

* section[deathSection].title = "Death"
* section[deathSection].code = http://openhie.org/fhir/hiv-casereporting/sectionCode#death
* section[deathSection].entry only Reference(DeathObs)

Profile: HIVEncounter
Parent: Encounter
Id: hiv-encounter
Title: "HIV CR Encounter"
Description: "HIV Encounter for a case report"
* serviceProvider 1..1
* subject 1..1

Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV CR Organization"
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
    GenderIdentity named genderIdentity 0..1 MS and
    KeyPopulation named keyPopulation 0..1 MS

* birthDate MS
* name 1..* MS
* gender 1..1 MS
* maritalStatus MS

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
* identifier[passport].value 0..1
* identifier[national].value 0..1
* identifier[pos].value 1..1

Extension: KeyPopulation
Id: key-population
Title: "Key population"
Description: "Key population"
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulation

Extension: GenderIdentity
Id: gender-identity
Title: "Gender Identity"
Description:  "Gender identity"
* value[x] only CodeableConcept
* valueCodeableConcept from VSGenderIdentity

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

Profile: HIVRecencyTestConducted
Parent: Observation
Id: hiv-recency-test-conducted
Title: "HIV Recency Test Conducted"
Description: "This profile allows the exchange of a patient's hiv recency test"
* subject 1..1
* code = $HIVObs#HIV_RECENCY_TEST_CONDUCTED "HIV recency test conducted"
* valueBoolean 1..1

Profile: HIVRecencyResult
Parent: Observation
Id: hiv-recency-result
Title: "HIV Recency Result"
Description: "This profile allows the exchange of a patient's hiv recency test"
* subject 1..1
* code = $HIVObs#HIV_RECENCY_RESULT "HIV recency test conducted"
* valueBoolean 1..1

Profile: HIVEpisodeOfCare
Parent: EpisodeOfCare
Id: hiv-episode-of-care
Title: "HIV Episode Of Care"
Description: ""
* period.start 1..1 MS
* identifier 1..* MS
* managingOrganization 1..1 MS
* diagnosis 1..1 MS

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

Profile: CD4
Parent: Observation
Id: hiv-cd4-test
Title: "CD4Observation"
Description: "This profile allows the exchange of a patient's CD4 test and results"
* subject 1..1 MS
* code = http://openhie.org/fhir/hiv-casereporting/obs#CD4-RESULT "CD4 result"
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
* code = http://openhie.org/fhir/hiv-casereporting/obs#VL-RESULT "Viral load result"
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
* code = http://openhie.org/fhir/hiv-casereporting/obs#CAUSE-OF-DEATH "Cause of death"
* effectiveDateTime 1..1 MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSVLCauseOfDeath
* extension contains LastClinicalVisit named lastClinicalVisit 1..1 MS
