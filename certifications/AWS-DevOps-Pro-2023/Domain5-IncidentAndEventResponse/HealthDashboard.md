# Health Dashboard

## Service History
shows all regions all services health
Has historical data for each day 
RSS feed to subscribe to

Previously called AWS Service Health Dashboard

## For your account
Perviously called AWS Personal Health Dashboard

Provides alerts and remediation guidance when needed
Service Dashboard is general
Account Dashboard is personalized to services AWS Account is using
Displays info to help manage events in progress and provides proactive notification to help plan

Can aggregate data from entire org

## Events and Notifications
EventBridge to react to changes in AWS Account
i.e. email events, capture event, take corrective actions
it is possible for account events (resources in account) and public events (regional service ability)
invoke lambda to remediate or restart or other event.


# EC2 instance status checks
auto check to ID hardware or software issues

Systems status check
* Monitor problmes with AWS systems (soft/hardware on physical host)
* Check personal health Dashboard for scheduled critical maintenance
* Fix with stop/start of instance (instance migrated to new host) 

Instance Status Check 
* monitor software/Network config of instance (invalid network config, exhauset mem, etc) 
* fix with a Reboot instance or change instance config

## CloudWatch Metrics and Recovery
* StatusCheckFailed_System
* StatusCheckFailed_Instance
* StatusCheckFailed (for both) 

Option 1 CloudWatch Alarm (preferred is want singe EC2 instance)
* recover EC2 instance with same priv/pub IP, EIP, metadata and Placement group
* send notification

Option 2 ASG
* min/max/desired of 1
* will not keel same IP or EBS volumes