# ECS
Elastic container service
Launch docker containers on AWS

Launching a task on an ECS cluster

EC2 launch type - you must provision and maintain the infra
Each instance myst run ECS agent
AWS takes care of starting and stopping containers

## Fargate
AWS manages the infra
runs takes based on the CPU/Ram you need

To scale increase number of tasks

### IAM roles
EC2 Instance Profile (EC2 launch type only) 
* Used by ECS agent
* make API calls to ECS, sends container logs to CW logs
* Pull Docker images from ECR
* Reference sensitive data in SM or SSM Param store

ECS Task role
* Allow each task may have a specific role
* Define role in task definition

### Load Balancer Integrations
expose task as HTTP/s endpoint

ALB supports most use cases
NLB for only high performance use cases or w/ Private Link
Classic available, but avoid, cannot link to fargate

### Data persistance
mount EFS file system on the ECS task
Works on both EC2 and Fargate launch types
Fargate + EFS = Serverless

Persistent Multi AZ shared storage for containers
S3 cannot be mounted as a files system

### Autoscaling
AWS Application Auto Scaling
* ECS service Average CPU Utilization
* ECS Service Average Memory Utilization
* ALB Request count per target

Target Tracking - scale based on target value for a specific CW metric
Step Scaling - scale based on a specific CloudWatch Alarm
Scheduled SCaling - scale based on a specified date time

ECS service auto scaling is not the same as EC2 auto scaling
Fargate is much easier to set up

EC2 Launch type - ASG
* Create ASG like usually
    * trigger like normal, CPU, RAM, etc.
* ECS Cluster Capacity Provider
    * Used auto provision an scale infra
    * Paired with ASG
    * scale to add EC2 as needed


## ECS Solution Architectures

### ECS Tasks backed by Event Bridge
Uses upload obj to S3
S3 triggers events bridge to run ECS tasks based on object
Send result to DB

### Event bridge schedule
Rule to trigger task every 1 hours
for  batch processing

### SQS queue
Messages sent to SQS queue
ECS polling queue for message, more messages more task as ASG up

### Intercept stopped tasks using EventBridge
Task in ECS stops, trigger EventBridge, sends SNS to admin

## Logging
container logs can be sent to CloudWatch log
turn on awslogs log driver
Configure logConfiguration Param in the task definition

For Fargate launch type
* task execution role needs permission to send logs
* supports awslogs, splunk, awsfirelens

for EC2 launch type
* Prevents log from taking up disk space on EC2 instance
* used CLoudWatch unified Agent and ECS container agent
Enable logging using ECS_AVAILABLE_LOGGING_DRIVERS in /etc/ecs/ecs.config

Container must also have permissins

Can also use Sidecar container

