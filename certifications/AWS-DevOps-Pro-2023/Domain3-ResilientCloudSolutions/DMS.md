# AWS Database migration Service

## Overview
migrate DB from on prem to RDS
Quick
secure
resilient 
self healing
Support homogeneous migration (like to like)
Supports heterogeneous migrations (postgres to MSSQL) 

Continuous data replication using CDC
You must create EC2 instance to do the replication task

Sources
* on-prem and EC2 instance databases
    * oracle, MS SQL, MySQL, MariaDB, Postges, Mongo, SAP, DB2, etc.
* Azure sql 
* Amazon RDS, including aruora
* S3
* document DB

Targets
* on-prem and EC2 instance databases
    * oracle, MS SQL, MySQL, MariaDB, Postgres, Mongo, SAP, DB2, etc.
* RDS
* Redshift, DDB, S3
* Opensearch
* Kinesis Data streams
* Kafka
DocumentDB, AWS Neptune
* Redis
* Babelfish

## AWS Schema Conversion Tool
convert DB from one engine to another
i.e. OLTP: SQL Server/Oracle to MySQL, Postgres, Aurora
i.e. OLAP: terradata/oracle to AWS Redshift

SCT not needed if migrating the same DB engine

### Continuous replication
Best practice to set up server on prem

### MultiAZ
when enabled, DMS provisions and maintains a synch standby replica in a different AZ
provided data redundancy
eliminates i/o freezes
minimized latency spikes


## Monitoring
task status
* indicates the condition (creating, running, stopped, etc.) 
* task status bar - given an estimation of task progress

Table state
* indicates current state of tables  (before load, table completed, etc.) 
* number of inserts, deletions and updated for each table
 
CloudWatch metrics
* Host metrics
    * performance and utilization status for replication host
    * CPU, Mem, storage, writeOps
* replication task metrics
    * stats for replication task including incoming and committed changes, latency between replication host and source/targe DBs
    * fullLoadthroughputRowsSource, fullLoadthroughputRowsTarget, CDCthroughputRowsSource, CDCThroughputRowsTarget
* Table Metrics
    * Stats for number of tables that are in process of being migrated include number of inserts, deletes, updates and DDL statements. 
    
