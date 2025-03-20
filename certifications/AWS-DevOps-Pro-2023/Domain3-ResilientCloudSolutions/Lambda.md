# Lambda

## Versions and Aliases
usually start w/$LATEST

publish immutable versions of lambda functions
Each version is independent, own ARN
Each version can be accessed

Alias give users stable endpoint and point to different versions
i.e. dev, test, prod alias
Alias is mutable as it changes versions

Aliases enable Canary deployments by assigning weights

Enable stable configs of trigger and destination

Alias cannot reference another alias

## Environment Vars
key value pairs
adjust function w/o updating functions
available to code

can be encrypted

## Concurrency
limit up to 1k concurrent executions

can limit this number (reserved concurrency)
Each invocation over the reserved concurrency will throttle
throttle behavior: 
* if synchronous, return 429 throttle error
* if async, auto retry and then go to DLQ
    * retry for 6 hours
    * retry interval increases 1s - 5 min

If you need more than 1k, open support ticket

1k limit applies to all lambda functions in account

Cold Start
* New instance - code load and code outside the handler run (init)
* if init is large, process is slow
* first request served by new instance has hight latency
* Provisioned Concurrency to solve cold start
    * allocate before function is invoked (in advance) 
    * app auto scaling can manage concurrency (schedule or target utilizations)

Cold starts have been drastically reduced in 2019

Provisioned concurrency does not work for latest, only version

## File system Mounting
lambda can access EFS files if they are running in the same VPC
config lambda to mount EFS to local dir during init 
need EFS Access Points
watch out for EFS connection limits. 
* 1 functions instance = 1 connection 
* Beware of burst, may hit limits

## Cross account EFS Mounting
VPC Peering and enough IAM permissions
EFS FS policy allow cross account

