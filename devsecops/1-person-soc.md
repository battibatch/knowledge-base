# One Person SOC

This is a bad idea, but given the position, it feels like it is required. So lets work through it.

## Requirements
- Basically a zero budget exercise. There will be money for compute, but that is basically it.
- Single pane of glass view into as many systems/tools as possible.

## Required Systems

(In priority order from the internet). Sub-bullets are the "leading" open source solution

1. Security Information and Event Center (SIEM)
    - Wazuh
2. Intrusion {Detection,Prevention} System (IDS/IPS)
    - Network based:
        - Snort, Zeek, Suricata
    - Host based:
        - OSSEC
3. Endpoint Detection and Response (EDR) 
    - Wazuh
4. Security Orchestration, Automation, and Response (SOAR; can I do this w/ Jenkins?)
    - n8n
    - The Hive (maybe)
5. Threat Intelligence Platform (TIP)
    - MISP
    - Harpoon - OSINT automation
    - GOSINT
6. Vulnerability Management Systems (VMS)
    - 
7. Network Traffic Analysis (NTA)
8. User and entity behavior analytics (UEBA)

### SOAR vs SIEM

SIEM as the Eyes: SIEM gathers, analyzes, and alerts on security data, giving teams visibility into potential threats. Think of SIEM as your “radar,” scanning for unusual activities and flagging them for review.

SOAR as the Brain and Hands: SOAR steps in to handle those alerts. By automating responses, orchestrating workflows across tools, and even running incident playbooks, SOAR reduces manual work for your team. SOAR doesn’t just detect but acts, managing threats more quickly and consistently. This can mean blocking a malicious IP, containing a suspicious endpoint, or sending immediate alerts to stakeholders—all without waiting for human intervention.




## References
https://wazuh.com/
https://swimlane.com/blog/security-operations-center-tools/
https://secureframe.com/blog/security-operations-center
https://research.aimultiple.com/open-source-soar/