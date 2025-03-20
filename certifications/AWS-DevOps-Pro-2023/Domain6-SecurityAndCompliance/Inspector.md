# Amazon Inspector

Automated security Assessments

* EC2 
    * leveraging SSM agent
    * Analyze against unintended network accessibility
    * Analyze the running OS against known vulnerability

* Images in ECR
    * Assessment of container images as they are pushed

* Lambda functions
    * ID softwares vulnerabilities in function code and packages dependencies 
    Assessment of functions as they are deployed

* Reporting and Integrations w/ AWS Security Hub
* Send findings to EventBridge

Only evaluates running EC2, images on ECR and Lambda function

Continuous scanning of the infra, only when needed

Package vulnerabilities (All) - DB of CVE
Network reachability (EC2)

A Risk score is associated with all vulnerabilities for prioritization

Need to enable role permissions

EC2 instance requires: 
* SSM Agent
* EC2 instance must be managed by SSM
    * IAM Role or default management config
* Outbound 443 to SSM Endpoint

