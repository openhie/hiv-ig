Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $LOINC = http://loinc.org
Alias: $translation = http://hl7.org/fhir/StructureDefinition/translation


RuleSet: Question(context, linkId, text, type, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}




Instance: vn-hiv-csv-import-questionnaire
InstanceOf: sdc-questionnaire-extract
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition


//* extension[+].url = $targetStructureMap
//* extension[=].valueCanonical = Canonical(HIVCaseReportMap)

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemContext"


* name = "CSVImportQuestionnaire"
* version = "2021"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* contained[+] = PregnancyOutcomeCodes
* contained[+] = BirthDefects
* contained[+] = ChildHIVStatus
//* contained[+] = HIVTransmissionRoute


* url = "http://openhie.org/fhir/Questionnaire/vn-hiv-csv-import-questionnaire"


// * item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
// * item[=].item[=].text.extension[translation].extension[content].valueString = "Số nhận dạng ARV của bệnh nhân"

* insert Question(,patient,Patient ,group,false)
* insert Question(item[=].,hivinfo_id,HIVInfo identifier,string,false)
* insert Question(item[=].,id_card,ID card / CCCD,string,false)
* insert Question(item[=].,fullname,Full name,string,false)
* insert Question(item[=].,yob,Year of Birth,date,false)
* insert Question(item[=].,patient_gender,Gender,choice,false)
* insert Question(item[=].,province_city,Province or city,string,false)
* insert Question(item[=].,district,District,string,false)
* insert Question(item[=].,wards,Wards,string,false)
* insert Question(item[=].,village_housenr,Village / house number,string,false)
* insert Question(item[=].,province_city,Province / city,string,false)
* insert Question(item[=].,district,District,string,false)
* insert Question(item[=].,wards,Wards,string,false)
* insert Question(item[=].,village_housenr,Village / house number,string,false)
* insert Question(item[=].,residence_status,Status of residence,choice,false)

* insert Question(item[=].,risk_population,Risk population,choice,false)

* insert Question(item[=].,risk_group,Risk group,choice,false)

* insert Question(item[=].,route_of_infection,Route of infection,choice,false)

* insert Question(item[=].,ethnicity,Ethnicity,string,false)

* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,hivtest,HIVTest,group,false)

* insert Question(item[=].,sample_collection_date,Sample collection date,date,false)
* insert Question(item[=].,hiv_test_date,HIV test date,date,false)
* insert Question(item[=].,hiv_kts_test_facility_ID,HIV test facility ID,string,false)
* insert Question(item[=].,name_of_the_hiv_testing_facility,HIV testing facility_name,string,false)
* insert Question(item[=].,sampling_facility_ID,Sampling Facility ID,string,false)
* insert Question(item[=].,sample_collection_facility,Sample collection facility,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)






* insert Question(,clinical_stage,Clinical Stage,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,evaluation_date,Evaluation date,date,false)
* insert Question(item[=].,clinical_stage,Clinical stage code,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,arv_drug_regimen,ARV drug regimen,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,start_date,Start date,date,false)
* insert Question(item[=].,end_date,End date,date,false)
* insert Question(item[=].,regimen_code,Regimen code,string,false)
* insert Question(item[=].,regimen_text,Regimen name,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,treatment_process,Treatment process,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,start_date,Start date,date,false)
* insert Question(item[=].,end_date,End date,date,false)
* insert Question(item[=].,registration,Registration type id,choice,false)
* insert Question(item[=].,subscription_type,Subscription type,string,false)
* insert Question(item[=].,treatment_status_code,ID Treatment condition,choice,false)
* insert Question(item[=].,treatment_status_text,Treatment status,string,false)
* insert Question(item[=].,facility_id,Facility ID,string,false)
* insert Question(item[=].,facility_name,Name of treatment facility,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)



* insert Question(,cd4_test,CD4 Test,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,sample_collection_date,Sample collection date,date,false)
* insert Question(item[=].,hiv_test_date,HIV test date,date,false)
* insert Question(item[=].,result,Result,integer,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)



* insert Question(,tvlr_tests,TVLR tests,group,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,sample_collection_date,Date of sampling,date,false)
* insert Question(item[=].,test_date,Date of test,date,false)
* insert Question(item[=].,designation_code,Designation code,choice,false)
* insert Question(item[=].,result,Result,integer,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)



* insert Question(,drug_resistance_test,Drug Resistance test,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,sample_collection_date,Date of sampling,date,false)
* insert Question(item[=].,test_date,Date of test,date,false)
* insert Question(item[=].,result,Result (mmol/l\),integer,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)

* insert Question(,xn_new_infection,Recency infection,group,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,sample_collection_date,Date of sampling,date,false)
* insert Question(item[=].,screening_test_date,Date of screening test,date,false)
* insert Question(item[=].,recency_screening_results,Recency screening results,choice,false)
* insert Question(item[=].,test_date,Date of TLVR test,date,false)
* insert Question(item[=].,tvlr_results,TLVR results (copy / ml\),integer,false)
* insert Question(item[=].,recency_conclusion,Recency conclusion,choice,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,,TB prevention,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,start_date,Start date,date,false)
* insert Question(item[=].,end_date,End date,date,false)
* insert Question(item[=].,completed_treatment,Completed treatment,choice,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,tb_diagnosis,TB_diagnosis,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,tb_positive,TB Positive,boolean,false)
* insert Question(item[=].,tb_diagnosis_date,Date of diagnosis,dateTime,false)
* insert Question(item[=].,tb_treatment,TB treatment,boolean,false)
* insert Question(item[=].,treatment_start_date,Start date of treatment,date,false)
* insert Question(item[=].,treatment_end_date,End date of treatment,date,false)
* insert Question(item[=].,facility_name,Name of facility,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,hepatitis_b_c,Hepatitis B C,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,type_of_hepatitis,Type of hepatitis,choice,false)
* insert Question(item[=].,test_date,Test date,date,false)
* insert Question(item[=].,test_result,Result,choice,false)
* insert Question(item[=].,treated_for_hepatitis,Treated for hepatitis,choice,false)
* insert Question(item[=].,treatment_start_date,Start date of treatment,date,false)
* insert Question(item[=].,treatment _end_date,End date of treatment,date,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,health_insurance_card,Health Insurance Card,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,insurance_card_code,Insurance card code (15-character code\),string,false)
* insert Question(item[=].,card_expiration_date,Expiration date,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)


* insert Question(,pregnancy,Pregnancy,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,last_menstruation_period,The day of last period,date,false)
* insert Question(item[=].,pregnancy_outcome,Pregnancy outcome,choice,false)
* insert Question(item[=].,child_date_of_birth,Date of birth,date,false)
* insert Question(item[=].,child_art_prophylaxis,Antiretroviral prophylaxis for children,boolean,false)
* insert Question(item[=].,child_hiv_test_date,Child's HIV test date,date,false)
* insert Question(item[=].,child_hiv_test_result,Your child's HIV test results,choice,false)
* insert Question(item[=].,arv_treatment_if_infected,ARV treatment status if child infected,choice,false)
* insert Question(item[=].,arv_facility_id,Child ARV facility ID,string,false)
* insert Question(item[=].,arv_facility_name,Child ARV facility name,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)



* insert Question(,death,Death,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,date_of_death,Date of death,date,false)
* insert Question(item[=].,cause_of_death_code,Cause of death code,open-choice,false)

* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)



* insert Question(,methadone_treatment,Methadone treatment,group,false)
* insert Question(item[=].,patient_uuid,Patient's UUID,string,false)
* insert Question(item[=].,record_uuid,Record UUID,string,false)
* insert Question(item[=].,hivinfo_id,HIVInfo patient ID,string,false)
* insert Question(item[=].,treatment_start_date,Start date of treatment,date,false)
* insert Question(item[=].,treatment _end_date,End date of treatment,date,false)
* insert Question(item[=].,facility_name,Name of facility,string,false)
* insert Question(item[=].,record_creation_ts,Record creation date and time,dateTime,false)
* insert Question(item[=].,record_update_ts,Record update date and time,dateTime,false)
