# Architectures

## Multi AZs
Services where Multi AZ must be enabled manually: 
* EFS, ELB, ASG, Beanstalk: Assign AZ
* RDS, Elasticache: multi-AZ features (sync standby DB for failovers) 
* Aurora
    * Data store automatically across multi-AZ
    * can have multi AZ for the DB itself (same as RDS) 
* OpenSearch (managed): multi master 
* Jenkins (self-deployed): Multi master

Service where Multi-AZ is implicitly there: 
* S3 (Except 1 zone -infrequent access)
* DynamoDB
* all AWS proprietary managed services

## Blue-Green Architecture

#### 1
2 target groups behind 1 ALB
1 blue, 1 green
switch all at once or add weights
Advantage is ALB handles requests
Immediate switch

### 2
2 target groups behind 2 ALBs, one per
switch doing DNS in R53
slower

### 3
API Gateway with canary stage backed by lambdas 

Or 1 API Gateway, but use lambda alias to and switch there

## Multi Region
Use Automated DNS failures w/ R53 Health check
full app deployed in 2 different regions

### Health checks
1. heath check monitor's app end point
2. health check that monitor health checks
3. health check monitor CW Alarms (FULL CONTROL)

Health check integrated w/ CW Metrics

### Latency based
switch traffic based on latency
data layer can use DynamoDB which can sync replicate multi region

### Complex
us.example.com
eu.example.com

each URL route to ALB in closest region, but failover to other region based on problems

# Disaster Recovery

DR is about preparing

What kinds of DR
* on prem to On prem
    * traditional, expensive
* Hybrid on prem to cloud
* Cloud Regino A to cloud Region B

Terms
* Recovery point objective
    * how far back in time to resotr 
    * how much data loss can you accept
* Recovery time objective
    * How much downtime you can have before recovering 
Smaller they are, more expensive

## DR Strategies
Backup/Restore
* High RPO, RTO
    * on prem back up to S3 via storage gateway or snowball
    * Schedule regular snapshots for EBS, RDS, Redshift
* Not fast, but cheap
* only cost is storage of backups

Pilot Light
* smal verison of app is always running in cloud
* usually critical core
* Faster because core is running already
    * i.e. replicating on prem DB to RDS, not EC2
        * DB ready, spin up EC2 and back
* Cost a little higher w/ RDS, but faster RTO, RPO

Warm Standby 
* full system running, but at minimum size
* still replicating RDS, w/ ASG scaled to zero, ELB running
* Fail over, scale up quickly
* Costly with many resources running

Hot site / multi site
* Full system running at full scale
* Active/Active HA
* very expensive but fastest RTO/RPO (minutes or seconds)

All AWS Multi regions
* Similar to Hot site, but all resources in the cloud

### Tips
* Backups
    * EBS Snapshots, RDS automated backups, etc 
    * Regual pushed to S3, life cycle policy, cross regions replication
    * From on prem: Snowball or storage gateway

* HA
    * use route53 to migrate DNS from region to region
    * RDS multiAZ, Elasticache multiAZ, EFS, S3
    * Site to Site VPN as a revovery from Direct Connect

* Replication
    * RDS Replication (cross-region), Aurora + Global DBs
    * DB replication from on prem to RDS 
    * Storage Gateway

* Automation
    * CFN, Beanstalk, to recreate whole new env
    * Recover / Reboot EC2 instances with CW if alarm fails
    * AWS Lambda functions for customized automation

* Chaos testing
    * Simian army, running terminate EC2 instances in prod
