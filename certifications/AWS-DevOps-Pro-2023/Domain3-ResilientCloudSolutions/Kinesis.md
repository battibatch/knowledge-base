# Kinesis

## Overview
Makes it easy to collect process and analyze streaming data in real time

ingest real time data
* Apps logs, metrics, website clickstreams, IoT telemetry, etc. 

Kinesis Data Streams: Capture process and store data streams 
Data Firehose: upload data streams into AWS and other data stores
Data Analytics: Analyze data stream with SQL and Apache Flink
Video Streams: Capture process and store video streams

## Kinesis Data Streams

Data stream to stream big data in system

stream is made of multiple shards
shards must provision number of shards ahead of time

shared define stream capacity for ingestion and consumption

can scale number of shards

Producers send data into Data Stream
* apps, clients, SDK, Kinesis Producer Lib, Kinesis Agent

Producers create records - data they stream to kineses
2 parts: 
1. partition Key
* defines which shard 
2. Data blob (up to 1MB) 

can send 1MB/s or 1000msg/sec per shard

Consumers consume data from stream
* Apps, Lambda, kinesis client lib, Kinesis Data firehose, kinesis data analytics

Consumers consume records
3 parts:
1. partition key
2. sequence number
3. data blob

Different consumption modes
* 2MB/s (shared) per shared, all consumers
* 2MB/s (enhanced) per shared per consumer

Retention between 1day to 365day
ABility to replay data
Data is immutable
data that shared same  partition, goes into same shard (ordering)

Capacity modes
* provisioned mode
    * choose number of shards
    * each shared gets 1MB in  or 1000 records/s
    * each shard gets 2MB out (classic or enhanced fan-out consumer) 
    * Pay per shared provisioned per hour
* On demand mode
    * No need to provision or manage
    * default capacity provisioned 4mb/s in or 4k records/s
    * scales automatically based on observed throughput
    * Pay per stream per hour and Data in/out per GB 

Security
deployed in regions
control access with IAM
encrypted in flight w/ https
encrypted at rest w/ kms
Can implement client side encryption of data on client side (harder) 
VPS endpoints available
monitor API calls using CloudTrail

TRIM_HORIZON - read from the beginning of stream

## COmsumers Scaling
CW record GetRecords.IteratorAgeMilliseconds
* The difference between curent time and when the last record of GetRecord call was written into the stream 
* Tracks the read position of the Kinesis consumers
* if Age  = 0, caught up
* Age > 0, starting to lag
* set up alarm on this. If lag > 5mins, scale out

# Kinesis Data Firehose
Can take data from Producers, K Data Streams, CW, IoT
record data and batch writing to sources
No Code needed

Full managed, no admin, serverless

Only pay for data transfer
Near real time
* 60 latency minimum for non full batches
* or minimum 1 MB of data at a time. 

Supports many data formats, conversions, transformation, compressions
Supports custom transformations using Lambda

AWS Destinations:
* S3
* Redshift (S3 then copy to Redshift)
* OpenSearch

Also 3rd Party
* DataDog, SPlunk, New Relic

Or custom destination HTTP endpoint

Can also send failed or all data into different s3

## Data Stream vs Firehose
Data Stream
* ingest data at scale
* write Custom code
* Real Time
* Manage scaling 
* Data storage
* Supports replay
* Pay for provision

Firehose
* Load streaming data into s3/redshift/OpenSearch/3rd party/ Custom http
* Full managed
* NEAR real time
* Automatic scaling
* No Data storage
* no replay support
* pay for data streamed only

# Kinesis Data Analtyics

For SQL Apps
Fully managed, Autoscaling, pay for actual consumption rate

Use Cases: 
* time series analytics, real time dashboards, real time metics

Sources:
* Data Stream
* Data Firehose

Apply SQL statements

can enrich using Reference data in S3

Destinations:
* Data Stream
    * lambda, Can do real time processing then anywhere
    * Applications then anywhere
* Data Firehose
    * S3, Redshift, etc.

For Apache Flink
Renamed service to Amazon Managed Service for Apache Flink

Use Flink to process and analyze streaming data
sources:
* K Data stream
* AWS Managed Service Kafka

Can run any Flink app on managed cluster on AWS 
Flink is more powerful than SQL
Get ASG, parallel computation
Get auto backups as checkpoints and snapshots
Flink does not read from Firehose
    * Use K Data Analytics for SQL instead

### Data Analytics Machine Learning
2 algorithms
* RANDOM_CUT_FOREST
    * SQL function used for anomaly detections in a stream
    * uses recent history to compute and train history
    Real time
* HOTSPOTS
    * locate and return info about relatively dense regions in data
