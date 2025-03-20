# AppConfig

## Overview 
Configure, valuate and deploy dynamic configurations

have config outside of the app
Deploy Dynamic config changes to app independent of code deployments
Do not need to restart app
Feature Flags, app tuning, allow/block listing

Use on EC2 Lambda, ECS, EKS, etc

Gradually deploy config changes and rollback if issues occur
Sources: 
* Param store
* SSM Docs
* S3

Polls for changes
CloudWatch alarm triggers on failure to rollback

Validate with JSON schema and/or Lambda function