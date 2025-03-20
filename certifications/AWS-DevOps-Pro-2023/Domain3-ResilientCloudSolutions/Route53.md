# Route 53

## Overview
HA, scalable, fully managed and Authoritative DNS
    * Authoritative means the customer can update hte DNS records
Also a Domain registrar
Can check health of resources
only services with 100% availability
53  is reference to the traditional DNS port

## Records
define how you want to route traffic
Each record contains:
* Domain name
* Tyoe
* Vaue
* Routing policy
* TTL
Supported record types
* A
    * map hostname to IPv4
* AAAA
    * map hostname to IPv6
* CNAME
    * Map hostname to another hostname
    * Target hostname may have A record
    * cannot create CNAME for Zone Apex (top node of DNS namespace)
* NS
    * Nameserver for the hosted zone
* Advanced other types
    * CAA, DS, MX, NAPTR, PTR, SOA, TXT, SPF, SRV

## Hosted Zones
A container for records that define how to route traffic to a domain and it subdomains

Public hosted Zones - records on how to route traffic on the internet
Private hosted Zones - records that specify how you route traffic within one or more VPCs

.50 per hosted zone

## Routing policies - weighted
Control % of requests that go to each resources
Assign each record a weight
traffic = (weight of record/sum of all weights for all records)

dns records must have the same name and type
can be associated with Health checks
Use cases:
* Load balancing between regions
* testing new app version
* etc.

weight of 0 on a record, stops sending traffic
if all records are 0, then equal traffic

## Routing policies - latency-based
redirect to a resource that has the least latency clos to us
helpful when latency is priority
latency is based on traffic between users and AWS regions
can be associated with health checks (has failover capability)

Have to manually add region to the record

## Routing policies - failover
Active/Passive
Requires health check on primary, option on secondary
1 primary and 1 secondary.
When primary fails health check, it will fail over to secondary

fails back over to primary when it becomes healthy (?)

