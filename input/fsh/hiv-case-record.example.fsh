
Instance: HIVCrBundleExample
InstanceOf: Bundle
Usage: #example
Title: "HIV Cr Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #document
* entry[+].fullUrl = "http://test.org/fhir/Composition/HIVCrCompositionExample"
* entry[=].resource = HIVCrCompositionExample
* entry[+].fullUrl = "http://test.org/fhir/Encounter/HIVCrEncounterExample"
* entry[=].resource = HIVCrEncounterExample
* entry[+].fullUrl = "http://test.org/fhir/Location/HIVCrLocationExample"
* entry[=].resource = HIVCrLocationExample
* entry[+].fullUrl = "http://test.org/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[+].fullUrl = "http://test.org/fhir/RelatedPerson/GuardianExample"
* entry[=].resource = GuardianExample
* entry[+].fullUrl = "http://test.org/fhir/Condition/HIVConditionExample"
* entry[=].resource = HIVConditionExample
/*
* entry[+].fullUrl = "http://test.org/fhir/MedicationStatement/ARVTherapySummaryExample"
* entry[=].resource = ARVTherapySummaryExample
*/
* entry[+].fullUrl = "http://test.org/fhir/Observation/ViralLoadExample"
* entry[=].resource = ViralLoadExample

Instance: HIVCrCompositionExample
InstanceOf: HIVCrComposition
Usage: #example
Title: "HIV Cr Composition Basic Example"
Description: "Basic Composition example"
* status = #final
* identifier.system = "http://test.org/identifier/hiv-case-report"
* identifier.value = "1111"
* encounter = Reference(HIVCrEncounterExample)
* date = "2021-05-18"
* author = Reference(HIVCrPractitionerExample)
* title = "HIV Case Report"

* section[+].title = "hivPatient"
* section[=].code = http://test.org/sectionCode#hivPatient
* section[=].entry[+] = Reference(HIVPatientExample)

* section[+].title = "hivCondition"
* section[=].code = http://test.org/sectionCode#hivCondition
* section[=].entry[+] = Reference(HIVConditionExample)

* section[+].title = "arvTherapySummary"
* section[=].code = http://test.org/sectionCode#arvTherapySummary
* section[=].entry[+] = Reference(ARVTherapySummaryExample)

* section[+].title = "viralLoad"
* section[=].code = http://test.org/sectionCode#viralLoad
* section[=].entry[+] = Reference(ViralLoadExample)

Instance: HIVCrEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "HIV CR Encounter Example"
Description: "Encounter example"
* location.location = Reference(HIVCrLocationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-05-20"
* period.end = "2021-05-20"

Instance: HIVCrLocationExample
InstanceOf: Location
Usage: #example
Title: "HIV Cr Location Example"
Description: "Location example"
* address.country = "ZA"
* address.state = "KZN"

Instance: HIVCrPractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "HIV Cr Practitioner Example"
Description: "Practitioner example"
* name[0].given[0] = "Homer"
* name[1].family = "Simpson"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "HIV Patient example"
Description: "."

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
* identifier[national].value = "NAT1234567"
* identifier[pos].value = "EMR1234567"
* link.other = Reference(GuardianExample)
* link.type = #seealso // what link to use?
//* maritalStatus = $MaritalStatus#M

Instance: GuardianExample
InstanceOf: RelatedPerson
Usage: #example
Title: "Related person example"
Description: ""
* name.given = "Peter"
* name.family = "Loo"
//* relationship = what to add here?
* patient = Reference(HIVPatientExample)

// First 90 - people who know they are HIV +ve
Instance: HIVConditionExample
InstanceOf: HIVCondition
Usage: #example
Title: "HIV Condition example"
Description: "."
* clinicalStatus = #active
* verificationStatus = #confirmed
* code = $SCT#86406008

* subject = Reference(HIVPatientExample)

// Second 90 - on ARTs
Instance: ARVTherapySummaryExample
InstanceOf: ARVTherapySummary
Usage: #example
Title: "ARV therapy summary example"
Description: "."
* status = #active
* medicationCodeableConcept = http://test.org/medication-type#ART "Antiretrovirals"
* subject = Reference(HIVPatientExample)

// Third 90 - virally supressed
Instance: ViralLoadExample
InstanceOf: ViralLoad
Usage: #example
Title: "Viral load example"
Description: "."
* status = #final
* code = http://test.org/obs#VL-RESULT "Viral load result"
* subject = Reference(HIVPatientExample)

* valueCodeableConcept = http://test.org/obs/vl-result#<200 "less than 200 - undetectable"
// * valueCodeableConcept = 200-1000#http://test.org/obs/vl-result "200 - 1000 - detectable"
// * valueCodeableConcept = >1000#http://test.org/obs/vl-result "greather than 1000 - detectable"
