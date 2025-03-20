# Cloud Development Kit

Define cloud infra using programming language
supersedes CFN
Create high level components called constructs
Code compiled in to CFN template

Can deploy infra and app runtime code together
Great for lambda function, docker EC2 and EKS

use CDK CLI to synth into CDK

## SAM vs CDK
SAM is serverless focused
declarative
Best with Lambda

CDK all AWS services
in programming language

Can use SAM CLI to test CDK apps
synth CDK to CFN to SAM invoke locally

