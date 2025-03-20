# AWS Control Tower
Easy way to set up and govern secure and compliant multi-account AWS Env based on best practices

Benefits: 
* Automate the set up of your environment in a few clicks
* Automate ongoing policy management using guardrails
* detect policy violations
* monitor compliance through an interactive dashboard

AWS Control Tower runs on top of AWS Orgs
* automatically sets up AWS Orgs ot organize accounts and implement SCPs

## Account Factory
automates account provisioning
Enables you to create pre-approved baselines and config options for AWS accounts
uses AWS Service Catalog to provision new AWS Accounts

use case: create a new account that automatically is configured through On prem AD

When a new account is create, there is an event in EventBridge to enable automation

Can migrate AWS Account to Control tower
1. Move into unregister OU
2. Create IAM Role for root OU to access
3. Create config from management account
4. Evaluate the compliance results of COnformance packs and how it affects the new account and Org 
5. If god, remove config and move to new config

### Account factory customizations
Auto custommize resrouces in new and existing account create through account factory

Custom Blueprint
* CFN template that define resources and config you want to customize in the account
* Define in the form of a Service Catalog Product
* Stored in the Hub account, which stores all Custom Blueprints
    * recommended not to use the Management Account
* Predefined blueprints created by AWS partners are available

Only 1 blueprint can be deploy to an Account



## Guardrails
provides ongoing governance for Control Tower env (AWS Accounts) 
Preventative - using SCPs
Detective - using AWS COnfig

### Levels of Guardrails
Mandatory
* auto enabled and enforced by AWS COntrol Tower

Strongly recommended
* Based on AWS best practices

Elective
* Common used by enterprise

# Landing Zone
Auto provision, secure, and compliant multi account env based on AWS best practices

consists of:
* AWS Org
* Account factory
* OUs
* SCP
* IAM ID center
* Guardrails
* AWS Config

# Customizations for Control Tower
GitOps style customizations framework created by AWS

helps you add customizations to the landing zone using custom CFN templates and SCPs

Automatically deploy resources to new AWS Accounts created using Account Factory

CfCT is different from Account Factory Customization blueprint

CFNs and SCP stored in repo or S3 -> CodeBuild -> Invoke Step function to make sure stacksets are deployed and SCPs deployed to managed account

when a new account is added, EventBridge triggered -> SQS -> Lambda, trigger CodeBuild 

# AWS Config Integration
Control tower uses AWS COnfig to implement Detective Guardrails
Control Tower Automatically enables AWS Config in enabled regions

AWS Config Configuration History and snapshots delivered to S3 bucket in centralized log archive account 

Control Tower uses CFN StackSets to create resources like Config Aggregator, CLoudTrail and centralized logging

Config COnformance Packs - enables you to create packages of COnfig and Compliance Rules and Remediations for easy deployment at scale
* Can deploy to individual account or entire AWS orgs

Account created -> EventBridge -> SQS -> Lambda add account to StackSet -> Deploy Conformance Packs to new account

# Account Factory for Terraform
* Provision and customize AWS account in Control Tower through Terraform using a deployment pipeline
* Create an "Account request Terraform file" which triggers AFT workflow for account provisioning
* Offers built in feature options (disabled by default) 
    * AWS CloudTrail Data events - create trail and enables CT Data events
    * Enable AWS Enterprise SUpport Plan
    * Delete default AWS Default VPC in all regions
* TF module maintained by AWS 
* Works with OSS, Ent, Cloud TF

