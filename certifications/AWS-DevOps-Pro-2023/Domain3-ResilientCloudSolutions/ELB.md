# ELB

## ALB 

### Listener rules
processed in order
default is last
Supported actions
* forward, redirect, fixed response
Rule conditions
* host-headers
* http-request-method
* path-pattern
* source-ip
* http-header
* query-string

can have multiple targets for single rule
Control with weights
i.e. Blue/green
Allows to control amount of traffic distro to app

### Dual Stack networking
allow client to use IPv4 or v6
supports both ALB and NLB

IPv4 and IPv6 targets need to be in separate groups
Dual stack ensure compatibility
If no IPv6 - ELB will convert request to IPv4

AZ must be added/Enabled for instances in that AZ 

### PrivateLink Integration
If connecting 2 VPC which have the same subnet range (10.0.0.0/16) 
Instead of VPC peering

expose service via NLB
VPC Interface endpoint of VPC A connect to NLB in other VPC 
