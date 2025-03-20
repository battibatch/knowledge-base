# EC2 Image Build
## Overview

Automate create VMs or Container images
Automate create/maintain/validate/test AMI
can run on schedule
Free, only pay for AMIs
can post cross account

CodePipeline
stage 1- Build Code
    CodeCommit and CodeBuild
stage 2 - Build AMI
    CFN w/ Image builder
stage 3 - Rollout
    CFN rolling updates to ASGs using AMIs

## Extras
Use AWS Resource Access Manager (RAM) to share images recipes and components across AWS account to org

Tacking Latest AMIs
SSM Parameter store to keep track of the latest ami for that image
images builder > SNS > Lambda > Update SSM param
CFN reference SSM param
