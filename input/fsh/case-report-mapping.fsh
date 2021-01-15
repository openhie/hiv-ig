
Instance: HIVCaseReportMap
InstanceOf: StructureMap
Description: "HIV Case Report - Questionnaire to Resource Mapping"
Title: "HIV Case Report Questionnaire resource Mapping"
Usage: #inline
* name = "HIVCaseReportMap"
* status = #draft
* url = "http://example.com/some-url-to-be-defined"
* group.name = "Questionnaire-Recency"
* group.typeMode = #type
* group.input.mode = #source
* group.input.name = "questionnaire-recency"
* group.rule.name = "observation-recency"
* group.rule.source.context = "QuestionnaireResponse"

//hiv-recency-test.dateOfSpecimenCollection : Observation->Specimen.collection.collectedDateTime.start
