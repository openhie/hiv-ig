Instance: hiv-case-report-questionnaire-long
InstanceOf: Questionnaire
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition

// * insert PublisherContext
* name = "HIVCaseReportForm"
* version = "2020"
* status = #draft
* subjectType = #Patient
//* language = "en"

* item[0].linkId = "title"
* item[0].text   = "Care Monitoring Report at Outpatient Clinics"
* item[0].type   = #display

* item[1].linkId = "regulations"
* item[1].text   = "Reporting regulations: Monthly – applicable to each patient during the reporting period"
* item[1].type   = #display

* item[2].linkId = "unit_name"
* item[2].text   = "Governing body unit name"
* item[2].type   = #string

* item[3].linkId = "date"
* item[3].text   = "Date of report"
* item[3].type   = #date

* item[4].linkId = "intro"
* item[4].text   = "Dear:"
* item[4].type   = #display

* item[5].linkId = "questions"
* item[5].text   = "Monthly report"
* item[5].type   = #group

* item[5].item[0].linkId = "identifying_information"
* item[5].item[0].text   = "Part I: Identifying Information"
* item[5].item[0].type   = #group

* item[5].item[0].item[0].linkId = "code"
* item[5].item[0].item[0].text   = "code"
* item[5].item[0].item[0].type   = #group

* item[5].item[0].item[0].item[0].linkId = "arv_patient_nr"
* item[5].item[0].item[0].item[0].text   = "ARV Patient Number"
* item[5].item[0].item[0].item[0].type   = #string

* item[5].item[0].item[1].linkId = "personal_information"
* item[5].item[0].item[1].text   = "Personal Information"
* item[5].item[0].item[1].type   = #group

* item[5].item[0].item[1].item[0].linkId = "name"
* item[5].item[0].item[1].item[0].text   = "First and last name"
* item[5].item[0].item[1].item[0].type   = #string
* item[5].item[0].item[1].item[0].prefix = "1"

* item[5].item[0].item[1].item[1].linkId = "ethnic"
* item[5].item[0].item[1].item[1].text   = "Ethnicity"
* item[5].item[0].item[1].item[1].type   = #string
* item[5].item[0].item[1].item[1].prefix = "2"

* item[5].item[0].item[1].item[2].linkId = "gender"
* item[5].item[0].item[1].item[2].text   = "Gender"
* item[5].item[0].item[1].item[2].type   = #choice
* item[5].item[0].item[1].item[2].prefix = "3"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[5].item[0].item[1].item[3].linkId = "birth_year"
* item[5].item[0].item[1].item[3].text   = "Year of Birth"
* item[5].item[0].item[1].item[3].type   = #integer
* item[5].item[0].item[1].item[3].prefix = "4"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[5].item[0].item[1].item[4].linkId = "id_cccd"
* item[5].item[0].item[1].item[4].text   = "Identification"
* item[5].item[0].item[1].item[4].type   = #group
* item[5].item[0].item[1].item[4].prefix = "5"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[5].item[0].item[1].item[4].item[0].linkId = "health_insurance_code"
* item[5].item[0].item[1].item[4].item[0].text   = "Health insurance code"
* item[5].item[0].item[1].item[4].item[0].type   = #string
* item[5].item[0].item[1].item[4].item[0].prefix   = "5.1"

* item[5].item[0].item[1].item[4].item[1].linkId = "passport_nr"
* item[5].item[0].item[1].item[4].item[1].text   = "Passport Number"
* item[5].item[0].item[1].item[4].item[1].type   = #string
* item[5].item[0].item[1].item[4].item[1].prefix   = "5.2"

* item[5].item[0].item[1].item[5].linkId = "residence"
* item[5].item[0].item[1].item[5].text   = "Residence"
* item[5].item[0].item[1].item[5].type   = #group

* item[5].item[0].item[1].item[5].item[0].linkId = "current"
* item[5].item[0].item[1].item[5].item[0].text   = "Current residence"
* item[5].item[0].item[1].item[5].item[0].type   = #string
* item[5].item[0].item[1].item[5].item[0].prefix   = "6"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[5].item[0].item[1].item[5].item[1].linkId = "permanent"
* item[5].item[0].item[1].item[5].item[1].text   = "Permanent residence"
* item[5].item[0].item[1].item[5].item[1].type   = #string
* item[5].item[0].item[1].item[5].item[1].prefix   = "7"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)

* item[5].item[0].item[1].item[6].linkId = "occupation"
* item[5].item[0].item[1].item[6].text   = "Occupation"
* item[5].item[0].item[1].item[6].type   = #string
* item[5].item[0].item[1].item[6].prefix   = "8"
//* item[5].item[0].item[1].item[2].answerValueSet    = Canonical($vs-iso3166-1-2)




* item[5].item[1].linkId = "test_results"
* item[5].item[1].text   = "Part II: Test Results"
* item[5].item[1].type   = #group

* item[5].item[1].item[0].linkId = "cd4_cell_test"
* item[5].item[1].item[0].text   = "CD4 cell test for the first time"
* item[5].item[1].item[0].type   = #group
* item[5].item[1].item[0].prefix   = "9"

* item[5].item[1].item[0].item[0].linkId = "sampling_date"
* item[5].item[1].item[0].item[0].text   = "Sample collection Date"
* item[5].item[1].item[0].item[0].type   = #date
* item[5].item[1].item[0].item[0].prefix   = "9.1"

* item[5].item[1].item[0].item[1].linkId = "test_date"
* item[5].item[1].item[0].item[1].text   = "Test date"
* item[5].item[1].item[0].item[1].type   = #date
* item[5].item[1].item[0].item[1].prefix   = "9.2"

* item[5].item[1].item[0].item[2].linkId = "results"
* item[5].item[1].item[0].item[2].text   = "Test Results"
* item[5].item[1].item[0].item[2].type   = #string
* item[5].item[1].item[0].item[2].prefix   = "9.3"


* item[5].item[1].item[1].linkId = "volume_test"
* item[5].item[1].item[1].text   = "Testing for virus volume - Periodically"
* item[5].item[1].item[1].type   = #group
* item[5].item[1].item[1].prefix   = "10"

* item[5].item[1].item[1].item[0].linkId = "sampling_date"
* item[5].item[1].item[1].item[0].text   = "Sampling date"
* item[5].item[1].item[1].item[0].type   = #date
* item[5].item[1].item[1].item[0].prefix   = "10.1"

* item[5].item[1].item[1].item[1].linkId = "test_date"
* item[5].item[1].item[1].item[1].text   = "Test date"
* item[5].item[1].item[1].item[1].type   = #date
* item[5].item[1].item[1].item[1].prefix   = "10.2"

* item[5].item[1].item[1].item[2].linkId = "results"
* item[5].item[1].item[1].item[2].text   = "Test results"
* item[5].item[1].item[1].item[2].type   = #string
* item[5].item[1].item[1].item[2].prefix   = "10.3"



* item[5].item[2].linkId = "arv_status"
* item[5].item[2].text   = "ARV treatment status"
* item[5].item[2].type   = #group

* item[5].item[2].item[0].linkId = "course_of_treatment"
* item[5].item[2].item[0].text   = "The course of treatment"
* item[5].item[2].item[0].type   = #group
* item[5].item[2].item[0].prefix   = "11"

* item[5].item[2].item[0].item[0].linkId = "arv_start_date"
* item[5].item[2].item[0].item[0].text   = "Start Date"
* item[5].item[2].item[0].item[0].type   = #date
* item[5].item[2].item[0].item[0].prefix   = "11.1"

* item[5].item[2].item[0].item[1].linkId = "loss_of_signs"
* item[5].item[2].item[0].item[1].text   = ".."
* item[5].item[2].item[0].item[1].type   = #boolean
* item[5].item[2].item[0].item[1].prefix   = "11.2"

* item[5].item[2].item[0].item[2].linkId = "treatment_end_date"
* item[5].item[2].item[0].item[2].text   = "Treatment end date"
* item[5].item[2].item[0].item[2].type   = #date
* item[5].item[2].item[0].item[2].prefix   = "11.3"


* item[5].item[2].item[1].linkId = "treatment_regimen"
* item[5].item[2].item[1].text   = "Treatment regimen"
* item[5].item[2].item[1].type   = #group
* item[5].item[2].item[1].prefix   = "12"


* item[5].item[2].item[1].item[0].linkId = "tier1_regimen"
* item[5].item[2].item[1].item[0].text   = "Treatment regimen - Tier 1"
* item[5].item[2].item[1].item[0].type   = #date
* item[5].item[2].item[1].item[0].prefix   = "12.1"

* item[5].item[2].item[1].item[1].linkId = "tier2_regimen"
* item[5].item[2].item[1].item[1].text   = "Treatment regimen - Tier 2"
* item[5].item[2].item[1].item[1].type   = #date
* item[5].item[2].item[1].item[1].prefix   = "12.2"


* item[5].item[2].item[1].item[2].linkId = "results"
* item[5].item[2].item[1].item[2].text   = "Treatment regimen - Tier 3"
* item[5].item[2].item[1].item[2].type   = #date
* item[5].item[2].item[1].item[2].prefix   = "12.3"



* item[5].item[3].linkId = "co_infections"
* item[5].item[3].text   = "Other infections"
* item[5].item[3].type   = #group
* item[5].item[3].prefix   = "13"

* item[5].item[3].item[0].linkId = "tb_prevention"
* item[5].item[3].item[0].text   = "TB prevention"
* item[5].item[3].item[0].type   = #boolean
* item[5].item[3].item[0].prefix   = "13.1"


* item[5].item[3].item[1].linkId = "tb_diagnosis"
* item[5].item[3].item[1].text   = "TB diagnosis"
* item[5].item[3].item[1].type   = #boolean
* item[5].item[3].item[1].prefix   = "13.2"

* item[5].item[3].item[2].linkId = "tb_treatment"
* item[5].item[3].item[2].text   = "TB Treatment"
* item[5].item[3].item[2].type   = #boolean
* item[5].item[3].item[2].prefix   = "13.3"


* item[5].item[4].linkId = "death"
* item[5].item[4].text   = "Death"
* item[5].item[4].type   = #group
* item[5].item[4].prefix   = "14"

* item[5].item[4].item[0].linkId = "death_date"
* item[5].item[4].item[0].text   = "Date of death"
* item[5].item[4].item[0].type   = #date
* item[5].item[4].item[0].prefix   = "14.2"

* item[5].item[4].item[1].linkId = "death_cause"
* item[5].item[4].item[1].text   = "Cause of death"
* item[5].item[4].item[1].type   = #string
* item[5].item[4].item[1].prefix   = "14.2"















/* 
* item[1].linkId    = "report_date"
* item[1].text    = "Date of reporting to national health authority:"
* item[1].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.date"
* item[1].type    = #date
* item[2].type    = #choice
* item[2].answerValueSet    = Canonical($vs-iso3166-1-2)
* item[1].code = $LNC#77995-9
//* item[5].item[1].item[0].extension[$ext-questionnaire-itemControl].valueCodeableConcept = $cs-itemControl#help
* item[4].type    = #group
* item[4].item[0].linkId  = "patinfo_ID"
* item[4].item[1].linkId  = "patinfo_ageonset"
* item[4].item[1].extension[$ext-questionnaire-unitValueSet].valueCanonical = Canonical(WhoCrValueSetAgeUnits)
* item[4].item[1].extension[$ext-element-minValue].valueInteger = 1
* item[5].item[2].item[1].item[0].repeats = true
* item[4].item[3].item[0].item[0].enableWhen[0].question = "patinfo_idadmin0"
* item[4].item[3].item[0].item[0].enableWhen[0].operator = #exists
* item[4].item[3].item[0].item[0].enableWhen[0].answerBoolean = true
* item[5].prefix  = "Section 2"
* item[5].item[1].item[1].enableWhen[0].answerCoding = $cs-v2-0136#Y
* item[7].item[4].item[0].linkId  = "outcome_patcourse_admit"
* item[7].item[4].item[0].type    = #choice
* item[7].item[4].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[4].item[1].linkId  = "outcome_patcourse_presHCF"
* item[7].item[4].item[1].enableWhen[0].question  = "outcome_patcourse_admit"
* item[7].item[4].item[1].enableWhen[0].operator  = #=
* item[7].item[4].item[1].enableWhen[0].answerCoding  = $cs-v2-0136#Y
*/




/*
        linkId = "unit_name"
        text = "Governing body unit name"
        type = "string"


        linkId: date
        text: 'Date:'
        type: string

        linkId: title
        text: 'HIV <Care Monitoring Report at Outpatient Clinics'
        type: display
    -
        linkId: intro
        text: 'Dear:'
        type: string
    -
        linkId: regulations
        text: 'Reporting regulations: Monthly – applicable to each patient during the reporting period'
        type: display
    -
        linkId: questions
        text: ""
        type: group
        item:
            -
                linkId: identifying_information
                text: 'Part I: Identifying Information'
                type: group
                item:
                    - {linkId: code, text: Code, type: group, item: [{linkId: arv_patient_nr, text: 'ARV Patient Number:', type: string}]}
                    - {linkId: personal_information, text: 'Personal Information', type: group, item: [{linkId: first_last_name, prefix: '1', text: 'First and last name:', type: string}, {linkId: ethnic, prefix: '2', text: 'Ethnic:', type: string}, {linkId: gender, prefix: '3', text: 'Gender:', type: string}, {linkId: birth_year, prefix: '4', text: 'Year of Birth:', type: string}, {linkId: id_cccd, prefix: '5', text: 'ID / CCCD :', type: group, item: [{linkId: health_insurance_code, prefix: '5.1', text: 'Health insurance code:', type: string}, {linkId: passport_nr, prefix: '5.2', text: 'Passport Number:', type: string}]}, {linkId: current_residence, prefix: '6', text: 'Current residence:', type: string}, {linkId: permanent_residence, prefix: '7', text: 'Place of permanent residence registration:', type: string}, {linkId: occupation, prefix: '8', text: 'Occupation:m(digital):', type: string}]}
            -
                linkId: test_results
                text: 'Part II: Test Results'
                type: group
                item:
                    - {linkId: cd4_cell_test, prefix: '9', text: 'CD4 cell test for the first time', type: group, item: [{linkId: sampling_date, prefix: '9.1', text: 'Sampling Date:', type: date}, {linkId: test_date, prefix: '9.2', text: 'Test Date:', type: date}, {linkId: results, prefix: '9.3', text: 'Results:', type: string}]}
                    - {linkId: volume_test, prefix: '10', text: 'Testing for virus volume - Periodically', type: group, item: [{linkId: sampling_date, prefix: '10.1', text: 'Sampling Date:', type: date}, {linkId: test_date, prefix: '11.2', text: 'Test Date:', type: date}, {linkId: results, prefix: '11.3', text: 'Results:', type: string}]}
            -
                linkId: arv_status
                text: 'ARV treatment status'
                type: group
                item:
                    - {linkId: course_of_treatment, prefix: '11', text: 'The course of treatment', type: group, item: [{linkId: arv_start_date, prefix: '11.1', text: 'Sampling Date:', type: date}, {linkId: loss_of_signs, prefix: '11.2', text: 'Patients with loss of signs of treatment:', type: boolean}, {linkId: treatment_date_end, prefix: '11.3', text: 'Treatment end date:', type: date}]}
                    - {linkId: treatment_regimen, prefix: '12', text: 'Treatment regimen:', type: group, item: [{linkId: tier_1_regimen, prefix: '12.1', text: ' Tier 1 regimen start date:', type: date}, {linkId: tier_2_regimen, prefix: '12.2', text: 'Tier 2 regimen start date:', type: date}, {linkId: results, prefix: '12.3', text: ' Tier 3 regimen start date:', type: date}]}
            -
                linkId: co_infections
                text: Co-infections
                type: group
                item:
                    - {linkId: tuberculosis_prevention, prefix: '13.1', text: 'Tuberculosis prevention:', type: boolean}
                    - {linkId: tuberculosis_diagnosis, prefix: '13.2', text: 'Diagnosis of tuberculosis:', type: boolean}
                    - {linkId: tuberculosis_treatment, prefix: '13.3', text: 'Treatment of tuberculosis:', type: boolean}
            -
                linkId: death
                prefix: '14'
                text: Death
                type: group
                item:
                    - {linkId: death_date, prefix: '14.1', text: 'Date of Death:', type: date}
                    - {linkId: death_cause, prefix: '14.2', text: 'Cause of Death:', type: string}

*/