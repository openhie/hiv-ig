
Instance: HIVBundleExample
InstanceOf: Bundle
Usage: #example
Title: "HIV Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #document
* entry[+].fullUrl = "http://test.org/fhir/Composition/HIVCompositionExample"
* entry[=].resource = HIVCompositionExample
* entry[+].fullUrl = "http://test.org/fhir/Encounter/HIVEncounterExample"
* entry[=].resource = HIVEncounterExample
* entry[+].fullUrl = "http://test.org/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[+].fullUrl = "http://test.org/fhir/RelatedPerson/GuardianExample"
* entry[=].resource = GuardianExample
* entry[+].fullUrl = "http://test.org/fhir/RelatedPerson/MaritalStatusExample"
* entry[=].resource = MaritalStatusExample
* entry[+].fullUrl = "http://test.org/fhir/Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[+].fullUrl = "http://test.org/fhir/CarePlan/ARVTreatmentExample"
* entry[=].resource = ARVTreatmentExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/ViralLoadExample"
* entry[=].resource = ViralLoadExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/CD4Example"
* entry[=].resource = CD4Example

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

* section[+].title = "maritalStatus"
* section[=].code = http://test.org/sectionCode#maritalStatus
* section[=].entry[+] = Reference(MaritalStatusExample)

* section[+].title = "hivDiagnosis"
* section[=].code = http://test.org/sectionCode#hivDiagnosis
* section[=].entry[+] = Reference(HIVDiagnosisExample)

* section[+].title = "arvTherapySummary"
* section[=].code = http://test.org/sectionCode#arvTherapySummary
* section[=].entry[+] = Reference(ARVTherapySummaryExample)

* section[+].title = "viralLoad"
* section[=].code = http://test.org/sectionCode#viralLoad
* section[=].entry[+] = Reference(ViralLoadExample)

* section[+].title = "cd4"
* section[=].code = http://test.org/sectionCode#cd4
* section[=].entry[+] = Reference(CD4Example)

Instance: HIVEncounterExample
InstanceOf: HIVEncounter
Usage: #example
Title: "HIV CR Encounter Example"
Description: "Encounter example"
* serviceProvider = Reference(HIVOrganizationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-05-20"
* period.end = "2021-05-20"

Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"
* name = "HIV Organization"
* identifier[+].system = "http://test.org/identifier/hiv-organization"
* identifier[+].value = "facility1"

Instance: HIVPractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "HIV Practitioner Example"
Description: "Practitioner example"
* name.given = "Homer"
* name.family = "Simpson"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "HIV Patient example"
Description: "."

* active = true
* name.given = "Jane"
* name.family = "Smith"
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
* extension[genderIdentity].valueCodeableConcept = #male
* extension[keyPopulation].valueCodeableConcept = #transgender

Instance: GuardianExample
InstanceOf: RelatedPerson
Usage: #example
Title: "Related person example"
Description: ""
* name.given = "Peter"
* name.family = "Loo"
//* relationship = what to add here?
* patient = Reference(HIVPatientExample)

Instance: MaritalStatusExample
InstanceOf: MaritalStatus
Usage: #example
Title: "Marital Status example"
Description: "."
* status = #final
* code = #M "Married"
* subject = Reference(HIVPatientExample)
* valueCodeableConcept = #M "Married"


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
* recordedDate = "2021-05-18"

Instance: ARVTreatmentExample
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: "."
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* period.start = "2021-05-20"

Instance: ViralLoadExample
InstanceOf: ViralLoad
Usage: #example
Title: "Viral load example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueInteger = 200
* interpretation = #D

Instance: CD4Example
InstanceOf: CD4
Usage: #example
Title: "CD4 example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueInteger = 200
