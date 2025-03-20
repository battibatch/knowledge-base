# AWS Config

helps with auditing and recoding compliance f AWS resources
Record configs over time

Questions that can be solved by AWS Config
* Is there unrestricted ssh access to my security groups? 
* Do buckets have public Access
* How has my ALB config changed over time? 

Alerts on SNS for any changes
Enabled per-region
can aggregate accross accounts

Store config data into S3, analyze w/Athena

## Config Rules
* AWS managed rules (over 75) 
* Custom rules (defined in Lambda) 
    * i.e. eval if EVS disk is gp2
    * i.e. eval if ec2 is t2.micro
* Rules can be evaluated/triggered
    * for each config change
    * and/or at regular time intervals

AWS Config Rules do not prevent actions from happening, No deny

Config is an overview of configuration

Pricing - 0.003 per config item per region; 0.001 per config rule evaluation per region

View compliance of resource over time
view config of resources of resource over time
view CloudTrail API calls of a resource over time

## Remediation
Automation remediation of non-compliant using SSM Automation docs

Use AWS managed automation docs or create custom Automation Docs
* Tip: create custom automation docs that invoke lambda function

Can set Remediation retries if the resource is still non-compliant after auto remediation

## Notification
EventBridge when resources are non-compliant
Can go directly to SNS
* can filter notification in SNS

Not real time, but within minutes

# Configuration Recorder
stores the config of AWS resources as configuration Items

Configuration Item is a point in time view of various attributes of an AWS resources. Created whenever AWS Config detects a change to the resource (e.g. attributes, relationships, config, events...) 

Custom Config Recorder to record only the resource types that you specify.

Must be create before AWS COnfig can track resources (created automatically when you enabled AWS COnfig using CLI or Console) 

Stack set is a good way to enable this in all AWS account
use an SCO to prevent users from disabling AWS COnfig

## Aggregators
AWS Aggregators is created in 1 account and pulls rules AWS COnfig into other accounts. 

If AWS Orgs are used, do not need individual Authorization

Rules are create in each individual AWS Account

StackSet to deploy rules to all AWS Accounts

## Conformance Pack
Collection of config rules and remediation rules to deploy all at once

Packs are created in YAML, similar to CFN

Deploy to an AWS account, regions or across an AWS ORg
pre-built sample packs or create own Custom Conformance Packs

Can include custom config rules which are backed by Lambda function to evaluate whether your resources are compliant with Config rule

Can pass inputs via Params

Can designate a delegate Admin to deploy conformance packs to Your AWS Org 

"The CFN of AWS Config Rules"

We can define all the rules in YAML

### Automate with CICD
Check in, CBuild build and deploy via CFN and Stack sets

## Organization Rules
Rules to manage across all accounts withing an org

Scope is only the org
Evaluate rules defined at the org level only
1 rule only
Compliance level - managed at the org level 

Higher level then Conformance Packs which can do account level

