# AWS Organizations
OU - organiation unit

Root OU has management account

Then you can have other OU, dev prod, etc
each with there own member accounts. 

You can have OUs in OUs; HR and Finance OUs in the Prod OU

# OrganizationAccountAccessRole
Used when Management account needs to access member account

full admin
Used to perform admin task in member accounts
Could be assumed by IAM users in management Account

auto added to new member account create with AWS org
if manually inviting an account needs role added

# Multi-Account Strategies
accounts per...
* per department
* per cost center
* per dev/test/prod
* based on regulatory restrictions
* better resource isolation
* separate per-account service limits
* isolated account for logging

Multi-account vs one account multi VPC

Tagging standards for Billing purposed
CloudTrail on all accounts, send logs to central S3 account
CloudWatch logs to central logging account
Strategy to create account for security

OU examples
* Business
* Envs
* Project

2 feature modes
* Consolidated billing
    * all accounts billed in one account, single payment
    * Pricing Benefits from aggregated use (Volume discounts) 

* All Features (default)
    * include consolidated and SCP
    * Invited accounts must approve enabling all features
    * Ability to apply SCP to prevent member accounts from leaving the org
    * Can't switch back to consolidated billing features only


Reserved instances
* For billing purposes, consolidated billing feature of AWS orgs treats all the accounts in the org as 1 account
* All accounts in org can receive the hourly cost benefit of reserved instances that are purchased by any other account
* Payer account of an Org can turn off Reserved instance (RI) and Savings plan discount sharing for any account in the org
    * this means RI and savings plans are not shared in that account
* To share, both accounts must have sharing turned on


Moving account
* must remove from old Orgs
* then send invite from new org to account
* Accept account


# Service Control Polices
defined allow or block list for IAM actions
applied at OU or account level
does not apply to management account

SCP is applied to all users and roles in the account including the root user

SCP does not affect service linked roles
* Service linked roles enabled other AWS services to integrate with Orgs and Can't be restricted by SCP

SCP must have an explicit Allow (Does not allow anything by default) 

Use cases:
* Restrict access to certain services
* Enforce PCI Compliance by disabling services

