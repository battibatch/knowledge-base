```
Threat modeling is a structured process for identifying and assessing potential security threats and vulnerabilities in a software application, system, or product. It is an essential practice in cybersecurity and is used to proactively identify security weaknesses and make informed decisions about how to mitigate or eliminate them.

The process of threat modeling typically involves the following steps:

Define the System: Clearly define the boundaries and components of the system or application being analyzed. This includes understanding the data flows, interactions, and dependencies.

Identify Assets: Identify and classify the assets, data, and resources that the system processes or stores. This includes sensitive data like user information, financial records, or intellectual property.

Identify Threats: Brainstorm and list potential threats and vulnerabilities that could affect the system. This can include common threats like unauthorized access, data breaches, denial-of-service attacks, and more.

Assess Risks: Analyze each identified threat to determine its potential impact and likelihood. Risk assessment helps prioritize threats based on their severity.

Mitigate Threats: Develop mitigation strategies and countermeasures to address the identified threats. These measures may involve changes to the system's architecture, coding practices, access controls, or security policies.

Review and Iterate: Continuously review and update the threat model as the system evolves or new threats emerge. Threat modeling is an ongoing process that should be integrated into the software development lifecycle.

There are various methodologies and tools available for threat modeling, including STRIDE (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege), DREAD (Damage, Reproducibility, Exploitability, Affected Users, Discoverability), and others. Organizations often choose the approach that best suits their specific needs and resources.

Overall, threat modeling is a proactive and systematic approach to improving the security of software systems by identifying and addressing potential risks before they can be exploited by malicious actors.
```

# Threat Modeling in DevSecOps

## Objectives

* Identify Threats
  * Threat Sources
    * accidents
    * malicious actors
    * system failures
    * environmental factors.

* Assess Risks:
  * evaluate impact and probability of each threat
    * factors:
      * potential damage
      * ease it could be exploited.
      * etc...

* Prioritize Mitigations

* Inform Design Decisions

* Support Compliance:
  * i.e. GDPR, HIPPA, ISO 27001

## Methodologies

* STRIDE (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege), 
* DREAD (Damage, Reproducibility, Exploitability, Affected Users, Discoverability)
* PASTA (Process for Attack Simulation and Threat Analysis)
* Trike
* VAST (Visual, Agile, and Simple Threat modeling)
* Quantitative Threat Modeling Method
  * This hybrid method combines attack trees, STRIDE, and CVSS methods. It addresses several pressing issues with threat modeling for cyber-physical systems that contain complex interdependencies in their components. The first step is building components attack trees for the STRIDE categories. These trees illustrate the dependencies in the attack categories and low-level component attributes. Then the CVSS method is applied, calculating the scores for all the tree's components.

## Process

* Define the Scope:
  * understand system
  * data flows
  * interactions
  * dependencies

* Identify Assets:
  * discovery of assets
  * classify assets, data resources in the scope
  * i.e. intellectual property, PII, financial records, etc.

* Identify Threats:
  * unauthorized access
  * data breaches
  * Denial of service

* Assess Risks

* Mitigate Threats:
  * measures may involve changes to the system's architecture, coding practices, access controls, or security policies.

* Review and Iterate:
  * integrated into the software development lifecycle.

# Thread Model to CloudBees CI installed on K8s using Quantitative Thread Modeling Method

Of course it depends on your specific installation, but lets look at the reference architecture.

## 1. Define the Scope

This scope will be for a base installation with no customer agents or pipelines.

### Systems

* Infrastructure - AWS
  * VPC
  * Subnets
  * Route Tables
  * Additional Networking
  * Node Groups
  * Security Groups
  * Roles/Policies
  * Certificates
  * DNS
  * Load Balancer
  * EKS Cluster
* CloudBees CI
  * Helm Charts
  * Operation Center Image
  * Managed Controller Images
  * Agent Images
  * Credentials
  * Plugins
  * Pipelines
  * CloudBees Shared Library
  * Customer Agent Images
* Asset storage
* Source Code Management
* Testing Tools

### Data Flows

* SCM -> CloudBees CI -> Pipeline -> ?
* Shared library
* Custom Agent Images

# References

https://www.simplilearn.com/what-is-threat-modeling-article#:~:text=Threat%20modeling%20is%20a%20method,cyber%2Dattacks%20against%20the%20system.

