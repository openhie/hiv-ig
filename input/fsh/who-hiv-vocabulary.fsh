CodeSystem:  CSPatientGender
Id: cs-patient-gender
Title: "Patient Gender"
Description: "The genders for patients"
* #male "Male" "Client identifies as female"
* #female "Female" "Client identifies as male"
* #transgender "Transgender" "Client identifies as transgender"
* #other "Other" "Other gender identity"
* #not-disclosed "Not disclosed" "Client does not wish to disclose gender identity"

ValueSet: VSPatientGender
Id: vs-patient-gender
Title: "Patient Gender"
Description:  "Valueset - patient genders"
* include codes from system CSPatientGender 

CodeSystem:  CSOccupation
Id: cs-occupation
Title: "Patient Occupation"
Description: "The patient's occpation"
* #1 "Vulnerable to engage in prostitution" "Employees of facilities providing services that are vulnerable to be abused to engage in prostitution"
* #2 "Drivers" "Drivers"
* #3 "Fisherman" "Fishermen"
* #4 "Agricultural worker" "Agricultural workers"
* #5 "Worker" "Workers"
* #6 "Officers and soldiers of armed forces" "Officers and soldiers of armed forces"
* #7 "Public servants, officers, or workers with labor contracts" "Public servants, officers, or workers with labor contracts under labor laws"
* #8 "Students" "Pupils, students"
* #9 "Children" "Children"
* #10 "Workers without labor contract" "Workers without labor contract"
* #11 "Out of work" "Out of work"
* #12 "Prisoners" "Prisoners"

ValueSet: VSOccupation
Id: vs-occupation
Title: "Patient Occupation"
Description:  "Valueset - patient genders"
* include codes from system PatientGender 






/*

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


ValueSet: PatientCommunicationPreferences
Id: vs-patient-communication-preferences
Title: "Patient Communication Preferences"
Description:  "Valueset - Patient Communication Preferences"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientCommunicationPreferences

/*
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
*/
