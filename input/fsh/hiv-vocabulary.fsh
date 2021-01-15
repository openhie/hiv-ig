Alias: $ethnicity = urn:oid:2.16.840.1.114222.4.11.877
//                    urn:oid:2.16.840.1.113883.6.238


ValueSet: VSEthnicity
//Usage: #definition
Id: vs-ethnicity
Title: "Ethnicity"
Description:  "Ethnicity"
* ^status = #draft
* codes from system $ethnicity



CodeSystem:  PatientGender
Id: cs-patient-gender
Title: "Patient Gender"
Description: "The genders for patients"
* #male "Male" "Client identifies as female"
* #female "Female" "Client identifies as male"
* #transgender "Transgender" "Client identifies as transgender"
* #non-binary "Non-binary" "Client identifies in a non-binary way"

ValueSet: VSPatientGender
Id: vs-patient-gender
Title: "Patient Gender"
Description:  "Valueset - patient genders"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system PatientGender 


CodeSystem:  PatientGenderIdentity
Id: cs-patient-gender-identity
Title: "Patient Gender Identity"
Description: "A list of genders that the patient may identify with"
* #transgender-to-female "Transgender female" "Client identifies as transgender male-to-female"
* #transgender-to-male "Transgender male" "Client identifies as transgender female-to-male"
* #non-binary "Non-binary" "Client identifies with neither/both female and male"
* #male "Male" "Client identifies as male"
* #female "Female" "Client identifies as female"
* #other "Other" "Other gender identity"
* #not-disclosed "Does not wish to disclose" "Client does not wish to disclose gender identity"


ValueSet: VSPatientGenderIdentity
Id: vs-patient-gender-identity
Title: "Patient Gender Identity"
Description:  "Valueset - patient gender identities"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system PatientGenderIdentity



CodeSystem:  PatientCommunicationPreferences
Id: cs-patient-communication-preferences
Title: "Patient Communication Preferences"
Description: "The way the patient prefers to be contacted"
* #text-message "SMS or  Text message" "The client would like to receive communications via Text Message/SMS"
* #voice-call "Voice Call" "Client would like to receive communications via Voice Calls"


ValueSet: VSPatientCommunicationPreferences
Id: vs-patient-communication-preferences
Title: "Patient Communication Preferences"
Description:  "Valueset - Patient Communication Preferences"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system PatientCommunicationPreferences


CodeSystem: TypeOfContact
Id: type-of-contact
Title: "Type of contact or relationship"
Description: "Type of contact or relationship"
* #child "Biological child" "Client is the biological child of the person that referred the client for family services"
* #drug-injecting-partner "Drug injecting partner" "Client is a drug injecting partner of the person that referred the client for partner services"
* #sexual-partner "Sexual partner" "Client is a sexual partner of the person that referred the client for partner services"
* #social-contact "Social contact" "Client is a social contact of the person that referred the client for social-network services"

ValueSet: VSTypeOfContact
Id: vs-type-of-contact
Title: "Type of contact or relationship"
Description:  "Type of contact or relationship"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system TypeOfContact


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


Instance: ns-arv-id
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - ARV treatment identifiers"
* status = #active
* name = "NSARVID"
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


