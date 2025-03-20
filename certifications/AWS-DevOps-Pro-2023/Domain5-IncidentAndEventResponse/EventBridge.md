# EventBridge (Formerly CloudWatch Events)

schedule cron jobs (scripts, lambdas, etc.) 
Event pattern - event rules to react to a service doing something

Sits in the middle of architecture
all services' events are sources
all services are destinations
* Compute
    * Lambda, AWS Batch, ECS Task
* Integration
    * SQS, SNS, Kineses Data Stream
* orchestration
    * Step Functions, CPipeline, CBuild
* Maintenance
    * SSM, EC2 Actions

can filter events
EventBridge creates a JSON with all info on the event.

Default Event Bus

Also has partner event bus
* Zendesk, Datadog
They send their events into the EventBridge too
Can create a custom event bus

Event buses can be cross account

Events can be archived for retention
Can replay archived events
* debugging, troubleshooting

## Schema Registry
EventBridge can analyze the events in you bus and infer the schema

Allows you to generate code for your app that will know in advance how data is structured in the event bus

Schemas can be version

## Resource based policies
Manage permissions for specific Event bus
example: allow/deny events from accounts/regions
use case: aggregate all events from AWS Org in a single account or region

can use sandbox to test events

