# ISC2 CISSP: Security Governance and Compliance

## Due Care and Due Diligence

* Form the basis information security governance
* Focus on taking reasonable steps to protect assets and ensuring that those steps meet legal and ethical standards

Due care/diligence are legal standards

Due Care is the reasonable effort made by an org to prevent harm to individuals and assets; prudent person rule
* About the responsibility of an org to protect its stakeholders from foreseeable risks
* involves implementing appropriate security measures that align with industry standards and best practices
* Due Care == Do protect

Due Diligence is activities used to ensure compliance with due care
* research requirement and ensure due care obligations remain compliant with organization requirements
* Ongoing assessment and evaluations of security practices to id gaps and make improvements
    * install and walk away is bad
* Due Diligence == Do maintain

Flow
1. Requirement
2. Due Diligence: research the requirement
3. Due Care: a compliant implementation that meets requirement
4. Due Diligence: maintain implementation

## Important Laws and Regulations

FTC ACT - protect against unfair competition, and protection of PII
GLBA - Gramm-leach-Bliley Act - Financial data must remain private 
ECPA - Electronic communication privacy - defined collection comms
HIPAA - Health insurance portability and accountability
HITECH - Health info tech for economic and clinical health
GINA - genetic information non-disclosure act
SOX Sarbanes-Oxley Act protects investors
PCI DSS Payment Card Industry data security standard
* requirements
    * install and maintain firewall
    * Do not use vendor supplied defaults for passwords or config
    * protect stored cardholder data
    * encryption at rest and in transit
    * protect against malware (endpoint)
    * dev secure systems and applications
    * restrict access to data by need-to-know
    * ID and auth access
    * restrict physical access
    * Track and monitor all access
    * Regular test security systems
    * Main a policy that address info sec for all 

GDPR increase scope of previous data privacy regulations
* Controller - determines the purpose and means of the process of data
    * Why and how
* Processor - process personal data on behalf of the controller
* Rights
    * Access to any collected info
    * Rectification
    * Erasure (be forgotten) 
    * Restriction of processing and how data is used
    * Data Portability to reuse data
    * object to any further processing

## Licensing and Property Rights

Intellectual property Rights
* inheritable rights of ownership
* protect it 

Patent - inventions
Trademark - company/logo/slogan
Copyright - song, art, etc.
Trade Secret - in place before patent
Licensing - permission to use a product
* EULA

Corporate espionage - beyond ethical
World Intellectual Property Organization - tech assistance for IP
World Trad organization - structured legal process for IP protections

## Export and Import Controls

controls == laws
prevent exposure to unauthz countries

Comply with EX/IM 
* Controls
* Regulations - telco and cyber

Wassenaar Arrangement
* Export controls for conventional arms and dual use goods
* 42 countries
* 9 categories
    * Cat 5, Part1: Telecommunications
    * Cat 5, Part2: "Information security"
    * Focuses on telcom, crypto, and cyber weapons
`   * rest are basically military

Transborder data flow
* Compliance w/ legal
* Localization - processed in country

## Cybercrime and Data Breaches

Cybercrime - criminal act involves computing device
Data Breach - info accessed w/o authz

Cyber Laws
* CFAA: Computer Fraud and ABuse Act
NIIPA
FISMA: Federal in sec modernization

Criminal Actors
* Attacker
* Hackers 
* Script kiddies - low skill pre config'ed tools
* Insider threats
* state actors

Types of attacks
* Active
* passive - attack w/o affecting ops
* Zero day - no know patch 

Intentional Disruption Crimes
* intentional disruption - restriction of availability
DDoS - bots to attempt disruptions
DNS Poisoning: Map legitimate names to malicious IP address

Intentions Destruction
* Terrorism - destroy data center
* Sanitization - erase everything

Hacktivism - politically, ideologically or spiritually motivated
* Website defacement
* Doxxing - public release of sensitive info 

## Determine Compliance Requirements

Need to determine proper level of protection and privacy
Need to prove compliance
Must apply controls, safeguards as required
Failure may result in legal/civil etc

## Security Compliance Artifacts

Policy - define high-level mandate to comply with requirements
Standards - set of requirement to comply with policy

Policies
* Org policy - define goals, responsibilites, ets
* Issue-specific/function
* System specific

Other Docs
* Procedures - highly details instructions on how to implement a standards
* Baseline - specific requirements necessary to comply with a standard
* Guideline - Best practice recommendation to implement a standard or baseline

HIPPA -> Privacy policy -> Standard -> Procedures/Guidelines

Doc Development
* policies unlikely to change
* should be build with a consistent template
* use trusted resource for doc templates
* review docs regularly
* define requirements for updating docs in the docs
* create a process for exceptions 