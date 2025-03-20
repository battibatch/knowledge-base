# CloudFormation 

## Overview
IaC
Code will deploy create update infra 
Declarative
will create in the right order

Benefits
* no resource manual create
* Version control
* Infra code review

Free, pay for resources
productivity
automation generate diagrams for templates

Separation of concern
VPC stack
network stack
app stack

Upload templates to S3
Cannot edit template, reupload changes
stacks id'ed via name

When stack is deleted, everything is deleted

To deploy
Manual
* Designer
Automated
* Yaml file and aws CLI

Template Components
* Resources - required
* params
* Mappings
* Outputs
* Conditionals
* Metadata

Template Helpers
1. References
2. Functions

## Resources
Cannot have dynamic resources

Not all AWS Services are supported, but you can write a Lambda Custom resource to work around it. 

## Parameters
When to use a param?
* will this changes in the future? 
If yes, make it a param

Types: 
String, Number, Comma delimited List, list, AWS Param

NoEcho for secrets

!Ref for parameter and other elements in the CFN

Pseudo Params
* AccountID
* Notification ARM
* NoValue
* Region
* StackID
* StackName

## Mappings
fixed vars in CFN template
Handy between different envs, regions, amis
hard code in template

RegionMap to map region to AMI_ID

Mapping vs Params
use mapping when you know all possible choices in advance

!FindInMap [mapName, TopLevelKey, SecondLevelKey]

## Outputs
optional

outputs can be imported into other stacks
can link CFN templates
can view outputs
ie Network stack output VPC and subnets to be used lated
Good for cross stack

You cannot delete a stack w/ outputs being referenced

must be exported so it can be imported

!ImportValue

## Conditions
Used to controller creation of resources and outputs

Common ones are: 
* Environments
region
parameters

createProdResources: !Equals [ !Ref EnvType, prod ]
and, equals, if, not, or

Add condition to a resource

## Intrinsic Functions
Ref - reference params, resources
GetAtt - Get attribute of resources
FindInMap - find in a map
ImportValue - Import an output from a previous stack
Join - join values with a delimiter
Sub - substitute values ${Var}
Conditional functions

## Rollbacks
If stack creation fails
* default is roll back, everything is deleted

If stack update fails
* default is roll back to previous working state

## Drift
Not protected against manual changes
not all resources supported

Stack Actions > Detect Drift

## Stack Policies
By default, all update actions are allowed on all resources

Stack Policy defined what update actions are allowed on specific resources

i.e. Deny Update:* on Prod Database

Prevent unintentional updates to resources
once enabled, all resources are protected
explicit allow required to update

## Nested Stacks
stacks in stacks
allow you to isolate repeated patterns, common components in separate stacks and call from other stacks

best practice to use
always update root stack 

## ChangeSets
When you update a stack, but want to verify if it will update the way you want

It will define how things are changed, add/create/delete

Execute change set when ready. Not a QA tool

## Deletion Policy
To control what happenes when the CFN template is deletes

retain
* preserve / backup in case of delete
* specify on any resource or nested stack

Snapshot
* delete, but snapshot first
* EBS 
* Elasticache cluster or replication group
* RDS instance, cluster
* redshift cluster 

Delete - default
* DBCluster is snapshot

S3 must be empty to delete

## Termination Protection
Protects a stack from being delete
must turn it off first

## User Data in EC2 for CFN
(UserData is running a script on EC2 at start up)
pass entire script through the base64 functions 

/var/log/cloud-init-output.log

if script is successful or not, stack will complete by default

## CFN Init
What if I have a large instance to create
What if I want to evolve the state of the EC2 instance without terminating it and recreating a new one? 
Make EC2 user data more readable
How to signal that user data script complete successfully? 

CFN helper scripts
4 python scripts
cfn-init - retrieve and interpret the resource metadata, installing packages, creating files ans starting services

cfn-signal - wrapper to signal with a Creation Policy or WaitCondition, enabling synchronize other resources in the stack with the app being ready

cfn-get-metadata - make it easy to retrieve either all metadata defined for a resource or path to a specific key or subtree of the resources metadata

cfn-hup - daemon to check for updates to metadata and execute custom hooks when changes are detected

init > signal > hup

Init has config: 
* packages - install pre packaged apps and components
* groups - define user groups 
* Users - define users and add to groups
* sources - download files and archives, place in EC2
* files - create files declarative 
* commands -  run commands
* services - launch list of sysvinit

Can have multiple init
configSets
invoke configSets from ec2 User data

## CFN-INIT
helps make complex ec2 user data easier
CFN -> Launch EC2, run cfn-init -> retrieve init data from CFN
logs goe to /var/log/cfn-init.log

cfn-init doesn't tell CFN to wait or if successful

## CFN-SIGNAL
cfn-signal runs right after cfn-init 
tells CFN is resource creation was successful

define a wait condition to block the template unit is receives a signal from cfn-signal

attach a CreationPolicy to the EC2 and ASG
define a count > 1 to wait
waits to hear 1 signal from cfn-signal and decide on how to move forward 

cfn-init/cfn-signal scripts run in UserData section to look at the specific resource that does all the things

## CFN-HUP
cfn-hup used to look at EC2 and look for metadata changes 
every 15 mins

/et/cfn/cfn-hup.conf and /etc/cfn/hooks.d/cfn-auto-reloader.conf

rerun if there is a config change detected


May want to disable Rollback on Failure to enable debugging

## Continue Rolling back an Update
UPDATE_ROLLBACK_FAILED
failed to rollback after failing to update.

Solution
* fix errors manually outside of CFN, then continue rollback
* skip resources that cannot rollback

cannot update stack in this state

## Custom Resources
enable custom provision logic in template
Custom::MyCustomResourceTypeName
2 types: 
* SNS backed custom resource
* Lambda backed customer resource

use case:
* on prem
* new AWS resource w/o CF
* run logic, i.e. lambda to clean out s3 bucket

ServiceToken for Lambda Arn or SNS ARN

Request/Response
can pass some data back into CFN

### Lambda Custom Resource
invoked everytime the create/update/delete against stack is run
could have lambda function to run API call to create a resource
or do anything you want it to

### SNS Custom Resource
out of scope for the exam

## Service Role

IAM roles that alloes CFN to do all the work on your behalf
by default, it uses a temp session from user creds

Use Cases: 
* least privledge
* do not give user permissions to be able create all the resources

## SSM Parameter Type
Reference params in System Manager in param store
specify param key as the value 
CFN fetchs the latest value of param
Validation done on SSM key, not value
SUpported ParamTypes
* AWS::SSM::Parameter::Name
* AWS::SSM::Parameter::Value<String>
* AWS::SSM::Parameter::Value<List<string>>
* AWS::SSM::Parameter::Value<List<commaDelimitedList>>>
* AWS::SSM::Parameter::Value<List<AWS Specific param>>
* AWS::SSM::Parameter::Value<AWS Specific param>

/aws is a public parameter hosted by AWS


## Dynamic References
reference things from within the template, not just params
i.e. get a secret from SM

Supports
ssm
ssm-secure
sm
up to 60 dynamic references in a template
{{resolve:service-name:reference-key:version}}

does not support public SSM parameters (only in params)

{{resolve:ssm:reference-key:version}}
{{resolve:ssm-secure:reference-key:version}}
{{resolve:secretsmanager:reference-key:version}}

Not all resources are supported

Secrets never stored in CFN

## StackSets
deploy the same template cross account and cross region in a single run

When you update the stack set, all stacks are update
Can be applied in all accounts

Create stackSet
Update StackSet - cannot pick and choose, all stacks
Delete Stacks
* can delete a single stack
* can disconnect stack from stackset
* delete all stacks from stackSet
Delete StackSets
* must delete all stacks first

Deployment options
* Deployment order - order of regions
* Max concurrent accounts
* Failure tolerance - i.e. if a region/account fails in the set
* region Concurrency - default is sequential
* Retain stacks

Permission Model
* self managed permissions
* Service Managed Permissions

Ability to auto deploy stack instance to new AWS account in org

Can delegate stackSets admin to member accounts in AWS orgs
TrustedAccess is required for this

CHANGES MADE TO A STACK, NOT STACKSET, VIA CFN IS NOT CONSIDERED DRIFT; ONLY CHANGES OUT SIDE OF CFN

