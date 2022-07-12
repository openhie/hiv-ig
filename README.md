# HIV Case Reporting IG

An HIV case reporting IG for the DISI architecture.

## Publication 

This ImplementationGuide is published in the following locations:

* Continuous Build: <http://build.fhir.org/ig/openhie/hiv-ig/>
* Canonical/permanent URL: <https://openhie.github.io/hiv-ig/index.html>

## Issues

Issues and change requests are managed here:  

* Issues:  <https://github.com/openhie/hiv-ig/issues>  
* Kanban board: <https://github.com/openhie/hiv-ig/projects/1>

# Run the IG locally

* Compile the file: sushi .
* create the input-cache folder and the publisher.jar file: ./_updatePublisher.sh 
* create the output folder: ./_genonce.sh 
* inside the output folder run the index.html file on your browser. 

# NB: 
* you need to have java installed: sudo apt install default-jdk
* you need Jekyll installed as well. Find guide here => https://jekyllrb.com/docs/installation/ubuntu/
