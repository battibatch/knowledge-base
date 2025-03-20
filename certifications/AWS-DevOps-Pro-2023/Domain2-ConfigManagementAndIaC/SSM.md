# Systems Manager

## Overview

Help manage EC2 and On prem
Get operational insight of infra
easily detect problem
Patching automation

Works with Windows and Linux
Fully integrated with CloudWatch Metrics and Dashboards
integrated with AWS Config

Free services

## Features
Resources groups

Operations Management
* Explore
* OpsCenter
* CloudWatch Dashboard
* PHD
* Incident Manger

Shared Resources
* Documents

Change Management
* Change Manager 
* Automation 
* Change calendar
* Maintenance windows

Application Management
* appConfig
App Manager
Parameter Store

Node Management
* fleet manager
* Compliance
* Inventory
* Hybrid Activations
* Session Manager
* Run Command
* State manager
* patch manager
* Distributer

## How does it work
Install SSM agent on system
comes by default on amazon linux 2 and some ubuntu
If instance is cannot be controlled, likely a issue w/ agent
Need IAM role to allow SSM Actions

AmazonSSMManagedInstanceCore Policy - allows SSM to manage the EC2

Do not need networking in place to enable SSM with EC2

## Tags and resource Groups
Use tags for 
* resources groups
* automation
* Cost allocation

Better to have too many than too few 

group things logically i.e. apps, envs, layers, etc.

Free naming conventions
Environment = Dev
Team = Finance

Resource groups not part of SSM any more
Add grouping Criteria
want to be able to operate SSM at group level, not individual instances

## SSM Documents
JSON or YAML
define params, actions
Many docs already exists

Docs used to run commands, state manager, patch manager, automation, get data from param store

AWS-APplyPatchBaseline - installs latest patches on OS

can version your docs
optional and required params available

## RunCommand
execute a script or command across resource groups
rate control
error control
no need for SSH
integrated with IAM and CloudTrail
can send outputs to S3 or CloudWatch
can send notifications to SNS
Can be invoked by EventBridge

CreateDoc > Command or Session
Target type
Doc Type

## SSM Automation
Simplify common maintenance
i.e. restart instance, create AMI, EBS
Outside of the EC2 instance

Automation Runbooks
* SSM Docs of type Automation
* Defines actions performed on EC2 or other resources
* Predefined or make a custom one

Triggered
* manual using Console, CLI, SDK
* Event Bridge
* On schedule
* AWS Config for rule remediation

Predefined docs are organized into catagories

## SSM Parameter Store
Secure storage for config and secrets
can encrypt using KMS
Serverless, scalable, durable, easy SDK
Version tracked
Secure through IAM
Notifications w/ Event Bridge
Integration with CFN

Can store as hierarchy w/ path

There are public params

2 Tiers: 
Standard
* max 10,000 params/region/account 
* 4kb max size
* Param policies not available
* Free
* No storage cost

Advanced
* max 100,000 params/region/account 
* 8KN max size
* param policies available
* Charges apply
* 0.05 per param/month

### Param polices
TTL (expiration/forced update date)
Event bridge will notify

Notifications on updates, delete, etc.

## SSM Patch Manager and Maintenance Windows
AUtomate the process of patching instances
os, apps and security updates
supports EC2 and on prem
linux, mac, windows
Patch on demand or scheduled using Maintenance windows

scan and generate report, then act as needed

Patch Baseline
* defines which packages should/nt be installed on instances
* Ability to create custom baselines
* packages can be auto approved
* by default, install only critical patches and security patches
* Pre-defined - managed by AWS and cannot be modded
* Custom Baseline available

Patch Group
* Associate set of instance w/ specific patch baseline
* i.e. create patch group for different envs
* INstances defined with tag key "Patch Group" 
* instance can only be in 1 patch group
* Patch group can only be registered with 1 patch baseline


Maintenance is schedule to perform actions on instances
* schedule
* duration
* set of register instances
* set of registered tasks

## SSM Session Manager
way to start shell on EC2 or on prem w/o SSH
Access through consult, CLIs or SDK
DO not need SSH access, bastion host or ssh keys

Different from EC2 Instance Connect

Mac/linux/windows
Log connections and commands
session logged to s3 and cloudwatch

IAM permissions to controller who can access session manger and which instances

Use tags to restrict access

Can restrict commands that can be run.

## Default Host Management Configuration
when enabled, automatically config EC2 as managed instance w/o EC2 instance profile

Instance Identity Role - type of IAM role with no permissions
* only IDs instance to AWS service

Needs IMDSVv2 and SSM Agent installed

Automatically enabled Session Manager, patch manager and inventory
Keeps SSM agent update to date
Must be enabled on per region basis

SSM > Fleet Manager > Configure DHMC
Click enabled and create role using recommended setting
When instance is launched
* enabled metadata, V2 only

## SSM Hybrid Environments
on-prem, IoT, edge devices, VMs, even on other clouds
mi- instances that are hybrid

install SSM w/ activation Code

can automation using API Gateway, lambda nd SSM
* On prem Get to APIG , pass payload to Lambda, get activation code, return both to APIG, return to server script to install and activate

can limit number of instance per activation

## SSM with IoT Greengrass
Can manager IoT Greengres using SSM
Install Agent manually or deployed as pre-buuilt software module
Must add token exchange role
supports all SSM capabilities
Same use cases

## SSM Automation Use cases
* reduce costs by stopping starting resources
* or downsize

Build Golden AMI (Image builder is better for this though)

AWS Config rule violation automatic remediation

## SSM Compliance
scan fleet for patch compliance and config inconsistencies 
Display data
Can sync data to s3 using Resource Data Sync to analyze Athena and QuickSight
Can collect and aggregate data from multiple accounts and regions

can be sent into Security Hub

## SSM Ops Center
View investigate and remediate issues in 1 place
Security, Performance issues, failures, etc. 
Reduce mean time to resolve issues

OpsItems
* operation issue or interruption that needs investigation
* i.e. event, resource, AWS Config, CloudTrail Logs, EventBridge... 
* Provide runbook to resolve
Supports both on prem and EC2 

Event bride trigger lambda to look for orphaned snapshots > Create OpsItem if over 45 days old, SSM Document triggered to clean up.


## SSM & VPC Endpoints
how to access private subnet EC2
Set VPC endpoint for SSM
Set VPC endpoint on SSM Session Manager
Set VPC Endpoint for KMS, S3, CloudWatch if using them
