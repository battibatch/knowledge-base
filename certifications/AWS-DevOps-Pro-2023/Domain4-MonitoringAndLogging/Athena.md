# AWS Athena
serverless query service to analyze data stored in S3
uses SQL to query files (built on Presto)
Supports CSV, JSON, RC, Avro, Parquet

$5 per TB of data scanned

Commonly used with AWS Quicksight for reporting/dashboards

Use cases: 
* business intelligence
* analytics
* reporting,
* Analyze & query VPC flow logs, ELB logs, CloudTrail Logs, etc. 

EXAM Tip: analyze data in S3 using serverless SQL, Athena

## Performance Improvement

Use Columnar data for cost savings (less scan) 
* Apache Parquet and ORC is recommended formats
* Huge performance improvements 
* Use AWS Glue to convert data to Parquet or ORC

Compress data for smaller retrievals 
* (bzip2, gzip, lz4, snappy, zlip, more)

Partition datasets in S3 for easy querying on virtual columns
* year/month/day

Use bigger files > 128MB to minimize overhead

## Federated query
allows you to run SQL query across data in relational, non-relational, object and custom data sources (AWS and on prem) 

Use Data Source Connector that run on AWS Lambda to run Federated Queries
* e.g. CW logs, DynamoDB, RDS, Redshift, ElastiCache, etc.
1 lambda function per data source connector

Can store results in S3