# RDS 

## Read replicas vs Multi AZ
### Read replicas
Read replicas for read scalability
can create up to 15 read replicas
same AZ, Cross AZ, or cross regions

Replication is ASYNC, so reads are eventually consistent
* You may old data

Replicas may be promoted to their own DB

Application must update connection string to use all the read replicas

Use Case A:
* shared services wants to run reporting on apps' DB
* create a read replica so analytics can be run there
* prod app is unaffected
* read replicas are used for SELECT only kind of statements

Networking Cost
* Normally there is a cost when data goes from one AZ to another
* for RDS within the same region, that fee does not apply
* Cross region will incur the that cost

## RDS Multi AZ (DR)
have a sync replication to RDS standby
1 DNS between the 2 DBs
If master fails health check, auto fails over
failover in case of loss of AZ, network, instance or storage
No manual interventions require
Not used for Scaling

Read replicas can be set up multi AZ for (DR) 

### RDS from single AZ to multi AZ
* Zero downtime
* modify > Enable multi AZ
the following happens
* snapshot taken of primary
* restored on standby
* sync set up between primary and standby
)