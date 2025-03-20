# DynamoDB

## Overview
Full managed 
HA
Replication across Multiple AZ
NoSQL DB - not relational w/ transation support
scales to massive workloads, distributed DB
millions of requests per second, trillions or rows, 100s of TBs
fast and consistent
* Single digit millisecond performance
Integrated with IAM for security, authz and admin 
low cost and ags
no maintenance

Standard table class

## Basics
DDB is made of tables
Each table has a primary Key
Each table can have infinite number of items (rows) 
each item has attributes (Can be added over time, can be null) 
Max item size is 400KB
Data types supported: 
* Scaler types - string, number, binary, boolean, null 
* Doc type - List, maps
* Set types - string set, number set, binary set

DDB you can rapidly evolve schemas

Partition Key, sort key

### Capacity Modes
Controller how you manage tables capacity
Provisioned Mode (default) 
* specify the number of read/writes/s
* plan capacity in advance
* pay for provisioned Read Capacity Unites (RCU) and Write capacity Units (WCU)
* Possible to asg mode for RCU and WCU
* Works great for smooth loads that are predictable or save money

On-demand mode
* read/writes scale automativcally
* no RCU or WCU, so no planning needed
* Pay for what you used, more expensive
* great for unpredictable or steep sudden spikes
    * 1000s to 1millions requests in a minute

## Advanced Features
DDB Accelerator (DAX) 
fully managed, HA, seamless in memory cache for DDB
Help solve read congestion by cashing
microsecond latency
do not need to change any application logic
* compatible w/ existing DDB APIs
5 mins TTL for cache 

### DAX vs Elasticache
They are complimentary, but usally DAX
DAX
* Individual objects cache
* Query and Scan cache

Elasticache
* Store aggregation results (big computations) 

DDB Stream processing
* ordered stream of item-level modification (create/update/delete) in a table
* Use cases
    * react to changes in real time (welcome email to users)
    * Real time usage analytics
    * Insert into derivative tables
    * Implement cross-region replication
    * Invoke AWS Lambda on changes to your DynamoDB

DDB Streams
* 24 hours retention 
* limited number of consumers
* process using AWS lambda triggers or DDB stream kinesis adaptor

Kinesis Data Stream
* 1 year ot retention  
* High number of consumers
* Process using AWS Lambda, Kinesis Data analytics, Firehose, Glue Streaming ETL ... 

## Global Table
Table replicated across multiple tables
make DDB accessible w/ low latency in multi regions
Active-active 
Apps can read/write to table in any region
Must enabled DDB Streams as prereq
 
### TTL
automatically delete items after expiry timestamps
Use case
* only store current items
* adhere to regulatory obligations
* web session handling
* ... 

### backups for DR
Continuous Backups using point in time recovery
* optionally enabled for last 35 days
* point in time recovery to any time within the backup window
* the recovery process creates a new table

On demand
* Full backups for long term retention, until explicitly deleted 
* Do not affect performance
* AWS Backup supported (enabled cross region copy) 
* Recovery process creates a new table

### S3 integration
can export table into S3
* requires point in time recovery
* works for any point of time in the last 35 days
* does not affect read capacity of you table
* retain snapshots for auditing
ETL on top of S3 data before importing back into DDB
* Export in DDB JSON or ION format

Can import from S3
* import CSV, JSON, or ION
does not consume write capacity
creates new table 