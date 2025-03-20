# EKS

## Overview
Elastic k8s service
Launch managed k8s on AWS

ECS not open source, k8s is cloud agnostic
EKS is to allow standardization

EC2 mode or Fargate for serverless

### Node types
Manage node groups - AWS Creates and managed nodes
Supports on demand and Spot

Self Manged node
Create nodes yourself and add them to EKS
can still use AWS EKS optimized AMI
Supports on demand and spot

Fargate
No maintenance required

### Data volumes
Container storage interface (CSI) 

EBS (not available for Fargate)
EFS 
FSx for Lustre
FSx for NetApp ONTAP

### logging
Control plan logging
audit and diag logs to CloudWatch
Control plan Logs Types:
* API server (Api)
* audit
* authenticator
* controllerManager
* scheduler

Can select which to send

Nodes and Container logging is different
Install CloudWatch agent for metrics
Install FluentBit or Fluentd to send logs to CW

container logs stored on node directory on /var/log/container

Once in CloudWatch, use CW Container Insights to get dashboard for nodes, pods, tasks, services
