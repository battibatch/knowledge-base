# Step Functions

Model a workflow as a state machine
1 state machine per workflow

Workflow written in JSON
Visualization and execution as well as history
start workflow with SDK, API Gateway Event Bridge (CloudWatch Event) 

Tasks state
* do some work in state machine
    * i.e. invoke Lambda, ECS task, insert item in DynamoDB, SNS
* Run an activity
    * Activities poll step functions for work
    * Activities send results back to step functions
    * App server more free to poll

## States
Choice State - Test for a condition to send to branch (or default branch)
Fail or Succeed - stop with fail/succeed
Pass - pass its inputs to the outputs or inject some fixed data without performing work
Wait - provide a delay, or schedule 
Map state - Dynamically iterate steps
parallel state - begin parallel branches of executions



