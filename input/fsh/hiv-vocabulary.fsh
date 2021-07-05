Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org

Alias: $GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: $MaritalStatus = http://hl7.org/fhir/ValueSet/marital-status

CodeSystem: CSKeyPopulation
Id: cs-key-population
Title: "Key population"
Description: "A list of key population types"
* #MSM
* #FSW
* #MSW
* #PWID
* #PWUD
* #transgender

ValueSet: VSKeyPopulation
Id: vs-key-population
Title: "Key population"
Description: "A list of key population types"
* include codes from system CSKeyPopulation

ValueSet: VSGenderIdentity
Id: vs-gender-identity
Title: "Gender Identity"
Description:  "Valueset - Gender Identities"
* include codes from system $GenderIdentity

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description:  "Valueset - marital statuses"
* $MaritalStatus#S "Never Married"
* $MaritalStatus#M "Married"
* $MaritalStatus#P "Polygamous"
* $MaritalStatus#T "Domestic partner"
* $MaritalStatus#D "Divorced"

CodeSystem: CSVLInterpretation
Id: cs-vl-interpretation
Title: "Viral load Interpretation"
Description: "A list of Viral load Interpretations"
* #D "Detectable"
* #ND "Non Detectable"
* #UNK "Unknown"

ValueSet: VSVLInterpretation
Id: vs-vl-interpretation
Title: "Viral load Interpretation"
Description: "Valueset - Viral load Interpretations"
* include codes from system CSVLInterpretation

ValueSet: VSHIVRapidTestResults
Title: "HIVRapidTestResults"
Description: "HIV rapid test result codes"
* ^status = #draft
* $LNC#LA11882-0 "Detected"
* $LNC#LA11883-8 "Not detected"
* $LNC#LA11885-3 "Equivocal"
* $LNC#LA9663-1 "Inconclusive"


////////////////////////////////   Naming Systems   ////////////////////////////////

Instance: ns-passport-id
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Passport numbers"
* status = #active
* name = "NSPassportID"
* date = "2020-12-24"
* kind = #codesystem
* description = "Naming System - Passport identifiers"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://openhie.org/sid/passport"
* uniqueId[0].preferred = true


Instance: ns-insurance-id
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Insurance numbers"
* status = #active
* name = "NSInsuranceID"
* date = "2020-12-24"
* kind = #codesystem
* description = "Naming System - Insurance identifiers"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://openhie.org/sid/insurance"
* uniqueId[0].preferred = true


Instance: ns-art-id
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - ARV treatment identifiers"
* status = #active
* name = "NSARTID"
* date = "2020-12-24"
* kind = #codesystem
* description = "Naming System - ARV treatment identifiers"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://openhie.org/sid/arv"
* uniqueId[0].preferred = true



Instance: ns-hiv-case-id
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - HIV Case identifiers"
* status = #active
* name = "NSHIVID"
* date = "2020-12-24"
* kind = #codesystem
* description = "Naming System - HIV Case identifiers"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://openhie.org/sid/hiv-case"
* uniqueId[0].preferred = true


