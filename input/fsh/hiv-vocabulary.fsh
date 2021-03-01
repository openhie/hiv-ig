Alias: $ethnicity = urn:oid:2.16.840.1.114222.4.11.877
//                    urn:oid:2.16.840.1.113883.6.238


ValueSet: Ethnicity
//Usage: #definition
Id: vs-ethnicity
Title: "Ethnicity"
Description:  "Ethnicity"
* ^status = #draft
* codes from system $ethnicity



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

ValueSet: Occupation
Id: vs-occupation
Title: "Patient Occupation"
Description:  "Valueset - patient genders"
* include codes from system CSOccupation




CodeSystem: CSHIVRiskPopulation
Id: cs-hiv-risk-population
Title: "HIV Risk Population"
Description: "HIV Risk Population codes"
* ^name = "HIVRiskPopulation"
* ^status = #draft
* #1 "Injecting drug users" "Injecting drug users"
* #2 "Female sex workers" "Female sex workers"
* #3 "Pregnant women" "Pregnant women"
* #4 "Blood donors" "Blood donors"
* #5 "TB patients" "TB patients"
* #6 "People with sexually transmitted diseases" "People with sexually transmitted diseases"
* #7 "Young recruits for military service" "Young recruits for military service"
* #8 "Men who have sex with men" "Men who have sex with men"
* #9 "Others" "Others"

ValueSet: VSHIVRiskPopulation
Id: vs-hiv-risk-population
Title: "HIV Risk Population"
Description: "HIV Risk Population codes"
* ^name = "HIVRiskPopulation"
* ^status = #draft
* include codes from system CSHIVRiskPopulation 



CodeSystem: CSHIVTransmissionRoute
Id: cs-hiv-transmission-route
Title: "HIV Transmission Route"
Description: "HIV Transmission Route codes"
* ^name = "HIVTransmissionRoute"
* ^status = #draft
* #1 "Blood born" "Blood born"
* #2 "Sexual relationship" "Sexual relationship"
* #3 "Mother to child" "Mother to child"
* #4 "Unidentified" "Unidentified"


ValueSet: VSHIVTransmissionRoute
Id: vs-hiv-transmission-route
Title: "HIV Transmission Route"
Description: "HIV Transmission Route codes"
* ^name = "HIVTransmissionRoute"
* ^status = #draft
* include codes from system CSHIVTransmissionRoute 




CodeSystem: CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "HIV Risk Behavior"
Description: "HIV Risk Behavior codes"
* ^name = "HIVRiskBehavior"
* ^status = #draft
* #1 "Drug injection" "Drug injection"
* #2 "Sex with sex workers or clients" "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #3 "MSM" "Men who have sex with men"
* #4 "Multiple sex partners" "Multiple sex partners (not for money or drug)"
* #5 "Other risks" "Other risks of oneself"


ValueSet: VSHIVRiskBehavior
Id: vs-hiv-risk-behavior
Title: "HIV Risk Behavior"
Description: "HIV Risk Behavior codes"
* ^name = "HIVRiskBehavior"
* ^status = #draft
* include codes from system CSHIVRiskBehavior 



CodeSystem: CSHIVSymptoms
Id: cs-hiv-symptoms
Title: "HIV Symptoms"
Description: "HIV Symptoms codes"
* ^name = "HIVSymptoms"
* ^status = #draft
* #1 "Prolonged fever" "Prolonged fever"
* #2 "Headache and neurological presentations" "Headache and neurological presentations"
* #3 "Swollen lymph nodes" "Swollen lymph nodes"
* #4 "Respiratory syndrome" "Respiratory syndrome"
* #5 "Swallow with pain" "Swallow with pain"
* #6 "Diarrhea" "Diarrhea"
* #7 "Dermatological lesions" "Dermatological lesions"
* #8 "Cachexia/fatigue" "Cachexia/fatigue"
* #9 "Anemia" "Anemia"
* #10 "Physical retardation in pediatric patients" "Physical retardation in pediatric patients"

ValueSet: VSHIVSymptoms
Id: vs-hiv-symptoms
Title: "HIV Symptoms"
Description: "HIV Symptoms codes"
* ^name = "HIVSymptoms"
* ^status = #draft
* include codes from system CSHIVSymptoms 




CodeSystem: CSHIVCauseOfDeath
Id: cs-hiv-cause-of-death
Title: "HIV Cause Of Death"
Description: "HIV Cause Of Death codes"
* ^name = "HIVCauseOfDeath"
* ^status = #draft
* #1 "Advanced phase AIDS" "Advanced phase of AIDS"
* #2 "Other diseases " "Other diseases"
* #3 "Other causes: drug overdose, suicide, accidents, etc" "Other causes: shock caused by drug overdose, commit suicides, accidents, etc"
* #4 "Unknown/Unidentified" "Unknown/Unidentified"


ValueSet: VSHIVCauseOfDeath
Id: vs-hiv-cause-of-death
Title: "HIV Cause Of Death"
Description: "HIV Cause Of Death codes"
* ^name = "HIVCauseOfDeath"
* ^status = #draft
* include codes from system CSHIVCauseOfDeath 























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


ValueSet: PatientGenderIdentity
Id: vs-patient-gender-identity
Title: "Patient Gender Identity"
Description:  "Valueset - patient gender identities"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSPatientGenderIdentity



CodeSystem:  CSPatientCommunicationPreferences
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


CodeSystem: CSTypeOfContact
Id: type-of-contact
Title: "Type of contact or relationship"
Description: "Type of contact or relationship"
* #child "Biological child" "Client is the biological child of the person that referred the client for family services"
* #drug-injecting-partner "Drug injecting partner" "Client is a drug injecting partner of the person that referred the client for partner services"
* #sexual-partner "Sexual partner" "Client is a sexual partner of the person that referred the client for partner services"
* #social-contact "Social contact" "Client is a social contact of the person that referred the client for social-network services"

ValueSet: TypeOfContact
Id: vs-type-of-contact
Title: "Type of contact or relationship"
Description:  "Type of contact or relationship"
//* SCT#951000205108 "Wearing underwear or less"
* include codes from system CSTypeOfContact

// *************


ValueSet: HIVRapidTestResults
Title: "HIVRapidTestResults"
Description: "HIV rapid test result codes"
* ^status = #draft
* $LOINC#LA11882-0 "Detected"
* $LOINC#LA11883-8 "Not detected"
* $LOINC#LA11885-3 "Equivocal"
* $LOINC#LA9663-1 "Inconclusive"

// *************


CodeSystem:  CSHIVOccupations
Id: cs-hiv-occupations
Title: "Occupations relevant for HIV"
Description: "CodeSystem Occupations for HIV"
* #1 "Sex workers" "Employees of facilities providing services that are vulnerable to be abused to engage in prostitution"
* #2 "Drivers" "Drivers"
* #3 "Fishermen" "Fishermen"
* #4 "Agricultural workers" "Agricultural workers"
* #5 "Workers" "Workers"
* #6 "Officers and soldiers" "Officers and soldiers"
* #7 "Public servants or workers with labor contracts" "Public servants, officers, or workers with labor contracts under labor laws"
* #8 "Students" "Pupils, students"
* #9 "Children" "Children"
* #10 "Workers without labor contract" "Workers without labor contract"
* #11 "Out of work" "Out of work"
* #12 "Prisoners" "Prisoners"


ValueSet: HIVOccupations
Id: vs-hiv-occupations
Title: "Occupations relevant for HIV"
Description:  "Valueset - Occupations relevant for HIV"
* include codes from system CSHIVOccupations 

// *************


CodeSystem:  CSHIVPopulation
Id: cs-hiv-population
Title: "Population groups"
Description: "CodeSystem - Population groups - Subjects to be tested for HIV"
* #1 "Injection drug users" "Injecting drug users" 
* #2 "FSW" "Female sex workers" 
* #3 "Pregnant women" "Pregnant women" 
* #4 "Blood donors" "Blood donors" 
* #5 "TB patients" "TB patients" 
* #6 "People with STDs" "People with sexually transmitted diseases" 
* #7 "Young recruits" "Young recruits for military service" 
* #8 "MSM" "Men who have sex with men" 
* #9 "Others" "Others" 


ValueSet: HIVPopulation
Id: vs-hiv-population
Title: "Occupations relevant for HIV"
Description:  "Valueset - Occupations relevant for HIV"
* include codes from system CSHIVPopulation

// *************


CodeSystem:  CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "CodeSystem - Behavior associated with risk of HIV transmission"
* #1 "Drug injection" "Drug injection"
* #2 "Sex workers" "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #3 "MSM" "Men who have sex with men" 
* #4 "Multiple Sex Partners" "Multiple Sex Partners (NOT for money or drugs)"
* #5 "Others" "Other risks to oneself" 

ValueSet: HIVRiskBehavior
Id: vs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "ValueSet - Behavior associated with risk of HIV transmission"
* include codes from system CSHIVRiskBehavior

// *************


CodeSystem:  CSHIVTransmissionRoute
Id: cs-hiv-transmission-route
Title: "HIV Transmission Route"
Description: "CodeSystem - Route of HIV transmission"
* #1 "Blood born" "Blood born"
* #2 "Sexual Relationship" "Sexual Relationship"
* #3 "Mother to child" "Mother to child"
* #4 "Unidentified" "Unidentified"


ValueSet: HIVTransmissionRoute
Id: vs-hiv-transmission-route
Title: "HIV Transmission Route"
Description:  "Valueset - Route of HIV transmission"
* include codes from system CSHIVTransmissionRoute












/*

Instance: HIVTransmissionRoute
InstanceOf: ValueSet
Description: "HIV Transmission Route codes"
Title: "HIV Transmission Route"
Usage: #inline
* name = "HIVTransmissionRoute"
* status = #draft
*/










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


*/