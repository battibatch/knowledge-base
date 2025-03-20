# Auto Scaling Groups

## Dynamic Scaling policies
Types of Dynamic
* target tracking scaling
    * most simple
    * I want the average ASG CPU to stay around 40%
* Simple / Step Scaling
    * when CloudWatch alarm is triggered (CPU > 70%), add 2 units
    * when CloudWatch alarm is triggered (CPU < 30%), remove 1 units
    * more involved set up defining the alarms and steps
* Scheduled actions
    * anticipate scaling based on usage patterns
    * schedule scale out events
* Predictive scaling
    * ASG forecast load and schedule scaling ahead
    * historical load analyzed
    ML powered

Good metrics to scale on
Depends on app, but: 
* CPUUtilization - average CPU
* RequestCountPerTarget - number of requests per EC2 instances and stable
* Average network In / Out - if app is network bound
* Custom metrics

Scaling Cool down
* After scaling activity happens you are in cooldown peiod
* No ASG up or down can happen in cool down period
* Allows metrics to stabilize
* Advice - use ready to use AMI to reduce config time to ensure request faster and reduce cool down period

## Life Cycle Hooks
By default, as soon as instance is launched, it is InService
you can perform some steps before instance goes in service (pending State) 
* Define a script to run on instances as they start
You can perform some actions before the instance is terminated
* pause instance before they are terminated for troubleshooting

Integrations with EventBridge, SNS, and SQS

## Event Notifications
ASG supports sending SNS notification for the following events
* autoscaling:EC2_INSTANCE_LAUNCH
* autoscaling:EC2_INSTANCE_LAUNCH_ERROR
* autoscaling:EC2_INSTANCE_TERMINATE
* autoscaling:EC2_INSTANCE_TERMINATE_ERROR

EventBridge is better
Lot more events that can be matches
* launching success/not
* terminating success/not
* instance refresh checkpoint reached
* refresh started, succeeded, failed, cancelled

Can filter base on type of even

## Termiation Policies
Decide which instances are terminated during a scale in

default: 
1. select AZ with most instances
2. select instance with oldest launch template/configuration
3. if they LT/LC are all the same, terminate instance closest to next billing hour

AllocateStrategy
* terminate instances to align remaining with allocationStrategy
    * lowest price, lower priority, etcs.

OldestLaunchTemplate
* terminate instances w/ oldest launch template

OldestLaunchConfig
* terminate instances w/ oldest launch config

ClosestToNextBillingHour
* terminate instances closest to billing hours

NewestInstance
* testing new launch template, so delete newest instances

OldestInstance
* upgrading size, not launch template, so delete old sized 

Can choose 1 or more and specify the order

Can define custom backed by Lambda 

## Warm Pools
Scale out latency problem
* when asg scales out, instance need to launch as fast as possible
* it can take serval mins before they are ready to serve traffic
* historically
    * overprovision to absorb unexpected demand
    * golden AMI to reduce boot time. 

Warm pools to solve
pool of pre-init instances to reduce latency

pool number = (max instances in ASG - min instances in ASG)
in scale out, instance goes from pool to ASG

Warm pool size settings
* min number of pool size setting (always in pool) 
* Max prepared cap (default is max of ASG) 

Warm pool instance state - what stat to keep instances
* running - fastest, but $$$
* stopped hibernated, slightly slower, but cheaper

Warm pools do not contribute to ASG metrics

Cost effective to have Warm pools
* if we over provision m5.large = ~$70 + EBS / month
* Warm pool stopped instance, only pay for EBS = ~$1 / month/10GB

### Stopped or Hibernated?
Running is fastest, but most expensive
Stopped is slowest, but cheapest
Hibernated is middle in between

If running, may as well use over provisioned

### Instance Reuse policy
Can set up this policy tp return it to the warm pool instead of teminating

### Warmed pools - Life cycle hooks
important to use
Warmed:Pending:wait - editable
Warmed:Pending:proceed
Warmed:pending:{running,stopped,hibernated}


