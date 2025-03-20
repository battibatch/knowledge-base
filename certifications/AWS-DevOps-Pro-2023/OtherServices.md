# AWS Tag Editor
allows you to manager tags of multiple resources at ones
add/update/delete tags
search untagged/tagged resources in all AWS regions

# Amazon Quicksight
Serverless machine learning business intelligent service to create interactive dashboards
fast, auto scaling, embed-able w/ per session pricing
Go to for BI

Use Cases: 
* Business analytics
* Business visualizations
* perform Ad hoc analysis
* Get business insights using data

Integrated w/ RDS, Aurora, Athena, Redshift, s3 and more

# AWS Glue
managed extract, transform and load service (ETL) 
Used to prepare and transform data for analytics
fully serverless service

## Convert data into Parquet format
Put CSV files into s3 -> Glue to convert to parquet in a new bucket -> Analyze using Athena
on new put, trigger Lambda to trigger glue job
(can also use Event Bridge to trigger) 

## Glue Data catalog
used to catalog data sets
crawl S3, RDS, DDB, etc and write all metadata into Glue Data Cataltog
Glue ETL job leverage catalog 
so does Athena, Redshift Spectrum, EMR

## Also know
* Glue job bookmarks - prevents reprocessing old data
* Glue Elastic views
    * Combine and replicate data across multiple data stores using SQL
    * no custom code, Glue monitors for changes in the source data, serverless
    * leverages virtual table
* Glue DataBrew - clean and normalize data using prebuilt transformation
* Glue Studio - GUI to create run and monitor ETL jobs in Glue
* Glue Streaming Studio - ETL (built on Apache Spark structure Streaming): compatible with Kinesis Data Streaming, kafka, MSK

