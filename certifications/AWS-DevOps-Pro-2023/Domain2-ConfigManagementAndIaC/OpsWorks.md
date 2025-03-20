# OpsWorks

Requires Chef

## OpsWorks Stacks
Using Chef cook books to manage apps
Way to migrate to use Chef on the cloud

3 layers
* Load Balancing
    * amazon specific
* Application Server
    * Provision using a cookbook
* RDS
    * amazon specific

Define Chef version, and where the Chef Cookbooks are

Stack Settings

a layer is a blueprint for a set of EC2 instances
Enable Auto healing

## Instances
Instances are managed by OpsWorks
24/7 Instances
Time based instances
* auto start and stop based on a schedule
Load Based instances
* auto start base on the CPU/Mem load of the app
* need to enable auto scaling and configure

Each instance is 1 server
Ops works needs to know max number of servers
Not as flexible as ASG

## Apps
code stored in a repo that you want to install on an app server instance

Deployments to deploy apps
Monitoring, 

You can add layers
i.e. ECS RDS, etc. 
Can have as many layers as you want.

Full integrated solution if using Check

## Lifecycle Events
Each layer has a set of 5 lifecycle events
each event has a set of recipes specific to the layer
When event occurs, OpsWorks runs the appropriate recipe
You can create custom recipes and assign to lifecycle event

1. Setup
* Occurs after an instance has finished booting

2. Configure
* occurs on ALL of stacks instances when one of the following ocurs: 
    * Instance enters or leave online state
    * associate/disassociate Elastic IP from 1 instance
    * attach/detach LB to a layer
* make sure instances know about each other
* JSON doc sent to all instances

3. Deploy
* occurs when app is deployed
* Setup includes deploy

4. Undeploy
* occurs when delete an app or run Undeploy command to remove app from set of app server instances

5. Shutdown
* Run when you shutdown an instance, but before it actually terminated


Setup, Deploy, Undeploy, Shutdown are instance specific

Configure runs on all instances

## CloudWatch Event Integration
Autohealing enabled
All instances have opsworks agent
If agent has not communicated to OpsWorks, unhealthy

* For EBS backed - instance stopped/started

Create CloudWatch rule for CW Event to sent email, SNS, etc. to notify/trigger

