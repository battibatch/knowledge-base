# Cloud Security Handbook for Architects 
Mishra, Ashish
March 2023


## Chapter 01: Evolution of Cloud Computing and Impact on Security

History

NIST defines cloud as 
* On-demand
* Broad network access
* Resource Pooling
* Quick elasticity
* Metered Service

Cloud Types
* Public - AWS
* Private exclusive data center owned by a business
* Hybrid
* Multi-cloud

Service Model
* SaaS
* PaaS 
* IaaS

Justifications
* agility
* selections
* Collaboration
* low cost

Analyzing Risk and reduce risk w/
* Certifications ans standards
* data protections
* Access control
* BC and DR
* Encryption
* Audits and Alerts
* File Sharing

Privacy Concerns
* data privacy
* data loss
* Geographical data storage
* multi tenant 
* transparency problems
* Hypervisors
* Admin problems

Shadow IT is a real problem

Shared Responsibility is important


## Chapter 02: Understanding the Core Principles of Cloud Security and its Importance

Least privilege
Defense in depth
Assess risk w/ asset focused strategy
Segregation of duties
Fail-safe
* default deny in event of failure
Economy of mechanism - Keep it simple
Complete risk mediation, not matter state (init, shutdown, etc.) 
Open Design
* suggesting that releasing cloud securiy designs are better if opened; but this is only true if they are well reviewed
Least common mechanism
* the need for many users share a minimum number os secure measures
Weakest link
Making use of current landscape
* separate resources to avoid sprawl in a breach
Architectural considerations will be influenced by: 
* regulatory requirements
* compliance
* security management
Controls
* access controls
* service levels

Information classification
* Public, Sensitive, Private, Confidential
* Criteria: Value, age, useful life, personal association

Procedures for classifying data
1. determine the admin and custodian of data
2. outline standards for for categorizing
3, Sort info according to the owner
4. Specify any exceptions
5. Specify the checks used for each classification level
6. Describe the declassification procedures
7. Develop a program to educate the company

Use IAM
Certificates
passwords/phrases
MFA

After Identity, is access control based in ID

Best practices
* Protect endpoints
* IAM
* create and enforce Guidelines
* Secure data at rest and in motion
* Intrusion detection and prevention
* audits and pen testing


## Chapter 03: Cloud landscape Assessment and Choosing a Solution for your Enterprise

define org cloud security roles and responsibilities
understand shared service model
Understand team structure, roles and responsibilities
Manage the risk in the cloud
* Third party/vendor risk is big right now  
* Use a framework to manage risk
* review SLAs
* Monitor and manage

An approach to a Cloud Security Assessment
* goal
    * determine vulnerabilities
    * check network for indicators of compromise
    * describe methods for to reduce exposure
* 7 areas of assessment focus
    * Interviews and documentation review
    * IAM
    * segmentation and firewalls
    * Incident management
    * Cloud Storage
    * security settings of advanced service options
    * Workload security
* 4 elements of assessment for each area
    * Doc review and interviews
    * Automated and manual testing
    * Remediation suggestions
    * presentation
* Things to keep in mind during an assessment
    * sketch out current surroundings
    * assess your present environment
    * Visualize potential environment
    * Effectiveness of the assessment
    * price point
* Assessment reporting
    * human and machine readable
    * Ideally continuous assessment reporting
    * CVSS 
    * rating should match the orgs rating 

Details on how to choose a cloud provider


Decide on external, internal or both assessments
Pen testing


## Chapter 04: Cloud Architecture and Implementation Frameworks

Cloud Security Building blocks
* Layer by layer (Defense in depth) 
* Centralized management of components
* redundancy in case of failures
* design for elasticity/scalability
* Pick the best deployment strategy
* Create alert and notification plan
* Centralization, standardization, Automation

Pillars of the cloud security framework
* System design
* Operational Excellence (observability, automation, scalability, devops maturity)
* Security compliance and privacy
* Reputation
* cost management
* Performance Management

5 phases of adoption
1. foundational layer
2. the perimeter layer
3. Dat protection layer
4. visibility layer
5. cloud solution layer

Cloud Security Principles
* Identification
* security COntrols
* Security by design
* Compliance
* perimeter Security
* Segmentation
* IAM
* Data encryption
* Automation
* Logging and monitoring
* Visibility
* Flexible design

Design systems to be Autonomic
* self healing
* Self managing
* self protection

Evaluate the Cloud Security Maturity Model (CSMM) 

Integrate Security as early as possible in the SDLC

5 pillars of zero trust 
* identity
* devices
* networks
* applications
* data 

Approaches to cloud migration
* Rehost (lift and shift) 
* re-architecuture the application
* re-platform (use cloud native)
* Rebuild
* Replace

Safe by design
use automation 
SAST/DAST
HTTPS for everything

4 Cs model of native cloud security
* Code, Container, Cluster, Cloud

Run as non-root 


## Chapter 05: Native Cloud Security Controls and Building Blocks

Most of this chapter is out data discussion of cloud specific services

Asset management and protection
Classification of data
Resource tags 
Encryption (at reast, in flight)
Key management
cryptographic eraser
MFA

Interactive application scanning test (IAST) 

Specific networking building blocks
* ALlow/deny lists
* DMZ
* VPC
* Software defined networks
* Proxies
* NAT
* network segmentation
* Security groups
* Bastion
* VPN
* Web app firewall
* IDS and IPS
* Egress traffic filtering

Look at the logs 
1. capture logs in 1 place
2. examine logs 
3. Correlate logs with data
4. Enable alerts 


## Chapter 06: Examine Regulatory Compliance and Adoption Path for Cloud

Regulatory compliance is the discipline and process of ensuring that a company follows the laws enforced by governing bodies in their geography or the rules required by voluntarily adopted industry standards.

HIPPA, PCI DSS, FERPA, GDPR

CLoud Compliance
* Cloud Security Alliance
* FedRAMP
* SOX
* ISO 27001
* NIST Cybersecurity framework
* CIS COntrols

Governance Risk and COmpliance (GRC)

Programmatic approach to meet compliance
1. Risk assessment
2. Key Concepts
3. Monitoring
4. Reporting
repeat for continuous improvement and risk assess new project/paradigm

Do Continuous monitoring

Have DR/BC plan

Cloud Security Assessment Checklist
1. POlicies and Procedures
2. Access Controls
3. Network
4. Backup and data recovery
5. Security patches and updates
6. monitoring and logging
7. Data encryption


## Chapter 07: Creating and Enforcing Effective Security Policies

Cloud Security Policy template
* objective
* scope
* Information Category - type of info covered by this policy
* Responsibility and ownership 
* Use of cloud computing in a secure manner
* Risk Analysis
* Security measures
* Recovering from an incident 
* Awareness
* Enforcement
* Reference docs


## Chapter 08: Leveraging Cloud-based Security Solutions for SECaaS

SECaaS is using an external entity to handle and manage your security
Risks
* Not in direct control of security activities
    * lead to inadequate visibility
* data leaking is possible 
* Vendor lock-in 


Examples
* DLP
* BC/DR
* Email security 
* Antivirus
* Cloud Access Security Brokers (CASB)
* Auditing
* Network security 
* SIEM 
* Web security
* Vulnerability scanning
* Encryption

SECaaS Framework
1. Risk assessment
2. Discovery
3. Integration
4. MOnitoring
repeat

Best practices
* Periodic assessment
* Data guidelines
* security guidelines
* Alerting and reporting


## Chapter 09: Cloud Security Recommendations and Best Practices


## Chapter 10: 


