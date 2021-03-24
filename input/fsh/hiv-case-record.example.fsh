Instance: hiv-case-record-bundle
InstanceOf: Bundle
Usage: #example
Title: "hiv-case-record-bundle"
Description: ""
* type = #document
* entry[+].fullUrl = ""
* entry[=].resource = hiv-patient
* entry[+].fullUrl = ""
* entry[=].resource = hiv-condition
* entry[+].fullUrl = ""
* entry[=].resource = art-medication-statement
* entry[+].fullUrl = ""
* entry[=].resource = vl-obs

Instance: hiv-patient
InstanceOf: HIVPatient
Usage: #example
Title: "hiv-patient"
Description: ""
* identifier.system = "http://test.org/identifier/test-poc"
* identifier.value = "1234567890"
* active = true
* name[+].given[+] = "Jane"
* name[+].family = "Smith"
* gender = #female
* birthDate = "1986-06-04"

// First 90 - people who know they are HIV +ve
Instance: hiv-condition
InstanceOf: HIVCondition
Usage: #example
Title: "hiv-condition"
Description: ""
* clinicalStatus = #active
* verificationStatus = #confirmed
* code = $SCT#86406008
* subject = Reference(hiv-patient)

// Second 90 - on ARTs
Instance: art-medication-statement
InstanceOf: ARVTherapySummary
Usage: #example
Title: "art-medication-statement"
Description: ""
* status = #active
* medicationCodeableConcept = http://test.org/medication-type#ART "Antiretrovirals"
* subject = Reference(hiv-patient)

// Third 90 - virally supressed
Instance: vl-obs
InstanceOf: ViralLoad
Usage: #example
Title: "vl-obs"
Description: ""
* status = #final
* code = http://test.org/obs#VL-RESULT "Viral load result"
* subject = Reference(hiv-patient)
* valueCodeableConcept = http://test.org/obs/vl-result#<200 "less than 200 - undetectable"
// * valueCodeableConcept = 200-1000#http://test.org/obs/vl-result "200 - 1000 - detectable"
// * valueCodeableConcept = >1000#http://test.org/obs/vl-result "greather than 1000 - detectable"
