# CloudTrail

provide governance compliance and audit of AWS Account
Enabled by default
Get a history of events, API calls made within your AWS Account by: 
* Console
* SDK
* CLI
* IAM Users and Roles
* AWS Services

Can put logs into CW Logs or S3 
can create a trail all regions or single trail
if resource is deleted, investigate CT first! 

## Events (3 types)

Management Events
* Ops that are performed on resources in AWS Account
* By default, trails configure to log management events
* Can separate Read Events Write events

Data Events
* By default, events are not logged 
* high volume operations
* Can sepatate read and write events
* S3 object level events, Lambda function executions

CloudTrail Insights Events
* by default, not enabled
* analyzed to detect unusual activity in your account
    * i.e. inaccurate resource provisioning, hitting service limits, * bursts of AWS IAM actions
    * Gaps in periodic maintenance 
* creates baseline to analyze against
* Continuously analyzes write events

## Event Retention
by default stored for 90 days
to store for longer log them to s3 and use Athena to analyze


## EventBridge Integration
intercept API call
i.e. receive notification when a table is deleted
* DeleteTable API call logged to cloudtrail
* Create an event in EventBridge for that logged API call
* Alert SNS when Event captured

i.e. notified with a roles has been assumed
i.e. with Security group has been changed

