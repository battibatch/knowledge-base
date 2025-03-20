# AWS Firewall Manager
Manage all firewall rules in all accounts in AWS Org

Set Security Policy - common set of security rules
* WAF rules
* AWS SHield Rules
* Security Groups
* AWS Network Firewall (VPC level) 
* Route 53 resolver DNS Firewall 
* Polices are create at the region level

Rules are applied to new resources as they are create across all and future accounts in AWS Org 
(good for compliance) 

WAF, Firewall manger and shield are used together for comprehensive protection

* Define WebACL rules in WAF
* for granular protection of resources WAF alone is the correct choice
* If you want WAF across accounts, accelerate WAF Conf, automation the protection of new resources, used Firewall manager w/ WAF
* Shield advanced add additional feature on top of WAF, such as dedicated support from Shield Response Team and advanced reporting 
* DDos protection w/ Shield advanced

## Security Policies
Policy Type: AWS WAF
* enforce applying WebACLs to all ALB in all accounts in the AWS Org
* ID resource that do not comply, but do not remediate: Create webACL in each account w/o applying to resources
* Auto remediated to any noncompliant resources - auto apply webACLs to existing resources

Policy Type: Shield Advanced
* Enforce Shield Adv protections in all account in AWS org
* Option to view only compliance to assess impact or auto remediate

SG Policy Type: Common SGs
* enfore apply SGs to all EC2 instances in all AWS orgs

SG Policy type: Auditing of security group policy
* check and manage SG rules in all accounts in AWS Org

SG Policy Type: Usage audit SG policy
* monitor unused and redundant SGs and optionally perform cleanup

Policy Type: Network Firewall
* Central manage network firewall in all accounts in AWS org 
* Distributed - create and maintain firewall endpoint in each VPC
* Centralized - create and maintain firewall endpoint in centralized VPC
* Import existing Firewalls - using resources Sets

Policy Type: R53 Resolver DNS Firewall
* manage association between resolver DNS firewall rule group and VPC in all accounts in AWS Org