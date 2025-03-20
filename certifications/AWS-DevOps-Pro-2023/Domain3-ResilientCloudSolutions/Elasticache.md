# ElastiCache

## Overview
Cache is in memory DB w/ really high performance and low latency
helps reduce load of DB for read intensive workloads
Helps make app stateless by storing state in Elasticache
Managed service
Involved application code changes to use this service

### Solution Architecture
app queries Elasticache
if hit, good
if miss, read from DB and write to cache

Another application is to store user session.
write session date in elasticache, and one second hit

## Redis vs Memcached
Redis
* all about data durability, using AOF
* multi AZ w/ auto fail over
* read replicas to scale reads and have HA
* Backup/restore feature
* Supports sets and sorted sets
* Cache that gets replicated, HA and durable

Memcached
* multi-node for partitioning of data (sharding) 
* No HA
* No persistence 
* No back up and restore 
* Multi-threaded architecture
* Distributed

can be used on prem w/ Outpost

Encryption at rest and in transit. 

## Elasticache replication - Cluster mode Disables
Redis only
1 primary node, up to 5 replicas
Async replication
Primary is read/write
others are ready only
1 shard, all nodes have all the data
Guard against data loss if node failue
Multi AZ Enabled by default for failover
Helpful to scale ready performance

Scaling: 
* Horizontal by adding removing read replicas (max 5) 
* Vertical by larger/smaller node type
    * elastiCache will internally create a new node group, replicate the data, then DNS update


## Elasticache replication - Cluster mode enabled
Used to improve writes
Data is partitioned across shard
each shard has a primary and up to 5 read replica nodes
Multi AZ 

Up to 500 Nodes per cluster
* w/o replicas - 500 shard w/ single master 
* ... 
* w/ max replicas - 83 shards 1 master and 5 replicas

ASG for Redis available when cluster mode enabled
Increase/decrease number of shards or replicas
supports both target tracking ans scheduled scaling policies

Update app to use new connection endpoints

### Redis endpoints
Standalone Node
* one nodes for read/write

Cluster mode disabled
* Primary endpoint - writes
* read endpoint - split reads across all read replicas
* node endpoint - for read operations

Cluster mode enabled
* Config endpoint - for all read write ops that support cluster mode enabled commands
* Node endpoint - for read operations
