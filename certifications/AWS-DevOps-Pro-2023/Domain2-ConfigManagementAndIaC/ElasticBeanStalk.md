# Elastic Beanstalk

## Overview
3 tier web app
LB -> ASG -> RDS/Cache

As a developer is complex to:
* manage infra
* deploy code
* configure LB, DB, etc.
* Scale

Most apps have same architecture

Beanstalk give a dev centric view to deploy and app
managed service
automatically handles the capacity, LB, scaling, monitoring, instance config, etc. 

dev only to manage the app code

Still have control over the config
Beanstalk is free, but pay for components

## Components

Application - collection of components (envs, version, config, etc.) 
App version - iteration of app code 
Environment - 
* collection of AWS resources running app verion (1 version at a time)
* Tiers - web server env tiers, worker env tier, etc.
* can have multiple envs (dev, test, prod)

Create app > Upload version > launch env > manage env 
update version > deploy new version

web server vs worker
* no users access to worker
SQS to manage work
web manage work sent to worker

## Deployment modes
* single instance - 1 ec2
* HA w/ LB - ASGs and RDS hot/standby instances.
    * IF you link a DB to env, it will be cleaned up with env

## Deployment options for Updates
All in one
* Beanstalk stops all instances updates code, restarts
* Fast
* downtime
* No additional cost

Rolling
* App runs below capacity
can set the bucket size
* if running at 4, stop 2 update, restart, stop next 2, update them
App will run both version at the same time
* no additional cost
* Long deployment possible

Rolling w/ additional batches
* App runs at capacity
* can set bucket size
* running both version at the same time
* deploy new EC2 instances w/ update
* then rolled out the rest
* Good for prod
* Longer deployment
additional cost for new ec2 instances

Immutable
* zero downtime
* new code on new instances
* come from new new temp asg
* High cost, double capacity
* Longest deployment, quick rollback in case of failure
* Great for Prod

Blue/Green
* not a direct feature of Beanstalk
* Zero down time
* create new stage env and deploy v2
* can be validated independently
* Route53 to set up weighted policy
* swap URLs
* Very manual

Traffic splitting (canary)
* Canary testing
* new app deployed to temp ASG with same capacity
* small % of traffic sent to temp ASG for some time
* Deployment health is monitored of new ASG
* If failure, trigger a rollback
* No app downtime
* new instances can be migrated from old ASH to new one
* Old instances deleted

## Web Server vs Worker
If app performs tasks that are long to complete, move to worker
decouple app into 2 tiers
example, process video on worker, not web. 
does not impact web tier

## Notifications
Creates rules in event bridge
* ENV operation status - Create/updates/delete
* Resources status - ASG, ELB, EC3
* managed update status - started failed
* env health status

