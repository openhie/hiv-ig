
Instance: HIVBundleExample
InstanceOf: Bundle
Usage: #example
Title: "HIV Cr Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #document
* entry[+].fullUrl = "http://test.org/fhir/Composition/HIVCompositionExample"
* entry[=].resource = HIVCompositionExample
* entry[+].fullUrl = "http://test.org/fhir/Encounter/HIVEncounterExample"
* entry[=].resource = HIVEncounterExample
* entry[+].fullUrl = "http://test.org/fhir/Location/HIVLocationExample"
* entry[=].resource = HIVLocationExample
* entry[+].fullUrl = "http://test.org/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[+].fullUrl = "http://test.org/fhir/RelatedPerson/GuardianExample"
* entry[=].resource = GuardianExample
* entry[+].fullUrl = "http://test.org/fhir/Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[+].fullUrl = "http://test.org/fhir/CarePlan/ARVTreatmentExample"
* entry[=].resource = ARVTreatmentExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/ViralLoadExample"
* entry[=].resource = ViralLoadExample

Instance: HIVCompositionExample
InstanceOf: HIVComposition
Usage: #example
Title: "HIV Cr Composition Basic Example"
Description: "Basic Composition example"
* status = #final
* identifier.system = "http://test.org/identifier/hiv-case-report"
* identifier.value = "1111"
* encounter = Reference(HIVEncounterExample)
* date = "2021-05-18"
* author = Reference(HIVPractitionerExample)
* title = "HIV Case Report"

* section[+].title = "hivPatient"
* section[=].code = http://test.org/sectionCode#hivPatient
* section[=].entry[+] = Reference(HIVPatientExample)

* section[+].title = "hivDiagnosis"
* section[=].code = http://test.org/sectionCode#hivDiagnosis
* section[=].entry[+] = Reference(HIVDiagnosisExample)

* section[+].title = "arvTherapySummary"
* section[=].code = http://test.org/sectionCode#arvTherapySummary
* section[=].entry[+] = Reference(ARVTherapySummaryExample)

* section[+].title = "viralLoad"
* section[=].code = http://test.org/sectionCode#viralLoad
* section[=].entry[+] = Reference(ViralLoadExample)

Instance: HIVEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "HIV CR Encounter Example"
Description: "Encounter example"
* location.location = Reference(HIVLocationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-05-20"
* period.end = "2021-05-20"

Instance: HIVLocationExample
InstanceOf: Location
Usage: #example
Title: "HIV Cr Location Example"
Description: "Location example"
* address.country = "ZA"
* address.state = "KZN"

Instance: HIVPractitionerExample
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
* telecom.system = #phone
* telecom.value = "+27825556666"
* address.country = "South Africa"
* address.state = "Western Province"
* address.district = "City of Cape Town"
* address.city = "Cape Town"
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
Instance: HIVDiagnosisExample
InstanceOf: HIVDiagnosis
Usage: #example
Title: "HIV Condition example"
Description: "."
* clinicalStatus = #active
* verificationStatus = #confirmed
* code = $SCT#86406008

* subject = Reference(HIVPatientExample)

// Second 90 - on ARTs
Instance: ARVTreatmentExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: "."
* status = #active
* intent = #plan
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
