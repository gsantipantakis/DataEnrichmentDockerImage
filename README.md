# Data Enrichment Component
The data enrichment component Docker image of MobiSpaces project is based on RDF-Gen for data transformation. This component extends RDF-Gen with metadata extraction and link discovery features. The transformed data sets can be either stored locally in a file (Turtle format) or directly uploaded to a predefined triple store. The extracted metadata are transferred to the Findability component according to the provided configuration. 

## Start the component 

At command prompt, in the working directory, write the command:
```
java -jar RDF-Gen.jar config.rdf
```
to start the data enrichment component with the configurations provided in the config.rdf file. Example configuration files are also available in the working directory (see testSample.rdf and UC2_contextual1.rdf)

## Build and run with Docker

Run Docker build:

```
docker build . --tag dataenrichment-component:latest
```

Start the Docker container:

```
docker run -d -p 2023:2023 --name dataenrichment dataenrichment-component
```
