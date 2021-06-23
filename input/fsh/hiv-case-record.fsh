Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org

Alias: $CommPreference = http://hl7.org/fhir/StructureDefinition/patient-preferenceType
Alias: $GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: $MaritalStatus = http://hl7.org/fhir/ValueSet/marital-status

Profile:    HIVComposition
Parent:     Composition
Id: hiv-composition
Description:    "HIV Case Reporting Composition"
Title:      "HIV Case Reporting Composition"
* type = $LNC#95412-3
* category = $LNC#75218-8
* encounter 1..1
* identifier 1..1

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #openAtEnd
* section ^slicing.ordered = true
* section ^slicing.description = "Slice of composition.section based on code"

* section contains
    hivPatient 1..1 and
    hivDiagnosis 1..1 and
    arvTreatment 1..1 and
    viralLoad 1..1

* section[hivPatient].title = "hivPatient"
* section[hivPatient].code = http://test.org/sectionCode#hivPatient
* section[hivPatient].entry only Reference(HIVPatient)

* section[hivDiagnosis].title = "hivDiagnosis"
* section[hivDiagnosis].code = http://test.org/sectionCode#hivDiagnosis
* section[hivDiagnosis].entry only Reference(HIVDiagnosis)

* section[arvTreatment].title = "arvTreatment"
* section[arvTreatment].code = http://test.org/sectionCode#arvTreatment
* section[arvTreatment].entry only Reference(ARVTreatment)

* section[viralLoad].title = "viralLoad"
* section[viralLoad].code = http://test.org/sectionCode#viralLoad
* section[viralLoad].entry only Reference(ViralLoad)

Profile: HIVEncounter
Parent: Encounter
Id: hiv-encounter
Title: "HIV CR Encounter"
Description: "HIV Encounter for a case report"
* location 1..1
* reasonCode 1..*
//* reasonCode from HIVValueSetReasonForCovid19Testing

Profile: HIVLocation
Parent: Location
Id: hiv-location
Title: "HIV CR Location"
Description: "HIV Location for case report"
* address 1..1
* address.country 1..1
* address.state 1..1

Profile:        HIVPatient
Parent:         Patient
Id:             hiv-patient
Title:          "HIV Patient"
Description:    "This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"
* extension contains
    $CommPreference named comm-preference 0..1 MS and
    $GenderIdentity named genderIdentity 0..1 MS

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

Profile:        HIVDiagnosis
Parent:         Condition
Id:             hiv-diagnosis
Title:          "HIV Diagnosis"
Description:    "This profile allows the exchange of a patient's hiv diagnosis"

Profile:        HIVRecency
Parent:         Observation
Id:             hiv-recency
Title:          "HIV Recency"
Description:    "This profile allows the exchange of a patient's hiv recency test"

Profile:        CD4
Parent:         Observation
Id:             hiv-cd4-test
Title:          "CD4Observation"
Description:    "This profile allows the exchange of a patient's CD$ test and results"


Profile:        ARVTreatment
Parent:         CarePlan
Id:             hiv-arv-treatment
Title:          "ARVCarePlan"
Description:    "This profile allows the exchange of a patient's ARV treatment"


Profile:        ViralLoad
Parent:         Observation
Id:             hiv-viral-load
Title:          "HIV viral load"
Description:    "HIV viral load."




