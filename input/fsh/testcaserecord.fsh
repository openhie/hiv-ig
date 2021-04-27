Instance: test-hiv-patient
InstanceOf: HIVPatient
//Usage: #inline
//* extension[GenderIdentity].valueCodeableConcept = 	http://openhie.org/fhir/CodeSystem/cs-patient-gender-identity#male
* identifier[art].system = "https://basespecs.vn/NamingSystem/ARTIdentifiers"
* identifier[art].value = "00001"
//* address[temporary].
* name[+].given[+] = "Robert"
* name[+].given[+] = "David"
* name[=].family = "Smith"

Instance: test-hiv-condition
InstanceOf: HIVCondition
Usage: #inline
* recordedDate = "2020-09-09"
* subject = Reference (test-hiv-patient)
/*
Instance: test-hiv-condition
InstanceOf: CD4Observation
Usage: #inline

Instance: test-hiv-condition
InstanceOf: ViralLoad
Usage: #inline

Instance: test-hiv-condition
InstanceOf: PregnancyStatus
Usage: #inline

*/




Instance: examplebundle
InstanceOf: Bundle
Usage: #example

* type = #collection
* entry[+].resource = test-hiv-patient
* entry[+].resource = test-hiv-condition
