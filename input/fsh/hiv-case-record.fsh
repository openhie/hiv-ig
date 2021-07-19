Profile:    HIVComposition
Parent:     Composition
Id: hiv-composition
Description:    "HIV Case Reporting Composition"
Title:      "HIV Case Reporting Composition"
* type = $LNC#95412-3
* category = $LNC#75218-8
* encounter 1..1
* identifier.system = "http://test.org/identifier/hiv-case-report"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #openAtEnd
* section ^slicing.ordered = true
* section ^slicing.description = "Slice of composition.section based on code"

* section contains
    hivPatient 1..1 and
    maritalStatus 0..1 and
    hivDiagnosis 0..1 and
    arvTreatment 0..1 and
    viralLoad 0..1 and
    cd4 0..1

* section[hivPatient].title = "hivPatient"
* section[hivPatient].code = http://test.org/sectionCode#hivPatient
* section[hivPatient].entry only Reference(HIVPatient)

* section[maritalStatus].title = "maritalStatus"
* section[maritalStatus].code = http://test.org/sectionCode#maritalStatus
* section[maritalStatus].entry only Reference(MaritalStatus)

* section[hivDiagnosis].title = "hivDiagnosis"
* section[hivDiagnosis].code = http://test.org/sectionCode#hivDiagnosis
* section[hivDiagnosis].entry only Reference(HIVDiagnosis)

* section[arvTreatment].title = "arvTreatment"
* section[arvTreatment].code = http://test.org/sectionCode#arvTreatment
* section[arvTreatment].entry only Reference(ARVTreatment)

* section[viralLoad].title = "viralLoad"
* section[viralLoad].code = http://test.org/sectionCode#viralLoad
* section[viralLoad].entry only Reference(ViralLoad)

* section[cd4].title = "cd4"
* section[cd4].code = http://test.org/sectionCode#cd4
* section[cd4].entry only Reference(CD4)



Profile: HIVEncounter
Parent: Encounter
Id: hiv-encounter
Title: "HIV CR Encounter"
Description: "HIV Encounter for a case report"
* serviceProvider 1..1

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

Profile:        HIVPatient
Parent:         Patient
Id:             hiv-patient
Title:          "HIV Patient"
Description:    "This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"
* extension contains
    GenderIdentity named genderIdentity 0..1 MS and
    KeyPopulation named keyPopulation 0..1 MS

* birthDate MS
* name MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"

* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on the type of address"

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

Profile:        MaritalStatus
Parent:         Observation
Id:             marital-status
Title:          "MaritalStatus"
Description:    "This profile allows the exchange of a patient's MaritalStatus"
* value[x] only CodeableConcept
* valueCodeableConcept from VSMaritalStatus

Profile:        HIVDiagnosis
Parent:         Condition
Id:             hiv-diagnosis
Title:          "HIV Diagnosis"
Description:    "This profile allows the exchange of a patient's hiv diagnosis"
* recordedDate 1..1 MS

Profile:        HIVRecency
Parent:         Observation
Id:             hiv-recency-test
Title:          "HIV Recency"
Description:    "This profile allows the exchange of a patient's hiv recency test"

Profile:        ARVTreatment
Parent:         CarePlan
Id:             hiv-arv-treatment
Title:          "ARVCarePlan"
Description:    "This profile allows the exchange of a patient's ARV treatment"


Profile:        ViralLoad
Parent:         Observation
Id:             hiv-viral-load-test
Title:          "HIV viral load"
Description:    "HIV viral load"
* code = http://test.org/obs#VL-RESULT "Viral load result"
* interpretation from VSVLInterpretation

Profile:        CD4
Parent:         Observation
Id:             hiv-cd4-test
Title:          "CD4Observation"
Description:    "This profile allows the exchange of a patient's CD$ test and results"
* code = http://test.org/obs#CD4-RESULT "CD4 result"







