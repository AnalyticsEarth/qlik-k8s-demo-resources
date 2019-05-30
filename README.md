To add qlik-k8s-demo-resources to the cluster:

1. `helm repo add demotools https://analyticsearth.github.io/qlik-k8s-demo-resources`
1. `helm repo update`
1. `helm upgrade --install --namespace demotools demotools demotools/qlik-k8s-demo-resources -f values.yaml`

If the helm release is called demotools then the following services are made available:
Qlik Kubernetes Demo Resources installed:
- SSE2RSERVE
- QLIK2DATAROBOT
- QLIKPYTOOLS
- POSTGRESQL
- MONGODB
- MS SQL SERVER
- APACHE DRILL

Create a YAML values.yaml file where you can enable/disable a service, by default they are all disabled:
 ```
 sse2rserve:
   enabled: true
 qlik2datarobot:
   enabled: true
 qlikpytools:
   enabled: true
 postgresql:
   enabled: true
 mongo:
   enabled: true
 mssqlserver:
   accepteula: true
 drill:
   enabled: true
```


********************************************************************************
To add support for analytic connectors, include the following in
your QSEoK configuration: (presumes you have loaded demo tools into namespace demotools)

```
engine:
  analytics:
    connectors:
      - name: "R"
        url: "demotools-sse2rserve.demotools.svc.cluster.local:50051"
      - name: "DataRobot"
        url: "demotools-qlik2datarobot.demotools.svc.cluster.local:50052,,20,2000"
      - name: "PyTools"
        url: "demotools-qlikpytools.demotools.svc.cluster.local:50055,,20,0"
```
* Names may be different if you have manually changed these in your config

Data sources are configured to only be accessible from within the Kubernetes
cluster and are not accessible from outside the cluster without port forwarding.

The DNS address and ports for the services are as follows:

PostgreSQL:
```
HOST: demotools-postgresql.demotools.svc.cluster.local
PORT: 5432
USER: qliksense
PASSWORD: Qlik1234
```
MongoDB:
```
HOST: demotools-mongo.demotools.svc.cluster.local
PORT: 27017
No Authentication Required
```
MS SQL Server:
```
HOST: demotools-mssqlserver.demotools.svc.cluster.local
PORT: 1433
USER: sa
PASSWORD: Qlik1234
```
Apache Drill:
```
HOST: demotools-drill.demotools.svc.cluster.local
PORT: 31010
No Authentication Required
```
********************************************************************************
The following demo dataset are included:
- PostgreSQL:
  -  world_cities
     - 3 tables of countries, cities and languages
     - The tables are configured to auto associate without data model conflicts

- MongoDB
  - northwinds
    - 11 tables, that are of mixed data quality and will associate with the data manager
  - twitter
    - A collection of tweets from a JSON structure with complex mongo data model

- MS SQL Server
  - AdventureWorks2017
    - Operational data model from SQL AdventureWorks demo
  - AdventureWorksDW2017
    - AdventureWorks Data Warehouse demo database

- Apache Drill
  - Example dataset from Drill (TPC-H), this is only accessible with a query, for example: `SELECT * FROM dfs.`/opt/drill/sample-data/region.parquet`;`
