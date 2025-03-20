# AWS WAF
protects web apps at layer 7 
Deploy at ALB (localized rules) 
Deploy on API Gateway (running at the region or edge level) 
deploy on CLoudFront (rules globally on edge locations) 
* used to front other solutions CLB, EC2, Customer origins, s3 websites
Deploy on AppSync (protect GraphQL APIs) 
WAF is not DDoS protection
* Shield is DDoS
Defined web ACL 
* rules can include ip addresses, HTTP Headers, HTTP body, or URI strings 
* protect from common attacks - SQL injections, XSS
* Size constraints
* Geo Match
* Rate based rules to count occurrence of events

Rule action
* Counts
* Allow 
* Block
* CAPTCHA

## Managed rules
* over 190 rules
* ready to used but AWS and AWS Marketplace

Baseline Rule Group - general for common threats
* AWSManagedRUlesCommonRuleSet
* AWSManagedRUlesAdminProtectionRuleSet

Use Case specific Rules
* AWSManagedRUlesSQLiRuleSet
* AWSManagedRUlesWindowsRuleSet
* AWSManagedRUlesPHPRuleSet 
* AWSManagedRUlesWordPressRuleSet

IP Reputation Rule groups
* AWSManagedRUlesAmazonIpReputationList
* AWSManagedRUlesAnonymousIpList

Bot Controller managed Rule group
* Block and manage request from Bots


## Logging
can send logs to CW logs - 5MB max 
S3 - 5 min intervals
Firehose - limited by Firehose quotas
* then send to other places

## SA: Enhance CloudFront Security
CF -> ALB -> ASG
Want to prevent traffic that hits ALB directly from getting to APP

Solution
* add WAF in front of CF
* Add WAF in front of ALB
* WAF require custom header Origin Verify on ALB's WAF
* Origin secret comes from CF

can auto update secret auto w/ SSM and Lambda to up date secret on CF and ALB's WAF
