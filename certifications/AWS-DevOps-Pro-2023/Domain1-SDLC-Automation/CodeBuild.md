# Code Build

## Overview
Stored in the source code
buildspec.yaml at the root of the repo
Output logs stored in s3 & cloudWatch logs 
CloudWatch Metrics to monitor stats 
event bridge to detect failed builds and trigger notification
CloudWatch alarms to notify if you need thresholds for failures 

Build projects can be defined in CodePipeline or CodeBuild

### Supported  Env
Prebuilt images:
java, ruby, python, go, node.js. android, .net core php

extend docker image for other env

### How it works
buildspec.yaml lives in repo
CodeBuild runs instructions in the buildspec.yaml
will pull image

cache files in S3

Logs in s3 and cloudWatch
Artifacts in s3 bucket

```
version
env:
    variables plaintext 
    parameter-store - SSM Param store
    secret-manager - secret manager
phases
    install - install deps 
    pre_build - final commands before built
    build - build commands
    post_build 
artifacts - what files to upload to s3
cache - usually deps
```

### Local build
run using a CodeBuild agent on machine with image 

### Inside VPC
by default launched outside VPC
can specify if needed
 * VPC, Subnets, Security Groups

 Used to access specific resources, ie RDS, Elasticache, etc
integration testing, data query, etc

# Hands On
define source provider
define source image, managed or custom

buildspec file name optional

Integrate CodeBuild with CodePipeline
add stage > Add action group > action provider: CodeBuild

## Advanced
Environment variables
default env vars - defined and provided by AWS
custom
    - static - defined at build time
    - dynamic - pull value from SSM or SM

### Security
service role can access services

in transit and at rest data encryptions
artifacts are encrypted

### Build Badges
dynamically generated
available at the branch level

### Triggers 
codeCommit event via eventBridge
CodeCommit event eventBridge > lambda > Build 
webhook from GitHub

### Validate pull request
validate PR before merge is enabled

lambda function to update PR with comment to trigger test build

lambda updte PR with comment allowing merge

### Test reports 
Can get test reports
details about tests
can use any test framework
Cucumber, TestNG, Visual TRX

add Report Group name in buildspec.yaml