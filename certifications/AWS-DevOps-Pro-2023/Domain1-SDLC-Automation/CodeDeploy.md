# CodeDeploy 

## Overview
Service to automate app deployment
EC2, ECS, on prem, lambda
Allows automated roll back
can control how fast, rolling update/gradual

appspec.yaml

### EC2/On-prem
in-place or b/g

must run CodeDeploy Agent on the target instance
can define the speed
    * allAtOnce most down time, fastest
    * halfAtATime - 50/50
    * OneAtATime - slowest, lowest availability impact
    * Custom

B/G - new asg, LB point to new asg w/new version

### CodeDeploy Agent
prereq

install w/ linux commands or SSM
Needs permissions to access S3 where app is

### Lambda
CD can automate traffic shift for Lambda aliases
integrated within SAM Framework

Linear traffic transition
Canary - try some, then if successful, move all
AllAtOnce

### ECS
b/g w/ new target group
shift traffic over time
linear
    * ECSLinear10PercentEvery3Minutes
    * ECSLinear10PercentEvery10Minutes
Canary
    * ECSCanary10Percent5Minutes
AllAtOnce


## EC2 Deep Dive
In place
* use EC2 tags
* ASG, will deploy latest version to new instances

If using LB, traffic is stopped before instance is updated

In place deploy Hooks
* hooks - scripts run by CodeDeploy on each EC2

(if using LB)
BeforeBlockTraffic - customizable w/ script
BlockTraffic
AfterBlockTraffic - customizable w/ script

Application stop - customizable w/ script
DownloadBundle
BeforeInstall  - customizable
Install
AfterInstall - customizable w/ script
ApplicationStart - customizable w/ script
ValidateService - customizable w/ script

(if using LB)
BeforeAllowTraffic - customizable w/ script
AllowTraffic
AfterAllowTraffic - customizable w/ script

### How are hooks run
Deploy agent adds scripts
appspec.yaml defines how they should be run
CodeDeploy will run these hooks

### Examples:
Before Install  - decrypting files, backups
AfterInstall - configuring app, changing permissions
ApplicationStart - start services that stopped during ApplicationStop
ValidateService
BeforeAllowtraffic - 

### Blue Green
Manual Mode - provision EC2 instances by hands and identify by version
Auto Mode - ASG is provisioned by CodeDeploy; settings are copied
LB required

Instance termination
Automatically after defined wait time, 1hr default, max 2 days
Keep Alive - Must delete by hand

B/G Hooks same as before, but different order
V2 instances can do all install w/o network
then allow traffic on v2
block traffic on v1

eployment configurations 
* Specifi number of instance to remain available
    * CodeDeployDefaultAllAtOnce
    * CodeDeployDefaultHalfAtOnce
    CodeDeployDefaultOneAtATime

Create custom

Publish deployment to events to SNS
* Deployment Success, Deployment Failure, etc 

## ECS Deep Dive
Automatically handle deploy of a new ECS Task
only supports B/G abd must be connected to a load balancer
ECS Task must already exist and image already created 

will deploy the new revision

appspec.yaml will reference the task definition revision
appspec places in s3 for CodeDeploy to run it

CodeDeploy Agent not required

Use Code pipeline to put it all together
code push > codeCommit > CBUild Images and ECS Task definition > push to S3 > CDeploy deploy to ECS

Depoyment from V1 to V2
Canary, Linear, AllAtOnce

Hooks are Lambda functions for ECS 
BeforeInstall
Install
AfterInstall

AllowTestTraffic
AfterAllowTestTraffic

BeforeAllowTraffic
AllowTraffic
AfterAlowTraffic

## Lambda Deployment
You create a new lambda function version and want to 
Specify the new version info in the appspec
CodeDeploy updates lambda to new version

No Agent required

Specify the name of function of the alias, current version and new version

Put it all together with CPipeline

canary linear allAtOnce

Hooks
BeforeAllowTraffic
AllowTraffic
AfterAllowTraffic

## Rollbacks and Troubleshooting
Rollbacks
can be automatically when a deployment fails or CloudWatch Alarm is triggered.
Can Disable rollback

If it happens CodeDeploy redeploys the last known good revision as a NEW DEPLOYMENT

Troubleshooting
InvalidSignatureException - needs accurate time references; set EC2 time correctly 

When deployment or lifecycle events are skipped (Onprem/EC2)
* "The overall deployment failed because too many individual instances failed deployment" 
* "too few healthy instances are available for deployment" 
* "Some instances in your deployment group are experiencing problems (HEALTH_CONSTRAINTS)

Reasons
* Agent is not installed 
* Service Roles have permissions
* HTTP Proxy is defined in Agent if being used
( Data and time mismatch 

If deployment to ASG in progress and ASG has scale out occurs, new instance will be v1, not v2. Can lead to diff version in ASG 
 Code Deploy will auto fix old versions

If AllowTraffic fails on B/G - LB has incorrectly configured health checks

