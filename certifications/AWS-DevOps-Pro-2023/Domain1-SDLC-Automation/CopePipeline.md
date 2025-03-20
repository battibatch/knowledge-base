# CodePipeline
## Overview
visual workflow to orchestration CI/CD

sources - codeCommit, ECR, S3, BB, GH 
build - CodeBuild, Jenkins, CloudBees, TeamsCity
Test - CodeBuild, AWS Device Far,, 3rd party tools
Deploy - CodeDeploy, Beanstalk, CFN, ECS, S3.... 
Invoke - Lambda, Step Functions 

Each stage can have sequential or parallel actions 
Manual approvals can be defined at any stage

## Artifacts
Each pipeline can create artifacts
stored in S3 bucket and passed on the next stage

output of CCommit is input to CBuild
output of CBuild is input to CDeploy
all outputs stored in S3

## Troublehshooting
Use CloudWatch Events (EventBridge)
    * Create events for failed pipelines
    * canceled stages
    * get email for

Information in Console if fails stage or pipelines stops
If pipeline cannot perform an action, check IAM permissions

Use CloudTrail to audit API Calls

## Hands On
Create stage, Create Input
Use CloudWatch events to track events

create build stage

Create deploy stage (You cannot skip this step)

Add a stage
add action group into stage
ie manual approval

you can add multiple action groups in each stage
you can have sequential or parallel action groups or both

## Extras 
Events vs webhooks polling
events is preferred for CodePipeline, could be any events
Events can be defined in GitHub too using CodeStart Connection

Webhooks require HTTP endpoints

Polling - regular checks

## Actions Types Contraints for artifacts
* Owner
    * AWS for AWS Service
    * 3rd Party for GitHub, Alexa Skills Kit
    * Custom for things like Jenkins

Action Type
    * Source - CodeCommit, GH, etc
    * Build - CodeBuild, Jenkins, etc
    * Test - CodeBuild
    * Approval
    * Invoke
    * Deploy - 

Manual Approval stage
Owner is AWS, Action is Manual
User must have permissions to getPipeline and approval

## Cloudformation Integration
Deploy action to deploy AWS resources
include Lambda functions using CDK or SAM
Works with stackSets to deploy cross region 
Can configure multiple settings, params, roles, etc. 

Deploy infra, test then delete test infra; then deploy to prd

Action modes: 
* Create or Replace a changeSet, Execute a changeSet
* Create or update a stack, delete a stack, replace a failed stack

Template Parameters Overrides
* specifiy a JSON object to override param values
retrieves the param value from CodePipeline Input artifact
All params must be present in the template
Static - use template cong file (recommended) 
Dynamic to use params overrides
ie you can override params as run time if needed 

## Best practices
use parallel deployment groups in CodeBuild to deploy same artifact to many envs
RunOrder to run CodeBuilds in parallel
Deploy to PreProd before prod

Any events in CodePipeline are in EventBridge)

Run API from CodePipeline, use Invoke for Lambda to call rest API 
No way for CodePipeline to do it directly

Invoke can do Step Functions now too

### Multi region
* actions can be in different regions
!!Artifact stores must be defined in each region where you have actions!!
service roles needs enough access

CodePipeline handles copying artifacts from region to region

