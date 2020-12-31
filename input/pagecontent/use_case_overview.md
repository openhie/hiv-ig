This specification covers a range of use cases from the creation of a monthly report to the aggregation of a longitudinal record.


### Main use cases


#### 1. Monthly case report submission
* The patient gets a form (which can be prefilled with some data) to fill and deliver to a healthcare professional (possibly upon a request by the healthcare professional).
This filled form contains standardized data elements which constitute the Monthly Case Report. The Healthcare Professional may accept the form into the EHR.

#### 2. Bulk import monthly report data
* If there is existing report data, for example in spreadsheets, a simple mapping can be used to derive a batch of monthly case reports, in the same standard format as if they were filled manually

#### 3. Process and aggregate reports
* The local repository submits the case reports to the central repository. The central repository may need to perform a series of operations,
including de-duplication, reconciliation, etc. After these operations, the central repository contains a longitudinal view of each case

#### 4. Extract existing EHR data 
* When it is possible to extract data from local EHRs (independently of where they are hosted), a standard extract is generated, similar to the standard monthly report. 
This is then submitted to the central repository, which can incorporate this data onto a longitudinal record, possibly after a series of processing activities.

#### 5. Alerts
* The data in a central repository (or a local repository) can be used to provide alerts - indications about process or data quality, for example, whether
a patient is missing one report, or hasn't shown for treatment, or has developed some co-morbidity. This monitoring supports increased quality of data and quality of care.

#### 6. Analytics
* The data in a central repository is used to create indicators. This can be for standardized indicators, or for ad-hoc exploration of data to identify patterns. 
The full governance process for these indicators is not in scope of these specifictions.


While there is no fixed sequence of activities, the following illustrative diagram shows a possible set of interactions:

<div>
{% include usecases.svg %}
</div>

### Supporting cases



