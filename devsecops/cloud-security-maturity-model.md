# Cloud Security Maturity Model

Looks like there are 3? SANS, IANS, and WIX. The IANS CSMM seems to be the most prevalent, and is reference by Cloud Security Alliance (CSA) and their members.

## SANS 8 Domains of the Cloud Security Maturity Model
https://www.youtube.com/playlist?list=PLtgaAEEmVe6DDYiWgsT9QbgQKVHGvzIZv

### 1. Data Protection

### 2. IAM

### 3. Security Governance

### 4. Security Assurance

### 5. Application and Workload Protection

### 6. Detection and Response

### 7. Infrastructure Architecture and Protection

### 8. Workforce Readiness


## IANS Levels of Cloud Security Maturity

It is pretty clear the focus of this model is automation
https://www.iansresearch.com/resources/cloud-security-maturity-model


### Level 1: No Automation

* Manually managing policies/procedures, mostly through console.
* Architecture resembles traditional infrastructure  (e.g. low use of serverless and high reliance on network security controls)
* IAM mostly ad-hoc with little to no federation

### Level 2: Simple Automation

* Basic provisioning
* Some FaaS/Lambda
* Project specific, not coordinated across accounts
* Initial use of IaC, but security is not consistently engaged in design/review
* Federation on some accounts, but limited use of MFA; especially w/ CLI

### Level 3: Manually Executed Scripts

* Initial automation typically scripted through FaaS/Lambda
* Automation still executed manually
* Some 3rd party tooling (e.g. orchestration w/ other tools); federation on most accounts with widespread MFA, but stull inconsistent.
* Security starting to review, design, and promote use of IaC

### Level 4: Guardrails

* Automation expands into guardrails across multiple accounts
* Expanding library of automation
* Big shift from manual creation and execution to running automation off a centralized platform with centralized management and reporting
* Consistent use of federation adn MFA, w/ some gaps

### Level 5 Automation Everywhere

* Centrally managed
* covering all of the domains
* Integrated into IaC environment
* Built-in to the stack w/ provisioning automation
* Federation and MFA working consistently across toolchains


## Wix Cloud Security Maturity Framework
Mostly a sales pitch for their platform, but there are a couple fo nuggets in here. These Bullets come from their slides presented at SANS 2025 Spring Cyber Solutions webinar.

### Gain Visibility

* 100% code-to code visibility into any repo, pipeline, and cloud
* Normalize across clouds and architectures to simplify security.
* Map app and infrastructure ownership and business context.

### Reduce Critical Risk

* 360deg understanding of workload, cloud, data, SDLC, and compliance risks
* Prioritize attack paths that are validated with runtime context
* Clear context, guidance and 1-click PR fixes to reach 0 critical risks fast

### Democratize Security

* Automation hi-fi alerts to the right owners for proactive remediation
* Ingrain security into the development process through self-service
* Monitor and report on security KPIs and trends by business units
* Check list:
    * Answer the "so what"
    * Visualize for clarity
    * Support by evidence
    * Clear remediation description
    * provided remediation code
    * Automation ready
    * Code context for cloud-natives

### Develop Securely

* Give devs cloud context directly in IDEs and code for secure by design
* Enforce code-to-cloud guardrails to prevent issues from ever being deployed
* Protect the software supply chain with SBOM and risk assessment of OSS and 3rd party components

### Transform Cloud SecOps

* Comprehensive EDR purpose-built for cloud-native threats
* Intuitive investigation timeline and AskAI copilot speeds analysis and upskills analysts
* Runtime blocking and 1-click containment playbooks to speed MTTR


