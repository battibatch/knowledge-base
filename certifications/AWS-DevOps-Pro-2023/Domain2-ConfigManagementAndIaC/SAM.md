# Serverless Application Model

framework to developer and deploy serverless apps
YAML
generate complex CFN from simple SAM YAML 
Supports anything from CFN
Only 2 commands to deploy
SAM can use CodeDeploy to deploy lambda functions
SAM can run lambda, API gateway, DynamoDB

## Recipe

Transform head indicates it is a SAM template
`Transform: 'AWS::Serverless-2016-10-31`

write code
`AWS::Serverless::Function` API, SimpleTable

Package and deploy
aws sam package
aws sam deploy

## Deep Dive
SAM template and app code
1. aws sam build - creates CFN 
2. aws same package - uploads to s3
3. aws sam deploy - deploys CFN

## CLI Debugging
SAM CLI + Toolkits provides a lambda like execution env locally

IDE plugin enables SAM to do it locally

## SAM and CodeDeploy
natively uses CodeDeploy to update Lambda function 
Traffic shifting feature
pre and post hooks to validate deployment
Easy automated rollback using CloudWatch Alarms

AutoPublishAlias
* detects when new code is being deployed
* Creates and publishes an updated version with latest code 
* points alias to updated version

DeploymentPreference
* canary, linear, AllAtOnce

Alarms
* what alarms can trigger rollback 

Hooks
* running pre/post traffic shifting lambda functions to test deployment

