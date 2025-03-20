# CloudWatch Alarms
alarms trigger notifications for any metrics
various options (sampling, %, max, min, etc.)
Alarms States
* OK
* INSUFFICIENT_DATA
* ALARM

Period
* length of time in s to eval the metric
* high resolution custom metrics (10s,30s, multiples of 60s)

Alarm Targets
* Stop/terminate/reboot or recover EC2 instance
* Trigger ASG action
* SNS notification (from which you can do pretty much anything)

## Composite Alarms
CW Alarms are on a single metric
Composite alarms monitor states of multiple alarms
AND and OR condition
Helpful to reduce alarm noise

if CPU AND Network ar high, ignore
if CPU high and network low, alarm (CPU should not be high) 

## EC2 instance recovery
Status check
* instance status - check EC2 VM
* System status - check underlying hardware
Recovery - Same private, public, elasticIP, metadata, placement group

## Good to know
Create alarm based on CloudWatch log metric filter

Test alarms and notification, set alarm state using CLI `aws cloudwatch set-alarm-state ...`

