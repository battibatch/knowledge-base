# NAT Gateway
How an EC2 instance w/ private IP can access public internets
AWS managed NAT
higher bandwidth, HA, No Admin
pay per hour for usage and bandwidth
NATGW is create in a specific AZ, uses an Elastic IP 
can't be user by EC2 instances in the same subnet (only from other subnets)

requires an IGW (Private Subnet -> NATGW -> internet gateway) 
5Gbs of bandwidth with ASG to 100 Gbps
No security groups to manage required

## HA
resilient only within a single AZ
Create multiple NATGW in multiple AZ for HA

No Cross AZ fail over needed

