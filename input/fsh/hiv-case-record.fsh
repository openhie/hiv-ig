Alias:   SCT = http://snomed.info/sct


Profile:        HIVPatient
Parent:         Patient
Id:             hiv-patient
Title:          "HIV Patient"
Description:    "HIV Patient"
* extension contains PatientEthnicity named species 0..1
* extension[PatientEthnicity] MS


Extension:  PatientEthnicity
Id: ext-patient-ethnicity
Title: "Ethnicity"
Description: "Patient Ethnicity."
* value[x] only CodeableConcept
* valueCodeableConcept from Ethnicity (extensible)

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

Profile:        HIVRecencyResult
Parent:         Observation
Id:             hiv-recency-result
Title:          "HIV Recency result"
Description:    "The result of HIV recency determination."
* code from HIVRecencyResults
* specimen MS
//date of specimencollection
//place of specimencollection
* effectiveDateTime MS
//result valueCodeableConcept? - valueBoolean?
//* contained[0] only HIVSpecimen

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



Profile:        RiskFactor
Parent:         Observation
Id:             hiv-risk-factor
Title:          "Risk factor"
Description:    "Risk factor."
//* code from HIVRecencyResults



