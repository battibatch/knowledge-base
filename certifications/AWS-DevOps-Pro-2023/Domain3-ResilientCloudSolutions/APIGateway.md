# API Gateway
Allow us to create REST APi that are public

can proxy request to Lambda
more than just a proxy

Support for webSocket
Can handle API version
Can handle multiple envs
handle security
can handle API keys
request throttle
Swagger/OpenAPI import to quickly define APIs
can generate SDK and API specification
can cache API responses

## Integrations
Lambda
* invoke lambda, Easy to expose  REST API backed by Lambda

HTTO 
* expose endpoint to backend 
* internal API on prem, ALB
* Use to rate limiting, auth, API keys, cache, etc.

AWS
* Expose any AWS API though the API gateway
* Start step function workflow, post a message to SQS
* Add auth, deploy publicly

Example using w/ Kinesis
We want users to send data to Kinesis without giving access to Kinesis
Uses go through API gateway first

## Endpoint Types
Edge-Optimized (default) 
* requests are routed through CF Edge locations (Improve latency) 

Regional)
* for clients in the same region
* can manual create CF distro and have more control of CF 

Private
* Only access within VPC using VPC ENI

## Security
Can ID users through:
* IAM roles (good for intneral apps)
* Cognito (External users)
* Custom authorizer (own logic)

Customer Domain name w/ACM and Route53
* If Edge optimized, must be in US-east-1
* If regional, cert and gateway myst be in same region

Default timeout is 10 mins

Creates Resource policy automatically with integrated 

## Stages and Deployment
Making changes are not effected until a deployment is performed
Changes are deployed to stages (dev,test,prod) or v1,v2,v3, etc 

version are needed if data format is different

Can have variables specific to stage
Used to change config w/o changing code
can ben used in Lambda ARN, HTTP Endpoint, Param map templates

Use cases
* Config HTTP endpoints to your stages
* Pass config params to Lambda through mapping

Stage variable passed to "context" object
Format ${stageVariable.varName} 

Example:
Create stage var to indicate which Lambda alias to point to
* Stage var is in the ARN of the Lambda function defined.

When you make a API gateway stage, define the stage var their; stage is part of the path, not the var.

## Open API Spec
Common way to define REST API
API Definition is code
* method
* method request
* integration Request
* method Response
* plus AWS extension for API gateway and setup every single option

Can export API as OpenAPI spec
OpenAPI Spec can be written as yaml or JSON
Using OpenAPI we can generate SDK for our application

REST API request validation
* Have API gateway verify the request meets the correct schema
* reduces the unnecessary calls to backend

URI, query string, headers are include and non-blank
request payload matches schema

Setup OpenAPI definition file.
include x-amazon-apigateway-request-validators stanza

## Caching API responses
reduce number of calls made to backend
check cache first, if miss - go to backend
300s default
60m max

can have cache per method
cache can be encrypted
.5 to 237GB

cache is expensive, so likely not in dev/test

Able to invalidate entire cache immediately
Clients can invalidate with header w/ proper IAM permissions
* If you  do not impose a policy for InvalidateCache, any user can invalidate cache

## Canary Deployments
This is b/g w/ lambda and API Gateway

You can promote the deployment when ready

## Monitoring Logging
CloudWatch Logs
* contains info about request and response body
* enable at stage level
* enable log level (ERROR, DEBUG, INFO)
* Can override on a per API basis
* Can include sensitive things in the logs!!

X-Ray
* enables tracing to get extra info about request in API gateway 
* Xray, API gateway and AWS Lambda give full picture

CloudWatch Metrics
* Metrics by stage
* Can enable detailed metrics
* CacheHitCount & CacheMissCount - efficiency of the cache
* Count - total number of API requests
* IntegrationLatency - how long the backend is taking to respond to a request from API Gateway
* Latency - time from client request to API Gateway and repose to client, include integrationLatency + what API Gateway
* 4XXError (client side)
* 5XXError server side

Throttling 
* account limit
    * 10k request across all APIs
    * Soft limit
    * 429 returned when throttled
* Can set stage and Method limits
* Can define Usage Plans per customer

NOTE: 1 api can cause problems for all APIs to be throttled, so limit them accordingly.

Errors:
* 400 bad request
* 403 Access denied
* 429 quota exceeded
* 502 bad gateway
* 503 Service unavailable
* 504 timeout