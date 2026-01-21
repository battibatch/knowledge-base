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



## Chapter 05: Native Cloud Security Controls and Building Blocks


## Chapter 06: Examine Regulatory Compliance and Adoption Path for Cloud


## Chapter 07: Creating and Enforcing Effective Security Policies


## Chapter 08: Leveraging Cloud-based Security Solutions for SECaaS


## Chapter 09: Cloud Security Recommendations and Best Practices


## Chapter 10: 


