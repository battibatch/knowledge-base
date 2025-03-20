# AWS GuardDuty
Intelligent threat discovery to protect AWS Account
Uses ML, anomaly detection, 3rd party data
One click to enable
* 30 day trial
* No software to install
Input data includes
* CloudTrail Events logs - unusual API Calls, unauthorized deployments
    * CT management events - create VPC subnet, create trail... 
    * CT S3 Data events - get object, list object, delete object
* VPC Flow logs - unusual traffic, unusual IP address
* DNS logs - compromised EC2 instances sending encoded data within DNS queries
* Optional Features - EKS audit logs, RDS and AUrora, lambda, s3 data events

Findings are sent to eventBridge

Can also set up EventBridge rules
* Can target AWS Lambda or SNS
Can protect against CryptoCurrency attacks - has a dedicated "Finding" for it

## Multi account strategy
* can managed multi accounts
* Associate member accounts with admin account 
    * through AWS Org
    * Send invite directly
* Admin account can: 
    * add remove member accounts
    * manage GuardDuty withing the associated member accounts
    * Manage findings, suppression rules, trusted IP lists, threat lists

* In AWS org, you can specify a member account as the org's delegated admin for GuardDuty
    * does not have to be admin of Org

## Automated responses
using EventBridge

all findings send to eventBridge, take action from there
SNS, SQS, Lambda

all events are posted in both Admin account and account where finding was found

## Findings
Pull independent streams of data directly from CloudTrail logs, VPC Logs, or EKS logs

Each finding has a severity value between 0.1 and 8+ (High, Medium, Low) 

### Naming convention
ThreatPurpose:ResourceType/ThreatFamilyName.DetectionMechanism!Artifact
* ThreatPurpose - primary purpose of the thread (backdoor, Crypto) 
* ResourceTypeAffected - which AWS resource is the target (EC2, EKS)
* ThreatFamily - describes the potential malicious activity (NetworkPortUnusual)
* DetectionMechanism - method of finding the finding (TCP) 
* Artifact - resource that is used in the malicious activity (DNS)

you can generate same findings

### Finding Types
* EC2
    * unauth access, Crypto
* IAM 
    * Stealth


## Architecture
GuardDuty detects SSH brute force in VPC flow logs
Sends EventBridge event
Event triggers email to admin and Lambda to update WAF and NACL of EC2

GuardDuty detects backdoor in EC2
Sends EventBridge event
event triggers Step functions to check and if needed block traffic via Network Firewall

## Trusted and Threat IP lists
public IPs only
Trusted IPS
* list of IPs /CIDRs that you trust - no findings against them

Threat IP 
* list of known malicious IPs and CIDR
* GuardDuty generated findings based on these lists
* Can be 3rd party supplied or create custom

In multi account Guard DUty Setup, only the admin can manage these lists.

## CFN Integration 
can enabled using CFN template
* if it already enabled, stack will fail

Solve with customer resource Lambda to conditional enable if not
then deploy custom resource using stack set to get all accounts