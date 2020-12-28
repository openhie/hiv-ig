# FHIR resource extraction

## Options available (one will be removed after a decision is taken):

* [Observation-based extraction]()
This method only allows the extraction to Observation resource instances.  
  

* [Definition-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#definition-extract)
** This method can be used for other resources besides Observation.  
** Allows creation or update of resources
** One item can only be used to populate one resource  
** If the etraction to one resource fails, the others may still succeed

* [StructureMap-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#structuremap-based-extraction)
This method can be used for other resources besides Observation.  
** This method can be used for other resources besides Observation.  
** Allows creation or update of resources  
** Allows the same section to be used to create two resources
** If the extraction fails, no resources will be updated. So this method requires a very robust StructureMap. 




