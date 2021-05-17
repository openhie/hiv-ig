/*
Instance: hiv-case-record-bundle
InstanceOf: Bundle
Usage: #example
Title: "hiv-case-record-bundle"
Description: ""
* type = #document
* entry[+].fullUrl = ""
* entry[=].resource = test-hiv-composition
* entry[+].fullUrl = ""
* entry[=].resource = hiv-patient
* entry[+].fullUrl = ""
* entry[=].resource = hiv-condition
* entry[+].fullUrl = ""
* entry[=].resource = art-medication-statement
* entry[+].fullUrl = ""
* entry[=].resource = vl-obs
*/
Instance: hiv-patient
InstanceOf: HIVPatient
Usage: #example
Title: "hiv-patient"
Description: ""

* active = true
* name[+].given[+] = "Jane"
* name[+].family = "Smith"
* gender = #female
* birthDate = "1986-06-04"
* telecom[0].system = #email
* telecom[0].value = "johndoe@erewhon.com"
* telecom[1].system = #phone
* telecom[1].value = "+27825556666"
* address[Permanent].country = "South Africa"
* address[Permanent].state = "Western Province"
* address[Permanent].district = "City of Cape Town"
* address[Permanent].city = "Cape Town"
* address[Temporary].country = "South Africa"
* address[Temporary].state = "Eastern Cape"
* address[Temporary].district = "Buffalo City Metropolitan Municipality"
* address[Temporary].city = "East London"
* identifier[art].value = "ART1234567"
//* identifier[national].value = "NAT1234567"
//* identifier[emr].value = "EMR1234567"

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
