# Aplication Auto Scaling

service to manage ASG
Monitors apps and auto adjusts capacity to maintain steady performance

setup scaling for multiple resources across multiple services from a single place

point to app, select services and resources to scale
No need to set up alarms

Search for resources using CFN stack tags or EC2 ASG

Build Scaling Plans 

Supports target tracking, step and scheduled scaling polices

Services supported
* AppStream 2.0:fleets
* Aurora: replicas
* Comprehend (doc classification and entity recognizer) 
* DDB
* ECS
* Elasticache: replication groups
* EMR: Clusters 
* KeySpaces: tables
* Lambda: provisioned concurrency
* MSK: broker storage
* Neptune: Clusters
* SageMake: Endpoint variants
* Spot Fleet: request
