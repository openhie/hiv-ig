Alias:   SCT = http://snomed.info/sct

Alias: $CommPreference = http://hl7.org/fhir/StructureDefinition/patient-preferenceType
Alias: $GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity



Profile:        HIVPatient
Parent:         Patient
Id:             hiv-patient
Title:          "HIV Patient"
Description:    """ 
    This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"""
* extension contains
    Ethnicity named species 0..1 and
    $CommPreference named comm-preference 0..1 MS and
    $GenderIdentity named genderIdentity 0..1 MS

* extension[Ethnicity] MS
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
    insurance 0..* 
* identifier[art].system 1..1
* identifier[art].system = "https://basespecs.vn/NamingSystem/ARTIdentifiers" (exactly)
* identifier[art].value 1..1
* identifier[passport].system 1..1
* identifier[passport].system = "https://basespecs.vn/NamingSystem/PassportNumbers" (exactly)
* identifier[passport].value 1..1
* identifier[insurance].system 1..1
* identifier[insurance].system = "https://basespecs.vn/NamingSystem/InsuranceNumbers" (exactly)
* identifier[insurance].value 1..1

* address contains
   Temporary 0..1 and 
   Permanent 0..1

* address[Temporary].use = #temp (exactly)
* address[Permanent].use = #home (exactly)




Extension: Ethnicity
Id: ethnicity
Title: "Ethnicity"
Description: "Ethnicity."
* value[x] only CodeableConcept
* valueCodeableConcept from Ethnicity (extensible)


Profile:        HIVRiskFactor
Parent:         Condition
Id:             hiv-risk-factor
Title:          "HIV Risk Behavior"
Description:    """ 
    This profile allows the exchange of patient's risk behaviors"""




Profile:        HIVSpecimen
Parent:         Specimen
Id:             hiv-specimen
Title:          "HIV specimen"
Description:    "The specimen used for the result"
* extension contains SpecimenCollectionPlace named species 0..1
* extension[SpecimenCollectionPlace] MS
* collection.collectedDateTime MS


Extension:  SpecimenCollectionPlace
Id: ext-specimen-collection-place
Title: "Ethnicity"
Description: "Specimen Collection Place."
* value[x] only CodeableConcept or Reference
* valueCodeableConcept from Ethnicity (extensible)





Profile:        HIVCondition
Parent:         Condition
Id:             hiv-condition
Title:          "HIV Condition"
Description:    """ 
    This profile allows the exchange of a patient's hiv diagnosis"""



Profile:        HIVRecencyResult
Parent:         Observation
Id:             hiv-recency-result
Title:          "HIV Recency result"
Description:    """ 
    This profile allows the exchange of a patient's hiv recency test"""
* code from HIVRapidTestResults
* specimen MS
//date of specimencollection
//place of specimencollection
* effectiveDateTime MS
//result valueCodeableConcept? - valueBoolean?
//* contained[0] only HIVSpecimen


Profile:        CD4Observation
Parent:         Observation
Id:             hiv-cd4-observation
Title:          "CD4Observation"
Description:    """ 
    This profile allows the exchange of a patient's CD$ test and results"""


Profile:        ARVCarePlan
Parent:         CarePlan
Id:             hiv-arv-careplan
Title:          "ARVCarePlan"
Description:    """ 
    This profile allows the exchange of a patient's ARV treatment"""



Profile:        ViralLoad
Parent:         Observation
Id:             hiv-viral-load
Title:          "HIV viral load"
Description:    "HIV viral load."
//* code from HIVRecencyResults

Profile:        ARVTherapySummary
Parent:         MedicationStatement
Id:             arv-therapy-summary
Title:          "ART therapy summary"
Description:    "ART therapy summary."
//* code from HIVRecencyResults


Profile:        PregnancyStatus
Parent:         Observation
Id:             pregnancy-status
Title:          "Pregnancy status"
Description:    "Pregnancy status."
//* code from HIVRecencyResults



