
CodeSystem:  CSPatientGender
Id: cs-patient-gender
Title: "Patient Gender"
Description: "The genders for patients"
* #male "Male" "Client identifies as female"
* #female "Female" "Client identifies as male"
* #transgender "Transgender" "Client identifies as transgender"
* #non-binary "Non-binary" "Client identifies in a non-binary way"

ValueSet: PatientGender
Id: vs-patient-gender
Title: "Patient Gender"
Description:  "Valueset - patient genders"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientGender 

CodeSystem:  CSKeyPopulation
Id: cs-key-population
Title: "Key population"
Description: "A list of key population types"
* #MSM
* #FSW
* #MSW
* #PWID
* #PWUD
* #transgender

ValueSet: KeyPopulation
Id: vs-key-population
Title: "Key population"
Description: "A list of key population types"
* include codes from system CSKeyPopulation

ValueSet: HIVRapidTestResults
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


