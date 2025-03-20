# AWS Trusted Advisor
No need to install anything
high level AWS account assessment

Analyze AWS account on 5 catagories
* Cost Optimization
* Performance
* Security
* Fault Tolerance
* Service limits

Support Plans

7 Core check on a basic and developer support plan
* S3 bucket permissions
* Security Groups - specific ports unrestricted
* IAM Use - 1 IAM user minimum
* MFA On Root account
* EBS Public Snapshots
* RDS Public Snapshots
* Service limits

Full Checks on business and Enterprise Support plan
* Full check available on 5 catagories
* Ability to set CW Alarms when reaching limits
* Programmatic access using AWS Support API

## Trusted Advisor - Architectures

Monitoring
Events happen with things happen, i.e. low CPU utilizations
Use EventBridge to send SNS to notify or Lambda to investigate/take action

Monitor service quotas
not all quotas supported, but for those
Use EventBridge to send SNS to notify or Lambda to investigate/take action
